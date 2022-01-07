; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_4_C.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_4_C.c"
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
@SCTP_CMD_DELETE_TCB = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_DELETE_TCB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_do_4_C(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_endpoint*, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sctp_chunk*, align 8
  %13 = alloca %struct.sctp_ulpevent*, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %7, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = bitcast i8* %14 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %15, %struct.sctp_chunk** %12, align 8
  %16 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %17 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %18 = call i32 @sctp_vtag_verify_either(%struct.sctp_chunk* %16, %struct.sctp_association* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %5
  %21 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %22 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i8*, i8** %10, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = call i32 @sctp_sf_pdiscard(%struct.sctp_endpoint* %21, %struct.sctp_association* %22, i32 %23, i8* %24, i32* %25)
  store i32 %26, i32* %6, align 4
  br label %88

27:                                               ; preds = %5
  %28 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %29 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %27
  %33 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %34 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @sctp_sf_violation_chunk(%struct.sctp_endpoint* %33, %struct.sctp_association* %34, i32 %35, i8* %36, i32* %37)
  store i32 %38, i32* %6, align 4
  br label %88

39:                                               ; preds = %27
  %40 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %41 = call i32 @sctp_chunk_length_valid(%struct.sctp_chunk* %40, i32 4)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  %44 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %45 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i8*, i8** %10, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @sctp_sf_violation_chunklen(%struct.sctp_endpoint* %44, %struct.sctp_association* %45, i32 %46, i8* %47, i32* %48)
  store i32 %49, i32* %6, align 4
  br label %88

50:                                               ; preds = %39
  %51 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %52 = load i32, i32* @SCTP_SHUTDOWN_COMP, align 4
  %53 = load i32, i32* @GFP_ATOMIC, align 4
  %54 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_assoc_change(%struct.sctp_association* %51, i32 0, i32 %52, i32 0, i32 0, i32 0, i32* null, i32 %53)
  store %struct.sctp_ulpevent* %54, %struct.sctp_ulpevent** %13, align 8
  %55 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %13, align 8
  %56 = icmp ne %struct.sctp_ulpevent* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* @SCTP_CMD_EVENT_ULP, align 4
  %60 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %13, align 8
  %61 = call i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent* %60)
  %62 = call i32 @sctp_add_cmd_sf(i32* %58, i32 %59, i32 %61)
  br label %63

63:                                               ; preds = %57, %50
  %64 = load i32*, i32** %11, align 8
  %65 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %66 = load i32, i32* @SCTP_EVENT_TIMEOUT_T2_SHUTDOWN, align 4
  %67 = call i32 @SCTP_TO(i32 %66)
  %68 = call i32 @sctp_add_cmd_sf(i32* %64, i32 %65, i32 %67)
  %69 = load i32*, i32** %11, align 8
  %70 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %71 = load i32, i32* @SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD, align 4
  %72 = call i32 @SCTP_TO(i32 %71)
  %73 = call i32 @sctp_add_cmd_sf(i32* %69, i32 %70, i32 %72)
  %74 = load i32*, i32** %11, align 8
  %75 = load i32, i32* @SCTP_CMD_NEW_STATE, align 4
  %76 = load i32, i32* @SCTP_STATE_CLOSED, align 4
  %77 = call i32 @SCTP_STATE(i32 %76)
  %78 = call i32 @sctp_add_cmd_sf(i32* %74, i32 %75, i32 %77)
  %79 = load i32, i32* @SCTP_MIB_SHUTDOWNS, align 4
  %80 = call i32 @SCTP_INC_STATS(i32 %79)
  %81 = load i32, i32* @SCTP_MIB_CURRESTAB, align 4
  %82 = call i32 @SCTP_DEC_STATS(i32 %81)
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* @SCTP_CMD_DELETE_TCB, align 4
  %85 = call i32 (...) @SCTP_NULL()
  %86 = call i32 @sctp_add_cmd_sf(i32* %83, i32 %84, i32 %85)
  %87 = load i32, i32* @SCTP_DISPOSITION_DELETE_TCB, align 4
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %63, %43, %32, %20
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i32 @sctp_vtag_verify_either(%struct.sctp_chunk*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @sctp_sf_violation_chunk(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_sf_violation_chunklen(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_assoc_change(%struct.sctp_association*, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent*) #1

declare dso_local i32 @SCTP_TO(i32) #1

declare dso_local i32 @SCTP_STATE(i32) #1

declare dso_local i32 @SCTP_INC_STATS(i32) #1

declare dso_local i32 @SCTP_DEC_STATS(i32) #1

declare dso_local i32 @SCTP_NULL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
