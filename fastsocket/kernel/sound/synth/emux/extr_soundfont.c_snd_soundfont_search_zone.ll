; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_soundfont.c_snd_soundfont_search_zone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_soundfont.c_snd_soundfont_search_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sf_list = type { i32, i64 }
%struct.snd_sf_zone = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soundfont_search_zone(%struct.snd_sf_list* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.snd_sf_zone** %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_sf_list*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.snd_sf_zone**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.snd_sf_list* %0, %struct.snd_sf_list** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store %struct.snd_sf_zone** %7, %struct.snd_sf_zone*** %18, align 8
  store i32 %8, i32* %19, align 4
  %22 = load %struct.snd_sf_list*, %struct.snd_sf_list** %11, align 8
  %23 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %22, i32 0, i32 0
  %24 = load i64, i64* %21, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.snd_sf_list*, %struct.snd_sf_list** %11, align 8
  %27 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %9
  %31 = load %struct.snd_sf_list*, %struct.snd_sf_list** %11, align 8
  %32 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %31, i32 0, i32 0
  %33 = load i64, i64* %21, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  store i32 0, i32* %10, align 4
  br label %70

35:                                               ; preds = %9
  %36 = load %struct.snd_sf_list*, %struct.snd_sf_list** %11, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %15, align 4
  %41 = load %struct.snd_sf_zone**, %struct.snd_sf_zone*** %18, align 8
  %42 = load i32, i32* %19, align 4
  %43 = call i32 @search_zones(%struct.snd_sf_list* %36, i32* %37, i32 %38, i32 %39, i32 %40, %struct.snd_sf_zone** %41, i32 %42, i32 0)
  store i32 %43, i32* %20, align 4
  %44 = load i32, i32* %20, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %64, label %46

46:                                               ; preds = %35
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %16, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %17, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %50, %46
  %55 = load %struct.snd_sf_list*, %struct.snd_sf_list** %11, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %17, align 4
  %60 = load %struct.snd_sf_zone**, %struct.snd_sf_zone*** %18, align 8
  %61 = load i32, i32* %19, align 4
  %62 = call i32 @search_zones(%struct.snd_sf_list* %55, i32* %56, i32 %57, i32 %58, i32 %59, %struct.snd_sf_zone** %60, i32 %61, i32 0)
  store i32 %62, i32* %20, align 4
  br label %63

63:                                               ; preds = %54, %50
  br label %64

64:                                               ; preds = %63, %35
  %65 = load %struct.snd_sf_list*, %struct.snd_sf_list** %11, align 8
  %66 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %65, i32 0, i32 0
  %67 = load i64, i64* %21, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load i32, i32* %20, align 4
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %64, %30
  %71 = load i32, i32* %10, align 4
  ret i32 %71
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @search_zones(%struct.snd_sf_list*, i32*, i32, i32, i32, %struct.snd_sf_zone**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
