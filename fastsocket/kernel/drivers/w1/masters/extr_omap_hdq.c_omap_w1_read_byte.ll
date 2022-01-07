; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_omap_hdq.c_omap_w1_read_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_omap_hdq.c_omap_w1_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdq_data = type { i32, i64, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Could not acquire mutex\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @omap_w1_read_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_w1_read_byte(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hdq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.hdq_data*
  store %struct.hdq_data* %8, %struct.hdq_data** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %10 = call i32 @hdq_read_byte(%struct.hdq_data* %9, i32* %5)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %1
  %14 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %15 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock_interruptible(i32* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %21 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dev_dbg(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINTR, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %62

26:                                               ; preds = %13
  %27 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %28 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %30 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %33 = call i32 @omap_hdq_put(%struct.hdq_data* %32)
  store i32 -1, i32* %2, align 4
  br label %62

34:                                               ; preds = %1
  %35 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %36 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %34
  %40 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %41 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock_interruptible(i32* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %47 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @dev_dbg(i32 %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EINTR, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %62

52:                                               ; preds = %39
  %53 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %54 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %56 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %59 = call i32 @omap_hdq_put(%struct.hdq_data* %58)
  br label %60

60:                                               ; preds = %52, %34
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %45, %26, %19
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @hdq_read_byte(%struct.hdq_data*, i32*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @omap_hdq_put(%struct.hdq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
