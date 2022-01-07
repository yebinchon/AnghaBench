; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_soundfont.c_newsf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_soundfont.c_newsf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soundfont = type { i32, i32, i32*, i32*, %struct.snd_soundfont*, i32 }
%struct.snd_sf_list = type { %struct.snd_soundfont*, i32 }

@SNDRV_SFNT_PAT_SHARED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SNDRV_SFNT_PATCH_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_soundfont* (%struct.snd_sf_list*, i32, i8*)* @newsf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_soundfont* @newsf(%struct.snd_sf_list* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.snd_soundfont*, align 8
  %5 = alloca %struct.snd_sf_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.snd_soundfont*, align 8
  store %struct.snd_sf_list* %0, %struct.snd_sf_list** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @SNDRV_SFNT_PAT_SHARED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %3
  %14 = load %struct.snd_sf_list*, %struct.snd_sf_list** %5, align 8
  %15 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %14, i32 0, i32 0
  %16 = load %struct.snd_soundfont*, %struct.snd_soundfont** %15, align 8
  store %struct.snd_soundfont* %16, %struct.snd_soundfont** %8, align 8
  br label %17

17:                                               ; preds = %29, %13
  %18 = load %struct.snd_soundfont*, %struct.snd_soundfont** %8, align 8
  %19 = icmp ne %struct.snd_soundfont* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = load %struct.snd_soundfont*, %struct.snd_soundfont** %8, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @is_identical_font(%struct.snd_soundfont* %21, i32 %22, i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load %struct.snd_soundfont*, %struct.snd_soundfont** %8, align 8
  store %struct.snd_soundfont* %27, %struct.snd_soundfont** %4, align 8
  br label %76

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.snd_soundfont*, %struct.snd_soundfont** %8, align 8
  %31 = getelementptr inbounds %struct.snd_soundfont, %struct.snd_soundfont* %30, i32 0, i32 4
  %32 = load %struct.snd_soundfont*, %struct.snd_soundfont** %31, align 8
  store %struct.snd_soundfont* %32, %struct.snd_soundfont** %8, align 8
  br label %17

33:                                               ; preds = %17
  br label %34

34:                                               ; preds = %33, %3
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.snd_soundfont* @kzalloc(i32 40, i32 %35)
  store %struct.snd_soundfont* %36, %struct.snd_soundfont** %8, align 8
  %37 = load %struct.snd_soundfont*, %struct.snd_soundfont** %8, align 8
  %38 = icmp eq %struct.snd_soundfont* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store %struct.snd_soundfont* null, %struct.snd_soundfont** %4, align 8
  br label %76

40:                                               ; preds = %34
  %41 = load %struct.snd_sf_list*, %struct.snd_sf_list** %5, align 8
  %42 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.snd_soundfont*, %struct.snd_soundfont** %8, align 8
  %45 = getelementptr inbounds %struct.snd_soundfont, %struct.snd_soundfont* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 8
  %46 = load %struct.snd_sf_list*, %struct.snd_sf_list** %5, align 8
  %47 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = load %struct.snd_sf_list*, %struct.snd_sf_list** %5, align 8
  %51 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %50, i32 0, i32 0
  %52 = load %struct.snd_soundfont*, %struct.snd_soundfont** %51, align 8
  %53 = load %struct.snd_soundfont*, %struct.snd_soundfont** %8, align 8
  %54 = getelementptr inbounds %struct.snd_soundfont, %struct.snd_soundfont* %53, i32 0, i32 4
  store %struct.snd_soundfont* %52, %struct.snd_soundfont** %54, align 8
  %55 = load %struct.snd_soundfont*, %struct.snd_soundfont** %8, align 8
  %56 = load %struct.snd_sf_list*, %struct.snd_sf_list** %5, align 8
  %57 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %56, i32 0, i32 0
  store %struct.snd_soundfont* %55, %struct.snd_soundfont** %57, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.snd_soundfont*, %struct.snd_soundfont** %8, align 8
  %60 = getelementptr inbounds %struct.snd_soundfont, %struct.snd_soundfont* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.snd_soundfont*, %struct.snd_soundfont** %8, align 8
  %62 = getelementptr inbounds %struct.snd_soundfont, %struct.snd_soundfont* %61, i32 0, i32 3
  store i32* null, i32** %62, align 8
  %63 = load %struct.snd_soundfont*, %struct.snd_soundfont** %8, align 8
  %64 = getelementptr inbounds %struct.snd_soundfont, %struct.snd_soundfont* %63, i32 0, i32 2
  store i32* null, i32** %64, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %40
  %68 = load %struct.snd_soundfont*, %struct.snd_soundfont** %8, align 8
  %69 = getelementptr inbounds %struct.snd_soundfont, %struct.snd_soundfont* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* @SNDRV_SFNT_PATCH_NAME_LEN, align 4
  %73 = call i32 @memcpy(i32 %70, i8* %71, i32 %72)
  br label %74

74:                                               ; preds = %67, %40
  %75 = load %struct.snd_soundfont*, %struct.snd_soundfont** %8, align 8
  store %struct.snd_soundfont* %75, %struct.snd_soundfont** %4, align 8
  br label %76

76:                                               ; preds = %74, %39, %26
  %77 = load %struct.snd_soundfont*, %struct.snd_soundfont** %4, align 8
  ret %struct.snd_soundfont* %77
}

declare dso_local i64 @is_identical_font(%struct.snd_soundfont*, i32, i8*) #1

declare dso_local %struct.snd_soundfont* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
