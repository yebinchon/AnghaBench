; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_lib.c_snd_interval_refine_first.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_lib.c_snd_interval_refine_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_interval = type { i32, i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_interval*)* @snd_interval_refine_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_interval_refine_first(%struct.snd_interval* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_interval*, align 8
  store %struct.snd_interval* %0, %struct.snd_interval** %3, align 8
  %4 = load %struct.snd_interval*, %struct.snd_interval** %3, align 8
  %5 = call i32 @snd_interval_empty(%struct.snd_interval* %4)
  %6 = call i64 @snd_BUG_ON(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %37

11:                                               ; preds = %1
  %12 = load %struct.snd_interval*, %struct.snd_interval** %3, align 8
  %13 = call i64 @snd_interval_single(%struct.snd_interval* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %37

16:                                               ; preds = %11
  %17 = load %struct.snd_interval*, %struct.snd_interval** %3, align 8
  %18 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.snd_interval*, %struct.snd_interval** %3, align 8
  %21 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.snd_interval*, %struct.snd_interval** %3, align 8
  %23 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.snd_interval*, %struct.snd_interval** %3, align 8
  %26 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load %struct.snd_interval*, %struct.snd_interval** %3, align 8
  %28 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %16
  %32 = load %struct.snd_interval*, %struct.snd_interval** %3, align 8
  %33 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %31, %16
  store i32 1, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %15, %8
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_interval_empty(%struct.snd_interval*) #1

declare dso_local i64 @snd_interval_single(%struct.snd_interval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
