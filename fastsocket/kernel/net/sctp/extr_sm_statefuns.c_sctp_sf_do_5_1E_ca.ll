; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_5_1E_ca.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_5_1E_ca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sctp_chunk = type { i32 }
%struct.sctp_ulpevent = type { i32 }

@SCTP_CMD_INIT_COUNTER_RESET = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_STOP = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T1_COOKIE = common dso_local global i32 0, align 4
@SCTP_CMD_NEW_STATE = common dso_local global i32 0, align 4
@SCTP_STATE_ESTABLISHED = common dso_local global i32 0, align 4
@SCTP_MIB_CURRESTAB = common dso_local global i32 0, align 4
@SCTP_MIB_ACTIVEESTABS = common dso_local global i32 0, align 4
@SCTP_CMD_HB_TIMERS_START = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_START = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_AUTOCLOSE = common dso_local global i32 0, align 4
@SCTP_COMM_UP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCTP_CMD_EVENT_ULP = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_do_5_1E_ca(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i32* %4) #0 {
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
  %18 = call i32 @sctp_vtag_verify(%struct.sctp_chunk* %16, %struct.sctp_association* %17)
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
  br label %115

27:                                               ; preds = %5
  %28 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %29 = call i32 @sctp_chunk_length_valid(%struct.sctp_chunk* %28, i32 4)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %33 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i8*, i8** %10, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 @sctp_sf_violation_chunklen(%struct.sctp_endpoint* %32, %struct.sctp_association* %33, i32 %34, i8* %35, i32* %36)
  store i32 %37, i32* %6, align 4
  br label %115

38:                                               ; preds = %27
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* @SCTP_CMD_INIT_COUNTER_RESET, align 4
  %41 = call i32 (...) @SCTP_NULL()
  %42 = call i32 @sctp_add_cmd_sf(i32* %39, i32 %40, i32 %41)
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %45 = load i32, i32* @SCTP_EVENT_TIMEOUT_T1_COOKIE, align 4
  %46 = call i32 @SCTP_TO(i32 %45)
  %47 = call i32 @sctp_add_cmd_sf(i32* %43, i32 %44, i32 %46)
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* @SCTP_CMD_NEW_STATE, align 4
  %50 = load i32, i32* @SCTP_STATE_ESTABLISHED, align 4
  %51 = call i32 @SCTP_STATE(i32 %50)
  %52 = call i32 @sctp_add_cmd_sf(i32* %48, i32 %49, i32 %51)
  %53 = load i32, i32* @SCTP_MIB_CURRESTAB, align 4
  %54 = call i32 @SCTP_INC_STATS(i32 %53)
  %55 = load i32, i32* @SCTP_MIB_ACTIVEESTABS, align 4
  %56 = call i32 @SCTP_INC_STATS(i32 %55)
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* @SCTP_CMD_HB_TIMERS_START, align 4
  %59 = call i32 (...) @SCTP_NULL()
  %60 = call i32 @sctp_add_cmd_sf(i32* %57, i32 %58, i32 %59)
  %61 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %62 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %38
  %66 = load i32*, i32** %11, align 8
  %67 = load i32, i32* @SCTP_CMD_TIMER_START, align 4
  %68 = load i32, i32* @SCTP_EVENT_TIMEOUT_AUTOCLOSE, align 4
  %69 = call i32 @SCTP_TO(i32 %68)
  %70 = call i32 @sctp_add_cmd_sf(i32* %66, i32 %67, i32 %69)
  br label %71

71:                                               ; preds = %65, %38
  %72 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %73 = load i32, i32* @SCTP_COMM_UP, align 4
  %74 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %75 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %79 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @GFP_ATOMIC, align 4
  %83 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_assoc_change(%struct.sctp_association* %72, i32 0, i32 %73, i32 0, i32 %77, i32 %81, i32* null, i32 %82)
  store %struct.sctp_ulpevent* %83, %struct.sctp_ulpevent** %13, align 8
  %84 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %13, align 8
  %85 = icmp ne %struct.sctp_ulpevent* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %71
  br label %113

87:                                               ; preds = %71
  %88 = load i32*, i32** %11, align 8
  %89 = load i32, i32* @SCTP_CMD_EVENT_ULP, align 4
  %90 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %13, align 8
  %91 = call i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent* %90)
  %92 = call i32 @sctp_add_cmd_sf(i32* %88, i32 %89, i32 %91)
  %93 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %94 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %87
  %99 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %100 = load i32, i32* @GFP_ATOMIC, align 4
  %101 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_adaptation_indication(%struct.sctp_association* %99, i32 %100)
  store %struct.sctp_ulpevent* %101, %struct.sctp_ulpevent** %13, align 8
  %102 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %13, align 8
  %103 = icmp ne %struct.sctp_ulpevent* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %98
  br label %113

105:                                              ; preds = %98
  %106 = load i32*, i32** %11, align 8
  %107 = load i32, i32* @SCTP_CMD_EVENT_ULP, align 4
  %108 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %13, align 8
  %109 = call i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent* %108)
  %110 = call i32 @sctp_add_cmd_sf(i32* %106, i32 %107, i32 %109)
  br label %111

111:                                              ; preds = %105, %87
  %112 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %112, i32* %6, align 4
  br label %115

113:                                              ; preds = %104, %86
  %114 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %114, i32* %6, align 4
  br label %115

115:                                              ; preds = %113, %111, %31, %20
  %116 = load i32, i32* %6, align 4
  ret i32 %116
}

declare dso_local i32 @sctp_vtag_verify(%struct.sctp_chunk*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_sf_violation_chunklen(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_NULL(...) #1

declare dso_local i32 @SCTP_TO(i32) #1

declare dso_local i32 @SCTP_STATE(i32) #1

declare dso_local i32 @SCTP_INC_STATS(i32) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_assoc_change(%struct.sctp_association*, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent*) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_adaptation_indication(%struct.sctp_association*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
