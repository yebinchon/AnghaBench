; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_soundfont.c_search_first_zone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_soundfont.c_search_first_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sf_zone = type { i32, i32, %struct.snd_sf_zone* }
%struct.snd_sf_list = type { %struct.snd_sf_zone** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_sf_zone* (%struct.snd_sf_list*, i32, i32, i32)* @search_first_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_sf_zone* @search_first_zone(%struct.snd_sf_list* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_sf_zone*, align 8
  %6 = alloca %struct.snd_sf_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_sf_zone*, align 8
  store %struct.snd_sf_list* %0, %struct.snd_sf_list** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @get_index(i32 %12, i32 %13, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store %struct.snd_sf_zone* null, %struct.snd_sf_zone** %5, align 8
  br label %49

18:                                               ; preds = %4
  %19 = load %struct.snd_sf_list*, %struct.snd_sf_list** %6, align 8
  %20 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %19, i32 0, i32 0
  %21 = load %struct.snd_sf_zone**, %struct.snd_sf_zone*** %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.snd_sf_zone*, %struct.snd_sf_zone** %21, i64 %23
  %25 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %24, align 8
  store %struct.snd_sf_zone* %25, %struct.snd_sf_zone** %11, align 8
  br label %26

26:                                               ; preds = %44, %18
  %27 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %11, align 8
  %28 = icmp ne %struct.snd_sf_zone* %27, null
  br i1 %28, label %29, label %48

29:                                               ; preds = %26
  %30 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %11, align 8
  %31 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %11, align 8
  %37 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %11, align 8
  store %struct.snd_sf_zone* %42, %struct.snd_sf_zone** %5, align 8
  br label %49

43:                                               ; preds = %35, %29
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %11, align 8
  %46 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %45, i32 0, i32 2
  %47 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %46, align 8
  store %struct.snd_sf_zone* %47, %struct.snd_sf_zone** %11, align 8
  br label %26

48:                                               ; preds = %26
  store %struct.snd_sf_zone* null, %struct.snd_sf_zone** %5, align 8
  br label %49

49:                                               ; preds = %48, %41, %17
  %50 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %5, align 8
  ret %struct.snd_sf_zone* %50
}

declare dso_local i32 @get_index(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
