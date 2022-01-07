; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_cookie_wait_prm_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_cookie_wait_prm_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_chunk = type { i32 }

@SCTP_CMD_TIMER_STOP = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T1_INIT = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_CMD_NEW_STATE = common dso_local global i32 0, align 4
@SCTP_STATE_CLOSED = common dso_local global i32 0, align 4
@SCTP_MIB_ABORTEDS = common dso_local global i32 0, align 4
@SCTP_CMD_SET_SK_ERR = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@SCTP_CMD_INIT_FAILED = common dso_local global i32 0, align 4
@SCTP_ERROR_USER_ABORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_cookie_wait_prm_abort(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.sctp_endpoint*, align 8
  %7 = alloca %struct.sctp_association*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.sctp_chunk*, align 8
  %12 = alloca i32, align 4
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %6, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %14, %struct.sctp_chunk** %11, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %17 = load i32, i32* @SCTP_EVENT_TIMEOUT_T1_INIT, align 4
  %18 = call i32 @SCTP_TO(i32 %17)
  %19 = call i32 @sctp_add_cmd_sf(i32* %15, i32 %16, i32 %18)
  %20 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %20, i32* %12, align 4
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %23 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  %24 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %23)
  %25 = call i32 @sctp_add_cmd_sf(i32* %21, i32 %22, i32 %24)
  %26 = load i32*, i32** %10, align 8
  %27 = load i32, i32* @SCTP_CMD_NEW_STATE, align 4
  %28 = load i32, i32* @SCTP_STATE_CLOSED, align 4
  %29 = call i32 @SCTP_STATE(i32 %28)
  %30 = call i32 @sctp_add_cmd_sf(i32* %26, i32 %27, i32 %29)
  %31 = load i32, i32* @SCTP_MIB_ABORTEDS, align 4
  %32 = call i32 @SCTP_INC_STATS(i32 %31)
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* @SCTP_CMD_SET_SK_ERR, align 4
  %35 = load i32, i32* @ECONNREFUSED, align 4
  %36 = call i32 @SCTP_ERROR(i32 %35)
  %37 = call i32 @sctp_add_cmd_sf(i32* %33, i32 %34, i32 %36)
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* @SCTP_CMD_INIT_FAILED, align 4
  %40 = load i32, i32* @SCTP_ERROR_USER_ABORT, align 4
  %41 = call i32 @SCTP_PERR(i32 %40)
  %42 = call i32 @sctp_add_cmd_sf(i32* %38, i32 %39, i32 %41)
  %43 = load i32, i32* %12, align 4
  ret i32 %43
}

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_TO(i32) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_STATE(i32) #1

declare dso_local i32 @SCTP_INC_STATS(i32) #1

declare dso_local i32 @SCTP_ERROR(i32) #1

declare dso_local i32 @SCTP_PERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
