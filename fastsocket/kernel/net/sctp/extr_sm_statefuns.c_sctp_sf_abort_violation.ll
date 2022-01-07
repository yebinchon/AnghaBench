; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_abort_violation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_abort_violation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.sctp_association = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.sctp_packet = type { i8* }
%struct.sctp_chunk = type { %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_11__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@SCTP_CID_ABORT = common dso_local global i32 0, align 4
@SCTP_CID_INIT_ACK = common dso_local global i64 0, align 8
@SCTP_CHUNK_FLAG_T = common dso_local global i32 0, align 4
@SCTP_CMD_UPDATE_INITTAG = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_MIB_OUTCTRLCHUNKS = common dso_local global i32 0, align 4
@SCTP_STATE_COOKIE_ECHOED = common dso_local global i64 0, align 8
@SCTP_CMD_TIMER_STOP = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T1_INIT = common dso_local global i32 0, align 4
@SCTP_CMD_SET_SK_ERR = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@SCTP_CMD_INIT_FAILED = common dso_local global i32 0, align 4
@SCTP_ERROR_PROTO_VIOLATION = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i32 0, align 4
@SCTP_CMD_ASSOC_FAILED = common dso_local global i32 0, align 4
@SCTP_MIB_CURRESTAB = common dso_local global i32 0, align 4
@SCTP_CMD_SEND_PKT = common dso_local global i32 0, align 4
@SCTP_MIB_ABORTEDS = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_ABORT = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_endpoint*, %struct.sctp_association*, i8*, i32*, i32*, i64)* @sctp_sf_abort_violation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_sf_abort_violation(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i8* %2, i32* %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sctp_endpoint*, align 8
  %9 = alloca %struct.sctp_association*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.sctp_packet*, align 8
  %15 = alloca %struct.sctp_chunk*, align 8
  %16 = alloca %struct.sctp_chunk*, align 8
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca i32, align 4
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %8, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  store %struct.sctp_packet* null, %struct.sctp_packet** %14, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = bitcast i8* %19 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %20, %struct.sctp_chunk** %15, align 8
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %16, align 8
  %21 = load i32, i32* @SCTP_CID_ABORT, align 4
  %22 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %23 = call i64 @sctp_auth_recv_cid(i32 %21, %struct.sctp_association* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  br label %167

26:                                               ; preds = %6
  %27 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %28 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = load i64, i64* %13, align 8
  %31 = call %struct.sctp_chunk* @sctp_make_abort_violation(%struct.sctp_association* %27, %struct.sctp_chunk* %28, i32* %29, i64 %30)
  store %struct.sctp_chunk* %31, %struct.sctp_chunk** %16, align 8
  %32 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %33 = icmp ne %struct.sctp_chunk* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  br label %178

35:                                               ; preds = %26
  %36 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %37 = icmp ne %struct.sctp_association* %36, null
  br i1 %37, label %38, label %125

38:                                               ; preds = %35
  %39 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %40 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %39, i32 0, i32 2
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SCTP_CID_INIT_ACK, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %82

46:                                               ; preds = %38
  %47 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %48 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %82, label %53

53:                                               ; preds = %46
  %54 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %55 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %54, i32 0, i32 2
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = bitcast %struct.TYPE_11__* %56 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %57, %struct.TYPE_16__** %17, align 8
  %58 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %59 = call i32 @sctp_chunk_length_valid(%struct.sctp_chunk* %58, i32 4)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %53
  %62 = load i32, i32* @SCTP_CHUNK_FLAG_T, align 4
  %63 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %64 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %63, i32 0, i32 2
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %62
  store i32 %68, i32* %66, align 8
  br label %81

69:                                               ; preds = %53
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @ntohl(i32 %73)
  %75 = ptrtoint i8* %74 to i32
  store i32 %75, i32* %18, align 4
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* @SCTP_CMD_UPDATE_INITTAG, align 4
  %78 = load i32, i32* %18, align 4
  %79 = call i32 @SCTP_U32(i32 %78)
  %80 = call i32 @sctp_add_cmd_sf(i32* %76, i32 %77, i32 %79)
  br label %81

81:                                               ; preds = %69, %61
  br label %82

82:                                               ; preds = %81, %46, %38
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %85 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %86 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %85)
  %87 = call i32 @sctp_add_cmd_sf(i32* %83, i32 %84, i32 %86)
  %88 = load i32, i32* @SCTP_MIB_OUTCTRLCHUNKS, align 4
  %89 = call i32 @SCTP_INC_STATS(i32 %88)
  %90 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %91 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @SCTP_STATE_COOKIE_ECHOED, align 8
  %94 = icmp sle i64 %92, %93
  br i1 %94, label %95, label %111

95:                                               ; preds = %82
  %96 = load i32*, i32** %11, align 8
  %97 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %98 = load i32, i32* @SCTP_EVENT_TIMEOUT_T1_INIT, align 4
  %99 = call i32 @SCTP_TO(i32 %98)
  %100 = call i32 @sctp_add_cmd_sf(i32* %96, i32 %97, i32 %99)
  %101 = load i32*, i32** %11, align 8
  %102 = load i32, i32* @SCTP_CMD_SET_SK_ERR, align 4
  %103 = load i32, i32* @ECONNREFUSED, align 4
  %104 = call i32 @SCTP_ERROR(i32 %103)
  %105 = call i32 @sctp_add_cmd_sf(i32* %101, i32 %102, i32 %104)
  %106 = load i32*, i32** %11, align 8
  %107 = load i32, i32* @SCTP_CMD_INIT_FAILED, align 4
  %108 = load i32, i32* @SCTP_ERROR_PROTO_VIOLATION, align 4
  %109 = call i32 @SCTP_PERR(i32 %108)
  %110 = call i32 @sctp_add_cmd_sf(i32* %106, i32 %107, i32 %109)
  br label %124

111:                                              ; preds = %82
  %112 = load i32*, i32** %11, align 8
  %113 = load i32, i32* @SCTP_CMD_SET_SK_ERR, align 4
  %114 = load i32, i32* @ECONNABORTED, align 4
  %115 = call i32 @SCTP_ERROR(i32 %114)
  %116 = call i32 @sctp_add_cmd_sf(i32* %112, i32 %113, i32 %115)
  %117 = load i32*, i32** %11, align 8
  %118 = load i32, i32* @SCTP_CMD_ASSOC_FAILED, align 4
  %119 = load i32, i32* @SCTP_ERROR_PROTO_VIOLATION, align 4
  %120 = call i32 @SCTP_PERR(i32 %119)
  %121 = call i32 @sctp_add_cmd_sf(i32* %117, i32 %118, i32 %120)
  %122 = load i32, i32* @SCTP_MIB_CURRESTAB, align 4
  %123 = call i32 @SCTP_DEC_STATS(i32 %122)
  br label %124

124:                                              ; preds = %111, %95
  br label %164

125:                                              ; preds = %35
  %126 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %127 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %128 = call %struct.sctp_packet* @sctp_ootb_pkt_new(%struct.sctp_association* %126, %struct.sctp_chunk* %127)
  store %struct.sctp_packet* %128, %struct.sctp_packet** %14, align 8
  %129 = load %struct.sctp_packet*, %struct.sctp_packet** %14, align 8
  %130 = icmp ne %struct.sctp_packet* %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %125
  br label %175

132:                                              ; preds = %125
  %133 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %134 = call i64 @sctp_test_T_bit(%struct.sctp_chunk* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %132
  %137 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %138 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %137, i32 0, i32 1
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i8* @ntohl(i32 %141)
  %143 = load %struct.sctp_packet*, %struct.sctp_packet** %14, align 8
  %144 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %143, i32 0, i32 0
  store i8* %142, i8** %144, align 8
  br label %145

145:                                              ; preds = %136, %132
  %146 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %147 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %151 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %150, i32 0, i32 0
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  store i32 %149, i32* %153, align 4
  %154 = load %struct.sctp_packet*, %struct.sctp_packet** %14, align 8
  %155 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %156 = call i32 @sctp_packet_append_chunk(%struct.sctp_packet* %154, %struct.sctp_chunk* %155)
  %157 = load i32*, i32** %11, align 8
  %158 = load i32, i32* @SCTP_CMD_SEND_PKT, align 4
  %159 = load %struct.sctp_packet*, %struct.sctp_packet** %14, align 8
  %160 = call i32 @SCTP_PACKET(%struct.sctp_packet* %159)
  %161 = call i32 @sctp_add_cmd_sf(i32* %157, i32 %158, i32 %160)
  %162 = load i32, i32* @SCTP_MIB_OUTCTRLCHUNKS, align 4
  %163 = call i32 @SCTP_INC_STATS(i32 %162)
  br label %164

164:                                              ; preds = %145, %124
  %165 = load i32, i32* @SCTP_MIB_ABORTEDS, align 4
  %166 = call i32 @SCTP_INC_STATS(i32 %165)
  br label %167

167:                                              ; preds = %164, %25
  %168 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %169 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %170 = call i32 @SCTP_ST_CHUNK(i32 0)
  %171 = load i8*, i8** %10, align 8
  %172 = load i32*, i32** %11, align 8
  %173 = call i32 @sctp_sf_pdiscard(%struct.sctp_endpoint* %168, %struct.sctp_association* %169, i32 %170, i8* %171, i32* %172)
  %174 = load i32, i32* @SCTP_DISPOSITION_ABORT, align 4
  store i32 %174, i32* %7, align 4
  br label %180

175:                                              ; preds = %131
  %176 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %177 = call i32 @sctp_chunk_free(%struct.sctp_chunk* %176)
  br label %178

178:                                              ; preds = %175, %34
  %179 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %179, i32* %7, align 4
  br label %180

180:                                              ; preds = %178, %167
  %181 = load i32, i32* %7, align 4
  ret i32 %181
}

declare dso_local i64 @sctp_auth_recv_cid(i32, %struct.sctp_association*) #1

declare dso_local %struct.sctp_chunk* @sctp_make_abort_violation(%struct.sctp_association*, %struct.sctp_chunk*, i32*, i64) #1

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_U32(i32) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_INC_STATS(i32) #1

declare dso_local i32 @SCTP_TO(i32) #1

declare dso_local i32 @SCTP_ERROR(i32) #1

declare dso_local i32 @SCTP_PERR(i32) #1

declare dso_local i32 @SCTP_DEC_STATS(i32) #1

declare dso_local %struct.sctp_packet* @sctp_ootb_pkt_new(%struct.sctp_association*, %struct.sctp_chunk*) #1

declare dso_local i64 @sctp_test_T_bit(%struct.sctp_chunk*) #1

declare dso_local i32 @sctp_packet_append_chunk(%struct.sctp_packet*, %struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_PACKET(%struct.sctp_packet*) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @SCTP_ST_CHUNK(i32) #1

declare dso_local i32 @sctp_chunk_free(%struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
