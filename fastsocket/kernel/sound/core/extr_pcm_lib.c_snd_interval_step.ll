; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_lib.c_snd_interval_step.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_lib.c_snd_interval_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_interval = type { i32, i32, i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_interval*, i32, i32)* @snd_interval_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_interval_step(%struct.snd_interval* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_interval*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_interval* %0, %struct.snd_interval** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %11 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sub i32 %12, %13
  %15 = load i32, i32* %7, align 4
  %16 = urem i32 %14, %15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %21 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19, %3
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sub i32 %25, %26
  %28 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %29 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add i32 %30, %27
  store i32 %31, i32* %29, align 8
  store i32 1, i32* %9, align 4
  br label %32

32:                                               ; preds = %24, %19
  %33 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %34 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = sub i32 %35, %36
  %38 = load i32, i32* %7, align 4
  %39 = urem i32 %37, %38
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %32
  %43 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %44 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42, %32
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %50 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sub i32 %51, %48
  store i32 %52, i32* %50, align 4
  store i32 1, i32* %9, align 4
  br label %53

53:                                               ; preds = %47, %42
  %54 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %55 = call i64 @snd_interval_checkempty(%struct.snd_interval* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %59 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %58, i32 0, i32 2
  store i32 1, i32* %59, align 8
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %64

62:                                               ; preds = %53
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %57
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @snd_interval_checkempty(%struct.snd_interval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
