; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_stop_t1_and_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_stop_t1_and_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32 }
%struct.sctp_transport = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"ABORT received (INIT).\0A\00", align 1
@SCTP_CMD_NEW_STATE = common dso_local global i32 0, align 4
@SCTP_STATE_CLOSED = common dso_local global i32 0, align 4
@SCTP_MIB_ABORTEDS = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_STOP = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T1_INIT = common dso_local global i32 0, align 4
@SCTP_CMD_SET_SK_ERR = common dso_local global i32 0, align 4
@SCTP_CMD_INIT_FAILED = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, %struct.sctp_association*, %struct.sctp_transport*)* @sctp_stop_t1_and_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_stop_t1_and_abort(i32* %0, i32 %1, i32 %2, %struct.sctp_association* %3, %struct.sctp_transport* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sctp_association*, align 8
  %10 = alloca %struct.sctp_transport*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.sctp_association* %3, %struct.sctp_association** %9, align 8
  store %struct.sctp_transport* %4, %struct.sctp_transport** %10, align 8
  %11 = call i32 @SCTP_DEBUG_PRINTK(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* @SCTP_CMD_NEW_STATE, align 4
  %14 = load i32, i32* @SCTP_STATE_CLOSED, align 4
  %15 = call i32 @SCTP_STATE(i32 %14)
  %16 = call i32 @sctp_add_cmd_sf(i32* %12, i32 %13, i32 %15)
  %17 = load i32, i32* @SCTP_MIB_ABORTEDS, align 4
  %18 = call i32 @SCTP_INC_STATS(i32 %17)
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %21 = load i32, i32* @SCTP_EVENT_TIMEOUT_T1_INIT, align 4
  %22 = call i32 @SCTP_TO(i32 %21)
  %23 = call i32 @sctp_add_cmd_sf(i32* %19, i32 %20, i32 %22)
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* @SCTP_CMD_SET_SK_ERR, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @SCTP_ERROR(i32 %26)
  %28 = call i32 @sctp_add_cmd_sf(i32* %24, i32 %25, i32 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* @SCTP_CMD_INIT_FAILED, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @SCTP_PERR(i32 %31)
  %33 = call i32 @sctp_add_cmd_sf(i32* %29, i32 %30, i32 %32)
  %34 = load i32, i32* @SCTP_DISPOSITION_ABORT, align 4
  ret i32 %34
}

declare dso_local i32 @SCTP_DEBUG_PRINTK(i8*) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_STATE(i32) #1

declare dso_local i32 @SCTP_INC_STATS(i32) #1

declare dso_local i32 @SCTP_TO(i32) #1

declare dso_local i32 @SCTP_ERROR(i32) #1

declare dso_local i32 @SCTP_PERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
