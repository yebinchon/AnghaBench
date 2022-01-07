; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_dupcook_a.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_dupcook_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_chunk = type { %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.sctp_association = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.sctp_ulpevent = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i64 0, align 8
@SHUTDOWN_ACK_SENT = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i64 0, align 8
@SCTP_ERROR_COOKIE_IN_SHUTDOWN = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_CMD_T3_RTX_TIMERS_STOP = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_STOP = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_SACK = common dso_local global i32 0, align 4
@SCTP_CMD_PURGE_OUTQUEUE = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T4_RTO = common dso_local global i32 0, align 4
@SCTP_CMD_PURGE_ASCONF_QUEUE = common dso_local global i32 0, align 4
@SCTP_RESTART = common dso_local global i32 0, align 4
@SCTP_CMD_UPDATE_ASSOC = common dso_local global i32 0, align 4
@SCTP_CMD_EVENT_ULP = common dso_local global i32 0, align 4
@SCTP_CMD_NEW_STATE = common dso_local global i32 0, align 4
@SCTP_STATE_ESTABLISHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sctp_endpoint*, %struct.sctp_association*, %struct.sctp_chunk*, i32*, %struct.sctp_association*)* @sctp_sf_do_dupcook_a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sctp_sf_do_dupcook_a(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, %struct.sctp_chunk* %2, i32* %3, %struct.sctp_association* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.sctp_endpoint*, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca %struct.sctp_chunk*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.sctp_association*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.sctp_ulpevent*, align 8
  %14 = alloca %struct.sctp_chunk*, align 8
  %15 = alloca %struct.sctp_chunk*, align 8
  %16 = alloca i64, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %7, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %8, align 8
  store %struct.sctp_chunk* %2, %struct.sctp_chunk** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.sctp_association* %4, %struct.sctp_association** %11, align 8
  %17 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %18 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32* %24, i32** %12, align 8
  %25 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %26 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %27 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %28 = call i32 @sctp_source(%struct.sctp_chunk* %27)
  %29 = load i32*, i32** %12, align 8
  %30 = load i32, i32* @GFP_ATOMIC, align 4
  %31 = call i32 @sctp_process_init(%struct.sctp_association* %25, %struct.sctp_chunk* %26, i32 %28, i32* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %5
  br label %149

34:                                               ; preds = %5
  %35 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %36 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %37 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @sctp_sf_check_restart_addrs(%struct.sctp_association* %35, %struct.sctp_association* %36, %struct.sctp_chunk* %37, i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %34
  %42 = load i64, i64* @SCTP_DISPOSITION_CONSUME, align 8
  store i64 %42, i64* %6, align 8
  br label %151

43:                                               ; preds = %34
  %44 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %45 = load i32, i32* @SHUTDOWN_ACK_SENT, align 4
  %46 = call i64 @sctp_state(%struct.sctp_association* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %79

48:                                               ; preds = %43
  %49 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %50 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %51 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %52 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %51, i32 0, i32 0
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @SCTP_ST_CHUNK(i32 %55)
  %57 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = call i64 @sctp_sf_do_9_2_reshutack(%struct.sctp_endpoint* %49, %struct.sctp_association* %50, i32 %56, %struct.sctp_chunk* %57, i32* %58)
  store i64 %59, i64* %16, align 8
  %60 = load i64, i64* @SCTP_DISPOSITION_NOMEM, align 8
  %61 = load i64, i64* %16, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %48
  br label %149

64:                                               ; preds = %48
  %65 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %66 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %67 = load i32, i32* @SCTP_ERROR_COOKIE_IN_SHUTDOWN, align 4
  %68 = call %struct.sctp_chunk* @sctp_make_op_error(%struct.sctp_association* %65, %struct.sctp_chunk* %66, i32 %67, i32* null, i32 0, i32 0)
  store %struct.sctp_chunk* %68, %struct.sctp_chunk** %15, align 8
  %69 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %70 = icmp ne %struct.sctp_chunk* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load i32*, i32** %10, align 8
  %73 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %74 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %75 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %74)
  %76 = call i32 @sctp_add_cmd_sf(i32* %72, i32 %73, i32 %75)
  br label %77

77:                                               ; preds = %71, %64
  %78 = load i64, i64* @SCTP_DISPOSITION_CONSUME, align 8
  store i64 %78, i64* %6, align 8
  br label %151

79:                                               ; preds = %43
  %80 = load i32*, i32** %10, align 8
  %81 = load i32, i32* @SCTP_CMD_T3_RTX_TIMERS_STOP, align 4
  %82 = call i32 (...) @SCTP_NULL()
  %83 = call i32 @sctp_add_cmd_sf(i32* %80, i32 %81, i32 %82)
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %86 = load i32, i32* @SCTP_EVENT_TIMEOUT_SACK, align 4
  %87 = call i32 @SCTP_TO(i32 %86)
  %88 = call i32 @sctp_add_cmd_sf(i32* %84, i32 %85, i32 %87)
  %89 = load i32*, i32** %10, align 8
  %90 = load i32, i32* @SCTP_CMD_PURGE_OUTQUEUE, align 4
  %91 = call i32 (...) @SCTP_NULL()
  %92 = call i32 @sctp_add_cmd_sf(i32* %89, i32 %90, i32 %91)
  %93 = load i32*, i32** %10, align 8
  %94 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %95 = load i32, i32* @SCTP_EVENT_TIMEOUT_T4_RTO, align 4
  %96 = call i32 @SCTP_TO(i32 %95)
  %97 = call i32 @sctp_add_cmd_sf(i32* %93, i32 %94, i32 %96)
  %98 = load i32*, i32** %10, align 8
  %99 = load i32, i32* @SCTP_CMD_PURGE_ASCONF_QUEUE, align 4
  %100 = call i32 (...) @SCTP_NULL()
  %101 = call i32 @sctp_add_cmd_sf(i32* %98, i32 %99, i32 %100)
  %102 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %103 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %104 = call %struct.sctp_chunk* @sctp_make_cookie_ack(%struct.sctp_association* %102, %struct.sctp_chunk* %103)
  store %struct.sctp_chunk* %104, %struct.sctp_chunk** %14, align 8
  %105 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %106 = icmp ne %struct.sctp_chunk* %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %79
  br label %149

108:                                              ; preds = %79
  %109 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %110 = load i32, i32* @SCTP_RESTART, align 4
  %111 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %112 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %116 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @GFP_ATOMIC, align 4
  %120 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_assoc_change(%struct.sctp_association* %109, i32 0, i32 %110, i32 0, i32 %114, i32 %118, i32* null, i32 %119)
  store %struct.sctp_ulpevent* %120, %struct.sctp_ulpevent** %13, align 8
  %121 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %13, align 8
  %122 = icmp ne %struct.sctp_ulpevent* %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %108
  br label %146

124:                                              ; preds = %108
  %125 = load i32*, i32** %10, align 8
  %126 = load i32, i32* @SCTP_CMD_UPDATE_ASSOC, align 4
  %127 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %128 = call i32 @SCTP_ASOC(%struct.sctp_association* %127)
  %129 = call i32 @sctp_add_cmd_sf(i32* %125, i32 %126, i32 %128)
  %130 = load i32*, i32** %10, align 8
  %131 = load i32, i32* @SCTP_CMD_EVENT_ULP, align 4
  %132 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %13, align 8
  %133 = call i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent* %132)
  %134 = call i32 @sctp_add_cmd_sf(i32* %130, i32 %131, i32 %133)
  %135 = load i32*, i32** %10, align 8
  %136 = load i32, i32* @SCTP_CMD_NEW_STATE, align 4
  %137 = load i32, i32* @SCTP_STATE_ESTABLISHED, align 4
  %138 = call i32 @SCTP_STATE(i32 %137)
  %139 = call i32 @sctp_add_cmd_sf(i32* %135, i32 %136, i32 %138)
  %140 = load i32*, i32** %10, align 8
  %141 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %142 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %143 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %142)
  %144 = call i32 @sctp_add_cmd_sf(i32* %140, i32 %141, i32 %143)
  %145 = load i64, i64* @SCTP_DISPOSITION_CONSUME, align 8
  store i64 %145, i64* %6, align 8
  br label %151

146:                                              ; preds = %123
  %147 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %148 = call i32 @sctp_chunk_free(%struct.sctp_chunk* %147)
  br label %149

149:                                              ; preds = %146, %107, %63, %33
  %150 = load i64, i64* @SCTP_DISPOSITION_NOMEM, align 8
  store i64 %150, i64* %6, align 8
  br label %151

151:                                              ; preds = %149, %124, %77, %41
  %152 = load i64, i64* %6, align 8
  ret i64 %152
}

declare dso_local i32 @sctp_process_init(%struct.sctp_association*, %struct.sctp_chunk*, i32, i32*, i32) #1

declare dso_local i32 @sctp_source(%struct.sctp_chunk*) #1

declare dso_local i32 @sctp_sf_check_restart_addrs(%struct.sctp_association*, %struct.sctp_association*, %struct.sctp_chunk*, i32*) #1

declare dso_local i64 @sctp_state(%struct.sctp_association*, i32) #1

declare dso_local i64 @sctp_sf_do_9_2_reshutack(%struct.sctp_endpoint*, %struct.sctp_association*, i32, %struct.sctp_chunk*, i32*) #1

declare dso_local i32 @SCTP_ST_CHUNK(i32) #1

declare dso_local %struct.sctp_chunk* @sctp_make_op_error(%struct.sctp_association*, %struct.sctp_chunk*, i32, i32*, i32, i32) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_NULL(...) #1

declare dso_local i32 @SCTP_TO(i32) #1

declare dso_local %struct.sctp_chunk* @sctp_make_cookie_ack(%struct.sctp_association*, %struct.sctp_chunk*) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_assoc_change(%struct.sctp_association*, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @SCTP_ASOC(%struct.sctp_association*) #1

declare dso_local i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent*) #1

declare dso_local i32 @SCTP_STATE(i32) #1

declare dso_local i32 @sctp_chunk_free(%struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
