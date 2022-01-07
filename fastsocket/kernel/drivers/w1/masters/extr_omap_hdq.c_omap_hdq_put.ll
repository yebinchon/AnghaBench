; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_omap_hdq.c_omap_hdq_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_omap_hdq.c_omap_hdq_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdq_data = type { i64, i32, i32, i32, i32 }

@EINTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"attempt to decrement use countwhen it is zero\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdq_data*)* @omap_hdq_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_hdq_put(%struct.hdq_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdq_data*, align 8
  %4 = alloca i32, align 4
  store %struct.hdq_data* %0, %struct.hdq_data** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.hdq_data*, %struct.hdq_data** %3, align 8
  %6 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %5, i32 0, i32 1
  %7 = call i32 @mutex_lock_interruptible(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EINTR, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %51

13:                                               ; preds = %1
  %14 = load %struct.hdq_data*, %struct.hdq_data** %3, align 8
  %15 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 0, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load %struct.hdq_data*, %struct.hdq_data** %3, align 8
  %20 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_dbg(i32 %21, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %46

25:                                               ; preds = %13
  %26 = load %struct.hdq_data*, %struct.hdq_data** %3, align 8
  %27 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, -1
  store i64 %29, i64* %27, align 8
  %30 = load i32, i32* @THIS_MODULE, align 4
  %31 = call i32 @module_put(i32 %30)
  %32 = load %struct.hdq_data*, %struct.hdq_data** %3, align 8
  %33 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 0, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %25
  %37 = load %struct.hdq_data*, %struct.hdq_data** %3, align 8
  %38 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @clk_disable(i32 %39)
  %41 = load %struct.hdq_data*, %struct.hdq_data** %3, align 8
  %42 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @clk_disable(i32 %43)
  br label %45

45:                                               ; preds = %36, %25
  br label %46

46:                                               ; preds = %45, %18
  %47 = load %struct.hdq_data*, %struct.hdq_data** %3, align 8
  %48 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %47, i32 0, i32 1
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %46, %10
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
