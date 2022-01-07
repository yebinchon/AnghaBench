; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_omap_hdq.c_hdq_read_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_omap_hdq.c_hdq_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdq_data = type { i32, i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@OMAP_HDQ_TIMEOUT = common dso_local global i64 0, align 8
@EINTR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OMAP_HDQ_INT_STATUS_RXCOMPLETE = common dso_local global i32 0, align 4
@OMAP_HDQ_CTRL_STATUS = common dso_local global i32 0, align 4
@OMAP_HDQ_CTRL_STATUS_DIR = common dso_local global i32 0, align 4
@OMAP_HDQ_CTRL_STATUS_GO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"timeout waiting forRXCOMPLETE, %x\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@OMAP_HDQ_RX_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdq_data*, i32*)* @hdq_read_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdq_read_byte(%struct.hdq_data* %0, i32* %1) #0 {
  %3 = alloca %struct.hdq_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.hdq_data* %0, %struct.hdq_data** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i64, i64* @jiffies, align 8
  %9 = load i64, i64* @OMAP_HDQ_TIMEOUT, align 8
  %10 = add i64 %8, %9
  store i64 %10, i64* %7, align 8
  %11 = load %struct.hdq_data*, %struct.hdq_data** %3, align 8
  %12 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock_interruptible(i32* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINTR, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %90

19:                                               ; preds = %2
  %20 = load %struct.hdq_data*, %struct.hdq_data** %3, align 8
  %21 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %86

27:                                               ; preds = %19
  %28 = load %struct.hdq_data*, %struct.hdq_data** %3, align 8
  %29 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @OMAP_HDQ_INT_STATUS_RXCOMPLETE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %81, label %34

34:                                               ; preds = %27
  %35 = load %struct.hdq_data*, %struct.hdq_data** %3, align 8
  %36 = load i32, i32* @OMAP_HDQ_CTRL_STATUS, align 4
  %37 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_DIR, align 4
  %38 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_GO, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_DIR, align 4
  %41 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_GO, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @hdq_reg_merge(%struct.hdq_data* %35, i32 %36, i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %58, %34
  %45 = load %struct.hdq_data*, %struct.hdq_data** %3, align 8
  %46 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @OMAP_HDQ_INT_STATUS_RXCOMPLETE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %44
  %52 = load i64, i64* @jiffies, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i64 @time_before(i64 %52, i64 %53)
  %55 = icmp ne i64 %54, 0
  br label %56

56:                                               ; preds = %51, %44
  %57 = phi i1 [ false, %44 ], [ %55, %51 ]
  br i1 %57, label %58, label %60

58:                                               ; preds = %56
  %59 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %44

60:                                               ; preds = %56
  %61 = load %struct.hdq_data*, %struct.hdq_data** %3, align 8
  %62 = load i32, i32* @OMAP_HDQ_CTRL_STATUS, align 4
  %63 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_DIR, align 4
  %64 = call i32 @hdq_reg_merge(%struct.hdq_data* %61, i32 %62, i32 0, i32 %63)
  %65 = load %struct.hdq_data*, %struct.hdq_data** %3, align 8
  %66 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @OMAP_HDQ_INT_STATUS_RXCOMPLETE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %60
  %73 = load %struct.hdq_data*, %struct.hdq_data** %3, align 8
  %74 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @dev_dbg(i32 %75, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @ETIMEDOUT, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %86

80:                                               ; preds = %60
  br label %81

81:                                               ; preds = %80, %27
  %82 = load %struct.hdq_data*, %struct.hdq_data** %3, align 8
  %83 = load i32, i32* @OMAP_HDQ_RX_DATA, align 4
  %84 = call i32 @hdq_reg_in(%struct.hdq_data* %82, i32 %83)
  %85 = load i32*, i32** %4, align 8
  store i32 %84, i32* %85, align 4
  br label %86

86:                                               ; preds = %81, %72, %24
  %87 = load %struct.hdq_data*, %struct.hdq_data** %3, align 8
  %88 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %87, i32 0, i32 1
  %89 = call i32 @mutex_unlock(i32* %88)
  br label %90

90:                                               ; preds = %86, %16
  ret i32 0
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @hdq_reg_merge(%struct.hdq_data*, i32, i32, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @hdq_reg_in(%struct.hdq_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
