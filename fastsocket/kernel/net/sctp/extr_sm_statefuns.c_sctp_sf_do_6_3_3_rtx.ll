; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_6_3_3_rtx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_6_3_3_rtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i64, i64, i64 }
%struct.sctp_transport = type { i32 }

@SCTP_MIB_T3_RTX_EXPIREDS = common dso_local global i32 0, align 4
@SCTP_STATE_SHUTDOWN_PENDING = common dso_local global i64 0, align 8
@SCTP_CMD_TIMER_START_ONCE = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD = common dso_local global i32 0, align 4
@SCTP_CMD_SET_SK_ERR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@SCTP_CMD_ASSOC_FAILED = common dso_local global i32 0, align 4
@SCTP_ERROR_NO_ERROR = common dso_local global i32 0, align 4
@SCTP_MIB_ABORTEDS = common dso_local global i32 0, align 4
@SCTP_MIB_CURRESTAB = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_DELETE_TCB = common dso_local global i32 0, align 4
@SCTP_CMD_STRIKE = common dso_local global i32 0, align 4
@SCTP_CMD_RETRAN = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_do_6_3_3_rtx(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_endpoint*, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sctp_transport*, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %7, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = bitcast i8* %13 to %struct.sctp_transport*
  store %struct.sctp_transport* %14, %struct.sctp_transport** %12, align 8
  %15 = load i32, i32* @SCTP_MIB_T3_RTX_EXPIREDS, align 4
  %16 = call i32 @SCTP_INC_STATS(i32 %15)
  %17 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %18 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %21 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %19, %22
  br i1 %23, label %24, label %53

24:                                               ; preds = %5
  %25 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %26 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SCTP_STATE_SHUTDOWN_PENDING, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* @SCTP_CMD_TIMER_START_ONCE, align 4
  %33 = load i32, i32* @SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD, align 4
  %34 = call i32 @SCTP_TO(i32 %33)
  %35 = call i32 @sctp_add_cmd_sf(i32* %31, i32 %32, i32 %34)
  br label %52

36:                                               ; preds = %24
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* @SCTP_CMD_SET_SK_ERR, align 4
  %39 = load i32, i32* @ETIMEDOUT, align 4
  %40 = call i32 @SCTP_ERROR(i32 %39)
  %41 = call i32 @sctp_add_cmd_sf(i32* %37, i32 %38, i32 %40)
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* @SCTP_CMD_ASSOC_FAILED, align 4
  %44 = load i32, i32* @SCTP_ERROR_NO_ERROR, align 4
  %45 = call i32 @SCTP_PERR(i32 %44)
  %46 = call i32 @sctp_add_cmd_sf(i32* %42, i32 %43, i32 %45)
  %47 = load i32, i32* @SCTP_MIB_ABORTEDS, align 4
  %48 = call i32 @SCTP_INC_STATS(i32 %47)
  %49 = load i32, i32* @SCTP_MIB_CURRESTAB, align 4
  %50 = call i32 @SCTP_DEC_STATS(i32 %49)
  %51 = load i32, i32* @SCTP_DISPOSITION_DELETE_TCB, align 4
  store i32 %51, i32* %6, align 4
  br label %65

52:                                               ; preds = %30
  br label %53

53:                                               ; preds = %52, %5
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* @SCTP_CMD_STRIKE, align 4
  %56 = load %struct.sctp_transport*, %struct.sctp_transport** %12, align 8
  %57 = call i32 @SCTP_TRANSPORT(%struct.sctp_transport* %56)
  %58 = call i32 @sctp_add_cmd_sf(i32* %54, i32 %55, i32 %57)
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* @SCTP_CMD_RETRAN, align 4
  %61 = load %struct.sctp_transport*, %struct.sctp_transport** %12, align 8
  %62 = call i32 @SCTP_TRANSPORT(%struct.sctp_transport* %61)
  %63 = call i32 @sctp_add_cmd_sf(i32* %59, i32 %60, i32 %62)
  %64 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %53, %36
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @SCTP_INC_STATS(i32) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_TO(i32) #1

declare dso_local i32 @SCTP_ERROR(i32) #1

declare dso_local i32 @SCTP_PERR(i32) #1

declare dso_local i32 @SCTP_DEC_STATS(i32) #1

declare dso_local i32 @SCTP_TRANSPORT(%struct.sctp_transport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
