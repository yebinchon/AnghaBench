; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_9_2_final.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_9_2_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_chunk = type { i32 }
%struct.sctp_ulpevent = type { i32 }

@SCTP_SHUTDOWN_COMP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCTP_CMD_EVENT_ULP = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_STOP = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T2_SHUTDOWN = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD = common dso_local global i32 0, align 4
@SCTP_CMD_NEW_STATE = common dso_local global i32 0, align 4
@SCTP_STATE_CLOSED = common dso_local global i32 0, align 4
@SCTP_MIB_SHUTDOWNS = common dso_local global i32 0, align 4
@SCTP_MIB_CURRESTAB = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_CMD_DELETE_TCB = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_DELETE_TCB = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_do_9_2_final(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_endpoint*, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sctp_chunk*, align 8
  %13 = alloca %struct.sctp_chunk*, align 8
  %14 = alloca %struct.sctp_ulpevent*, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %7, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = bitcast i8* %15 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %16, %struct.sctp_chunk** %12, align 8
  %17 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %18 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %19 = call i32 @sctp_vtag_verify(%struct.sctp_chunk* %17, %struct.sctp_association* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %5
  %22 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %23 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i8*, i8** %10, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @sctp_sf_pdiscard(%struct.sctp_endpoint* %22, %struct.sctp_association* %23, i32 %24, i8* %25, i32* %26)
  store i32 %27, i32* %6, align 4
  br label %94

28:                                               ; preds = %5
  %29 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %30 = call i32 @sctp_chunk_length_valid(%struct.sctp_chunk* %29, i32 4)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %34 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @sctp_sf_violation_chunklen(%struct.sctp_endpoint* %33, %struct.sctp_association* %34, i32 %35, i8* %36, i32* %37)
  store i32 %38, i32* %6, align 4
  br label %94

39:                                               ; preds = %28
  %40 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %41 = load i32, i32* @SCTP_SHUTDOWN_COMP, align 4
  %42 = load i32, i32* @GFP_ATOMIC, align 4
  %43 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_assoc_change(%struct.sctp_association* %40, i32 0, i32 %41, i32 0, i32 0, i32 0, i32* null, i32 %42)
  store %struct.sctp_ulpevent* %43, %struct.sctp_ulpevent** %14, align 8
  %44 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %14, align 8
  %45 = icmp ne %struct.sctp_ulpevent* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  br label %92

47:                                               ; preds = %39
  %48 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %49 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %50 = call %struct.sctp_chunk* @sctp_make_shutdown_complete(%struct.sctp_association* %48, %struct.sctp_chunk* %49)
  store %struct.sctp_chunk* %50, %struct.sctp_chunk** %13, align 8
  %51 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %52 = icmp ne %struct.sctp_chunk* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  br label %89

54:                                               ; preds = %47
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* @SCTP_CMD_EVENT_ULP, align 4
  %57 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %14, align 8
  %58 = call i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent* %57)
  %59 = call i32 @sctp_add_cmd_sf(i32* %55, i32 %56, i32 %58)
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %62 = load i32, i32* @SCTP_EVENT_TIMEOUT_T2_SHUTDOWN, align 4
  %63 = call i32 @SCTP_TO(i32 %62)
  %64 = call i32 @sctp_add_cmd_sf(i32* %60, i32 %61, i32 %63)
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %67 = load i32, i32* @SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD, align 4
  %68 = call i32 @SCTP_TO(i32 %67)
  %69 = call i32 @sctp_add_cmd_sf(i32* %65, i32 %66, i32 %68)
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* @SCTP_CMD_NEW_STATE, align 4
  %72 = load i32, i32* @SCTP_STATE_CLOSED, align 4
  %73 = call i32 @SCTP_STATE(i32 %72)
  %74 = call i32 @sctp_add_cmd_sf(i32* %70, i32 %71, i32 %73)
  %75 = load i32, i32* @SCTP_MIB_SHUTDOWNS, align 4
  %76 = call i32 @SCTP_INC_STATS(i32 %75)
  %77 = load i32, i32* @SCTP_MIB_CURRESTAB, align 4
  %78 = call i32 @SCTP_DEC_STATS(i32 %77)
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %81 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %82 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %81)
  %83 = call i32 @sctp_add_cmd_sf(i32* %79, i32 %80, i32 %82)
  %84 = load i32*, i32** %11, align 8
  %85 = load i32, i32* @SCTP_CMD_DELETE_TCB, align 4
  %86 = call i32 (...) @SCTP_NULL()
  %87 = call i32 @sctp_add_cmd_sf(i32* %84, i32 %85, i32 %86)
  %88 = load i32, i32* @SCTP_DISPOSITION_DELETE_TCB, align 4
  store i32 %88, i32* %6, align 4
  br label %94

89:                                               ; preds = %53
  %90 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %14, align 8
  %91 = call i32 @sctp_ulpevent_free(%struct.sctp_ulpevent* %90)
  br label %92

92:                                               ; preds = %89, %46
  %93 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %92, %54, %32, %21
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i32 @sctp_vtag_verify(%struct.sctp_chunk*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_sf_violation_chunklen(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_assoc_change(%struct.sctp_association*, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local %struct.sctp_chunk* @sctp_make_shutdown_complete(%struct.sctp_association*, %struct.sctp_chunk*) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent*) #1

declare dso_local i32 @SCTP_TO(i32) #1

declare dso_local i32 @SCTP_STATE(i32) #1

declare dso_local i32 @SCTP_INC_STATS(i32) #1

declare dso_local i32 @SCTP_DEC_STATS(i32) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_NULL(...) #1

declare dso_local i32 @sctp_ulpevent_free(%struct.sctp_ulpevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
