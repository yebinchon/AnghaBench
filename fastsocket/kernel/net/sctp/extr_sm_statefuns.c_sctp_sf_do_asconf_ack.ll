; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_asconf_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_asconf_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i64, %struct.sctp_chunk* }
%struct.sctp_chunk = type { %struct.TYPE_5__, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.sctp_paramhdr = type { i32 }
%struct.TYPE_6__ = type { i32, i64 }

@SCTP_CMD_REPORT_BAD_TAG = common dso_local global i32 0, align 4
@sctp_addip_noauth = common dso_local global i32 0, align 4
@SCTP_ERROR_ASCONF_ACK = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_STOP = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T4_RTO = common dso_local global i32 0, align 4
@SCTP_CMD_DISCARD_PACKET = common dso_local global i32 0, align 4
@SCTP_CMD_SET_SK_ERR = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i32 0, align 4
@SCTP_CMD_ASSOC_FAILED = common dso_local global i32 0, align 4
@SCTP_MIB_ABORTEDS = common dso_local global i32 0, align 4
@SCTP_MIB_CURRESTAB = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_ABORT = common dso_local global i32 0, align 4
@SCTP_CMD_SEND_NEXT_ASCONF = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4
@SCTP_ERROR_RSRC_LOW = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_DISCARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_do_asconf_ack(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_endpoint*, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sctp_chunk*, align 8
  %13 = alloca %struct.sctp_chunk*, align 8
  %14 = alloca %struct.sctp_chunk*, align 8
  %15 = alloca %struct.sctp_paramhdr*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %7, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = bitcast i8* %19 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %20, %struct.sctp_chunk** %12, align 8
  %21 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %22 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %21, i32 0, i32 1
  %23 = load %struct.sctp_chunk*, %struct.sctp_chunk** %22, align 8
  store %struct.sctp_chunk* %23, %struct.sctp_chunk** %13, align 8
  store %struct.sctp_paramhdr* null, %struct.sctp_paramhdr** %15, align 8
  %24 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %25 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %26 = call i32 @sctp_vtag_verify(%struct.sctp_chunk* %24, %struct.sctp_association* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %5
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* @SCTP_CMD_REPORT_BAD_TAG, align 4
  %31 = call i32 (...) @SCTP_NULL()
  %32 = call i32 @sctp_add_cmd_sf(i32* %29, i32 %30, i32 %31)
  %33 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %34 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @sctp_sf_pdiscard(%struct.sctp_endpoint* %33, %struct.sctp_association* %34, i32 %35, i8* %36, i32* %37)
  store i32 %38, i32* %6, align 4
  br label %227

39:                                               ; preds = %5
  %40 = load i32, i32* @sctp_addip_noauth, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %39
  %43 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %44 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %42
  %48 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %49 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i8*, i8** %10, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @sctp_sf_discard_chunk(%struct.sctp_endpoint* %48, %struct.sctp_association* %49, i32 %50, i8* %51, i32* %52)
  store i32 %53, i32* %6, align 4
  br label %227

54:                                               ; preds = %42, %39
  %55 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %56 = call i32 @sctp_chunk_length_valid(%struct.sctp_chunk* %55, i32 4)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %54
  %59 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %60 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i8*, i8** %10, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @sctp_sf_violation_chunklen(%struct.sctp_endpoint* %59, %struct.sctp_association* %60, i32 %61, i8* %62, i32* %63)
  store i32 %64, i32* %6, align 4
  br label %227

65:                                               ; preds = %54
  %66 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %67 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %71, %struct.TYPE_6__** %16, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @ntohl(i32 %74)
  store i64 %75, i64* %18, align 8
  %76 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i32*
  %81 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %82 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to i8*
  %85 = call i32 @sctp_verify_asconf(%struct.sctp_association* %76, i32* %80, i8* %84, %struct.sctp_paramhdr** %15)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %65
  %88 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %89 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i8*, i8** %10, align 8
  %92 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %15, align 8
  %93 = bitcast %struct.sctp_paramhdr* %92 to i8*
  %94 = load i32*, i32** %11, align 8
  %95 = call i32 @sctp_sf_violation_paramlen(%struct.sctp_endpoint* %88, %struct.sctp_association* %89, i32 %90, i8* %91, i8* %93, i32* %94)
  store i32 %95, i32* %6, align 4
  br label %227

96:                                               ; preds = %65
  %97 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %98 = icmp ne %struct.sctp_chunk* %97, null
  br i1 %98, label %99, label %109

99:                                               ; preds = %96
  %100 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %101 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %104, %struct.TYPE_6__** %16, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @ntohl(i32 %107)
  store i64 %108, i64* %17, align 8
  br label %114

109:                                              ; preds = %96
  %110 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %111 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = sub nsw i64 %112, 1
  store i64 %113, i64* %17, align 8
  br label %114

114:                                              ; preds = %109, %99
  %115 = load i64, i64* %18, align 8
  %116 = load i64, i64* %17, align 8
  %117 = add nsw i64 %116, 1
  %118 = call i64 @ADDIP_SERIAL_gte(i64 %115, i64 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %165

120:                                              ; preds = %114
  %121 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %122 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %121, i32 0, i32 1
  %123 = load %struct.sctp_chunk*, %struct.sctp_chunk** %122, align 8
  %124 = icmp ne %struct.sctp_chunk* %123, null
  br i1 %124, label %165, label %125

125:                                              ; preds = %120
  %126 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %127 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %128 = call %struct.sctp_chunk* @sctp_make_abort(%struct.sctp_association* %126, %struct.sctp_chunk* %127, i32 4)
  store %struct.sctp_chunk* %128, %struct.sctp_chunk** %14, align 8
  %129 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %130 = icmp ne %struct.sctp_chunk* %129, null
  br i1 %130, label %131, label %140

131:                                              ; preds = %125
  %132 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %133 = load i32, i32* @SCTP_ERROR_ASCONF_ACK, align 4
  %134 = call i32 @sctp_init_cause(%struct.sctp_chunk* %132, i32 %133, i32 0)
  %135 = load i32*, i32** %11, align 8
  %136 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %137 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %138 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %137)
  %139 = call i32 @sctp_add_cmd_sf(i32* %135, i32 %136, i32 %138)
  br label %140

140:                                              ; preds = %131, %125
  %141 = load i32*, i32** %11, align 8
  %142 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %143 = load i32, i32* @SCTP_EVENT_TIMEOUT_T4_RTO, align 4
  %144 = call i32 @SCTP_TO(i32 %143)
  %145 = call i32 @sctp_add_cmd_sf(i32* %141, i32 %142, i32 %144)
  %146 = load i32*, i32** %11, align 8
  %147 = load i32, i32* @SCTP_CMD_DISCARD_PACKET, align 4
  %148 = call i32 (...) @SCTP_NULL()
  %149 = call i32 @sctp_add_cmd_sf(i32* %146, i32 %147, i32 %148)
  %150 = load i32*, i32** %11, align 8
  %151 = load i32, i32* @SCTP_CMD_SET_SK_ERR, align 4
  %152 = load i32, i32* @ECONNABORTED, align 4
  %153 = call i32 @SCTP_ERROR(i32 %152)
  %154 = call i32 @sctp_add_cmd_sf(i32* %150, i32 %151, i32 %153)
  %155 = load i32*, i32** %11, align 8
  %156 = load i32, i32* @SCTP_CMD_ASSOC_FAILED, align 4
  %157 = load i32, i32* @SCTP_ERROR_ASCONF_ACK, align 4
  %158 = call i32 @SCTP_PERR(i32 %157)
  %159 = call i32 @sctp_add_cmd_sf(i32* %155, i32 %156, i32 %158)
  %160 = load i32, i32* @SCTP_MIB_ABORTEDS, align 4
  %161 = call i32 @SCTP_INC_STATS(i32 %160)
  %162 = load i32, i32* @SCTP_MIB_CURRESTAB, align 4
  %163 = call i32 @SCTP_DEC_STATS(i32 %162)
  %164 = load i32, i32* @SCTP_DISPOSITION_ABORT, align 4
  store i32 %164, i32* %6, align 4
  br label %227

165:                                              ; preds = %120, %114
  %166 = load i64, i64* %18, align 8
  %167 = load i64, i64* %17, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %225

169:                                              ; preds = %165
  %170 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %171 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %170, i32 0, i32 1
  %172 = load %struct.sctp_chunk*, %struct.sctp_chunk** %171, align 8
  %173 = icmp ne %struct.sctp_chunk* %172, null
  br i1 %173, label %174, label %225

174:                                              ; preds = %169
  %175 = load i32*, i32** %11, align 8
  %176 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %177 = load i32, i32* @SCTP_EVENT_TIMEOUT_T4_RTO, align 4
  %178 = call i32 @SCTP_TO(i32 %177)
  %179 = call i32 @sctp_add_cmd_sf(i32* %175, i32 %176, i32 %178)
  %180 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %181 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %182 = call i32 @sctp_process_asconf_ack(%struct.sctp_association* %180, %struct.sctp_chunk* %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %190, label %184

184:                                              ; preds = %174
  %185 = load i32*, i32** %11, align 8
  %186 = load i32, i32* @SCTP_CMD_SEND_NEXT_ASCONF, align 4
  %187 = call i32 (...) @SCTP_NULL()
  %188 = call i32 @sctp_add_cmd_sf(i32* %185, i32 %186, i32 %187)
  %189 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %189, i32* %6, align 4
  br label %227

190:                                              ; preds = %174
  %191 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %192 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %193 = call %struct.sctp_chunk* @sctp_make_abort(%struct.sctp_association* %191, %struct.sctp_chunk* %192, i32 4)
  store %struct.sctp_chunk* %193, %struct.sctp_chunk** %14, align 8
  %194 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %195 = icmp ne %struct.sctp_chunk* %194, null
  br i1 %195, label %196, label %205

196:                                              ; preds = %190
  %197 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %198 = load i32, i32* @SCTP_ERROR_RSRC_LOW, align 4
  %199 = call i32 @sctp_init_cause(%struct.sctp_chunk* %197, i32 %198, i32 0)
  %200 = load i32*, i32** %11, align 8
  %201 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %202 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %203 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %202)
  %204 = call i32 @sctp_add_cmd_sf(i32* %200, i32 %201, i32 %203)
  br label %205

205:                                              ; preds = %196, %190
  %206 = load i32*, i32** %11, align 8
  %207 = load i32, i32* @SCTP_CMD_DISCARD_PACKET, align 4
  %208 = call i32 (...) @SCTP_NULL()
  %209 = call i32 @sctp_add_cmd_sf(i32* %206, i32 %207, i32 %208)
  %210 = load i32*, i32** %11, align 8
  %211 = load i32, i32* @SCTP_CMD_SET_SK_ERR, align 4
  %212 = load i32, i32* @ECONNABORTED, align 4
  %213 = call i32 @SCTP_ERROR(i32 %212)
  %214 = call i32 @sctp_add_cmd_sf(i32* %210, i32 %211, i32 %213)
  %215 = load i32*, i32** %11, align 8
  %216 = load i32, i32* @SCTP_CMD_ASSOC_FAILED, align 4
  %217 = load i32, i32* @SCTP_ERROR_ASCONF_ACK, align 4
  %218 = call i32 @SCTP_PERR(i32 %217)
  %219 = call i32 @sctp_add_cmd_sf(i32* %215, i32 %216, i32 %218)
  %220 = load i32, i32* @SCTP_MIB_ABORTEDS, align 4
  %221 = call i32 @SCTP_INC_STATS(i32 %220)
  %222 = load i32, i32* @SCTP_MIB_CURRESTAB, align 4
  %223 = call i32 @SCTP_DEC_STATS(i32 %222)
  %224 = load i32, i32* @SCTP_DISPOSITION_ABORT, align 4
  store i32 %224, i32* %6, align 4
  br label %227

225:                                              ; preds = %169, %165
  %226 = load i32, i32* @SCTP_DISPOSITION_DISCARD, align 4
  store i32 %226, i32* %6, align 4
  br label %227

227:                                              ; preds = %225, %205, %184, %140, %87, %58, %47, %28
  %228 = load i32, i32* %6, align 4
  ret i32 %228
}

declare dso_local i32 @sctp_vtag_verify(%struct.sctp_chunk*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_NULL(...) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @sctp_sf_discard_chunk(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_sf_violation_chunklen(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @sctp_verify_asconf(%struct.sctp_association*, i32*, i8*, %struct.sctp_paramhdr**) #1

declare dso_local i32 @sctp_sf_violation_paramlen(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i8*, i32*) #1

declare dso_local i64 @ADDIP_SERIAL_gte(i64, i64) #1

declare dso_local %struct.sctp_chunk* @sctp_make_abort(%struct.sctp_association*, %struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_init_cause(%struct.sctp_chunk*, i32, i32) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_TO(i32) #1

declare dso_local i32 @SCTP_ERROR(i32) #1

declare dso_local i32 @SCTP_PERR(i32) #1

declare dso_local i32 @SCTP_INC_STATS(i32) #1

declare dso_local i32 @SCTP_DEC_STATS(i32) #1

declare dso_local i32 @sctp_process_asconf_ack(%struct.sctp_association*, %struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
