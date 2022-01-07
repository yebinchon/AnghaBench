; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_eat_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_eat_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i64, i64, %struct.TYPE_16__*, %struct.TYPE_28__, i64, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_20__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32, i64 }
%struct.TYPE_20__ = type { %struct.sock* }
%struct.sock = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64* }
%struct.sctp_chunk = type { i32, i32, %struct.TYPE_27__*, %struct.TYPE_25__*, %struct.TYPE_18__*, %struct.TYPE_21__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32, i32, i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_21__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.sctp_tsnmap = type { i32 }
%struct.sctp_af = type { i64 (%struct.TYPE_18__*)* }
%struct.TYPE_19__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"eat_data: TSN 0x%x.\0A\00", align 1
@SCTP_CMD_ECN_CE = common dso_local global i32 0, align 4
@SCTP_IERROR_HIGH_TSN = common dso_local global i32 0, align 4
@SCTP_CMD_REPORT_DUP = common dso_local global i32 0, align 4
@SCTP_IERROR_DUP_TSN = common dso_local global i32 0, align 4
@SCTP_CMD_CHUNK_ULP = common dso_local global i32 0, align 4
@SCTP_CMD_PART_DELIVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Reneging for tsn:%u\0A\00", align 1
@SCTP_CMD_RENEGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Discard tsn: %u len: %Zd, rwnd: %d\0A\00", align 1
@SCTP_IERROR_IGNORE_TSN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Under Pressure! Reneging for tsn:%u\0A\00", align 1
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_CMD_DISCARD_PACKET = common dso_local global i32 0, align 4
@SCTP_CMD_SET_SK_ERR = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i32 0, align 4
@SCTP_CMD_ASSOC_FAILED = common dso_local global i32 0, align 4
@SCTP_ERROR_NO_DATA = common dso_local global i32 0, align 4
@SCTP_MIB_ABORTEDS = common dso_local global i32 0, align 4
@SCTP_MIB_CURRESTAB = common dso_local global i32 0, align 4
@SCTP_IERROR_NO_DATA = common dso_local global i32 0, align 4
@SCTP_DATA_UNORDERED = common dso_local global i32 0, align 4
@SCTP_MIB_INUNORDERCHUNKS = common dso_local global i32 0, align 4
@SCTP_MIB_INORDERCHUNKS = common dso_local global i32 0, align 4
@SCTP_CMD_REPORT_TSN = common dso_local global i32 0, align 4
@SCTP_ERROR_INV_STRM = common dso_local global i32 0, align 4
@SCTP_IERROR_BAD_STREAM = common dso_local global i32 0, align 4
@SCTP_IERROR_PROTO_VIOLATION = common dso_local global i32 0, align 4
@SCTP_IERROR_NO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_association*, %struct.sctp_chunk*, i32*)* @sctp_eat_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_eat_data(%struct.sctp_association* %0, %struct.sctp_chunk* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca %struct.sctp_chunk*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.sctp_chunk*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.sctp_tsnmap*, align 8
  %15 = alloca %struct.sock*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.sctp_af*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %5, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %6, align 8
  store i32* %2, i32** %7, align 8
  %20 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %21 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  %23 = bitcast i32* %22 to %struct.sctp_tsnmap*
  store %struct.sctp_tsnmap* %23, %struct.sctp_tsnmap** %14, align 8
  %24 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %25 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %24, i32 0, i32 7
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = load %struct.sock*, %struct.sock** %26, align 8
  store %struct.sock* %27, %struct.sock** %15, align 8
  store i32 0, i32* %18, align 4
  %28 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %29 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %28, i32 0, i32 4
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.TYPE_17__*
  %34 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %35 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  store %struct.TYPE_17__* %33, %struct.TYPE_17__** %36, align 8
  store %struct.TYPE_17__* %33, %struct.TYPE_17__** %8, align 8
  %37 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %38 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %37, i32 0, i32 4
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %38, align 8
  %40 = call i32 @skb_pull(%struct.TYPE_18__* %39, i32 12)
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @ntohl(i32 %43)
  store i64 %44, i64* %13, align 8
  %45 = load i64, i64* %13, align 8
  %46 = call i32 (i8*, i64, ...) @SCTP_DEBUG_PRINTK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %45)
  %47 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %48 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %86, label %51

51:                                               ; preds = %3
  %52 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %53 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %55 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %54, i32 0, i32 4
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %55, align 8
  %57 = call %struct.TYPE_19__* @ip_hdr(%struct.TYPE_18__* %56)
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ipver2af(i32 %59)
  %61 = call %struct.sctp_af* @sctp_get_af_specific(i32 %60)
  store %struct.sctp_af* %61, %struct.sctp_af** %19, align 8
  %62 = load %struct.sctp_af*, %struct.sctp_af** %19, align 8
  %63 = icmp ne %struct.sctp_af* %62, null
  br i1 %63, label %64, label %85

64:                                               ; preds = %51
  %65 = load %struct.sctp_af*, %struct.sctp_af** %19, align 8
  %66 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %65, i32 0, i32 0
  %67 = load i64 (%struct.TYPE_18__*)*, i64 (%struct.TYPE_18__*)** %66, align 8
  %68 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %69 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %68, i32 0, i32 4
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %69, align 8
  %71 = call i64 %67(%struct.TYPE_18__* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %64
  %74 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %75 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %74, i32 0, i32 6
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* @SCTP_CMD_ECN_CE, align 4
  %82 = load i64, i64* %13, align 8
  %83 = call i32 @SCTP_U32(i64 %82)
  %84 = call i32 @sctp_add_cmd_sf(i32* %80, i32 %81, i32 %83)
  br label %85

85:                                               ; preds = %79, %73, %64, %51
  br label %86

86:                                               ; preds = %85, %3
  %87 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %88 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %87, i32 0, i32 6
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 0
  %90 = load i64, i64* %13, align 8
  %91 = call i32 @sctp_tsnmap_check(i32* %89, i64 %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %86
  %95 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %96 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %95, i32 0, i32 2
  %97 = load %struct.TYPE_27__*, %struct.TYPE_27__** %96, align 8
  %98 = icmp ne %struct.TYPE_27__* %97, null
  br i1 %98, label %99, label %107

99:                                               ; preds = %94
  %100 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %101 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %100, i32 0, i32 2
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %99, %94
  %108 = load i32, i32* @SCTP_IERROR_HIGH_TSN, align 4
  store i32 %108, i32* %4, align 4
  br label %361

109:                                              ; preds = %86
  %110 = load i32, i32* %12, align 4
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load i32*, i32** %7, align 8
  %114 = load i32, i32* @SCTP_CMD_REPORT_DUP, align 4
  %115 = load i64, i64* %13, align 8
  %116 = call i32 @SCTP_U32(i64 %115)
  %117 = call i32 @sctp_add_cmd_sf(i32* %113, i32 %114, i32 %116)
  %118 = load i32, i32* @SCTP_IERROR_DUP_TSN, align 4
  store i32 %118, i32* %4, align 4
  br label %361

119:                                              ; preds = %109
  br label %120

120:                                              ; preds = %119
  %121 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %122 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %121, i32 0, i32 3
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i8* @ntohs(i32 %125)
  %127 = ptrtoint i8* %126 to i64
  store i64 %127, i64* %10, align 8
  %128 = load i64, i64* %10, align 8
  %129 = sub i64 %128, 4
  store i64 %129, i64* %10, align 8
  %130 = load i32, i32* @SCTP_CMD_CHUNK_ULP, align 4
  store i32 %130, i32* %11, align 4
  %131 = load i64, i64* %10, align 8
  %132 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %133 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp uge i64 %131, %134
  br i1 %135, label %136, label %147

136:                                              ; preds = %120
  %137 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %138 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %137, i32 0, i32 5
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %136
  %143 = load i32*, i32** %7, align 8
  %144 = load i32, i32* @SCTP_CMD_PART_DELIVER, align 4
  %145 = call i32 (...) @SCTP_NULL()
  %146 = call i32 @sctp_add_cmd_sf(i32* %143, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %142, %136, %120
  %148 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %149 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %195, label %152

152:                                              ; preds = %147
  %153 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %154 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %172

157:                                              ; preds = %152
  %158 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %159 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %172, label %162

162:                                              ; preds = %157
  %163 = load i64, i64* %10, align 8
  %164 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %165 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %168 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = add i64 %166, %169
  %171 = icmp ugt i64 %163, %170
  br i1 %171, label %172, label %195

172:                                              ; preds = %162, %157, %152
  %173 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %14, align 8
  %174 = call i64 @sctp_tsnmap_has_gap(%struct.sctp_tsnmap* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %186

176:                                              ; preds = %172
  %177 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %14, align 8
  %178 = call i64 @sctp_tsnmap_get_ctsn(%struct.sctp_tsnmap* %177)
  %179 = add nsw i64 %178, 1
  %180 = load i64, i64* %13, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %176
  %183 = load i64, i64* %13, align 8
  %184 = call i32 (i8*, i64, ...) @SCTP_DEBUG_PRINTK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %183)
  %185 = load i32, i32* @SCTP_CMD_RENEGE, align 4
  store i32 %185, i32* %11, align 4
  br label %194

186:                                              ; preds = %176, %172
  %187 = load i64, i64* %13, align 8
  %188 = load i64, i64* %10, align 8
  %189 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %190 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = call i32 (i8*, i64, ...) @SCTP_DEBUG_PRINTK(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %187, i64 %188, i64 %191)
  %193 = load i32, i32* @SCTP_IERROR_IGNORE_TSN, align 4
  store i32 %193, i32* %4, align 4
  br label %361

194:                                              ; preds = %182
  br label %195

195:                                              ; preds = %194, %162, %147
  %196 = load %struct.sock*, %struct.sock** %15, align 8
  %197 = getelementptr inbounds %struct.sock, %struct.sock* %196, i32 0, i32 0
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %198, i32 0, i32 0
  %200 = load i64*, i64** %199, align 8
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %218

203:                                              ; preds = %195
  %204 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %14, align 8
  %205 = call i64 @sctp_tsnmap_has_gap(%struct.sctp_tsnmap* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %217

207:                                              ; preds = %203
  %208 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %14, align 8
  %209 = call i64 @sctp_tsnmap_get_ctsn(%struct.sctp_tsnmap* %208)
  %210 = add nsw i64 %209, 1
  %211 = load i64, i64* %13, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %217

213:                                              ; preds = %207
  %214 = load i64, i64* %13, align 8
  %215 = call i32 (i8*, i64, ...) @SCTP_DEBUG_PRINTK(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %214)
  %216 = load i32, i32* @SCTP_CMD_RENEGE, align 4
  store i32 %216, i32* %11, align 4
  br label %217

217:                                              ; preds = %213, %207, %203
  br label %218

218:                                              ; preds = %217, %195
  %219 = load i64, i64* %10, align 8
  %220 = icmp eq i64 0, %219
  %221 = zext i1 %220 to i32
  %222 = call i64 @unlikely(i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %257

224:                                              ; preds = %218
  %225 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %226 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %227 = load i64, i64* %13, align 8
  %228 = call %struct.sctp_chunk* @sctp_make_abort_no_data(%struct.sctp_association* %225, %struct.sctp_chunk* %226, i64 %227)
  store %struct.sctp_chunk* %228, %struct.sctp_chunk** %9, align 8
  %229 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %230 = icmp ne %struct.sctp_chunk* %229, null
  br i1 %230, label %231, label %237

231:                                              ; preds = %224
  %232 = load i32*, i32** %7, align 8
  %233 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %234 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %235 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %234)
  %236 = call i32 @sctp_add_cmd_sf(i32* %232, i32 %233, i32 %235)
  br label %237

237:                                              ; preds = %231, %224
  %238 = load i32*, i32** %7, align 8
  %239 = load i32, i32* @SCTP_CMD_DISCARD_PACKET, align 4
  %240 = call i32 (...) @SCTP_NULL()
  %241 = call i32 @sctp_add_cmd_sf(i32* %238, i32 %239, i32 %240)
  %242 = load i32*, i32** %7, align 8
  %243 = load i32, i32* @SCTP_CMD_SET_SK_ERR, align 4
  %244 = load i32, i32* @ECONNABORTED, align 4
  %245 = call i32 @SCTP_ERROR(i32 %244)
  %246 = call i32 @sctp_add_cmd_sf(i32* %242, i32 %243, i32 %245)
  %247 = load i32*, i32** %7, align 8
  %248 = load i32, i32* @SCTP_CMD_ASSOC_FAILED, align 4
  %249 = load i32, i32* @SCTP_ERROR_NO_DATA, align 4
  %250 = call i32 @SCTP_PERR(i32 %249)
  %251 = call i32 @sctp_add_cmd_sf(i32* %247, i32 %248, i32 %250)
  %252 = load i32, i32* @SCTP_MIB_ABORTEDS, align 4
  %253 = call i32 @SCTP_INC_STATS(i32 %252)
  %254 = load i32, i32* @SCTP_MIB_CURRESTAB, align 4
  %255 = call i32 @SCTP_DEC_STATS(i32 %254)
  %256 = load i32, i32* @SCTP_IERROR_NO_DATA, align 4
  store i32 %256, i32* %4, align 4
  br label %361

257:                                              ; preds = %218
  %258 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %259 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %258, i32 0, i32 1
  store i32 1, i32* %259, align 4
  %260 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %261 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %260, i32 0, i32 3
  %262 = load %struct.TYPE_25__*, %struct.TYPE_25__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @SCTP_DATA_UNORDERED, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %284

268:                                              ; preds = %257
  %269 = load i32, i32* @SCTP_MIB_INUNORDERCHUNKS, align 4
  %270 = call i32 @SCTP_INC_STATS(i32 %269)
  %271 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %272 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %271, i32 0, i32 2
  %273 = load %struct.TYPE_27__*, %struct.TYPE_27__** %272, align 8
  %274 = icmp ne %struct.TYPE_27__* %273, null
  br i1 %274, label %275, label %283

275:                                              ; preds = %268
  %276 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %277 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %276, i32 0, i32 2
  %278 = load %struct.TYPE_27__*, %struct.TYPE_27__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %280, align 4
  br label %283

283:                                              ; preds = %275, %268
  br label %300

284:                                              ; preds = %257
  %285 = load i32, i32* @SCTP_MIB_INORDERCHUNKS, align 4
  %286 = call i32 @SCTP_INC_STATS(i32 %285)
  %287 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %288 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %287, i32 0, i32 2
  %289 = load %struct.TYPE_27__*, %struct.TYPE_27__** %288, align 8
  %290 = icmp ne %struct.TYPE_27__* %289, null
  br i1 %290, label %291, label %299

291:                                              ; preds = %284
  %292 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %293 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %292, i32 0, i32 2
  %294 = load %struct.TYPE_27__*, %struct.TYPE_27__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %296, align 4
  br label %299

299:                                              ; preds = %291, %284
  store i32 1, i32* %18, align 4
  br label %300

300:                                              ; preds = %299, %283
  %301 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %302 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = call i8* @ntohs(i32 %303)
  %305 = ptrtoint i8* %304 to i64
  store i64 %305, i64* %17, align 8
  %306 = load i64, i64* %17, align 8
  %307 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %308 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %307, i32 0, i32 3
  %309 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = icmp sge i64 %306, %310
  br i1 %311, label %312, label %334

312:                                              ; preds = %300
  %313 = load i32*, i32** %7, align 8
  %314 = load i32, i32* @SCTP_CMD_REPORT_TSN, align 4
  %315 = load i64, i64* %13, align 8
  %316 = call i32 @SCTP_U32(i64 %315)
  %317 = call i32 @sctp_add_cmd_sf(i32* %313, i32 %314, i32 %316)
  %318 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %319 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %320 = load i32, i32* @SCTP_ERROR_INV_STRM, align 4
  %321 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %322 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %321, i32 0, i32 1
  %323 = call %struct.sctp_chunk* @sctp_make_op_error(%struct.sctp_association* %318, %struct.sctp_chunk* %319, i32 %320, i32* %322, i32 4, i32 8)
  store %struct.sctp_chunk* %323, %struct.sctp_chunk** %9, align 8
  %324 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %325 = icmp ne %struct.sctp_chunk* %324, null
  br i1 %325, label %326, label %332

326:                                              ; preds = %312
  %327 = load i32*, i32** %7, align 8
  %328 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %329 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %330 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %329)
  %331 = call i32 @sctp_add_cmd_sf(i32* %327, i32 %328, i32 %330)
  br label %332

332:                                              ; preds = %326, %312
  %333 = load i32, i32* @SCTP_IERROR_BAD_STREAM, align 4
  store i32 %333, i32* %4, align 4
  br label %361

334:                                              ; preds = %300
  %335 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %336 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = call i8* @ntohs(i32 %337)
  %339 = ptrtoint i8* %338 to i64
  store i64 %339, i64* %16, align 8
  %340 = load i32, i32* %18, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %354

342:                                              ; preds = %334
  %343 = load i64, i64* %16, align 8
  %344 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %345 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %344, i32 0, i32 2
  %346 = load %struct.TYPE_16__*, %struct.TYPE_16__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %346, i32 0, i32 0
  %348 = load i64, i64* %17, align 8
  %349 = call i32 @sctp_ssn_peek(i32* %347, i64 %348)
  %350 = call i64 @SSN_lt(i64 %343, i32 %349)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %354

352:                                              ; preds = %342
  %353 = load i32, i32* @SCTP_IERROR_PROTO_VIOLATION, align 4
  store i32 %353, i32* %4, align 4
  br label %361

354:                                              ; preds = %342, %334
  %355 = load i32*, i32** %7, align 8
  %356 = load i32, i32* %11, align 4
  %357 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %358 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %357)
  %359 = call i32 @sctp_add_cmd_sf(i32* %355, i32 %356, i32 %358)
  %360 = load i32, i32* @SCTP_IERROR_NO_ERROR, align 4
  store i32 %360, i32* %4, align 4
  br label %361

361:                                              ; preds = %354, %352, %332, %237, %186, %112, %107
  %362 = load i32, i32* %4, align 4
  ret i32 %362
}

declare dso_local i32 @skb_pull(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @SCTP_DEBUG_PRINTK(i8*, i64, ...) #1

declare dso_local %struct.sctp_af* @sctp_get_af_specific(i32) #1

declare dso_local i32 @ipver2af(i32) #1

declare dso_local %struct.TYPE_19__* @ip_hdr(%struct.TYPE_18__*) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_U32(i64) #1

declare dso_local i32 @sctp_tsnmap_check(i32*, i64) #1

declare dso_local i8* @ntohs(i32) #1

declare dso_local i32 @SCTP_NULL(...) #1

declare dso_local i64 @sctp_tsnmap_has_gap(%struct.sctp_tsnmap*) #1

declare dso_local i64 @sctp_tsnmap_get_ctsn(%struct.sctp_tsnmap*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sctp_chunk* @sctp_make_abort_no_data(%struct.sctp_association*, %struct.sctp_chunk*, i64) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_ERROR(i32) #1

declare dso_local i32 @SCTP_PERR(i32) #1

declare dso_local i32 @SCTP_INC_STATS(i32) #1

declare dso_local i32 @SCTP_DEC_STATS(i32) #1

declare dso_local %struct.sctp_chunk* @sctp_make_op_error(%struct.sctp_association*, %struct.sctp_chunk*, i32, i32*, i32, i32) #1

declare dso_local i64 @SSN_lt(i64, i32) #1

declare dso_local i32 @sctp_ssn_peek(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
