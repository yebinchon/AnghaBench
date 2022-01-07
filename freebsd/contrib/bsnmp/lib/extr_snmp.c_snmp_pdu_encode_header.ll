; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmp.c_snmp_pdu_encode_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmp.c_snmp_pdu_encode_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_buf = type { i32 }
%struct.snmp_pdu = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32*, i64, i64, i64, i32*, i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }

@ASN_TYPE_SEQUENCE = common dso_local global i32 0, align 4
@ASN_TYPE_CONSTRUCTED = common dso_local global i32 0, align 4
@ASN_ERR_OK = common dso_local global i64 0, align 8
@SNMP_CODE_FAILED = common dso_local global i32 0, align 4
@SNMP_V1 = common dso_local global i64 0, align 8
@SNMP_V2c = common dso_local global i64 0, align 8
@SNMP_V3 = common dso_local global i64 0, align 8
@SNMP_CODE_BADVERS = common dso_local global i32 0, align 4
@SNMP_PDU_RESPONSE = common dso_local global i32 0, align 4
@SNMP_PDU_TRAP = common dso_local global i32 0, align 4
@SNMP_PDU_TRAP2 = common dso_local global i32 0, align 4
@SNMP_PDU_REPORT = common dso_local global i32 0, align 4
@SNMP_MSG_REPORT_FLAG = common dso_local global i32 0, align 4
@SNMP_SECMODEL_USM = common dso_local global i32 0, align 4
@SNMP_CODE_OK = common dso_local global i64 0, align 8
@ASN_CLASS_CONTEXT = common dso_local global i32 0, align 4
@SNMP_PDU_GETBULK = common dso_local global i32 0, align 4
@SNMP_PDU_INFORM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_pdu_encode_header(%struct.asn_buf* %0, %struct.snmp_pdu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.asn_buf*, align 8
  %5 = alloca %struct.snmp_pdu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.asn_buf* %0, %struct.asn_buf** %4, align 8
  store %struct.snmp_pdu* %1, %struct.snmp_pdu** %5, align 8
  %8 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %9 = load i32, i32* @ASN_TYPE_SEQUENCE, align 4
  %10 = load i32, i32* @ASN_TYPE_CONSTRUCTED, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %13 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %12, i32 0, i32 21
  %14 = call i64 @asn_put_temp_header(%struct.asn_buf* %8, i32 %11, i32** %13)
  %15 = load i64, i64* @ASN_ERR_OK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %18, i32* %3, align 4
  br label %372

19:                                               ; preds = %2
  %20 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %21 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SNMP_V1, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %27 = call i64 @asn_put_integer(%struct.asn_buf* %26, i32 0)
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %6, align 4
  br label %53

29:                                               ; preds = %19
  %30 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %31 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SNMP_V2c, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %37 = call i64 @asn_put_integer(%struct.asn_buf* %36, i32 1)
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %6, align 4
  br label %52

39:                                               ; preds = %29
  %40 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %41 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SNMP_V3, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %47 = call i64 @asn_put_integer(%struct.asn_buf* %46, i32 3)
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %6, align 4
  br label %51

49:                                               ; preds = %39
  %50 = load i32, i32* @SNMP_CODE_BADVERS, align 4
  store i32 %50, i32* %3, align 4
  br label %372

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %35
  br label %53

53:                                               ; preds = %52, %25
  %54 = load i32, i32* %6, align 4
  %55 = zext i32 %54 to i64
  %56 = load i64, i64* @ASN_ERR_OK, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %59, i32* %3, align 4
  br label %372

60:                                               ; preds = %53
  %61 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %62 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SNMP_V3, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %212

66:                                               ; preds = %60
  %67 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %68 = load i32, i32* @ASN_TYPE_SEQUENCE, align 4
  %69 = load i32, i32* @ASN_TYPE_CONSTRUCTED, align 4
  %70 = or i32 %68, %69
  %71 = call i64 @asn_put_temp_header(%struct.asn_buf* %67, i32 %70, i32** %7)
  %72 = load i64, i64* @ASN_ERR_OK, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %75, i32* %3, align 4
  br label %372

76:                                               ; preds = %66
  %77 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %78 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %79 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @asn_put_integer(%struct.asn_buf* %77, i32 %80)
  %82 = load i64, i64* @ASN_ERR_OK, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %85, i32* %3, align 4
  br label %372

86:                                               ; preds = %76
  %87 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %88 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %89 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %88, i32 0, i32 20
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @asn_put_integer(%struct.asn_buf* %87, i32 %91)
  %93 = load i64, i64* @ASN_ERR_OK, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %86
  %96 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %96, i32* %3, align 4
  br label %372

97:                                               ; preds = %86
  %98 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %99 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @SNMP_PDU_RESPONSE, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %127

103:                                              ; preds = %97
  %104 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %105 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @SNMP_PDU_TRAP, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %127

109:                                              ; preds = %103
  %110 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %111 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @SNMP_PDU_TRAP2, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %127

115:                                              ; preds = %109
  %116 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %117 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @SNMP_PDU_REPORT, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %115
  %122 = load i32, i32* @SNMP_MSG_REPORT_FLAG, align 4
  %123 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %124 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %123, i32 0, i32 19
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %121, %115, %109, %103, %97
  %128 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %129 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %130 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %129, i32 0, i32 19
  %131 = call i64 @asn_put_octetstring(%struct.asn_buf* %128, i32* %130, i32 1)
  %132 = load i64, i64* @ASN_ERR_OK, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %127
  %135 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %135, i32* %3, align 4
  br label %372

136:                                              ; preds = %127
  %137 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %138 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %139 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = call i64 @asn_put_integer(%struct.asn_buf* %137, i32 %140)
  %142 = load i64, i64* @ASN_ERR_OK, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %136
  %145 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %145, i32* %3, align 4
  br label %372

146:                                              ; preds = %136
  %147 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %148 = load i32*, i32** %7, align 8
  %149 = call i64 @asn_commit_header(%struct.asn_buf* %147, i32* %148, i32* null)
  %150 = load i64, i64* @ASN_ERR_OK, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %146
  %153 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %153, i32* %3, align 4
  br label %372

154:                                              ; preds = %146
  %155 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %156 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @SNMP_SECMODEL_USM, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %154
  %161 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %161, i32* %3, align 4
  br label %372

162:                                              ; preds = %154
  %163 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %164 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %165 = call i64 @pdu_encode_secparams(%struct.asn_buf* %163, %struct.snmp_pdu* %164)
  %166 = load i64, i64* @SNMP_CODE_OK, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %162
  %169 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %169, i32* %3, align 4
  br label %372

170:                                              ; preds = %162
  %171 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %172 = load i32, i32* @ASN_TYPE_SEQUENCE, align 4
  %173 = load i32, i32* @ASN_TYPE_CONSTRUCTED, align 4
  %174 = or i32 %172, %173
  %175 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %176 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %175, i32 0, i32 18
  %177 = call i64 @asn_put_temp_header(%struct.asn_buf* %171, i32 %174, i32** %176)
  %178 = load i64, i64* @ASN_ERR_OK, align 8
  %179 = icmp ne i64 %177, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %170
  %181 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %181, i32* %3, align 4
  br label %372

182:                                              ; preds = %170
  %183 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %184 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %185 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %184, i32 0, i32 17
  %186 = load i64, i64* %185, align 8
  %187 = inttoptr i64 %186 to i32*
  %188 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %189 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 4
  %191 = call i64 @asn_put_octetstring(%struct.asn_buf* %183, i32* %187, i32 %190)
  %192 = load i64, i64* @ASN_ERR_OK, align 8
  %193 = icmp ne i64 %191, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %182
  %195 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %195, i32* %3, align 4
  br label %372

196:                                              ; preds = %182
  %197 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %198 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %199 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %198, i32 0, i32 16
  %200 = load i64, i64* %199, align 8
  %201 = inttoptr i64 %200 to i32*
  %202 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %203 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %202, i32 0, i32 16
  %204 = load i64, i64* %203, align 8
  %205 = call i32 @strlen(i64 %204)
  %206 = call i64 @asn_put_octetstring(%struct.asn_buf* %197, i32* %201, i32 %205)
  %207 = load i64, i64* @ASN_ERR_OK, align 8
  %208 = icmp ne i64 %206, %207
  br i1 %208, label %209, label %211

209:                                              ; preds = %196
  %210 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %210, i32* %3, align 4
  br label %372

211:                                              ; preds = %196
  br label %228

212:                                              ; preds = %60
  %213 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %214 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %215 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %214, i32 0, i32 15
  %216 = load i64, i64* %215, align 8
  %217 = inttoptr i64 %216 to i32*
  %218 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %219 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %218, i32 0, i32 15
  %220 = load i64, i64* %219, align 8
  %221 = call i32 @strlen(i64 %220)
  %222 = call i64 @asn_put_octetstring(%struct.asn_buf* %213, i32* %217, i32 %221)
  %223 = load i64, i64* @ASN_ERR_OK, align 8
  %224 = icmp ne i64 %222, %223
  br i1 %224, label %225, label %227

225:                                              ; preds = %212
  %226 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %226, i32* %3, align 4
  br label %372

227:                                              ; preds = %212
  br label %228

228:                                              ; preds = %227, %211
  %229 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %230 = load i32, i32* @ASN_TYPE_CONSTRUCTED, align 4
  %231 = load i32, i32* @ASN_CLASS_CONTEXT, align 4
  %232 = or i32 %230, %231
  %233 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %234 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = or i32 %232, %235
  %237 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %238 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %237, i32 0, i32 14
  %239 = call i64 @asn_put_temp_header(%struct.asn_buf* %229, i32 %236, i32** %238)
  %240 = load i64, i64* @ASN_ERR_OK, align 8
  %241 = icmp ne i64 %239, %240
  br i1 %241, label %242, label %244

242:                                              ; preds = %228
  %243 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %243, i32* %3, align 4
  br label %372

244:                                              ; preds = %228
  %245 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %246 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @SNMP_PDU_TRAP, align 4
  %249 = icmp eq i32 %247, %248
  br i1 %249, label %250, label %298

250:                                              ; preds = %244
  %251 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %252 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @SNMP_V1, align 8
  %255 = icmp ne i64 %253, %254
  br i1 %255, label %295, label %256

256:                                              ; preds = %250
  %257 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %258 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %259 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %258, i32 0, i32 13
  %260 = call i64 @asn_put_objid(%struct.asn_buf* %257, i32* %259)
  %261 = load i64, i64* @ASN_ERR_OK, align 8
  %262 = icmp ne i64 %260, %261
  br i1 %262, label %295, label %263

263:                                              ; preds = %256
  %264 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %265 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %266 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %265, i32 0, i32 12
  %267 = load i32, i32* %266, align 4
  %268 = call i64 @asn_put_ipaddress(%struct.asn_buf* %264, i32 %267)
  %269 = load i64, i64* @ASN_ERR_OK, align 8
  %270 = icmp ne i64 %268, %269
  br i1 %270, label %295, label %271

271:                                              ; preds = %263
  %272 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %273 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %274 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %273, i32 0, i32 5
  %275 = load i32, i32* %274, align 8
  %276 = call i64 @asn_put_integer(%struct.asn_buf* %272, i32 %275)
  %277 = load i64, i64* @ASN_ERR_OK, align 8
  %278 = icmp ne i64 %276, %277
  br i1 %278, label %295, label %279

279:                                              ; preds = %271
  %280 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %281 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %282 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %281, i32 0, i32 6
  %283 = load i32, i32* %282, align 4
  %284 = call i64 @asn_put_integer(%struct.asn_buf* %280, i32 %283)
  %285 = load i64, i64* @ASN_ERR_OK, align 8
  %286 = icmp ne i64 %284, %285
  br i1 %286, label %295, label %287

287:                                              ; preds = %279
  %288 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %289 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %290 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %289, i32 0, i32 11
  %291 = load i32, i32* %290, align 8
  %292 = call i64 @asn_put_timeticks(%struct.asn_buf* %288, i32 %291)
  %293 = load i64, i64* @ASN_ERR_OK, align 8
  %294 = icmp ne i64 %292, %293
  br i1 %294, label %295, label %297

295:                                              ; preds = %287, %279, %271, %263, %256, %250
  %296 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %296, i32* %3, align 4
  br label %372

297:                                              ; preds = %287
  br label %357

298:                                              ; preds = %244
  %299 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %300 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = load i64, i64* @SNMP_V1, align 8
  %303 = icmp eq i64 %301, %302
  br i1 %303, label %304, label %330

304:                                              ; preds = %298
  %305 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %306 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @SNMP_PDU_GETBULK, align 4
  %309 = icmp eq i32 %307, %308
  br i1 %309, label %328, label %310

310:                                              ; preds = %304
  %311 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %312 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* @SNMP_PDU_INFORM, align 4
  %315 = icmp eq i32 %313, %314
  br i1 %315, label %328, label %316

316:                                              ; preds = %310
  %317 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %318 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* @SNMP_PDU_TRAP2, align 4
  %321 = icmp eq i32 %319, %320
  br i1 %321, label %328, label %322

322:                                              ; preds = %316
  %323 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %324 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 4
  %326 = load i32, i32* @SNMP_PDU_REPORT, align 4
  %327 = icmp eq i32 %325, %326
  br i1 %327, label %328, label %330

328:                                              ; preds = %322, %316, %310, %304
  %329 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %329, i32* %3, align 4
  br label %372

330:                                              ; preds = %322, %298
  %331 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %332 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %333 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %332, i32 0, i32 7
  %334 = load i32, i32* %333, align 8
  %335 = call i64 @asn_put_integer(%struct.asn_buf* %331, i32 %334)
  %336 = load i64, i64* @ASN_ERR_OK, align 8
  %337 = icmp ne i64 %335, %336
  br i1 %337, label %354, label %338

338:                                              ; preds = %330
  %339 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %340 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %341 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %340, i32 0, i32 8
  %342 = load i32, i32* %341, align 4
  %343 = call i64 @asn_put_integer(%struct.asn_buf* %339, i32 %342)
  %344 = load i64, i64* @ASN_ERR_OK, align 8
  %345 = icmp ne i64 %343, %344
  br i1 %345, label %354, label %346

346:                                              ; preds = %338
  %347 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %348 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %349 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %348, i32 0, i32 9
  %350 = load i32, i32* %349, align 8
  %351 = call i64 @asn_put_integer(%struct.asn_buf* %347, i32 %350)
  %352 = load i64, i64* @ASN_ERR_OK, align 8
  %353 = icmp ne i64 %351, %352
  br i1 %353, label %354, label %356

354:                                              ; preds = %346, %338, %330
  %355 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %355, i32* %3, align 4
  br label %372

356:                                              ; preds = %346
  br label %357

357:                                              ; preds = %356, %297
  %358 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %359 = load i32, i32* @ASN_TYPE_SEQUENCE, align 4
  %360 = load i32, i32* @ASN_TYPE_CONSTRUCTED, align 4
  %361 = or i32 %359, %360
  %362 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %363 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %362, i32 0, i32 10
  %364 = call i64 @asn_put_temp_header(%struct.asn_buf* %358, i32 %361, i32** %363)
  %365 = load i64, i64* @ASN_ERR_OK, align 8
  %366 = icmp ne i64 %364, %365
  br i1 %366, label %367, label %369

367:                                              ; preds = %357
  %368 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %368, i32* %3, align 4
  br label %372

369:                                              ; preds = %357
  %370 = load i64, i64* @SNMP_CODE_OK, align 8
  %371 = trunc i64 %370 to i32
  store i32 %371, i32* %3, align 4
  br label %372

372:                                              ; preds = %369, %367, %354, %328, %295, %242, %225, %209, %194, %180, %168, %160, %152, %144, %134, %95, %84, %74, %58, %49, %17
  %373 = load i32, i32* %3, align 4
  ret i32 %373
}

declare dso_local i64 @asn_put_temp_header(%struct.asn_buf*, i32, i32**) #1

declare dso_local i64 @asn_put_integer(%struct.asn_buf*, i32) #1

declare dso_local i64 @asn_put_octetstring(%struct.asn_buf*, i32*, i32) #1

declare dso_local i64 @asn_commit_header(%struct.asn_buf*, i32*, i32*) #1

declare dso_local i64 @pdu_encode_secparams(%struct.asn_buf*, %struct.snmp_pdu*) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i64 @asn_put_objid(%struct.asn_buf*, i32*) #1

declare dso_local i64 @asn_put_ipaddress(%struct.asn_buf*, i32) #1

declare dso_local i64 @asn_put_timeticks(%struct.asn_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
