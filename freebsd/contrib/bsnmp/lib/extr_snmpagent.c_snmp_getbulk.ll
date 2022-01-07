; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpagent.c_snmp_getbulk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpagent.c_snmp_getbulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_buf = type { i32 }
%struct.snmp_pdu = type { i64, i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.context = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }

@SNMP_CODE_OK = common dso_local global i64 0, align 8
@SNMP_RET_IGN = common dso_local global i32 0, align 4
@SNMP_RET_OK = common dso_local global i32 0, align 4
@ASN_ERR_EOBUF = common dso_local global i32 0, align 4
@ASN_ERR_OK = common dso_local global i32 0, align 4
@GET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"getnext: binding encoding: %u\00", align 1
@SNMP_ERR_GENERR = common dso_local global i8* null, align 8
@SNMP_RET_ERR = common dso_local global i32 0, align 4
@SNMP_MAX_BINDINGS = common dso_local global i64 0, align 8
@SNMP_SYNTAX_ENDOFMIBVIEW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"getnext: failed to encode PDU\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_getbulk(%struct.snmp_pdu* %0, %struct.asn_buf* %1, %struct.snmp_pdu* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snmp_pdu*, align 8
  %7 = alloca %struct.asn_buf*, align 8
  %8 = alloca %struct.snmp_pdu*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.context, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snmp_pdu* %0, %struct.snmp_pdu** %6, align 8
  store %struct.asn_buf* %1, %struct.asn_buf** %7, align 8
  store %struct.snmp_pdu* %2, %struct.snmp_pdu** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = call i32 @memset(%struct.context* %10, i32 0, i32 8)
  %18 = load i8*, i8** %9, align 8
  %19 = getelementptr inbounds %struct.context, %struct.context* %10, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %22 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %23 = call i32 @snmp_pdu_create_response(%struct.snmp_pdu* %21, %struct.snmp_pdu* %22)
  %24 = load %struct.asn_buf*, %struct.asn_buf** %7, align 8
  %25 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %26 = call i64 @snmp_pdu_encode_header(%struct.asn_buf* %24, %struct.snmp_pdu* %25)
  %27 = load i64, i64* @SNMP_CODE_OK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* @SNMP_RET_IGN, align 4
  store i32 %30, i32* %5, align 4
  br label %274

31:                                               ; preds = %4
  %32 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %33 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %13, align 8
  %35 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %36 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ugt i64 %34, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %41 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %13, align 8
  br label %43

43:                                               ; preds = %39, %31
  store i64 0, i64* %11, align 8
  br label %44

44:                                               ; preds = %113, %43
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %13, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %116

48:                                               ; preds = %44
  %49 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %50 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %49, i32 0, i32 3
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load i64, i64* %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %52
  %54 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %55 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %54, i32 0, i32 3
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %58 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %59
  %61 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %62 = call i32 @do_getnext(%struct.context* %10, %struct.TYPE_6__* %53, %struct.TYPE_6__* %60, %struct.snmp_pdu* %61)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* @SNMP_RET_OK, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %48
  %67 = load i64, i64* %11, align 8
  %68 = add i64 %67, 1
  %69 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %70 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %69, i32 0, i32 2
  store i64 %68, i64* %70, align 8
  %71 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %72 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %71)
  %73 = load i32, i32* %15, align 4
  store i32 %73, i32* %5, align 4
  br label %274

74:                                               ; preds = %48
  %75 = load %struct.asn_buf*, %struct.asn_buf** %7, align 8
  %76 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %77 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %76, i32 0, i32 3
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %80 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %80, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 %81
  %84 = call i32 @snmp_binding_encode(%struct.asn_buf* %75, %struct.TYPE_6__* %83)
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* @ASN_ERR_EOBUF, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %74
  br label %263

89:                                               ; preds = %74
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* @ASN_ERR_OK, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %112

93:                                               ; preds = %89
  %94 = load i32, i32* @GET, align 4
  %95 = call i64 @TR(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i32, i32* %16, align 4
  %99 = call i32 (i8*, ...) @snmp_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %97, %93
  %101 = load i8*, i8** @SNMP_ERR_GENERR, align 8
  %102 = ptrtoint i8* %101 to i64
  %103 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %104 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load i64, i64* %11, align 8
  %106 = add i64 %105, 1
  %107 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %108 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %107, i32 0, i32 2
  store i64 %106, i64* %108, align 8
  %109 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %110 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %109)
  %111 = load i32, i32* @SNMP_RET_ERR, align 4
  store i32 %111, i32* %5, align 4
  br label %274

112:                                              ; preds = %89
  br label %113

113:                                              ; preds = %112
  %114 = load i64, i64* %11, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %11, align 8
  br label %44

116:                                              ; preds = %44
  %117 = load i64, i64* %13, align 8
  %118 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %119 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %117, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %263

123:                                              ; preds = %116
  store i32 0, i32* %12, align 4
  br label %124

124:                                              ; preds = %259, %123
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %128 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp ult i64 %126, %129
  br i1 %130, label %131, label %262

131:                                              ; preds = %124
  store i32 1, i32* %14, align 4
  %132 = load i64, i64* %13, align 8
  store i64 %132, i64* %11, align 8
  br label %133

133:                                              ; preds = %251, %131
  %134 = load i64, i64* %11, align 8
  %135 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %136 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp ult i64 %134, %137
  br i1 %138, label %139, label %254

139:                                              ; preds = %133
  %140 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %141 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @SNMP_MAX_BINDINGS, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  br label %263

146:                                              ; preds = %139
  %147 = load i32, i32* %12, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %164

149:                                              ; preds = %146
  %150 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %151 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %150, i32 0, i32 3
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = load i64, i64* %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i64 %153
  %155 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %156 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %155, i32 0, i32 3
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %159 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i64 %160
  %162 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %163 = call i32 @do_getnext(%struct.context* %10, %struct.TYPE_6__* %154, %struct.TYPE_6__* %161, %struct.snmp_pdu* %162)
  store i32 %163, i32* %15, align 4
  br label %187

164:                                              ; preds = %146
  %165 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %166 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %165, i32 0, i32 3
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %169 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %172 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* %13, align 8
  %175 = sub i64 %173, %174
  %176 = sub i64 %170, %175
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i64 %176
  %178 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %179 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %178, i32 0, i32 3
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %179, align 8
  %181 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %182 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i64 %183
  %185 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %186 = call i32 @do_getnext(%struct.context* %10, %struct.TYPE_6__* %177, %struct.TYPE_6__* %184, %struct.snmp_pdu* %185)
  store i32 %186, i32* %15, align 4
  br label %187

187:                                              ; preds = %164, %149
  %188 = load i32, i32* %15, align 4
  %189 = load i32, i32* @SNMP_RET_OK, align 4
  %190 = icmp ne i32 %188, %189
  br i1 %190, label %191, label %199

191:                                              ; preds = %187
  %192 = load i64, i64* %11, align 8
  %193 = add i64 %192, 1
  %194 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %195 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %194, i32 0, i32 2
  store i64 %193, i64* %195, align 8
  %196 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %197 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %196)
  %198 = load i32, i32* %15, align 4
  store i32 %198, i32* %5, align 4
  br label %274

199:                                              ; preds = %187
  %200 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %201 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %200, i32 0, i32 3
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %201, align 8
  %203 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %204 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @SNMP_SYNTAX_ENDOFMIBVIEW, align 8
  %210 = icmp ne i64 %208, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %199
  store i32 0, i32* %14, align 4
  br label %212

212:                                              ; preds = %211, %199
  %213 = load %struct.asn_buf*, %struct.asn_buf** %7, align 8
  %214 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %215 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %214, i32 0, i32 3
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %215, align 8
  %217 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %218 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %218, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i64 %219
  %222 = call i32 @snmp_binding_encode(%struct.asn_buf* %213, %struct.TYPE_6__* %221)
  store i32 %222, i32* %16, align 4
  %223 = load i32, i32* %16, align 4
  %224 = load i32, i32* @ASN_ERR_EOBUF, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %212
  br label %263

227:                                              ; preds = %212
  %228 = load i32, i32* %16, align 4
  %229 = load i32, i32* @ASN_ERR_OK, align 4
  %230 = icmp ne i32 %228, %229
  br i1 %230, label %231, label %250

231:                                              ; preds = %227
  %232 = load i32, i32* @GET, align 4
  %233 = call i64 @TR(i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %231
  %236 = load i32, i32* %16, align 4
  %237 = call i32 (i8*, ...) @snmp_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %236)
  br label %238

238:                                              ; preds = %235, %231
  %239 = load i8*, i8** @SNMP_ERR_GENERR, align 8
  %240 = ptrtoint i8* %239 to i64
  %241 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %242 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %241, i32 0, i32 0
  store i64 %240, i64* %242, align 8
  %243 = load i64, i64* %11, align 8
  %244 = add i64 %243, 1
  %245 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %246 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %245, i32 0, i32 2
  store i64 %244, i64* %246, align 8
  %247 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %248 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %247)
  %249 = load i32, i32* @SNMP_RET_ERR, align 4
  store i32 %249, i32* %5, align 4
  br label %274

250:                                              ; preds = %227
  br label %251

251:                                              ; preds = %250
  %252 = load i64, i64* %11, align 8
  %253 = add i64 %252, 1
  store i64 %253, i64* %11, align 8
  br label %133

254:                                              ; preds = %133
  %255 = load i32, i32* %14, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %254
  br label %262

258:                                              ; preds = %254
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %12, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %12, align 4
  br label %124

262:                                              ; preds = %257, %124
  br label %263

263:                                              ; preds = %262, %226, %145, %122, %88
  %264 = load %struct.asn_buf*, %struct.asn_buf** %7, align 8
  %265 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %266 = call i64 @snmp_fix_encoding(%struct.asn_buf* %264, %struct.snmp_pdu* %265)
  %267 = load i64, i64* @SNMP_CODE_OK, align 8
  %268 = icmp ne i64 %266, %267
  br i1 %268, label %269, label %272

269:                                              ; preds = %263
  %270 = call i32 (i8*, ...) @snmp_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %271 = load i32, i32* @SNMP_RET_ERR, align 4
  store i32 %271, i32* %5, align 4
  br label %274

272:                                              ; preds = %263
  %273 = load i32, i32* @SNMP_RET_OK, align 4
  store i32 %273, i32* %5, align 4
  br label %274

274:                                              ; preds = %272, %269, %238, %191, %100, %66, %29
  %275 = load i32, i32* %5, align 4
  ret i32 %275
}

declare dso_local i32 @memset(%struct.context*, i32, i32) #1

declare dso_local i32 @snmp_pdu_create_response(%struct.snmp_pdu*, %struct.snmp_pdu*) #1

declare dso_local i64 @snmp_pdu_encode_header(%struct.asn_buf*, %struct.snmp_pdu*) #1

declare dso_local i32 @do_getnext(%struct.context*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.snmp_pdu*) #1

declare dso_local i32 @snmp_pdu_free(%struct.snmp_pdu*) #1

declare dso_local i32 @snmp_binding_encode(%struct.asn_buf*, %struct.TYPE_6__*) #1

declare dso_local i64 @TR(i32) #1

declare dso_local i32 @snmp_debug(i8*, ...) #1

declare dso_local i64 @snmp_fix_encoding(%struct.asn_buf*, %struct.snmp_pdu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
