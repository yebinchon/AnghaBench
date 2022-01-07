; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_t4_timer_expire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_t4_timer_expire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i64, i64, %struct.sctp_chunk* }
%struct.sctp_chunk = type { %struct.sctp_transport* }
%struct.sctp_transport = type { i32 }

@SCTP_MIB_T4_RTO_EXPIREDS = common dso_local global i32 0, align 4
@SCTP_CMD_STRIKE = common dso_local global i32 0, align 4
@SCTP_CMD_SETUP_T4 = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_STOP = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T4_RTO = common dso_local global i32 0, align 4
@SCTP_CMD_SET_SK_ERR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@SCTP_CMD_ASSOC_FAILED = common dso_local global i32 0, align 4
@SCTP_ERROR_NO_ERROR = common dso_local global i32 0, align 4
@SCTP_MIB_ABORTEDS = common dso_local global i32 0, align 4
@SCTP_MIB_CURRESTAB = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_ABORT = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_RESTART = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_t4_timer_expire(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_endpoint*, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sctp_chunk*, align 8
  %13 = alloca %struct.sctp_transport*, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %7, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %15 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %14, i32 0, i32 2
  %16 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  store %struct.sctp_chunk* %16, %struct.sctp_chunk** %12, align 8
  %17 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %18 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %17, i32 0, i32 0
  %19 = load %struct.sctp_transport*, %struct.sctp_transport** %18, align 8
  store %struct.sctp_transport* %19, %struct.sctp_transport** %13, align 8
  %20 = load i32, i32* @SCTP_MIB_T4_RTO_EXPIREDS, align 4
  %21 = call i32 @SCTP_INC_STATS(i32 %20)
  %22 = load %struct.sctp_transport*, %struct.sctp_transport** %13, align 8
  %23 = icmp ne %struct.sctp_transport* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %5
  %25 = load i32*, i32** %11, align 8
  %26 = load i32, i32* @SCTP_CMD_STRIKE, align 4
  %27 = load %struct.sctp_transport*, %struct.sctp_transport** %13, align 8
  %28 = call i32 @SCTP_TRANSPORT(%struct.sctp_transport* %27)
  %29 = call i32 @sctp_add_cmd_sf(i32* %25, i32 %26, i32 %28)
  br label %30

30:                                               ; preds = %24, %5
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* @SCTP_CMD_SETUP_T4, align 4
  %33 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %34 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %33)
  %35 = call i32 @sctp_add_cmd_sf(i32* %31, i32 %32, i32 %34)
  %36 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %37 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %40 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %38, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %30
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %46 = load i32, i32* @SCTP_EVENT_TIMEOUT_T4_RTO, align 4
  %47 = call i32 @SCTP_TO(i32 %46)
  %48 = call i32 @sctp_add_cmd_sf(i32* %44, i32 %45, i32 %47)
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* @SCTP_CMD_SET_SK_ERR, align 4
  %51 = load i32, i32* @ETIMEDOUT, align 4
  %52 = call i32 @SCTP_ERROR(i32 %51)
  %53 = call i32 @sctp_add_cmd_sf(i32* %49, i32 %50, i32 %52)
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* @SCTP_CMD_ASSOC_FAILED, align 4
  %56 = load i32, i32* @SCTP_ERROR_NO_ERROR, align 4
  %57 = call i32 @SCTP_PERR(i32 %56)
  %58 = call i32 @sctp_add_cmd_sf(i32* %54, i32 %55, i32 %57)
  %59 = load i32, i32* @SCTP_MIB_ABORTEDS, align 4
  %60 = call i32 @SCTP_INC_STATS(i32 %59)
  %61 = load i32, i32* @SCTP_MIB_CURRESTAB, align 4
  %62 = call i32 @SCTP_DEC_STATS(i32 %61)
  %63 = load i32, i32* @SCTP_DISPOSITION_ABORT, align 4
  store i32 %63, i32* %6, align 4
  br label %82

64:                                               ; preds = %30
  %65 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %66 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %65, i32 0, i32 2
  %67 = load %struct.sctp_chunk*, %struct.sctp_chunk** %66, align 8
  %68 = call i32 @sctp_chunk_hold(%struct.sctp_chunk* %67)
  %69 = load i32*, i32** %11, align 8
  %70 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %71 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %72 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %71, i32 0, i32 2
  %73 = load %struct.sctp_chunk*, %struct.sctp_chunk** %72, align 8
  %74 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %73)
  %75 = call i32 @sctp_add_cmd_sf(i32* %69, i32 %70, i32 %74)
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* @SCTP_CMD_TIMER_RESTART, align 4
  %78 = load i32, i32* @SCTP_EVENT_TIMEOUT_T4_RTO, align 4
  %79 = call i32 @SCTP_TO(i32 %78)
  %80 = call i32 @sctp_add_cmd_sf(i32* %76, i32 %77, i32 %79)
  %81 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %64, %43
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local i32 @SCTP_INC_STATS(i32) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_TRANSPORT(%struct.sctp_transport*) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_TO(i32) #1

declare dso_local i32 @SCTP_ERROR(i32) #1

declare dso_local i32 @SCTP_PERR(i32) #1

declare dso_local i32 @SCTP_DEC_STATS(i32) #1

declare dso_local i32 @sctp_chunk_hold(%struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
