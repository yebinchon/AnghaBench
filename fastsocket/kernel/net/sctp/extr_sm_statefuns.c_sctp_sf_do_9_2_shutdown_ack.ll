; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_9_2_shutdown_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_9_2_shutdown_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i64 }
%struct.sctp_chunk = type { i32 }

@SCTP_CMD_SETUP_T2 = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_RESTART = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T2_SHUTDOWN = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_STOP = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_AUTOCLOSE = common dso_local global i32 0, align 4
@SCTP_CMD_NEW_STATE = common dso_local global i32 0, align 4
@SCTP_STATE_SHUTDOWN_ACK_SENT = common dso_local global i32 0, align 4
@SCTP_CMD_HB_TIMERS_STOP = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_do_9_2_shutdown_ack(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_endpoint*, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sctp_chunk*, align 8
  %13 = alloca %struct.sctp_chunk*, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %7, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = bitcast i8* %14 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %15, %struct.sctp_chunk** %12, align 8
  %16 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %17 = icmp ne %struct.sctp_chunk* %16, null
  br i1 %17, label %18, label %42

18:                                               ; preds = %5
  %19 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %20 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %21 = call i32 @sctp_vtag_verify(%struct.sctp_chunk* %19, %struct.sctp_association* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %25 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i8*, i8** %10, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @sctp_sf_pdiscard(%struct.sctp_endpoint* %24, %struct.sctp_association* %25, i32 %26, i8* %27, i32* %28)
  store i32 %29, i32* %6, align 4
  br label %88

30:                                               ; preds = %18
  %31 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %32 = call i32 @sctp_chunk_length_valid(%struct.sctp_chunk* %31, i32 4)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %36 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i8*, i8** %10, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @sctp_sf_violation_chunklen(%struct.sctp_endpoint* %35, %struct.sctp_association* %36, i32 %37, i8* %38, i32* %39)
  store i32 %40, i32* %6, align 4
  br label %88

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41, %5
  %43 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %44 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %45 = call %struct.sctp_chunk* @sctp_make_shutdown_ack(%struct.sctp_association* %43, %struct.sctp_chunk* %44)
  store %struct.sctp_chunk* %45, %struct.sctp_chunk** %13, align 8
  %46 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %47 = icmp ne %struct.sctp_chunk* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  br label %86

49:                                               ; preds = %42
  %50 = load i32*, i32** %11, align 8
  %51 = load i32, i32* @SCTP_CMD_SETUP_T2, align 4
  %52 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %53 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %52)
  %54 = call i32 @sctp_add_cmd_sf(i32* %50, i32 %51, i32 %53)
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* @SCTP_CMD_TIMER_RESTART, align 4
  %57 = load i32, i32* @SCTP_EVENT_TIMEOUT_T2_SHUTDOWN, align 4
  %58 = call i32 @SCTP_TO(i32 %57)
  %59 = call i32 @sctp_add_cmd_sf(i32* %55, i32 %56, i32 %58)
  %60 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %61 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %49
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %67 = load i32, i32* @SCTP_EVENT_TIMEOUT_AUTOCLOSE, align 4
  %68 = call i32 @SCTP_TO(i32 %67)
  %69 = call i32 @sctp_add_cmd_sf(i32* %65, i32 %66, i32 %68)
  br label %70

70:                                               ; preds = %64, %49
  %71 = load i32*, i32** %11, align 8
  %72 = load i32, i32* @SCTP_CMD_NEW_STATE, align 4
  %73 = load i32, i32* @SCTP_STATE_SHUTDOWN_ACK_SENT, align 4
  %74 = call i32 @SCTP_STATE(i32 %73)
  %75 = call i32 @sctp_add_cmd_sf(i32* %71, i32 %72, i32 %74)
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* @SCTP_CMD_HB_TIMERS_STOP, align 4
  %78 = call i32 (...) @SCTP_NULL()
  %79 = call i32 @sctp_add_cmd_sf(i32* %76, i32 %77, i32 %78)
  %80 = load i32*, i32** %11, align 8
  %81 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %82 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %83 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %82)
  %84 = call i32 @sctp_add_cmd_sf(i32* %80, i32 %81, i32 %83)
  %85 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %85, i32* %6, align 4
  br label %88

86:                                               ; preds = %48
  %87 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %86, %70, %34, %23
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i32 @sctp_vtag_verify(%struct.sctp_chunk*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_sf_violation_chunklen(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local %struct.sctp_chunk* @sctp_make_shutdown_ack(%struct.sctp_association*, %struct.sctp_chunk*) #1

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
