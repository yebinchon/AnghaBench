; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_soundfont.c_snd_sf_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_soundfont.c_snd_sf_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sf_list = type { i32, %struct.TYPE_2__, %struct.snd_soundfont* }
%struct.TYPE_2__ = type { i32, i32 (i32, %struct.snd_soundfont*, i32)* }
%struct.snd_soundfont = type { %struct.snd_soundfont*, %struct.snd_soundfont*, %struct.snd_soundfont* }
%struct.snd_sf_zone = type { %struct.snd_sf_zone*, %struct.snd_sf_zone*, %struct.snd_sf_zone* }
%struct.snd_sf_sample = type { %struct.snd_sf_sample*, %struct.snd_sf_sample*, %struct.snd_sf_sample* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_sf_list*)* @snd_sf_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_sf_clear(%struct.snd_sf_list* %0) #0 {
  %2 = alloca %struct.snd_sf_list*, align 8
  %3 = alloca %struct.snd_soundfont*, align 8
  %4 = alloca %struct.snd_soundfont*, align 8
  %5 = alloca %struct.snd_sf_zone*, align 8
  %6 = alloca %struct.snd_sf_zone*, align 8
  %7 = alloca %struct.snd_sf_sample*, align 8
  %8 = alloca %struct.snd_sf_sample*, align 8
  store %struct.snd_sf_list* %0, %struct.snd_sf_list** %2, align 8
  %9 = load %struct.snd_sf_list*, %struct.snd_sf_list** %2, align 8
  %10 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %9, i32 0, i32 2
  %11 = load %struct.snd_soundfont*, %struct.snd_soundfont** %10, align 8
  store %struct.snd_soundfont* %11, %struct.snd_soundfont** %3, align 8
  br label %12

12:                                               ; preds = %76, %1
  %13 = load %struct.snd_soundfont*, %struct.snd_soundfont** %3, align 8
  %14 = icmp ne %struct.snd_soundfont* %13, null
  br i1 %14, label %15, label %78

15:                                               ; preds = %12
  %16 = load %struct.snd_soundfont*, %struct.snd_soundfont** %3, align 8
  %17 = getelementptr inbounds %struct.snd_soundfont, %struct.snd_soundfont* %16, i32 0, i32 0
  %18 = load %struct.snd_soundfont*, %struct.snd_soundfont** %17, align 8
  store %struct.snd_soundfont* %18, %struct.snd_soundfont** %4, align 8
  %19 = load %struct.snd_soundfont*, %struct.snd_soundfont** %3, align 8
  %20 = getelementptr inbounds %struct.snd_soundfont, %struct.snd_soundfont* %19, i32 0, i32 2
  %21 = load %struct.snd_soundfont*, %struct.snd_soundfont** %20, align 8
  %22 = bitcast %struct.snd_soundfont* %21 to %struct.snd_sf_zone*
  store %struct.snd_sf_zone* %22, %struct.snd_sf_zone** %5, align 8
  br label %23

23:                                               ; preds = %33, %15
  %24 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %5, align 8
  %25 = icmp ne %struct.snd_sf_zone* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %5, align 8
  %28 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %27, i32 0, i32 0
  %29 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %28, align 8
  store %struct.snd_sf_zone* %29, %struct.snd_sf_zone** %6, align 8
  %30 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %5, align 8
  %31 = bitcast %struct.snd_sf_zone* %30 to %struct.snd_soundfont*
  %32 = call i32 @kfree(%struct.snd_soundfont* %31)
  br label %33

33:                                               ; preds = %26
  %34 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %6, align 8
  store %struct.snd_sf_zone* %34, %struct.snd_sf_zone** %5, align 8
  br label %23

35:                                               ; preds = %23
  %36 = load %struct.snd_soundfont*, %struct.snd_soundfont** %3, align 8
  %37 = getelementptr inbounds %struct.snd_soundfont, %struct.snd_soundfont* %36, i32 0, i32 1
  %38 = load %struct.snd_soundfont*, %struct.snd_soundfont** %37, align 8
  %39 = bitcast %struct.snd_soundfont* %38 to %struct.snd_sf_sample*
  store %struct.snd_sf_sample* %39, %struct.snd_sf_sample** %7, align 8
  br label %40

40:                                               ; preds = %71, %35
  %41 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %7, align 8
  %42 = icmp ne %struct.snd_sf_sample* %41, null
  br i1 %42, label %43, label %73

43:                                               ; preds = %40
  %44 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %7, align 8
  %45 = getelementptr inbounds %struct.snd_sf_sample, %struct.snd_sf_sample* %44, i32 0, i32 0
  %46 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %45, align 8
  store %struct.snd_sf_sample* %46, %struct.snd_sf_sample** %8, align 8
  %47 = load %struct.snd_sf_list*, %struct.snd_sf_list** %2, align 8
  %48 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32 (i32, %struct.snd_soundfont*, i32)*, i32 (i32, %struct.snd_soundfont*, i32)** %49, align 8
  %51 = icmp ne i32 (i32, %struct.snd_soundfont*, i32)* %50, null
  br i1 %51, label %52, label %67

52:                                               ; preds = %43
  %53 = load %struct.snd_sf_list*, %struct.snd_sf_list** %2, align 8
  %54 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32 (i32, %struct.snd_soundfont*, i32)*, i32 (i32, %struct.snd_soundfont*, i32)** %55, align 8
  %57 = load %struct.snd_sf_list*, %struct.snd_sf_list** %2, align 8
  %58 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %7, align 8
  %62 = bitcast %struct.snd_sf_sample* %61 to %struct.snd_soundfont*
  %63 = load %struct.snd_sf_list*, %struct.snd_sf_list** %2, align 8
  %64 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 %56(i32 %60, %struct.snd_soundfont* %62, i32 %65)
  br label %67

67:                                               ; preds = %52, %43
  %68 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %7, align 8
  %69 = bitcast %struct.snd_sf_sample* %68 to %struct.snd_soundfont*
  %70 = call i32 @kfree(%struct.snd_soundfont* %69)
  br label %71

71:                                               ; preds = %67
  %72 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %8, align 8
  store %struct.snd_sf_sample* %72, %struct.snd_sf_sample** %7, align 8
  br label %40

73:                                               ; preds = %40
  %74 = load %struct.snd_soundfont*, %struct.snd_soundfont** %3, align 8
  %75 = call i32 @kfree(%struct.snd_soundfont* %74)
  br label %76

76:                                               ; preds = %73
  %77 = load %struct.snd_soundfont*, %struct.snd_soundfont** %4, align 8
  store %struct.snd_soundfont* %77, %struct.snd_soundfont** %3, align 8
  br label %12

78:                                               ; preds = %12
  %79 = load %struct.snd_sf_list*, %struct.snd_sf_list** %2, align 8
  %80 = call i32 @snd_sf_init(%struct.snd_sf_list* %79)
  ret void
}

declare dso_local i32 @kfree(%struct.snd_soundfont*) #1

declare dso_local i32 @snd_sf_init(%struct.snd_sf_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
