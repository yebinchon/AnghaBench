; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_unexpected_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_unexpected_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_chunk = type { %struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__*, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i64 }
%struct.sctp_packet = type { i32 }

@SCTP_CMD_SEND_PKT = common dso_local global i32 0, align 4
@SCTP_MIB_OUTCTRLCHUNKS = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@COOKIE_WAIT = common dso_local global i32 0, align 4
@SCTP_CMD_NEW_ASOC = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_CMD_DELETE_TCB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*)* @sctp_sf_do_unexpected_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_sf_do_unexpected_init(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_endpoint*, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sctp_chunk*, align 8
  %14 = alloca %struct.sctp_chunk*, align 8
  %15 = alloca %struct.sctp_association*, align 8
  %16 = alloca %struct.sctp_chunk*, align 8
  %17 = alloca %struct.sctp_packet*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %7, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = bitcast i8* %20 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %21, %struct.sctp_chunk** %13, align 8
  %22 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %23 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %5
  %27 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %28 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i8*, i8** %10, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @sctp_sf_pdiscard(%struct.sctp_endpoint* %27, %struct.sctp_association* %28, i32 %29, i8* %30, i32* %31)
  store i32 %32, i32* %6, align 4
  br label %248

33:                                               ; preds = %5
  %34 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %35 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %34, i32 0, i32 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %42 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i8*, i8** %10, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @sctp_sf_tabort_8_4_8(%struct.sctp_endpoint* %41, %struct.sctp_association* %42, i32 %43, i8* %44, i32* %45)
  store i32 %46, i32* %6, align 4
  br label %248

47:                                               ; preds = %33
  %48 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %49 = call i32 @sctp_chunk_length_valid(%struct.sctp_chunk* %48, i32 4)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %47
  %52 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %53 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i8*, i8** %10, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @sctp_sf_violation_chunklen(%struct.sctp_endpoint* %52, %struct.sctp_association* %53, i32 %54, i8* %55, i32* %56)
  store i32 %57, i32* %6, align 4
  br label %248

58:                                               ; preds = %47
  %59 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %60 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %59, i32 0, i32 1
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i32*
  %65 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %66 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  store i32* %64, i32** %67, align 8
  %68 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %69 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %68, i32 0, i32 1
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = call i32 @skb_pull(%struct.TYPE_10__* %70, i32 4)
  %72 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %73 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %16, align 8
  %75 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %76 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %77 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %76, i32 0, i32 0
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %82 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %81, i32 0, i32 0
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = bitcast %struct.TYPE_9__* %83 to i32*
  %85 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %86 = call i32 @sctp_verify_init(%struct.sctp_association* %75, i32 %80, i32* %84, %struct.sctp_chunk* %85, %struct.sctp_chunk** %16)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %131, label %88

88:                                               ; preds = %58
  %89 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %90 = icmp ne %struct.sctp_chunk* %89, null
  br i1 %90, label %91, label %124

91:                                               ; preds = %88
  %92 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %93 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %96 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %95, i32 0, i32 0
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = bitcast %struct.TYPE_9__* %97 to i32*
  %99 = getelementptr inbounds i32, i32* %98, i64 4
  %100 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %101 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %100, i32 0, i32 0
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ntohs(i32 %104)
  %106 = sext i32 %105 to i64
  %107 = sub i64 %106, 4
  %108 = trunc i64 %107 to i32
  %109 = call %struct.sctp_packet* @sctp_abort_pkt_new(%struct.sctp_endpoint* %92, %struct.sctp_association* %93, i8* %94, i32* %99, i32 %108)
  store %struct.sctp_packet* %109, %struct.sctp_packet** %17, align 8
  %110 = load %struct.sctp_packet*, %struct.sctp_packet** %17, align 8
  %111 = icmp ne %struct.sctp_packet* %110, null
  br i1 %111, label %112, label %121

112:                                              ; preds = %91
  %113 = load i32*, i32** %11, align 8
  %114 = load i32, i32* @SCTP_CMD_SEND_PKT, align 4
  %115 = load %struct.sctp_packet*, %struct.sctp_packet** %17, align 8
  %116 = call i32 @SCTP_PACKET(%struct.sctp_packet* %115)
  %117 = call i32 @sctp_add_cmd_sf(i32* %113, i32 %114, i32 %116)
  %118 = load i32, i32* @SCTP_MIB_OUTCTRLCHUNKS, align 4
  %119 = call i32 @SCTP_INC_STATS(i32 %118)
  %120 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %120, i32* %12, align 4
  br label %123

121:                                              ; preds = %91
  %122 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %122, i32* %12, align 4
  br label %123

123:                                              ; preds = %121, %112
  br label %240

124:                                              ; preds = %88
  %125 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %126 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load i8*, i8** %10, align 8
  %129 = load i32*, i32** %11, align 8
  %130 = call i32 @sctp_sf_tabort_8_4_8(%struct.sctp_endpoint* %125, %struct.sctp_association* %126, i32 %127, i8* %128, i32* %129)
  store i32 %130, i32* %6, align 4
  br label %248

131:                                              ; preds = %58
  %132 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %133 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %134 = load i32, i32* @GFP_ATOMIC, align 4
  %135 = call %struct.sctp_association* @sctp_make_temp_asoc(%struct.sctp_endpoint* %132, %struct.sctp_chunk* %133, i32 %134)
  store %struct.sctp_association* %135, %struct.sctp_association** %15, align 8
  %136 = load %struct.sctp_association*, %struct.sctp_association** %15, align 8
  %137 = icmp ne %struct.sctp_association* %136, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %131
  br label %231

139:                                              ; preds = %131
  %140 = load %struct.sctp_association*, %struct.sctp_association** %15, align 8
  %141 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %142 = call i32 @sctp_source(%struct.sctp_chunk* %141)
  %143 = call i32 @sctp_scope(i32 %142)
  %144 = load i32, i32* @GFP_ATOMIC, align 4
  %145 = call i64 @sctp_assoc_set_bind_addr_from_ep(%struct.sctp_association* %140, i32 %143, i32 %144)
  %146 = icmp slt i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %139
  br label %231

148:                                              ; preds = %139
  %149 = load %struct.sctp_association*, %struct.sctp_association** %15, align 8
  %150 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %151 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %152 = call i32 @sctp_source(%struct.sctp_chunk* %151)
  %153 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %154 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %153, i32 0, i32 0
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %154, align 8
  %156 = bitcast %struct.TYPE_9__* %155 to i32*
  %157 = load i32, i32* @GFP_ATOMIC, align 4
  %158 = call i32 @sctp_process_init(%struct.sctp_association* %149, %struct.sctp_chunk* %150, i32 %152, i32* %156, i32 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %148
  br label %231

161:                                              ; preds = %148
  %162 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %163 = load i32, i32* @COOKIE_WAIT, align 4
  %164 = call i32 @sctp_state(%struct.sctp_association* %162, i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %176, label %166

166:                                              ; preds = %161
  %167 = load %struct.sctp_association*, %struct.sctp_association** %15, align 8
  %168 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %169 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %170 = load i32*, i32** %11, align 8
  %171 = call i32 @sctp_sf_check_restart_addrs(%struct.sctp_association* %167, %struct.sctp_association* %168, %struct.sctp_chunk* %169, i32* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %175, label %173

173:                                              ; preds = %166
  %174 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %174, i32* %12, align 4
  br label %233

175:                                              ; preds = %166
  br label %176

176:                                              ; preds = %175, %161
  %177 = load %struct.sctp_association*, %struct.sctp_association** %15, align 8
  %178 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %179 = call i32 @sctp_tietags_populate(%struct.sctp_association* %177, %struct.sctp_association* %178)
  store i32 0, i32* %19, align 4
  %180 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %181 = icmp ne %struct.sctp_chunk* %180, null
  br i1 %181, label %182, label %192

182:                                              ; preds = %176
  %183 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %184 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %183, i32 0, i32 0
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @ntohs(i32 %187)
  %189 = sext i32 %188 to i64
  %190 = sub i64 %189, 4
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %19, align 4
  br label %192

192:                                              ; preds = %182, %176
  %193 = load %struct.sctp_association*, %struct.sctp_association** %15, align 8
  %194 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %195 = load i32, i32* @GFP_ATOMIC, align 4
  %196 = load i32, i32* %19, align 4
  %197 = call %struct.sctp_chunk* @sctp_make_init_ack(%struct.sctp_association* %193, %struct.sctp_chunk* %194, i32 %195, i32 %196)
  store %struct.sctp_chunk* %197, %struct.sctp_chunk** %14, align 8
  %198 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %199 = icmp ne %struct.sctp_chunk* %198, null
  br i1 %199, label %201, label %200

200:                                              ; preds = %192
  br label %231

201:                                              ; preds = %192
  %202 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %203 = icmp ne %struct.sctp_chunk* %202, null
  br i1 %203, label %204, label %214

204:                                              ; preds = %201
  %205 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %206 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %205, i32 0, i32 0
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %206, align 8
  %208 = bitcast %struct.TYPE_9__* %207 to i32*
  %209 = getelementptr inbounds i32, i32* %208, i64 4
  store i32* %209, i32** %18, align 8
  %210 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %211 = load i32, i32* %19, align 4
  %212 = load i32*, i32** %18, align 8
  %213 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %210, i32 %211, i32* %212)
  br label %214

214:                                              ; preds = %204, %201
  %215 = load i32*, i32** %11, align 8
  %216 = load i32, i32* @SCTP_CMD_NEW_ASOC, align 4
  %217 = load %struct.sctp_association*, %struct.sctp_association** %15, align 8
  %218 = call i32 @SCTP_ASOC(%struct.sctp_association* %217)
  %219 = call i32 @sctp_add_cmd_sf(i32* %215, i32 %216, i32 %218)
  %220 = load i32*, i32** %11, align 8
  %221 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %222 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %223 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %222)
  %224 = call i32 @sctp_add_cmd_sf(i32* %220, i32 %221, i32 %223)
  %225 = load i32*, i32** %11, align 8
  %226 = load i32, i32* @SCTP_CMD_DELETE_TCB, align 4
  %227 = call i32 (...) @SCTP_NULL()
  %228 = call i32 @sctp_add_cmd_sf(i32* %225, i32 %226, i32 %227)
  %229 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %229, i32* %12, align 4
  %230 = load i32, i32* %12, align 4
  store i32 %230, i32* %6, align 4
  br label %248

231:                                              ; preds = %200, %160, %147, %138
  %232 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %232, i32* %12, align 4
  br label %233

233:                                              ; preds = %231, %173
  %234 = load %struct.sctp_association*, %struct.sctp_association** %15, align 8
  %235 = icmp ne %struct.sctp_association* %234, null
  br i1 %235, label %236, label %239

236:                                              ; preds = %233
  %237 = load %struct.sctp_association*, %struct.sctp_association** %15, align 8
  %238 = call i32 @sctp_association_free(%struct.sctp_association* %237)
  br label %239

239:                                              ; preds = %236, %233
  br label %240

240:                                              ; preds = %239, %123
  %241 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %242 = icmp ne %struct.sctp_chunk* %241, null
  br i1 %242, label %243, label %246

243:                                              ; preds = %240
  %244 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %245 = call i32 @sctp_chunk_free(%struct.sctp_chunk* %244)
  br label %246

246:                                              ; preds = %243, %240
  %247 = load i32, i32* %12, align 4
  store i32 %247, i32* %6, align 4
  br label %248

248:                                              ; preds = %246, %214, %124, %51, %40, %26
  %249 = load i32, i32* %6, align 4
  ret i32 %249
}

declare dso_local i32 @sctp_sf_pdiscard(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @sctp_sf_tabort_8_4_8(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_sf_violation_chunklen(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @skb_pull(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @sctp_verify_init(%struct.sctp_association*, i32, i32*, %struct.sctp_chunk*, %struct.sctp_chunk**) #1

declare dso_local %struct.sctp_packet* @sctp_abort_pkt_new(%struct.sctp_endpoint*, %struct.sctp_association*, i8*, i32*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_PACKET(%struct.sctp_packet*) #1

declare dso_local i32 @SCTP_INC_STATS(i32) #1

declare dso_local %struct.sctp_association* @sctp_make_temp_asoc(%struct.sctp_endpoint*, %struct.sctp_chunk*, i32) #1

declare dso_local i64 @sctp_assoc_set_bind_addr_from_ep(%struct.sctp_association*, i32, i32) #1

declare dso_local i32 @sctp_scope(i32) #1

declare dso_local i32 @sctp_source(%struct.sctp_chunk*) #1

declare dso_local i32 @sctp_process_init(%struct.sctp_association*, %struct.sctp_chunk*, i32, i32*, i32) #1

declare dso_local i32 @sctp_state(%struct.sctp_association*, i32) #1

declare dso_local i32 @sctp_sf_check_restart_addrs(%struct.sctp_association*, %struct.sctp_association*, %struct.sctp_chunk*, i32*) #1

declare dso_local i32 @sctp_tietags_populate(%struct.sctp_association*, %struct.sctp_association*) #1

declare dso_local %struct.sctp_chunk* @sctp_make_init_ack(%struct.sctp_association*, %struct.sctp_chunk*, i32, i32) #1

declare dso_local i32 @sctp_addto_chunk(%struct.sctp_chunk*, i32, i32*) #1

declare dso_local i32 @SCTP_ASOC(%struct.sctp_association*) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_NULL(...) #1

declare dso_local i32 @sctp_association_free(%struct.sctp_association*) #1

declare dso_local i32 @sctp_chunk_free(%struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
