; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpagent.c_snmp_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpagent.c_snmp_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_buf = type { i32 }
%struct.snmp_pdu = type { i64, i64, i32, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.snmp_node = type { i32, i32 (%struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32, i32)*, i32, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i32 }
%struct.context = type { %struct.TYPE_7__ }

@SNMP_CODE_OK = common dso_local global i64 0, align 8
@SNMP_RET_IGN = common dso_local global i32 0, align 4
@SNMP_V1 = common dso_local global i64 0, align 8
@GET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"get: nosuchname\00", align 1
@SNMP_ERR_NOSUCHNAME = common dso_local global i32 0, align 4
@SNMP_RET_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"get: exception %u\00", align 1
@SNMP_OP_GET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"get: action returns %d\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"get: exception noSuchInstance\00", align 1
@SNMP_SYNTAX_NOSUCHINSTANCE = common dso_local global i32 0, align 4
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@SNMP_ERR_GENERR = common dso_local global i8* null, align 8
@ASN_ERR_EOBUF = common dso_local global i32 0, align 4
@SNMP_ERR_TOOBIG = common dso_local global i32 0, align 4
@ASN_ERR_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"get: binding encoding: %u\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"get: failed to encode PDU\00", align 1
@SNMP_RET_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_get(%struct.snmp_pdu* %0, %struct.asn_buf* %1, %struct.snmp_pdu* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snmp_pdu*, align 8
  %7 = alloca %struct.asn_buf*, align 8
  %8 = alloca %struct.snmp_pdu*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.snmp_node*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.context, align 8
  %15 = alloca i32, align 4
  store %struct.snmp_pdu* %0, %struct.snmp_pdu** %6, align 8
  store %struct.asn_buf* %1, %struct.asn_buf** %7, align 8
  store %struct.snmp_pdu* %2, %struct.snmp_pdu** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = call i32 @memset(%struct.context* %14, i32 0, i32 8)
  %17 = load i8*, i8** %9, align 8
  %18 = getelementptr inbounds %struct.context, %struct.context* %14, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %21 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %22 = call i32 @snmp_pdu_create_response(%struct.snmp_pdu* %20, %struct.snmp_pdu* %21)
  %23 = load %struct.asn_buf*, %struct.asn_buf** %7, align 8
  %24 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %25 = call i64 @snmp_pdu_encode_header(%struct.asn_buf* %23, %struct.snmp_pdu* %24)
  %26 = load i64, i64* @SNMP_CODE_OK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* @SNMP_RET_IGN, align 4
  store i32 %29, i32* %5, align 4
  br label %245

30:                                               ; preds = %4
  store i64 0, i64* %11, align 8
  br label %31

31:                                               ; preds = %231, %30
  %32 = load i64, i64* %11, align 8
  %33 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %34 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %32, %35
  br i1 %36, label %37, label %234

37:                                               ; preds = %31
  %38 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %39 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %38, i32 0, i32 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = load i64, i64* %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %46 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %45, i32 0, i32 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = load i64, i64* %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  store i32 %44, i32* %50, align 4
  %51 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %52 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %51, i32 0, i32 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = load i64, i64* %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i64 %54
  %56 = call %struct.snmp_node* @find_node(%struct.TYPE_8__* %55, i32* %13)
  store %struct.snmp_node* %56, %struct.snmp_node** %12, align 8
  %57 = icmp eq %struct.snmp_node* %56, null
  br i1 %57, label %58, label %96

58:                                               ; preds = %37
  %59 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %60 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SNMP_V1, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %58
  %65 = load i32, i32* @GET, align 4
  %66 = call i64 @TR(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = call i32 (i8*, ...) @snmp_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %64
  %71 = load i32, i32* @SNMP_ERR_NOSUCHNAME, align 4
  %72 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %73 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load i64, i64* %11, align 8
  %75 = add i64 %74, 1
  %76 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %77 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %76, i32 0, i32 3
  store i64 %75, i64* %77, align 8
  %78 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %79 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %78)
  %80 = load i32, i32* @SNMP_RET_ERR, align 4
  store i32 %80, i32* %5, align 4
  br label %245

81:                                               ; preds = %58
  %82 = load i32, i32* @GET, align 4
  %83 = call i64 @TR(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32, i32* %13, align 4
  %87 = call i32 (i8*, ...) @snmp_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %85, %81
  %89 = load i32, i32* %13, align 4
  %90 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %91 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %90, i32 0, i32 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = load i64, i64* %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  store i32 %89, i32* %95, align 4
  br label %183

96:                                               ; preds = %37
  %97 = load %struct.snmp_node*, %struct.snmp_node** %12, align 8
  %98 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %101 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %100, i32 0, i32 4
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = load i64, i64* %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  store i32 %99, i32* %105, align 4
  %106 = load %struct.snmp_node*, %struct.snmp_node** %12, align 8
  %107 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %106, i32 0, i32 1
  %108 = load i32 (%struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32, i32)*, i32 (%struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32, i32)** %107, align 8
  %109 = getelementptr inbounds %struct.context, %struct.context* %14, i32 0, i32 0
  %110 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %111 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %110, i32 0, i32 4
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = load i64, i64* %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i64 %113
  %115 = load %struct.snmp_node*, %struct.snmp_node** %12, align 8
  %116 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.snmp_node*, %struct.snmp_node** %12, align 8
  %120 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @SNMP_OP_GET, align 4
  %123 = call i32 %108(%struct.TYPE_7__* %109, %struct.TYPE_8__* %114, i32 %118, i32 %121, i32 %122)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* @GET, align 4
  %125 = call i64 @TR(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %96
  %128 = load i32, i32* %10, align 4
  %129 = call i32 (i8*, ...) @snmp_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %127, %96
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* @SNMP_ERR_NOSUCHNAME, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %165

134:                                              ; preds = %130
  %135 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %136 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @SNMP_V1, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %151

140:                                              ; preds = %134
  %141 = load i32, i32* @SNMP_ERR_NOSUCHNAME, align 4
  %142 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %143 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 8
  %144 = load i64, i64* %11, align 8
  %145 = add i64 %144, 1
  %146 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %147 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %146, i32 0, i32 3
  store i64 %145, i64* %147, align 8
  %148 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %149 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %148)
  %150 = load i32, i32* @SNMP_RET_ERR, align 4
  store i32 %150, i32* %5, align 4
  br label %245

151:                                              ; preds = %134
  %152 = load i32, i32* @GET, align 4
  %153 = call i64 @TR(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = call i32 (i8*, ...) @snmp_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %157

157:                                              ; preds = %155, %151
  %158 = load i32, i32* @SNMP_SYNTAX_NOSUCHINSTANCE, align 4
  %159 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %160 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %159, i32 0, i32 4
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = load i64, i64* %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  store i32 %158, i32* %164, align 4
  br label %182

165:                                              ; preds = %130
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %181

169:                                              ; preds = %165
  %170 = load i8*, i8** @SNMP_ERR_GENERR, align 8
  %171 = ptrtoint i8* %170 to i32
  %172 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %173 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 8
  %174 = load i64, i64* %11, align 8
  %175 = add i64 %174, 1
  %176 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %177 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %176, i32 0, i32 3
  store i64 %175, i64* %177, align 8
  %178 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %179 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %178)
  %180 = load i32, i32* @SNMP_RET_ERR, align 4
  store i32 %180, i32* %5, align 4
  br label %245

181:                                              ; preds = %165
  br label %182

182:                                              ; preds = %181, %157
  br label %183

183:                                              ; preds = %182, %88
  %184 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %185 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = add i64 %186, 1
  store i64 %187, i64* %185, align 8
  %188 = load %struct.asn_buf*, %struct.asn_buf** %7, align 8
  %189 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %190 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %189, i32 0, i32 4
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %190, align 8
  %192 = load i64, i64* %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i64 %192
  %194 = call i32 @snmp_binding_encode(%struct.asn_buf* %188, %struct.TYPE_8__* %193)
  store i32 %194, i32* %15, align 4
  %195 = load i32, i32* %15, align 4
  %196 = load i32, i32* @ASN_ERR_EOBUF, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %207

198:                                              ; preds = %183
  %199 = load i32, i32* @SNMP_ERR_TOOBIG, align 4
  %200 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %201 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %200, i32 0, i32 2
  store i32 %199, i32* %201, align 8
  %202 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %203 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %202, i32 0, i32 3
  store i64 0, i64* %203, align 8
  %204 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %205 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %204)
  %206 = load i32, i32* @SNMP_RET_ERR, align 4
  store i32 %206, i32* %5, align 4
  br label %245

207:                                              ; preds = %183
  %208 = load i32, i32* %15, align 4
  %209 = load i32, i32* @ASN_ERR_OK, align 4
  %210 = icmp ne i32 %208, %209
  br i1 %210, label %211, label %230

211:                                              ; preds = %207
  %212 = load i32, i32* @GET, align 4
  %213 = call i64 @TR(i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %211
  %216 = load i32, i32* %15, align 4
  %217 = call i32 (i8*, ...) @snmp_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %216)
  br label %218

218:                                              ; preds = %215, %211
  %219 = load i8*, i8** @SNMP_ERR_GENERR, align 8
  %220 = ptrtoint i8* %219 to i32
  %221 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %222 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %221, i32 0, i32 2
  store i32 %220, i32* %222, align 8
  %223 = load i64, i64* %11, align 8
  %224 = add i64 %223, 1
  %225 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %226 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %225, i32 0, i32 3
  store i64 %224, i64* %226, align 8
  %227 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %228 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %227)
  %229 = load i32, i32* @SNMP_RET_ERR, align 4
  store i32 %229, i32* %5, align 4
  br label %245

230:                                              ; preds = %207
  br label %231

231:                                              ; preds = %230
  %232 = load i64, i64* %11, align 8
  %233 = add i64 %232, 1
  store i64 %233, i64* %11, align 8
  br label %31

234:                                              ; preds = %31
  %235 = load %struct.asn_buf*, %struct.asn_buf** %7, align 8
  %236 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %237 = call i64 @snmp_fix_encoding(%struct.asn_buf* %235, %struct.snmp_pdu* %236)
  %238 = load i64, i64* @SNMP_CODE_OK, align 8
  %239 = icmp ne i64 %237, %238
  br i1 %239, label %240, label %243

240:                                              ; preds = %234
  %241 = call i32 (i8*, ...) @snmp_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %242 = load i32, i32* @SNMP_RET_ERR, align 4
  store i32 %242, i32* %5, align 4
  br label %245

243:                                              ; preds = %234
  %244 = load i32, i32* @SNMP_RET_OK, align 4
  store i32 %244, i32* %5, align 4
  br label %245

245:                                              ; preds = %243, %240, %218, %198, %169, %140, %70, %28
  %246 = load i32, i32* %5, align 4
  ret i32 %246
}

declare dso_local i32 @memset(%struct.context*, i32, i32) #1

declare dso_local i32 @snmp_pdu_create_response(%struct.snmp_pdu*, %struct.snmp_pdu*) #1

declare dso_local i64 @snmp_pdu_encode_header(%struct.asn_buf*, %struct.snmp_pdu*) #1

declare dso_local %struct.snmp_node* @find_node(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @TR(i32) #1

declare dso_local i32 @snmp_debug(i8*, ...) #1

declare dso_local i32 @snmp_pdu_free(%struct.snmp_pdu*) #1

declare dso_local i32 @snmp_binding_encode(%struct.asn_buf*, %struct.TYPE_8__*) #1

declare dso_local i64 @snmp_fix_encoding(%struct.asn_buf*, %struct.snmp_pdu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
