; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/thermal/extr_thermal_sys.c_get_idr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/thermal/extr_thermal_sys.c_get_idr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idr = type { i32 }
%struct.mutex = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@MAX_ID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idr*, %struct.mutex*, i32*)* @get_idr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_idr(%struct.idr* %0, %struct.mutex* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.idr*, align 8
  %6 = alloca %struct.mutex*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.idr* %0, %struct.idr** %5, align 8
  store %struct.mutex* %1, %struct.mutex** %6, align 8
  store i32* %2, i32** %7, align 8
  br label %9

9:                                                ; preds = %43, %3
  %10 = load %struct.idr*, %struct.idr** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i64 @idr_pre_get(%struct.idr* %10, i32 %11)
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %57

20:                                               ; preds = %9
  %21 = load %struct.mutex*, %struct.mutex** %6, align 8
  %22 = icmp ne %struct.mutex* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.mutex*, %struct.mutex** %6, align 8
  %25 = call i32 @mutex_lock(%struct.mutex* %24)
  br label %26

26:                                               ; preds = %23, %20
  %27 = load %struct.idr*, %struct.idr** %5, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @idr_get_new(%struct.idr* %27, i32* null, i32* %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.mutex*, %struct.mutex** %6, align 8
  %31 = icmp ne %struct.mutex* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.mutex*, %struct.mutex** %6, align 8
  %34 = call i32 @mutex_unlock(%struct.mutex* %33)
  br label %35

35:                                               ; preds = %32, %26
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @EAGAIN, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %9

44:                                               ; preds = %35
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %57

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @MAX_ID_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load i32*, i32** %7, align 8
  store i32 %55, i32* %56, align 4
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %51, %48, %17
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @idr_pre_get(%struct.idr*, i32) #1

declare dso_local i32 @mutex_lock(%struct.mutex*) #1

declare dso_local i32 @idr_get_new(%struct.idr*, i32*, i32*) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
