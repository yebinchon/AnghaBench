; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_omap_hdq.c_hdq_write_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_omap_hdq.c_hdq_write_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdq_data = type { i32, i32, i32 }

@OMAP_HDQ_INT_STATUS = common dso_local global i32 0, align 4
@OMAP_HDQ_TX_DATA = common dso_local global i32 0, align 4
@OMAP_HDQ_CTRL_STATUS = common dso_local global i32 0, align 4
@OMAP_HDQ_CTRL_STATUS_GO = common dso_local global i32 0, align 4
@OMAP_HDQ_CTRL_STATUS_DIR = common dso_local global i32 0, align 4
@hdq_wait_queue = common dso_local global i32 0, align 4
@OMAP_HDQ_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"TX wait elapsed\0A\00", align 1
@OMAP_HDQ_INT_STATUS_TXCOMPLETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"timeout waiting forTXCOMPLETE/RXCOMPLETE, %x\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@OMAP_HDQ_FLAG_CLEAR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"timeout waiting GO bitreturn to zero, %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdq_data*, i32, i32*)* @hdq_write_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdq_write_byte(%struct.hdq_data* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.hdq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.hdq_data* %0, %struct.hdq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %12 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %11, i32 0, i32 2
  %13 = load i64, i64* %9, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %16 = load i32, i32* @OMAP_HDQ_INT_STATUS, align 4
  %17 = call i32 @hdq_reg_in(%struct.hdq_data* %15, i32 %16)
  %18 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %19 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %21 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %20, i32 0, i32 2
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %25 = load i32, i32* @OMAP_HDQ_TX_DATA, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @hdq_reg_out(%struct.hdq_data* %24, i32 %25, i32 %26)
  %28 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %29 = load i32, i32* @OMAP_HDQ_CTRL_STATUS, align 4
  %30 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_GO, align 4
  %31 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_DIR, align 4
  %32 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_GO, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @hdq_reg_merge(%struct.hdq_data* %28, i32 %29, i32 %30, i32 %33)
  %35 = load i32, i32* @hdq_wait_queue, align 4
  %36 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %37 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @OMAP_HDQ_TIMEOUT, align 4
  %40 = call i32 @wait_event_timeout(i32 %35, i32 %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %3
  %44 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %45 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i8*, ...) @dev_dbg(i32 %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %82

48:                                               ; preds = %3
  %49 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %50 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %6, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @OMAP_HDQ_INT_STATUS_TXCOMPLETE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %48
  %59 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %60 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, i8*, ...) @dev_dbg(i32 %61, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @ETIMEDOUT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %7, align 4
  br label %82

67:                                               ; preds = %48
  %68 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %69 = load i32, i32* @OMAP_HDQ_CTRL_STATUS, align 4
  %70 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_GO, align 4
  %71 = load i32, i32* @OMAP_HDQ_FLAG_CLEAR, align 4
  %72 = call i32 @hdq_wait_for_flag(%struct.hdq_data* %68, i32 %69, i32 %70, i32 %71, i32* %8)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %67
  %76 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %77 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 (i32, i8*, ...) @dev_dbg(i32 %78, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %75, %67
  br label %82

82:                                               ; preds = %81, %58, %43
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hdq_reg_in(%struct.hdq_data*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @hdq_reg_out(%struct.hdq_data*, i32, i32) #1

declare dso_local i32 @hdq_reg_merge(%struct.hdq_data*, i32, i32, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @hdq_wait_for_flag(%struct.hdq_data*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
