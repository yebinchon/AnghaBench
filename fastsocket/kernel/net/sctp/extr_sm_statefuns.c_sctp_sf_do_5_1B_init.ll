; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_5_1B_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_5_1B_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_chunk = type { %struct.TYPE_12__*, %struct.TYPE_13__*, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_8__*, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_8__ = type { i64 }
%struct.sctp_packet = type { i32 }
%struct.TYPE_14__ = type { %struct.sctp_endpoint* }

@SCTP_MIB_OUTOFBLUES = common dso_local global i32 0, align 4
@CLOSING = common dso_local global i32 0, align 4
@SCTP_CMD_SEND_PKT = common dso_local global i32 0, align 4
@SCTP_MIB_OUTCTRLCHUNKS = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCTP_CMD_NEW_ASOC = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_CMD_DELETE_TCB = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_DELETE_TCB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_do_5_1B_init(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_endpoint*, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sctp_chunk*, align 8
  %13 = alloca %struct.sctp_chunk*, align 8
  %14 = alloca %struct.sctp_association*, align 8
  %15 = alloca %struct.sctp_chunk*, align 8
  %16 = alloca %struct.sctp_packet*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %7, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = bitcast i8* %19 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %20, %struct.sctp_chunk** %12, align 8
  %21 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %22 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %5
  %26 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %27 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i8*, i8** %10, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = call i32 @sctp_sf_pdiscard(%struct.sctp_endpoint* %26, %struct.sctp_association* %27, i32 %28, i8* %29, i32* %30)
  store i32 %31, i32* %6, align 4
  br label %256

32:                                               ; preds = %5
  %33 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %34 = call i32 (...) @sctp_get_ctl_sock()
  %35 = call %struct.TYPE_14__* @sctp_sk(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %36, align 8
  %38 = icmp eq %struct.sctp_endpoint* %33, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %32
  %40 = load i32, i32* @SCTP_MIB_OUTOFBLUES, align 4
  %41 = call i32 @SCTP_INC_STATS(i32 %40)
  %42 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %43 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i8*, i8** %10, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @sctp_sf_tabort_8_4_8(%struct.sctp_endpoint* %42, %struct.sctp_association* %43, i32 %44, i8* %45, i32* %46)
  store i32 %47, i32* %6, align 4
  br label %256

48:                                               ; preds = %32
  %49 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %50 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %49, i32 0, i32 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %57 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i8*, i8** %10, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @sctp_sf_tabort_8_4_8(%struct.sctp_endpoint* %56, %struct.sctp_association* %57, i32 %58, i8* %59, i32* %60)
  store i32 %61, i32* %6, align 4
  br label %256

62:                                               ; preds = %48
  %63 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %64 = call i32 @sctp_chunk_length_valid(%struct.sctp_chunk* %63, i32 4)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %62
  %67 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %68 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i8*, i8** %10, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = call i32 @sctp_sf_pdiscard(%struct.sctp_endpoint* %67, %struct.sctp_association* %68, i32 %69, i8* %70, i32* %71)
  store i32 %72, i32* %6, align 4
  br label %256

73:                                               ; preds = %62
  %74 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %75 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @CLOSING, align 4
  %79 = call i64 @sctp_sstate(i32 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %73
  %82 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %83 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i8*, i8** %10, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = call i32 @sctp_sf_tabort_8_4_8(%struct.sctp_endpoint* %82, %struct.sctp_association* %83, i32 %84, i8* %85, i32* %86)
  store i32 %87, i32* %6, align 4
  br label %256

88:                                               ; preds = %73
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %15, align 8
  %89 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %90 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %91 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %90, i32 0, i32 0
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %96 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %95, i32 0, i32 0
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %96, align 8
  %98 = bitcast %struct.TYPE_12__* %97 to i32*
  %99 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %100 = call i32 @sctp_verify_init(%struct.sctp_association* %89, i32 %94, i32* %98, %struct.sctp_chunk* %99, %struct.sctp_chunk** %15)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %146, label %102

102:                                              ; preds = %88
  %103 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %104 = icmp ne %struct.sctp_chunk* %103, null
  br i1 %104, label %105, label %139

105:                                              ; preds = %102
  %106 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %107 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %108 = load i8*, i8** %10, align 8
  %109 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %110 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %109, i32 0, i32 0
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  %112 = bitcast %struct.TYPE_12__* %111 to i32*
  %113 = getelementptr inbounds i32, i32* %112, i64 4
  %114 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %115 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %114, i32 0, i32 0
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ntohs(i32 %118)
  %120 = sext i32 %119 to i64
  %121 = sub i64 %120, 4
  %122 = trunc i64 %121 to i32
  %123 = call %struct.sctp_packet* @sctp_abort_pkt_new(%struct.sctp_endpoint* %106, %struct.sctp_association* %107, i8* %108, i32* %113, i32 %122)
  store %struct.sctp_packet* %123, %struct.sctp_packet** %16, align 8
  %124 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %125 = call i32 @sctp_chunk_free(%struct.sctp_chunk* %124)
  %126 = load %struct.sctp_packet*, %struct.sctp_packet** %16, align 8
  %127 = icmp ne %struct.sctp_packet* %126, null
  br i1 %127, label %128, label %137

128:                                              ; preds = %105
  %129 = load i32*, i32** %11, align 8
  %130 = load i32, i32* @SCTP_CMD_SEND_PKT, align 4
  %131 = load %struct.sctp_packet*, %struct.sctp_packet** %16, align 8
  %132 = call i32 @SCTP_PACKET(%struct.sctp_packet* %131)
  %133 = call i32 @sctp_add_cmd_sf(i32* %129, i32 %130, i32 %132)
  %134 = load i32, i32* @SCTP_MIB_OUTCTRLCHUNKS, align 4
  %135 = call i32 @SCTP_INC_STATS(i32 %134)
  %136 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %136, i32* %6, align 4
  br label %256

137:                                              ; preds = %105
  %138 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %138, i32* %6, align 4
  br label %256

139:                                              ; preds = %102
  %140 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %141 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %142 = load i32, i32* %9, align 4
  %143 = load i8*, i8** %10, align 8
  %144 = load i32*, i32** %11, align 8
  %145 = call i32 @sctp_sf_tabort_8_4_8(%struct.sctp_endpoint* %140, %struct.sctp_association* %141, i32 %142, i8* %143, i32* %144)
  store i32 %145, i32* %6, align 4
  br label %256

146:                                              ; preds = %88
  %147 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %148 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %147, i32 0, i32 1
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = inttoptr i64 %151 to i32*
  %153 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %154 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  store i32* %152, i32** %155, align 8
  %156 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %157 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %156, i32 0, i32 1
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %157, align 8
  %159 = call i32 @skb_pull(%struct.TYPE_13__* %158, i32 4)
  %160 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %161 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  store i32 %159, i32* %162, align 8
  %163 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %164 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %165 = load i32, i32* @GFP_ATOMIC, align 4
  %166 = call %struct.sctp_association* @sctp_make_temp_asoc(%struct.sctp_endpoint* %163, %struct.sctp_chunk* %164, i32 %165)
  store %struct.sctp_association* %166, %struct.sctp_association** %14, align 8
  %167 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %168 = icmp ne %struct.sctp_association* %167, null
  br i1 %168, label %170, label %169

169:                                              ; preds = %146
  br label %248

170:                                              ; preds = %146
  %171 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %172 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %173 = call i32 @sctp_source(%struct.sctp_chunk* %172)
  %174 = call i32 @sctp_scope(i32 %173)
  %175 = load i32, i32* @GFP_ATOMIC, align 4
  %176 = call i64 @sctp_assoc_set_bind_addr_from_ep(%struct.sctp_association* %171, i32 %174, i32 %175)
  %177 = icmp slt i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %170
  br label %245

179:                                              ; preds = %170
  %180 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %181 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %182 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %183 = call i32 @sctp_source(%struct.sctp_chunk* %182)
  %184 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %185 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %184, i32 0, i32 0
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %185, align 8
  %187 = bitcast %struct.TYPE_12__* %186 to i32*
  %188 = load i32, i32* @GFP_ATOMIC, align 4
  %189 = call i32 @sctp_process_init(%struct.sctp_association* %180, %struct.sctp_chunk* %181, i32 %183, i32* %187, i32 %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %179
  br label %245

192:                                              ; preds = %179
  store i32 0, i32* %18, align 4
  %193 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %194 = icmp ne %struct.sctp_chunk* %193, null
  br i1 %194, label %195, label %205

195:                                              ; preds = %192
  %196 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %197 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %196, i32 0, i32 0
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @ntohs(i32 %200)
  %202 = sext i32 %201 to i64
  %203 = sub i64 %202, 4
  %204 = trunc i64 %203 to i32
  store i32 %204, i32* %18, align 4
  br label %205

205:                                              ; preds = %195, %192
  %206 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %207 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %208 = load i32, i32* @GFP_ATOMIC, align 4
  %209 = load i32, i32* %18, align 4
  %210 = call %struct.sctp_chunk* @sctp_make_init_ack(%struct.sctp_association* %206, %struct.sctp_chunk* %207, i32 %208, i32 %209)
  store %struct.sctp_chunk* %210, %struct.sctp_chunk** %13, align 8
  %211 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %212 = icmp ne %struct.sctp_chunk* %211, null
  br i1 %212, label %214, label %213

213:                                              ; preds = %205
  br label %245

214:                                              ; preds = %205
  %215 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %216 = icmp ne %struct.sctp_chunk* %215, null
  br i1 %216, label %217, label %229

217:                                              ; preds = %214
  %218 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %219 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %218, i32 0, i32 0
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %219, align 8
  %221 = bitcast %struct.TYPE_12__* %220 to i32*
  %222 = getelementptr inbounds i32, i32* %221, i64 4
  store i32* %222, i32** %17, align 8
  %223 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %224 = load i32, i32* %18, align 4
  %225 = load i32*, i32** %17, align 8
  %226 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %223, i32 %224, i32* %225)
  %227 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %228 = call i32 @sctp_chunk_free(%struct.sctp_chunk* %227)
  br label %229

229:                                              ; preds = %217, %214
  %230 = load i32*, i32** %11, align 8
  %231 = load i32, i32* @SCTP_CMD_NEW_ASOC, align 4
  %232 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %233 = call i32 @SCTP_ASOC(%struct.sctp_association* %232)
  %234 = call i32 @sctp_add_cmd_sf(i32* %230, i32 %231, i32 %233)
  %235 = load i32*, i32** %11, align 8
  %236 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %237 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %238 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %237)
  %239 = call i32 @sctp_add_cmd_sf(i32* %235, i32 %236, i32 %238)
  %240 = load i32*, i32** %11, align 8
  %241 = load i32, i32* @SCTP_CMD_DELETE_TCB, align 4
  %242 = call i32 (...) @SCTP_NULL()
  %243 = call i32 @sctp_add_cmd_sf(i32* %240, i32 %241, i32 %242)
  %244 = load i32, i32* @SCTP_DISPOSITION_DELETE_TCB, align 4
  store i32 %244, i32* %6, align 4
  br label %256

245:                                              ; preds = %213, %191, %178
  %246 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %247 = call i32 @sctp_association_free(%struct.sctp_association* %246)
  br label %248

248:                                              ; preds = %245, %169
  %249 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %250 = icmp ne %struct.sctp_chunk* %249, null
  br i1 %250, label %251, label %254

251:                                              ; preds = %248
  %252 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %253 = call i32 @sctp_chunk_free(%struct.sctp_chunk* %252)
  br label %254

254:                                              ; preds = %251, %248
  %255 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %255, i32* %6, align 4
  br label %256

256:                                              ; preds = %254, %229, %139, %137, %128, %81, %66, %55, %39, %25
  %257 = load i32, i32* %6, align 4
  ret i32 %257
}

declare dso_local i32 @sctp_sf_pdiscard(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_14__* @sctp_sk(i32) #1

declare dso_local i32 @sctp_get_ctl_sock(...) #1

declare dso_local i32 @SCTP_INC_STATS(i32) #1

declare dso_local i32 @sctp_sf_tabort_8_4_8(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i64 @sctp_sstate(i32, i32) #1

declare dso_local i32 @sctp_verify_init(%struct.sctp_association*, i32, i32*, %struct.sctp_chunk*, %struct.sctp_chunk**) #1

declare dso_local %struct.sctp_packet* @sctp_abort_pkt_new(%struct.sctp_endpoint*, %struct.sctp_association*, i8*, i32*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @sctp_chunk_free(%struct.sctp_chunk*) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_PACKET(%struct.sctp_packet*) #1

declare dso_local i32 @skb_pull(%struct.TYPE_13__*, i32) #1

declare dso_local %struct.sctp_association* @sctp_make_temp_asoc(%struct.sctp_endpoint*, %struct.sctp_chunk*, i32) #1

declare dso_local i64 @sctp_assoc_set_bind_addr_from_ep(%struct.sctp_association*, i32, i32) #1

declare dso_local i32 @sctp_scope(i32) #1

declare dso_local i32 @sctp_source(%struct.sctp_chunk*) #1

declare dso_local i32 @sctp_process_init(%struct.sctp_association*, %struct.sctp_chunk*, i32, i32*, i32) #1

declare dso_local %struct.sctp_chunk* @sctp_make_init_ack(%struct.sctp_association*, %struct.sctp_chunk*, i32, i32) #1

declare dso_local i32 @sctp_addto_chunk(%struct.sctp_chunk*, i32, i32*) #1

declare dso_local i32 @SCTP_ASOC(%struct.sctp_association*) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_NULL(...) #1

declare dso_local i32 @sctp_association_free(%struct.sctp_association*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
