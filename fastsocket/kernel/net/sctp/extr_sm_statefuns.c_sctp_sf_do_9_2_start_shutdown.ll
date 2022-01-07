; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_9_2_start_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_9_2_start_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i64 }
%struct.sctp_chunk = type { i32 }

@SCTP_CMD_SETUP_T2 = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_START = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T2_SHUTDOWN = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_RESTART = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_STOP = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_AUTOCLOSE = common dso_local global i32 0, align 4
@SCTP_CMD_NEW_STATE = common dso_local global i32 0, align 4
@SCTP_STATE_SHUTDOWN_SENT = common dso_local global i32 0, align 4
@SCTP_CMD_HB_TIMERS_STOP = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_do_9_2_start_shutdown(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_endpoint*, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sctp_chunk*, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %7, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %14 = call %struct.sctp_chunk* @sctp_make_shutdown(%struct.sctp_association* %13, i32* null)
  store %struct.sctp_chunk* %14, %struct.sctp_chunk** %12, align 8
  %15 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %16 = icmp ne %struct.sctp_chunk* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  br label %60

18:                                               ; preds = %5
  %19 = load i32*, i32** %11, align 8
  %20 = load i32, i32* @SCTP_CMD_SETUP_T2, align 4
  %21 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %22 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %21)
  %23 = call i32 @sctp_add_cmd_sf(i32* %19, i32 %20, i32 %22)
  %24 = load i32*, i32** %11, align 8
  %25 = load i32, i32* @SCTP_CMD_TIMER_START, align 4
  %26 = load i32, i32* @SCTP_EVENT_TIMEOUT_T2_SHUTDOWN, align 4
  %27 = call i32 @SCTP_TO(i32 %26)
  %28 = call i32 @sctp_add_cmd_sf(i32* %24, i32 %25, i32 %27)
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* @SCTP_CMD_TIMER_RESTART, align 4
  %31 = load i32, i32* @SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD, align 4
  %32 = call i32 @SCTP_TO(i32 %31)
  %33 = call i32 @sctp_add_cmd_sf(i32* %29, i32 %30, i32 %32)
  %34 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %35 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %18
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %41 = load i32, i32* @SCTP_EVENT_TIMEOUT_AUTOCLOSE, align 4
  %42 = call i32 @SCTP_TO(i32 %41)
  %43 = call i32 @sctp_add_cmd_sf(i32* %39, i32 %40, i32 %42)
  br label %44

44:                                               ; preds = %38, %18
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* @SCTP_CMD_NEW_STATE, align 4
  %47 = load i32, i32* @SCTP_STATE_SHUTDOWN_SENT, align 4
  %48 = call i32 @SCTP_STATE(i32 %47)
  %49 = call i32 @sctp_add_cmd_sf(i32* %45, i32 %46, i32 %48)
  %50 = load i32*, i32** %11, align 8
  %51 = load i32, i32* @SCTP_CMD_HB_TIMERS_STOP, align 4
  %52 = call i32 (...) @SCTP_NULL()
  %53 = call i32 @sctp_add_cmd_sf(i32* %50, i32 %51, i32 %52)
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %56 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %57 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %56)
  %58 = call i32 @sctp_add_cmd_sf(i32* %54, i32 %55, i32 %57)
  %59 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %59, i32* %6, align 4
  br label %62

60:                                               ; preds = %17
  %61 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %60, %44
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local %struct.sctp_chunk* @sctp_make_shutdown(%struct.sctp_association*, i32*) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_TO(i32) #1

declare dso_local i32 @SCTP_STATE(i32) #1

declare dso_local i32 @SCTP_NULL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
