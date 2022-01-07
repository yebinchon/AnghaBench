; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_5_1C_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_5_1C_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_chunk = type { %struct.TYPE_7__*, %struct.TYPE_8__*, %struct.TYPE_6__, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32* }
%struct.sctp_packet = type { i32 }

@SCTP_ERROR_NO_RESOURCE = common dso_local global i32 0, align 4
@SCTP_CMD_SEND_PKT = common dso_local global i32 0, align 4
@SCTP_MIB_OUTCTRLCHUNKS = common dso_local global i32 0, align 4
@SCTP_ERROR_INV_PARAM = common dso_local global i32 0, align 4
@SCTP_CID_ABORT = common dso_local global i32 0, align 4
@SCTP_MIB_ABORTEDS = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@SCTP_CMD_PEER_INIT = common dso_local global i32 0, align 4
@SCTP_CMD_INIT_COUNTER_RESET = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_STOP = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T1_INIT = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_START = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T1_COOKIE = common dso_local global i32 0, align 4
@SCTP_CMD_NEW_STATE = common dso_local global i32 0, align 4
@SCTP_STATE_COOKIE_ECHOED = common dso_local global i32 0, align 4
@SCTP_CMD_ASSOC_SHKEY = common dso_local global i32 0, align 4
@SCTP_CMD_GEN_COOKIE_ECHO = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_do_5_1C_ack(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_endpoint*, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sctp_chunk*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.sctp_chunk*, align 8
  %15 = alloca %struct.sctp_packet*, align 8
  %16 = alloca i32, align 4
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %7, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = bitcast i8* %17 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %18, %struct.sctp_chunk** %12, align 8
  %19 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %20 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %21 = call i32 @sctp_vtag_verify(%struct.sctp_chunk* %19, %struct.sctp_association* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %5
  %24 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %25 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i8*, i8** %10, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @sctp_sf_pdiscard(%struct.sctp_endpoint* %24, %struct.sctp_association* %25, i32 %26, i8* %27, i32* %28)
  store i32 %29, i32* %6, align 4
  br label %180

30:                                               ; preds = %5
  %31 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %32 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %37 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i8*, i8** %10, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = call i32 @sctp_sf_violation_chunk(%struct.sctp_endpoint* %36, %struct.sctp_association* %37, i32 %38, i8* %39, i32* %40)
  store i32 %41, i32* %6, align 4
  br label %180

42:                                               ; preds = %30
  %43 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %44 = call i32 @sctp_chunk_length_valid(%struct.sctp_chunk* %43, i32 4)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %48 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @sctp_sf_violation_chunklen(%struct.sctp_endpoint* %47, %struct.sctp_association* %48, i32 %49, i8* %50, i32* %51)
  store i32 %52, i32* %6, align 4
  br label %180

53:                                               ; preds = %42
  %54 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %55 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %54, i32 0, i32 1
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i32*
  %60 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %61 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i32* %59, i32** %62, align 8
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %14, align 8
  %63 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %64 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %65 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %70 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %69, i32 0, i32 0
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = bitcast %struct.TYPE_7__* %71 to i32*
  %73 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %74 = call i32 @sctp_verify_init(%struct.sctp_association* %63, i32 %68, i32* %72, %struct.sctp_chunk* %73, %struct.sctp_chunk** %14)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %134, label %76

76:                                               ; preds = %53
  %77 = load i32, i32* @SCTP_ERROR_NO_RESOURCE, align 4
  store i32 %77, i32* %16, align 4
  %78 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %79 = icmp ne %struct.sctp_chunk* %78, null
  br i1 %79, label %80, label %111

80:                                               ; preds = %76
  %81 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %82 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %85 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %84, i32 0, i32 0
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = bitcast %struct.TYPE_7__* %86 to i32*
  %88 = getelementptr inbounds i32, i32* %87, i64 4
  %89 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %90 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %89, i32 0, i32 0
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @ntohs(i32 %93)
  %95 = sub i64 %94, 4
  %96 = call %struct.sctp_packet* @sctp_abort_pkt_new(%struct.sctp_endpoint* %81, %struct.sctp_association* %82, i8* %83, i32* %88, i64 %95)
  store %struct.sctp_packet* %96, %struct.sctp_packet** %15, align 8
  %97 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %98 = call i32 @sctp_chunk_free(%struct.sctp_chunk* %97)
  %99 = load %struct.sctp_packet*, %struct.sctp_packet** %15, align 8
  %100 = icmp ne %struct.sctp_packet* %99, null
  br i1 %100, label %101, label %110

101:                                              ; preds = %80
  %102 = load i32*, i32** %11, align 8
  %103 = load i32, i32* @SCTP_CMD_SEND_PKT, align 4
  %104 = load %struct.sctp_packet*, %struct.sctp_packet** %15, align 8
  %105 = call i32 @SCTP_PACKET(%struct.sctp_packet* %104)
  %106 = call i32 @sctp_add_cmd_sf(i32* %102, i32 %103, i32 %105)
  %107 = load i32, i32* @SCTP_MIB_OUTCTRLCHUNKS, align 4
  %108 = call i32 @SCTP_INC_STATS(i32 %107)
  %109 = load i32, i32* @SCTP_ERROR_INV_PARAM, align 4
  store i32 %109, i32* %16, align 4
  br label %110

110:                                              ; preds = %101, %80
  br label %111

111:                                              ; preds = %110, %76
  %112 = load i32, i32* @SCTP_CID_ABORT, align 4
  %113 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %114 = call i64 @sctp_auth_recv_cid(i32 %112, %struct.sctp_association* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %111
  %117 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %118 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %119 = load i32, i32* %9, align 4
  %120 = load i8*, i8** %10, align 8
  %121 = load i32*, i32** %11, align 8
  %122 = call i32 @sctp_sf_pdiscard(%struct.sctp_endpoint* %117, %struct.sctp_association* %118, i32 %119, i8* %120, i32* %121)
  store i32 %122, i32* %6, align 4
  br label %180

123:                                              ; preds = %111
  %124 = load i32, i32* @SCTP_MIB_ABORTEDS, align 4
  %125 = call i32 @SCTP_INC_STATS(i32 %124)
  %126 = load i32*, i32** %11, align 8
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* @ECONNREFUSED, align 4
  %129 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %130 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %131 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @sctp_stop_t1_and_abort(i32* %126, i32 %127, i32 %128, %struct.sctp_association* %129, i32 %132)
  store i32 %133, i32* %6, align 4
  br label %180

134:                                              ; preds = %53
  %135 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %136 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %135, i32 0, i32 1
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = call i32 @skb_pull(%struct.TYPE_8__* %137, i32 4)
  %139 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %140 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  store i32 %138, i32* %141, align 8
  %142 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %143 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %142, i32 0, i32 0
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = bitcast %struct.TYPE_7__* %144 to i32*
  store i32* %145, i32** %13, align 8
  %146 = load i32*, i32** %11, align 8
  %147 = load i32, i32* @SCTP_CMD_PEER_INIT, align 4
  %148 = load i32*, i32** %13, align 8
  %149 = call i32 @SCTP_PEER_INIT(i32* %148)
  %150 = call i32 @sctp_add_cmd_sf(i32* %146, i32 %147, i32 %149)
  %151 = load i32*, i32** %11, align 8
  %152 = load i32, i32* @SCTP_CMD_INIT_COUNTER_RESET, align 4
  %153 = call i32 (...) @SCTP_NULL()
  %154 = call i32 @sctp_add_cmd_sf(i32* %151, i32 %152, i32 %153)
  %155 = load i32*, i32** %11, align 8
  %156 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %157 = load i32, i32* @SCTP_EVENT_TIMEOUT_T1_INIT, align 4
  %158 = call i32 @SCTP_TO(i32 %157)
  %159 = call i32 @sctp_add_cmd_sf(i32* %155, i32 %156, i32 %158)
  %160 = load i32*, i32** %11, align 8
  %161 = load i32, i32* @SCTP_CMD_TIMER_START, align 4
  %162 = load i32, i32* @SCTP_EVENT_TIMEOUT_T1_COOKIE, align 4
  %163 = call i32 @SCTP_TO(i32 %162)
  %164 = call i32 @sctp_add_cmd_sf(i32* %160, i32 %161, i32 %163)
  %165 = load i32*, i32** %11, align 8
  %166 = load i32, i32* @SCTP_CMD_NEW_STATE, align 4
  %167 = load i32, i32* @SCTP_STATE_COOKIE_ECHOED, align 4
  %168 = call i32 @SCTP_STATE(i32 %167)
  %169 = call i32 @sctp_add_cmd_sf(i32* %165, i32 %166, i32 %168)
  %170 = load i32*, i32** %11, align 8
  %171 = load i32, i32* @SCTP_CMD_ASSOC_SHKEY, align 4
  %172 = call i32 (...) @SCTP_NULL()
  %173 = call i32 @sctp_add_cmd_sf(i32* %170, i32 %171, i32 %172)
  %174 = load i32*, i32** %11, align 8
  %175 = load i32, i32* @SCTP_CMD_GEN_COOKIE_ECHO, align 4
  %176 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %177 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %176)
  %178 = call i32 @sctp_add_cmd_sf(i32* %174, i32 %175, i32 %177)
  %179 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %179, i32* %6, align 4
  br label %180

180:                                              ; preds = %134, %123, %116, %46, %35, %23
  %181 = load i32, i32* %6, align 4
  ret i32 %181
}

declare dso_local i32 @sctp_vtag_verify(%struct.sctp_chunk*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @sctp_sf_violation_chunk(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_sf_violation_chunklen(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @sctp_verify_init(%struct.sctp_association*, i32, i32*, %struct.sctp_chunk*, %struct.sctp_chunk**) #1

declare dso_local %struct.sctp_packet* @sctp_abort_pkt_new(%struct.sctp_endpoint*, %struct.sctp_association*, i8*, i32*, i64) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @sctp_chunk_free(%struct.sctp_chunk*) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_PACKET(%struct.sctp_packet*) #1

declare dso_local i32 @SCTP_INC_STATS(i32) #1

declare dso_local i64 @sctp_auth_recv_cid(i32, %struct.sctp_association*) #1

declare dso_local i32 @sctp_stop_t1_and_abort(i32*, i32, i32, %struct.sctp_association*, i32) #1

declare dso_local i32 @skb_pull(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @SCTP_PEER_INIT(i32*) #1

declare dso_local i32 @SCTP_NULL(...) #1

declare dso_local i32 @SCTP_TO(i32) #1

declare dso_local i32 @SCTP_STATE(i32) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
