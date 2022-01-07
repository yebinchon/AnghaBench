; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_dupcook_d.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_dupcook_d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_chunk = type { i32 }
%struct.sctp_association = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sctp_ulpevent = type { i32 }

@SCTP_STATE_ESTABLISHED = common dso_local global i64 0, align 8
@SCTP_CMD_TIMER_STOP = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T1_COOKIE = common dso_local global i32 0, align 4
@SCTP_CMD_NEW_STATE = common dso_local global i32 0, align 4
@SCTP_MIB_CURRESTAB = common dso_local global i32 0, align 4
@SCTP_CMD_HB_TIMERS_START = common dso_local global i32 0, align 4
@SCTP_COMM_UP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_CMD_EVENT_ULP = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_endpoint*, %struct.sctp_association*, %struct.sctp_chunk*, i32*, %struct.sctp_association*)* @sctp_sf_do_dupcook_d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_sf_do_dupcook_d(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, %struct.sctp_chunk* %2, i32* %3, %struct.sctp_association* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_endpoint*, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca %struct.sctp_chunk*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.sctp_association*, align 8
  %12 = alloca %struct.sctp_ulpevent*, align 8
  %13 = alloca %struct.sctp_ulpevent*, align 8
  %14 = alloca %struct.sctp_chunk*, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %7, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %8, align 8
  store %struct.sctp_chunk* %2, %struct.sctp_chunk** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.sctp_association* %4, %struct.sctp_association** %11, align 8
  store %struct.sctp_ulpevent* null, %struct.sctp_ulpevent** %12, align 8
  store %struct.sctp_ulpevent* null, %struct.sctp_ulpevent** %13, align 8
  %15 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %16 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SCTP_STATE_ESTABLISHED, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %67

20:                                               ; preds = %5
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %23 = load i32, i32* @SCTP_EVENT_TIMEOUT_T1_COOKIE, align 4
  %24 = call i32 @SCTP_TO(i32 %23)
  %25 = call i32 @sctp_add_cmd_sf(i32* %21, i32 %22, i32 %24)
  %26 = load i32*, i32** %10, align 8
  %27 = load i32, i32* @SCTP_CMD_NEW_STATE, align 4
  %28 = load i64, i64* @SCTP_STATE_ESTABLISHED, align 8
  %29 = call i32 @SCTP_STATE(i64 %28)
  %30 = call i32 @sctp_add_cmd_sf(i32* %26, i32 %27, i32 %29)
  %31 = load i32, i32* @SCTP_MIB_CURRESTAB, align 4
  %32 = call i32 @SCTP_INC_STATS(i32 %31)
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* @SCTP_CMD_HB_TIMERS_START, align 4
  %35 = call i32 (...) @SCTP_NULL()
  %36 = call i32 @sctp_add_cmd_sf(i32* %33, i32 %34, i32 %35)
  %37 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %38 = load i32, i32* @SCTP_COMM_UP, align 4
  %39 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %40 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %44 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @GFP_ATOMIC, align 4
  %48 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_assoc_change(%struct.sctp_association* %37, i32 0, i32 %38, i32 0, i32 %42, i32 %46, i32* null, i32 %47)
  store %struct.sctp_ulpevent* %48, %struct.sctp_ulpevent** %12, align 8
  %49 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %12, align 8
  %50 = icmp ne %struct.sctp_ulpevent* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %20
  br label %99

52:                                               ; preds = %20
  %53 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %54 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %60 = load i32, i32* @GFP_ATOMIC, align 4
  %61 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_adaptation_indication(%struct.sctp_association* %59, i32 %60)
  store %struct.sctp_ulpevent* %61, %struct.sctp_ulpevent** %13, align 8
  %62 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %13, align 8
  %63 = icmp ne %struct.sctp_ulpevent* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  br label %99

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65, %52
  br label %67

67:                                               ; preds = %66, %5
  %68 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %69 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %70 = call %struct.sctp_chunk* @sctp_make_cookie_ack(%struct.sctp_association* %68, %struct.sctp_chunk* %69)
  store %struct.sctp_chunk* %70, %struct.sctp_chunk** %14, align 8
  %71 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %72 = icmp ne %struct.sctp_chunk* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %67
  br label %99

74:                                               ; preds = %67
  %75 = load i32*, i32** %10, align 8
  %76 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %77 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %78 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %77)
  %79 = call i32 @sctp_add_cmd_sf(i32* %75, i32 %76, i32 %78)
  %80 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %12, align 8
  %81 = icmp ne %struct.sctp_ulpevent* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %74
  %83 = load i32*, i32** %10, align 8
  %84 = load i32, i32* @SCTP_CMD_EVENT_ULP, align 4
  %85 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %12, align 8
  %86 = call i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent* %85)
  %87 = call i32 @sctp_add_cmd_sf(i32* %83, i32 %84, i32 %86)
  br label %88

88:                                               ; preds = %82, %74
  %89 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %13, align 8
  %90 = icmp ne %struct.sctp_ulpevent* %89, null
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load i32*, i32** %10, align 8
  %93 = load i32, i32* @SCTP_CMD_EVENT_ULP, align 4
  %94 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %13, align 8
  %95 = call i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent* %94)
  %96 = call i32 @sctp_add_cmd_sf(i32* %92, i32 %93, i32 %95)
  br label %97

97:                                               ; preds = %91, %88
  %98 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %98, i32* %6, align 4
  br label %113

99:                                               ; preds = %73, %64, %51
  %100 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %13, align 8
  %101 = icmp ne %struct.sctp_ulpevent* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %13, align 8
  %104 = call i32 @sctp_ulpevent_free(%struct.sctp_ulpevent* %103)
  br label %105

105:                                              ; preds = %102, %99
  %106 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %12, align 8
  %107 = icmp ne %struct.sctp_ulpevent* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %12, align 8
  %110 = call i32 @sctp_ulpevent_free(%struct.sctp_ulpevent* %109)
  br label %111

111:                                              ; preds = %108, %105
  %112 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %111, %97
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_TO(i32) #1

declare dso_local i32 @SCTP_STATE(i64) #1

declare dso_local i32 @SCTP_INC_STATS(i32) #1

declare dso_local i32 @SCTP_NULL(...) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_assoc_change(%struct.sctp_association*, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_adaptation_indication(%struct.sctp_association*, i32) #1

declare dso_local %struct.sctp_chunk* @sctp_make_cookie_ack(%struct.sctp_association*, %struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent*) #1

declare dso_local i32 @sctp_ulpevent_free(%struct.sctp_ulpevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
