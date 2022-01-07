; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpagent.c_snmp_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpagent.c_snmp_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_buf = type { i32 }
%struct.snmp_pdu = type { i64, i64, i64, i32, %struct.snmp_value* }
%struct.snmp_value = type { i64, i32 }
%struct.context = type { %struct.TYPE_8__, i32*, %struct.snmp_node**, i32 }
%struct.TYPE_8__ = type { i32, i64, i32*, i8* }
%struct.snmp_node = type { i64, i32, i64, i32 (%struct.TYPE_8__*, %struct.snmp_value*, i32, i32, i32)*, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }

@SNMP_RET_IGN = common dso_local global i32 0, align 4
@SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"set: node not found %s\00", align 1
@oidbuf = common dso_local global i32 0, align 4
@SNMP_V1 = common dso_local global i64 0, align 8
@SNMP_ERR_NOSUCHNAME = common dso_local global i8* null, align 8
@SNMP_SYNTAX_NOSUCHOBJECT = common dso_local global i32 0, align 4
@SNMP_RET_ERR = common dso_local global i32 0, align 4
@SNMP_NODE_LEAF = common dso_local global i64 0, align 8
@SNMP_NODE_CANSET = common dso_local global i32 0, align 4
@SNMP_ERR_BADVALUE = common dso_local global i8* null, align 8
@SNMP_ERR_GENERR = common dso_local global i8* null, align 8
@ASN_ERR_EOBUF = common dso_local global i32 0, align 4
@SNMP_ERR_TOOBIG = common dso_local global i32 0, align 4
@ASN_ERR_OK = common dso_local global i32 0, align 4
@SNMP_RET_OK = common dso_local global i32 0, align 4
@SNMP_OP_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"set: action %s returns %d\00", align 1
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"set: set operations ok\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"set: commiting\00", align 1
@SNMP_OP_COMMIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"set: commit failed (%d) on variable %s index %u\00", align 1
@SNMP_CODE_OK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"set: fix_encoding failed\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"set: returning %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_set(%struct.snmp_pdu* %0, %struct.asn_buf* %1, %struct.snmp_pdu* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snmp_pdu*, align 8
  %7 = alloca %struct.asn_buf*, align 8
  %8 = alloca %struct.snmp_pdu*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.context, align 8
  %14 = alloca %struct.snmp_node*, align 8
  %15 = alloca %struct.snmp_value*, align 8
  %16 = alloca i32, align 4
  store %struct.snmp_pdu* %0, %struct.snmp_pdu** %6, align 8
  store %struct.asn_buf* %1, %struct.asn_buf** %7, align 8
  store %struct.snmp_pdu* %2, %struct.snmp_pdu** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = call i32 @memset(%struct.context* %13, i32 0, i32 56)
  %18 = getelementptr inbounds %struct.context, %struct.context* %13, i32 0, i32 3
  %19 = call i32 @TAILQ_INIT(i32* %18)
  %20 = load i8*, i8** %9, align 8
  %21 = getelementptr inbounds %struct.context, %struct.context* %13, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %24 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %25 = call i32 @snmp_pdu_create_response(%struct.snmp_pdu* %23, %struct.snmp_pdu* %24)
  %26 = load %struct.asn_buf*, %struct.asn_buf** %7, align 8
  %27 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %28 = call i64 @snmp_pdu_encode_header(%struct.asn_buf* %26, %struct.snmp_pdu* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* @SNMP_RET_IGN, align 4
  store i32 %31, i32* %5, align 4
  br label %516

32:                                               ; preds = %4
  store i64 0, i64* %11, align 8
  br label %33

33:                                               ; preds = %250, %32
  %34 = load i64, i64* %11, align 8
  %35 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %36 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %253

39:                                               ; preds = %33
  %40 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %41 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %40, i32 0, i32 4
  %42 = load %struct.snmp_value*, %struct.snmp_value** %41, align 8
  %43 = load i64, i64* %11, align 8
  %44 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %42, i64 %43
  store %struct.snmp_value* %44, %struct.snmp_value** %15, align 8
  %45 = load %struct.snmp_value*, %struct.snmp_value** %15, align 8
  %46 = call %struct.snmp_node* @find_node(%struct.snmp_value* %45, i32* %16)
  %47 = getelementptr inbounds %struct.context, %struct.context* %13, i32 0, i32 2
  %48 = load %struct.snmp_node**, %struct.snmp_node*** %47, align 8
  %49 = load i64, i64* %11, align 8
  %50 = getelementptr inbounds %struct.snmp_node*, %struct.snmp_node** %48, i64 %49
  store %struct.snmp_node* %46, %struct.snmp_node** %50, align 8
  store %struct.snmp_node* %46, %struct.snmp_node** %14, align 8
  %51 = icmp eq %struct.snmp_node* %46, null
  br i1 %51, label %52, label %112

52:                                               ; preds = %39
  %53 = load i32, i32* @SET, align 4
  %54 = call i64 @TR(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load %struct.snmp_value*, %struct.snmp_value** %15, align 8
  %58 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %57, i32 0, i32 1
  %59 = load i32, i32* @oidbuf, align 4
  %60 = call i32 @asn_oid2str_r(i32* %58, i32 %59)
  %61 = call i32 (i8*, ...) @snmp_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %56, %52
  %63 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %64 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SNMP_V1, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %62
  %69 = load i64, i64* %11, align 8
  %70 = add i64 %69, 1
  %71 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %72 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %71, i32 0, i32 2
  store i64 %70, i64* %72, align 8
  %73 = load i8*, i8** @SNMP_ERR_NOSUCHNAME, align 8
  %74 = ptrtoint i8* %73 to i32
  %75 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %76 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  br label %108

77:                                               ; preds = %62
  %78 = load %struct.snmp_value*, %struct.snmp_value** %15, align 8
  %79 = call %struct.snmp_node* @find_subnode(%struct.snmp_value* %78)
  store %struct.snmp_node* %79, %struct.snmp_node** %14, align 8
  %80 = icmp ne %struct.snmp_node* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load i64, i64* %11, align 8
  %83 = add i64 %82, 1
  %84 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %85 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %84, i32 0, i32 2
  store i64 %83, i64* %85, align 8
  %86 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %87 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %86, i32 0, i32 3
  store i32 136, i32* %87, align 8
  br label %107

88:                                               ; preds = %77
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* @SNMP_SYNTAX_NOSUCHOBJECT, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load i64, i64* %11, align 8
  %94 = add i64 %93, 1
  %95 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %96 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %95, i32 0, i32 2
  store i64 %94, i64* %96, align 8
  %97 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %98 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %97, i32 0, i32 3
  store i32 135, i32* %98, align 8
  br label %106

99:                                               ; preds = %88
  %100 = load i64, i64* %11, align 8
  %101 = add i64 %100, 1
  %102 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %103 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %102, i32 0, i32 2
  store i64 %101, i64* %103, align 8
  %104 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %105 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %104, i32 0, i32 3
  store i32 134, i32* %105, align 8
  br label %106

106:                                              ; preds = %99, %92
  br label %107

107:                                              ; preds = %106, %81
  br label %108

108:                                              ; preds = %107, %68
  %109 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %110 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %109)
  %111 = load i32, i32* @SNMP_RET_ERR, align 4
  store i32 %111, i32* %5, align 4
  br label %516

112:                                              ; preds = %39
  %113 = load %struct.snmp_node*, %struct.snmp_node** %14, align 8
  %114 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @SNMP_NODE_LEAF, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %151

118:                                              ; preds = %112
  %119 = load %struct.snmp_node*, %struct.snmp_node** %14, align 8
  %120 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @SNMP_NODE_CANSET, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %151, label %125

125:                                              ; preds = %118
  %126 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %127 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @SNMP_V1, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %140

131:                                              ; preds = %125
  %132 = load i64, i64* %11, align 8
  %133 = add i64 %132, 1
  %134 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %135 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %134, i32 0, i32 2
  store i64 %133, i64* %135, align 8
  %136 = load i8*, i8** @SNMP_ERR_NOSUCHNAME, align 8
  %137 = ptrtoint i8* %136 to i32
  %138 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %139 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 8
  br label %147

140:                                              ; preds = %125
  %141 = load i64, i64* %11, align 8
  %142 = add i64 %141, 1
  %143 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %144 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %143, i32 0, i32 2
  store i64 %142, i64* %144, align 8
  %145 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %146 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %145, i32 0, i32 3
  store i32 136, i32* %146, align 8
  br label %147

147:                                              ; preds = %140, %131
  %148 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %149 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %148)
  %150 = load i32, i32* @SNMP_RET_ERR, align 4
  store i32 %150, i32* %5, align 4
  br label %516

151:                                              ; preds = %118, %112
  %152 = load %struct.snmp_node*, %struct.snmp_node** %14, align 8
  %153 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.snmp_value*, %struct.snmp_value** %15, align 8
  %156 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %154, %157
  br i1 %158, label %159, label %185

159:                                              ; preds = %151
  %160 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %161 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @SNMP_V1, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %174

165:                                              ; preds = %159
  %166 = load i64, i64* %11, align 8
  %167 = add i64 %166, 1
  %168 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %169 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %168, i32 0, i32 2
  store i64 %167, i64* %169, align 8
  %170 = load i8*, i8** @SNMP_ERR_BADVALUE, align 8
  %171 = ptrtoint i8* %170 to i32
  %172 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %173 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %172, i32 0, i32 3
  store i32 %171, i32* %173, align 8
  br label %181

174:                                              ; preds = %159
  %175 = load i64, i64* %11, align 8
  %176 = add i64 %175, 1
  %177 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %178 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %177, i32 0, i32 2
  store i64 %176, i64* %178, align 8
  %179 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %180 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %179, i32 0, i32 3
  store i32 129, i32* %180, align 8
  br label %181

181:                                              ; preds = %174, %165
  %182 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %183 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %182)
  %184 = load i32, i32* @SNMP_RET_ERR, align 4
  store i32 %184, i32* %5, align 4
  br label %516

185:                                              ; preds = %151
  %186 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %187 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %186, i32 0, i32 4
  %188 = load %struct.snmp_value*, %struct.snmp_value** %187, align 8
  %189 = load i64, i64* %11, align 8
  %190 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %188, i64 %189
  %191 = load %struct.snmp_value*, %struct.snmp_value** %15, align 8
  %192 = call i64 @snmp_value_copy(%struct.snmp_value* %190, %struct.snmp_value* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %206

194:                                              ; preds = %185
  %195 = load i64, i64* %11, align 8
  %196 = add i64 %195, 1
  %197 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %198 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %197, i32 0, i32 2
  store i64 %196, i64* %198, align 8
  %199 = load i8*, i8** @SNMP_ERR_GENERR, align 8
  %200 = ptrtoint i8* %199 to i32
  %201 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %202 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %201, i32 0, i32 3
  store i32 %200, i32* %202, align 8
  %203 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %204 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %203)
  %205 = load i32, i32* @SNMP_RET_ERR, align 4
  store i32 %205, i32* %5, align 4
  br label %516

206:                                              ; preds = %185
  %207 = load %struct.asn_buf*, %struct.asn_buf** %7, align 8
  %208 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %209 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %208, i32 0, i32 4
  %210 = load %struct.snmp_value*, %struct.snmp_value** %209, align 8
  %211 = load i64, i64* %11, align 8
  %212 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %210, i64 %211
  %213 = call i32 @snmp_binding_encode(%struct.asn_buf* %207, %struct.snmp_value* %212)
  store i32 %213, i32* %12, align 4
  %214 = load i32, i32* %12, align 4
  %215 = load i32, i32* @ASN_ERR_EOBUF, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %228

217:                                              ; preds = %206
  %218 = load i64, i64* %11, align 8
  %219 = add i64 %218, 1
  %220 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %221 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %220, i32 0, i32 2
  store i64 %219, i64* %221, align 8
  %222 = load i32, i32* @SNMP_ERR_TOOBIG, align 4
  %223 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %224 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %223, i32 0, i32 3
  store i32 %222, i32* %224, align 8
  %225 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %226 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %225)
  %227 = load i32, i32* @SNMP_RET_ERR, align 4
  store i32 %227, i32* %5, align 4
  br label %516

228:                                              ; preds = %206
  %229 = load i32, i32* %12, align 4
  %230 = load i32, i32* @ASN_ERR_OK, align 4
  %231 = icmp ne i32 %229, %230
  br i1 %231, label %232, label %244

232:                                              ; preds = %228
  %233 = load i64, i64* %11, align 8
  %234 = add i64 %233, 1
  %235 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %236 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %235, i32 0, i32 2
  store i64 %234, i64* %236, align 8
  %237 = load i8*, i8** @SNMP_ERR_GENERR, align 8
  %238 = ptrtoint i8* %237 to i32
  %239 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %240 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %239, i32 0, i32 3
  store i32 %238, i32* %240, align 8
  %241 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %242 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %241)
  %243 = load i32, i32* @SNMP_RET_ERR, align 4
  store i32 %243, i32* %5, align 4
  br label %516

244:                                              ; preds = %228
  br label %245

245:                                              ; preds = %244
  %246 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %247 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = add i64 %248, 1
  store i64 %249, i64* %247, align 8
  br label %250

250:                                              ; preds = %245
  %251 = load i64, i64* %11, align 8
  %252 = add i64 %251, 1
  store i64 %252, i64* %11, align 8
  br label %33

253:                                              ; preds = %33
  %254 = load i32, i32* @SNMP_RET_OK, align 4
  %255 = getelementptr inbounds %struct.context, %struct.context* %13, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 0
  store i32 %254, i32* %256, align 8
  store i64 0, i64* %11, align 8
  br label %257

257:                                              ; preds = %376, %253
  %258 = load i64, i64* %11, align 8
  %259 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %260 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = icmp ult i64 %258, %261
  br i1 %262, label %263, label %379

263:                                              ; preds = %257
  %264 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %265 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %264, i32 0, i32 4
  %266 = load %struct.snmp_value*, %struct.snmp_value** %265, align 8
  %267 = load i64, i64* %11, align 8
  %268 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %266, i64 %267
  store %struct.snmp_value* %268, %struct.snmp_value** %15, align 8
  %269 = getelementptr inbounds %struct.context, %struct.context* %13, i32 0, i32 2
  %270 = load %struct.snmp_node**, %struct.snmp_node*** %269, align 8
  %271 = load i64, i64* %11, align 8
  %272 = getelementptr inbounds %struct.snmp_node*, %struct.snmp_node** %270, i64 %271
  %273 = load %struct.snmp_node*, %struct.snmp_node** %272, align 8
  store %struct.snmp_node* %273, %struct.snmp_node** %14, align 8
  %274 = load i64, i64* %11, align 8
  %275 = add i64 %274, 1
  %276 = getelementptr inbounds %struct.context, %struct.context* %13, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 1
  store i64 %275, i64* %277, align 8
  %278 = getelementptr inbounds %struct.context, %struct.context* %13, i32 0, i32 1
  %279 = load i32*, i32** %278, align 8
  %280 = load i64, i64* %11, align 8
  %281 = getelementptr inbounds i32, i32* %279, i64 %280
  %282 = getelementptr inbounds %struct.context, %struct.context* %13, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 2
  store i32* %281, i32** %283, align 8
  %284 = load %struct.snmp_node*, %struct.snmp_node** %14, align 8
  %285 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %284, i32 0, i32 3
  %286 = load i32 (%struct.TYPE_8__*, %struct.snmp_value*, i32, i32, i32)*, i32 (%struct.TYPE_8__*, %struct.snmp_value*, i32, i32, i32)** %285, align 8
  %287 = getelementptr inbounds %struct.context, %struct.context* %13, i32 0, i32 0
  %288 = load %struct.snmp_value*, %struct.snmp_value** %15, align 8
  %289 = load %struct.snmp_node*, %struct.snmp_node** %14, align 8
  %290 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %289, i32 0, i32 5
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.snmp_node*, %struct.snmp_node** %14, align 8
  %294 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %293, i32 0, i32 4
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* @SNMP_OP_SET, align 4
  %297 = call i32 %286(%struct.TYPE_8__* %287, %struct.snmp_value* %288, i32 %292, i32 %295, i32 %296)
  store i32 %297, i32* %10, align 4
  %298 = load i32, i32* @SET, align 4
  %299 = call i64 @TR(i32 %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %307

301:                                              ; preds = %263
  %302 = load %struct.snmp_node*, %struct.snmp_node** %14, align 8
  %303 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %302, i32 0, i32 6
  %304 = load i32, i32* %303, align 8
  %305 = load i32, i32* %10, align 4
  %306 = call i32 (i8*, ...) @snmp_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %304, i32 %305)
  br label %307

307:                                              ; preds = %301, %263
  %308 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %309 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %308, i32 0, i32 1
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @SNMP_V1, align 8
  %312 = icmp eq i64 %310, %311
  br i1 %312, label %313, label %355

313:                                              ; preds = %307
  %314 = load i32, i32* %10, align 4
  switch i32 %314, label %354 [
    i32 135, label %315
    i32 129, label %318
    i32 130, label %321
    i32 131, label %324
    i32 128, label %327
    i32 134, label %330
    i32 137, label %333
    i32 133, label %336
    i32 139, label %339
    i32 132, label %342
    i32 140, label %345
    i32 136, label %348
    i32 138, label %351
  ]

315:                                              ; preds = %313
  %316 = load i8*, i8** @SNMP_ERR_NOSUCHNAME, align 8
  %317 = ptrtoint i8* %316 to i32
  store i32 %317, i32* %10, align 4
  br label %354

318:                                              ; preds = %313
  %319 = load i8*, i8** @SNMP_ERR_BADVALUE, align 8
  %320 = ptrtoint i8* %319 to i32
  store i32 %320, i32* %10, align 4
  br label %354

321:                                              ; preds = %313
  %322 = load i8*, i8** @SNMP_ERR_BADVALUE, align 8
  %323 = ptrtoint i8* %322 to i32
  store i32 %323, i32* %10, align 4
  br label %354

324:                                              ; preds = %313
  %325 = load i8*, i8** @SNMP_ERR_BADVALUE, align 8
  %326 = ptrtoint i8* %325 to i32
  store i32 %326, i32* %10, align 4
  br label %354

327:                                              ; preds = %313
  %328 = load i8*, i8** @SNMP_ERR_BADVALUE, align 8
  %329 = ptrtoint i8* %328 to i32
  store i32 %329, i32* %10, align 4
  br label %354

330:                                              ; preds = %313
  %331 = load i8*, i8** @SNMP_ERR_NOSUCHNAME, align 8
  %332 = ptrtoint i8* %331 to i32
  store i32 %332, i32* %10, align 4
  br label %354

333:                                              ; preds = %313
  %334 = load i8*, i8** @SNMP_ERR_BADVALUE, align 8
  %335 = ptrtoint i8* %334 to i32
  store i32 %335, i32* %10, align 4
  br label %354

336:                                              ; preds = %313
  %337 = load i8*, i8** @SNMP_ERR_GENERR, align 8
  %338 = ptrtoint i8* %337 to i32
  store i32 %338, i32* %10, align 4
  br label %354

339:                                              ; preds = %313
  %340 = load i8*, i8** @SNMP_ERR_GENERR, align 8
  %341 = ptrtoint i8* %340 to i32
  store i32 %341, i32* %10, align 4
  br label %354

342:                                              ; preds = %313
  %343 = load i8*, i8** @SNMP_ERR_GENERR, align 8
  %344 = ptrtoint i8* %343 to i32
  store i32 %344, i32* %10, align 4
  br label %354

345:                                              ; preds = %313
  %346 = load i8*, i8** @SNMP_ERR_GENERR, align 8
  %347 = ptrtoint i8* %346 to i32
  store i32 %347, i32* %10, align 4
  br label %354

348:                                              ; preds = %313
  %349 = load i8*, i8** @SNMP_ERR_NOSUCHNAME, align 8
  %350 = ptrtoint i8* %349 to i32
  store i32 %350, i32* %10, align 4
  br label %354

351:                                              ; preds = %313
  %352 = load i8*, i8** @SNMP_ERR_BADVALUE, align 8
  %353 = ptrtoint i8* %352 to i32
  store i32 %353, i32* %10, align 4
  br label %354

354:                                              ; preds = %313, %351, %348, %345, %342, %339, %336, %333, %330, %327, %324, %321, %318, %315
  br label %355

355:                                              ; preds = %354, %307
  %356 = load i32, i32* %10, align 4
  %357 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  %358 = icmp ne i32 %356, %357
  br i1 %358, label %359, label %375

359:                                              ; preds = %355
  %360 = load i64, i64* %11, align 8
  %361 = add i64 %360, 1
  %362 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %363 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %362, i32 0, i32 2
  store i64 %361, i64* %363, align 8
  %364 = load i32, i32* %10, align 4
  %365 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %366 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %365, i32 0, i32 3
  store i32 %364, i32* %366, align 8
  %367 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %368 = load i64, i64* %11, align 8
  %369 = call i32 @rollback(%struct.context* %13, %struct.snmp_pdu* %367, i64 %368)
  %370 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %371 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %370)
  %372 = load i32, i32* @SNMP_RET_ERR, align 4
  %373 = getelementptr inbounds %struct.context, %struct.context* %13, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %373, i32 0, i32 0
  store i32 %372, i32* %374, align 8
  br label %501

375:                                              ; preds = %355
  br label %376

376:                                              ; preds = %375
  %377 = load i64, i64* %11, align 8
  %378 = add i64 %377, 1
  store i64 %378, i64* %11, align 8
  br label %257

379:                                              ; preds = %257
  %380 = load i32, i32* @SET, align 4
  %381 = call i64 @TR(i32 %380)
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %385

383:                                              ; preds = %379
  %384 = call i32 (i8*, ...) @snmp_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %385

385:                                              ; preds = %383, %379
  %386 = getelementptr inbounds %struct.context, %struct.context* %13, i32 0, i32 0
  %387 = call i32 @snmp_dep_commit(%struct.TYPE_8__* %386)
  store i32 %387, i32* %10, align 4
  %388 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  %389 = icmp ne i32 %387, %388
  br i1 %389, label %390, label %424

390:                                              ; preds = %385
  %391 = load i32, i32* %10, align 4
  %392 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %393 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %392, i32 0, i32 3
  store i32 %391, i32* %393, align 8
  %394 = getelementptr inbounds %struct.context, %struct.context* %13, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %394, i32 0, i32 1
  %396 = load i64, i64* %395, align 8
  %397 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %398 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %397, i32 0, i32 2
  store i64 %396, i64* %398, align 8
  %399 = getelementptr inbounds %struct.context, %struct.context* %13, i32 0, i32 0
  %400 = call i32 @snmp_dep_rollback(%struct.TYPE_8__* %399)
  store i32 %400, i32* %10, align 4
  %401 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  %402 = icmp ne i32 %400, %401
  br i1 %402, label %403, label %415

403:                                              ; preds = %390
  %404 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %405 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %404, i32 0, i32 1
  %406 = load i64, i64* %405, align 8
  %407 = load i64, i64* @SNMP_V1, align 8
  %408 = icmp ne i64 %406, %407
  br i1 %408, label %409, label %414

409:                                              ; preds = %403
  %410 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %411 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %410, i32 0, i32 3
  store i32 132, i32* %411, align 8
  %412 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %413 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %412, i32 0, i32 2
  store i64 0, i64* %413, align 8
  br label %414

414:                                              ; preds = %409, %403
  br label %415

415:                                              ; preds = %414, %390
  %416 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %417 = load i64, i64* %11, align 8
  %418 = call i32 @rollback(%struct.context* %13, %struct.snmp_pdu* %416, i64 %417)
  %419 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %420 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %419)
  %421 = load i32, i32* @SNMP_RET_ERR, align 4
  %422 = getelementptr inbounds %struct.context, %struct.context* %13, i32 0, i32 0
  %423 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %422, i32 0, i32 0
  store i32 %421, i32* %423, align 8
  br label %501

424:                                              ; preds = %385
  %425 = load i32, i32* @SET, align 4
  %426 = call i64 @TR(i32 %425)
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %428, label %430

428:                                              ; preds = %424
  %429 = call i32 (i8*, ...) @snmp_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %430

430:                                              ; preds = %428, %424
  store i64 0, i64* %11, align 8
  br label %431

431:                                              ; preds = %484, %430
  %432 = load i64, i64* %11, align 8
  %433 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %434 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %433, i32 0, i32 0
  %435 = load i64, i64* %434, align 8
  %436 = icmp ult i64 %432, %435
  br i1 %436, label %437, label %487

437:                                              ; preds = %431
  %438 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %439 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %438, i32 0, i32 4
  %440 = load %struct.snmp_value*, %struct.snmp_value** %439, align 8
  %441 = load i64, i64* %11, align 8
  %442 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %440, i64 %441
  store %struct.snmp_value* %442, %struct.snmp_value** %15, align 8
  %443 = getelementptr inbounds %struct.context, %struct.context* %13, i32 0, i32 2
  %444 = load %struct.snmp_node**, %struct.snmp_node*** %443, align 8
  %445 = load i64, i64* %11, align 8
  %446 = getelementptr inbounds %struct.snmp_node*, %struct.snmp_node** %444, i64 %445
  %447 = load %struct.snmp_node*, %struct.snmp_node** %446, align 8
  store %struct.snmp_node* %447, %struct.snmp_node** %14, align 8
  %448 = load i64, i64* %11, align 8
  %449 = add i64 %448, 1
  %450 = getelementptr inbounds %struct.context, %struct.context* %13, i32 0, i32 0
  %451 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %450, i32 0, i32 1
  store i64 %449, i64* %451, align 8
  %452 = getelementptr inbounds %struct.context, %struct.context* %13, i32 0, i32 1
  %453 = load i32*, i32** %452, align 8
  %454 = load i64, i64* %11, align 8
  %455 = getelementptr inbounds i32, i32* %453, i64 %454
  %456 = getelementptr inbounds %struct.context, %struct.context* %13, i32 0, i32 0
  %457 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %456, i32 0, i32 2
  store i32* %455, i32** %457, align 8
  %458 = load %struct.snmp_node*, %struct.snmp_node** %14, align 8
  %459 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %458, i32 0, i32 3
  %460 = load i32 (%struct.TYPE_8__*, %struct.snmp_value*, i32, i32, i32)*, i32 (%struct.TYPE_8__*, %struct.snmp_value*, i32, i32, i32)** %459, align 8
  %461 = getelementptr inbounds %struct.context, %struct.context* %13, i32 0, i32 0
  %462 = load %struct.snmp_value*, %struct.snmp_value** %15, align 8
  %463 = load %struct.snmp_node*, %struct.snmp_node** %14, align 8
  %464 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %463, i32 0, i32 5
  %465 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 4
  %467 = load %struct.snmp_node*, %struct.snmp_node** %14, align 8
  %468 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %467, i32 0, i32 4
  %469 = load i32, i32* %468, align 8
  %470 = load i32, i32* @SNMP_OP_COMMIT, align 4
  %471 = call i32 %460(%struct.TYPE_8__* %461, %struct.snmp_value* %462, i32 %466, i32 %469, i32 %470)
  store i32 %471, i32* %10, align 4
  %472 = load i32, i32* %10, align 4
  %473 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  %474 = icmp ne i32 %472, %473
  br i1 %474, label %475, label %483

475:                                              ; preds = %437
  %476 = load i32, i32* %10, align 4
  %477 = load %struct.snmp_value*, %struct.snmp_value** %15, align 8
  %478 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %477, i32 0, i32 1
  %479 = load i32, i32* @oidbuf, align 4
  %480 = call i32 @asn_oid2str_r(i32* %478, i32 %479)
  %481 = load i64, i64* %11, align 8
  %482 = call i32 (i8*, ...) @snmp_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %476, i32 %480, i64 %481)
  br label %483

483:                                              ; preds = %475, %437
  br label %484

484:                                              ; preds = %483
  %485 = load i64, i64* %11, align 8
  %486 = add i64 %485, 1
  store i64 %486, i64* %11, align 8
  br label %431

487:                                              ; preds = %431
  %488 = load %struct.asn_buf*, %struct.asn_buf** %7, align 8
  %489 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %490 = call i64 @snmp_fix_encoding(%struct.asn_buf* %488, %struct.snmp_pdu* %489)
  %491 = load i64, i64* @SNMP_CODE_OK, align 8
  %492 = icmp ne i64 %490, %491
  br i1 %492, label %493, label %500

493:                                              ; preds = %487
  %494 = call i32 (i8*, ...) @snmp_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %495 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %496 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %495)
  %497 = load i32, i32* @SNMP_RET_IGN, align 4
  %498 = getelementptr inbounds %struct.context, %struct.context* %13, i32 0, i32 0
  %499 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %498, i32 0, i32 0
  store i32 %497, i32* %499, align 8
  br label %500

500:                                              ; preds = %493, %487
  br label %501

501:                                              ; preds = %500, %415, %359
  %502 = getelementptr inbounds %struct.context, %struct.context* %13, i32 0, i32 0
  %503 = call i32 @snmp_dep_finish(%struct.TYPE_8__* %502)
  %504 = load i32, i32* @SET, align 4
  %505 = call i64 @TR(i32 %504)
  %506 = icmp ne i64 %505, 0
  br i1 %506, label %507, label %512

507:                                              ; preds = %501
  %508 = getelementptr inbounds %struct.context, %struct.context* %13, i32 0, i32 0
  %509 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %508, i32 0, i32 0
  %510 = load i32, i32* %509, align 8
  %511 = call i32 (i8*, ...) @snmp_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %510)
  br label %512

512:                                              ; preds = %507, %501
  %513 = getelementptr inbounds %struct.context, %struct.context* %13, i32 0, i32 0
  %514 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %513, i32 0, i32 0
  %515 = load i32, i32* %514, align 8
  store i32 %515, i32* %5, align 4
  br label %516

516:                                              ; preds = %512, %232, %217, %194, %181, %147, %108, %30
  %517 = load i32, i32* %5, align 4
  ret i32 %517
}

declare dso_local i32 @memset(%struct.context*, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @snmp_pdu_create_response(%struct.snmp_pdu*, %struct.snmp_pdu*) #1

declare dso_local i64 @snmp_pdu_encode_header(%struct.asn_buf*, %struct.snmp_pdu*) #1

declare dso_local %struct.snmp_node* @find_node(%struct.snmp_value*, i32*) #1

declare dso_local i64 @TR(i32) #1

declare dso_local i32 @snmp_debug(i8*, ...) #1

declare dso_local i32 @asn_oid2str_r(i32*, i32) #1

declare dso_local %struct.snmp_node* @find_subnode(%struct.snmp_value*) #1

declare dso_local i32 @snmp_pdu_free(%struct.snmp_pdu*) #1

declare dso_local i64 @snmp_value_copy(%struct.snmp_value*, %struct.snmp_value*) #1

declare dso_local i32 @snmp_binding_encode(%struct.asn_buf*, %struct.snmp_value*) #1

declare dso_local i32 @rollback(%struct.context*, %struct.snmp_pdu*, i64) #1

declare dso_local i32 @snmp_dep_commit(%struct.TYPE_8__*) #1

declare dso_local i32 @snmp_dep_rollback(%struct.TYPE_8__*) #1

declare dso_local i32 @snmp_error(i8*, ...) #1

declare dso_local i64 @snmp_fix_encoding(%struct.asn_buf*, %struct.snmp_pdu*) #1

declare dso_local i32 @snmp_dep_finish(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
