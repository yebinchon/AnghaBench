; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_asn1.c_decode_negTokenInit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_asn1.c_decode_negTokenInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32, i32, i32, i32 }
%struct.asn1_ctx = type { i64, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Error decoding negTokenInit header\00", align 1
@ASN1_APL = common dso_local global i32 0, align 4
@ASN1_CON = common dso_local global i32 0, align 4
@ASN1_EOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cls = %d con = %d tag = %d\00", align 1
@ASN1_OJI = common dso_local global i32 0, align 4
@ASN1_PRI = common dso_local global i32 0, align 4
@ASN1_UNI = common dso_local global i32 0, align 4
@SPNEGO_OID = common dso_local global i32 0, align 4
@SPNEGO_OID_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Error decoding negTokenInit\00", align 1
@ASN1_CTX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"cls = %d con = %d tag = %d end = %p (%d) exit 0\00", align 1
@ASN1_SEQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"cls = %d con = %d tag = %d end = %p (%d) exit 1\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Error decoding 2nd part of negTokenInit\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Error decoding negTokenInit hdr exit2\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"OID len = %d oid = 0x%lx 0x%lx 0x%lx 0x%lx\00", align 1
@MSKRB5_OID = common dso_local global i32 0, align 4
@MSKRB5_OID_LEN = common dso_local global i32 0, align 4
@KRB5U2U_OID = common dso_local global i32 0, align 4
@KRB5U2U_OID_LEN = common dso_local global i32 0, align 4
@KRB5_OID = common dso_local global i32 0, align 4
@KRB5_OID_LEN = common dso_local global i32 0, align 4
@NTLMSSP_OID = common dso_local global i32 0, align 4
@NTLMSSP_OID_LEN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"Should be an oid what is going on?\00", align 1
@ASN1_ERR_DEC_EMPTY = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [44 x i8] c"Error decoding last part negTokenInit exit3\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"Exit 4 cls = %d con = %d tag = %d end = %p (%d)\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"Error decoding last part negTokenInit exit5\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"cls = %d con = %d tag = %d end = %p (%d)\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"Error decoding last part negTokenInit exit 7\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"Exit 8 cls = %d con = %d tag = %d end = %p (%d)\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"Error decoding last part negTokenInit exit9\00", align 1
@ASN1_GENSTR = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [48 x i8] c"Exit10 cls = %d con = %d tag = %d end = %p (%d)\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"Need to call asn1_octets_decode() function for %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decode_negTokenInit(i8* %0, i32 %1, %struct.TCP_Server_Info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TCP_Server_Info*, align 8
  %8 = alloca %struct.asn1_ctx, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TCP_Server_Info* %2, %struct.TCP_Server_Info** %7, align 8
  store i64* null, i64** %11, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @asn1_open(%struct.asn1_ctx* %8, i8* %17, i32 %18)
  %20 = call i32 @asn1_header_decode(%struct.asn1_ctx* %8, i8** %9, i32* %12, i32* %13, i32* %14)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %385

24:                                               ; preds = %3
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @ASN1_APL, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* @ASN1_CON, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* @ASN1_EOC, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32, %28, %24
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %14, align 4
  %40 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %38, i32 %39)
  store i32 0, i32* %4, align 4
  br label %385

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41
  %43 = call i32 @asn1_header_decode(%struct.asn1_ctx* %8, i8** %9, i32* %12, i32* %13, i32* %14)
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %16, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %74

46:                                               ; preds = %42
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @ASN1_OJI, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %72

50:                                               ; preds = %46
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @ASN1_PRI, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %50
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @ASN1_UNI, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %54
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @asn1_oid_decode(%struct.asn1_ctx* %8, i8* %59, i64** %11, i32* %15)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load i64*, i64** %11, align 8
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* @SPNEGO_OID, align 4
  %67 = load i32, i32* @SPNEGO_OID_LEN, align 4
  %68 = call i32 @compare_oid(i64* %64, i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %16, align 4
  %69 = load i64*, i64** %11, align 8
  %70 = call i32 @kfree(i64* %69)
  br label %71

71:                                               ; preds = %63, %58
  br label %73

72:                                               ; preds = %54, %50, %46
  store i32 0, i32* %16, align 4
  br label %73

73:                                               ; preds = %72, %71
  br label %74

74:                                               ; preds = %73, %42
  %75 = load i32, i32* %16, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %385

79:                                               ; preds = %74
  %80 = call i32 @asn1_header_decode(%struct.asn1_ctx* %8, i8** %9, i32* %12, i32* %13, i32* %14)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %385

84:                                               ; preds = %79
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @ASN1_CTX, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %96, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* @ASN1_CON, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* @ASN1_EOC, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %92, %88, %84
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %14, align 4
  %100 = load i8*, i8** %9, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %97, i32 %98, i32 %99, i8* %100, i32 %103)
  store i32 0, i32* %4, align 4
  br label %385

105:                                              ; preds = %92
  br label %106

106:                                              ; preds = %105
  %107 = call i32 @asn1_header_decode(%struct.asn1_ctx* %8, i8** %9, i32* %12, i32* %13, i32* %14)
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %385

111:                                              ; preds = %106
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @ASN1_UNI, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %123, label %115

115:                                              ; preds = %111
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* @ASN1_CON, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* @ASN1_SEQ, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %132

123:                                              ; preds = %119, %115, %111
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %14, align 4
  %127 = load i8*, i8** %9, align 8
  %128 = load i8*, i8** %9, align 8
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %124, i32 %125, i32 %126, i8* %127, i32 %130)
  store i32 0, i32* %4, align 4
  br label %385

132:                                              ; preds = %119
  br label %133

133:                                              ; preds = %132
  %134 = call i32 @asn1_header_decode(%struct.asn1_ctx* %8, i8** %9, i32* %12, i32* %13, i32* %14)
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  %137 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %385

138:                                              ; preds = %133
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* @ASN1_CTX, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %150, label %142

142:                                              ; preds = %138
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* @ASN1_CON, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %150, label %146

146:                                              ; preds = %142
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* @ASN1_EOC, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %159

150:                                              ; preds = %146, %142, %138
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* %14, align 4
  %154 = load i8*, i8** %9, align 8
  %155 = load i8*, i8** %9, align 8
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %151, i32 %152, i32 %153, i8* %154, i32 %157)
  store i32 0, i32* %4, align 4
  br label %385

159:                                              ; preds = %146
  br label %160

160:                                              ; preds = %159
  %161 = call i32 @asn1_header_decode(%struct.asn1_ctx* %8, i8** %10, i32* %12, i32* %13, i32* %14)
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %160
  %164 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %385

165:                                              ; preds = %160
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* @ASN1_UNI, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %177, label %169

169:                                              ; preds = %165
  %170 = load i32, i32* %13, align 4
  %171 = load i32, i32* @ASN1_CON, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %177, label %173

173:                                              ; preds = %169
  %174 = load i32, i32* %14, align 4
  %175 = load i32, i32* @ASN1_SEQ, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %186

177:                                              ; preds = %173, %169, %165
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* %13, align 4
  %180 = load i32, i32* %14, align 4
  %181 = load i8*, i8** %9, align 8
  %182 = load i8*, i8** %9, align 8
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i32
  %185 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %178, i32 %179, i32 %180, i8* %181, i32 %184)
  store i32 0, i32* %4, align 4
  br label %385

186:                                              ; preds = %173
  br label %187

187:                                              ; preds = %186
  br label %188

188:                                              ; preds = %273, %187
  %189 = load i8*, i8** %10, align 8
  %190 = call i32 @asn1_eoc_decode(%struct.asn1_ctx* %8, i8* %189)
  %191 = icmp ne i32 %190, 0
  %192 = xor i1 %191, true
  br i1 %192, label %193, label %274

193:                                              ; preds = %188
  %194 = call i32 @asn1_header_decode(%struct.asn1_ctx* %8, i8** %9, i32* %12, i32* %13, i32* %14)
  store i32 %194, i32* %16, align 4
  %195 = load i32, i32* %16, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %193
  %198 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %385

199:                                              ; preds = %193
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* @ASN1_OJI, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %271

203:                                              ; preds = %199
  %204 = load i32, i32* %13, align 4
  %205 = load i32, i32* @ASN1_PRI, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %271

207:                                              ; preds = %203
  %208 = load i8*, i8** %9, align 8
  %209 = call i32 @asn1_oid_decode(%struct.asn1_ctx* %8, i8* %208, i64** %11, i32* %15)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %270

211:                                              ; preds = %207
  %212 = load i32, i32* %15, align 4
  %213 = load i64*, i64** %11, align 8
  %214 = load i64, i64* %213, align 8
  %215 = load i64*, i64** %11, align 8
  %216 = getelementptr inbounds i64, i64* %215, i64 1
  %217 = load i64, i64* %216, align 8
  %218 = load i64*, i64** %11, align 8
  %219 = getelementptr inbounds i64, i64* %218, i64 2
  %220 = load i64, i64* %219, align 8
  %221 = load i64*, i64** %11, align 8
  %222 = getelementptr inbounds i64, i64* %221, i64 3
  %223 = load i64, i64* %222, align 8
  %224 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %212, i64 %214, i64 %217, i64 %220, i64 %223)
  %225 = load i64*, i64** %11, align 8
  %226 = load i32, i32* %15, align 4
  %227 = load i32, i32* @MSKRB5_OID, align 4
  %228 = load i32, i32* @MSKRB5_OID_LEN, align 4
  %229 = call i32 @compare_oid(i64* %225, i32 %226, i32 %227, i32 %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %211
  %232 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %233 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %232, i32 0, i32 0
  store i32 1, i32* %233, align 4
  br label %267

234:                                              ; preds = %211
  %235 = load i64*, i64** %11, align 8
  %236 = load i32, i32* %15, align 4
  %237 = load i32, i32* @KRB5U2U_OID, align 4
  %238 = load i32, i32* @KRB5U2U_OID_LEN, align 4
  %239 = call i32 @compare_oid(i64* %235, i32 %236, i32 %237, i32 %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %234
  %242 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %243 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %242, i32 0, i32 1
  store i32 1, i32* %243, align 4
  br label %266

244:                                              ; preds = %234
  %245 = load i64*, i64** %11, align 8
  %246 = load i32, i32* %15, align 4
  %247 = load i32, i32* @KRB5_OID, align 4
  %248 = load i32, i32* @KRB5_OID_LEN, align 4
  %249 = call i32 @compare_oid(i64* %245, i32 %246, i32 %247, i32 %248)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %244
  %252 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %253 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %252, i32 0, i32 2
  store i32 1, i32* %253, align 4
  br label %265

254:                                              ; preds = %244
  %255 = load i64*, i64** %11, align 8
  %256 = load i32, i32* %15, align 4
  %257 = load i32, i32* @NTLMSSP_OID, align 4
  %258 = load i32, i32* @NTLMSSP_OID_LEN, align 4
  %259 = call i32 @compare_oid(i64* %255, i32 %256, i32 %257, i32 %258)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %254
  %262 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %263 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %262, i32 0, i32 3
  store i32 1, i32* %263, align 4
  br label %264

264:                                              ; preds = %261, %254
  br label %265

265:                                              ; preds = %264, %251
  br label %266

266:                                              ; preds = %265, %241
  br label %267

267:                                              ; preds = %266, %231
  %268 = load i64*, i64** %11, align 8
  %269 = call i32 @kfree(i64* %268)
  br label %270

270:                                              ; preds = %267, %207
  br label %273

271:                                              ; preds = %203, %199
  %272 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  br label %273

273:                                              ; preds = %271, %270
  br label %188

274:                                              ; preds = %188
  %275 = call i32 @asn1_header_decode(%struct.asn1_ctx* %8, i8** %9, i32* %12, i32* %13, i32* %14)
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %285

277:                                              ; preds = %274
  %278 = getelementptr inbounds %struct.asn1_ctx, %struct.asn1_ctx* %8, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @ASN1_ERR_DEC_EMPTY, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %277
  br label %384

283:                                              ; preds = %277
  %284 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %385

285:                                              ; preds = %274
  %286 = load i32, i32* %12, align 4
  %287 = load i32, i32* @ASN1_CTX, align 4
  %288 = icmp ne i32 %286, %287
  br i1 %288, label %293, label %289

289:                                              ; preds = %285
  %290 = load i32, i32* %13, align 4
  %291 = load i32, i32* @ASN1_CON, align 4
  %292 = icmp ne i32 %290, %291
  br i1 %292, label %293, label %302

293:                                              ; preds = %289, %285
  %294 = load i32, i32* %12, align 4
  %295 = load i32, i32* %13, align 4
  %296 = load i32, i32* %14, align 4
  %297 = load i8*, i8** %9, align 8
  %298 = load i8*, i8** %9, align 8
  %299 = load i8, i8* %298, align 1
  %300 = zext i8 %299 to i32
  %301 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0), i32 %294, i32 %295, i32 %296, i8* %297, i32 %300)
  store i32 0, i32* %4, align 4
  br label %385

302:                                              ; preds = %289
  br label %303

303:                                              ; preds = %302
  %304 = call i32 @asn1_header_decode(%struct.asn1_ctx* %8, i8** %9, i32* %12, i32* %13, i32* %14)
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %303
  %307 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %385

308:                                              ; preds = %303
  %309 = load i32, i32* %12, align 4
  %310 = load i32, i32* @ASN1_UNI, align 4
  %311 = icmp ne i32 %309, %310
  br i1 %311, label %320, label %312

312:                                              ; preds = %308
  %313 = load i32, i32* %13, align 4
  %314 = load i32, i32* @ASN1_CON, align 4
  %315 = icmp ne i32 %313, %314
  br i1 %315, label %320, label %316

316:                                              ; preds = %312
  %317 = load i32, i32* %14, align 4
  %318 = load i32, i32* @ASN1_SEQ, align 4
  %319 = icmp ne i32 %317, %318
  br i1 %319, label %320, label %329

320:                                              ; preds = %316, %312, %308
  %321 = load i32, i32* %12, align 4
  %322 = load i32, i32* %13, align 4
  %323 = load i32, i32* %14, align 4
  %324 = load i8*, i8** %9, align 8
  %325 = load i8*, i8** %9, align 8
  %326 = load i8, i8* %325, align 1
  %327 = zext i8 %326 to i32
  %328 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i32 %321, i32 %322, i32 %323, i8* %324, i32 %327)
  br label %329

329:                                              ; preds = %320, %316
  br label %330

330:                                              ; preds = %329
  %331 = call i32 @asn1_header_decode(%struct.asn1_ctx* %8, i8** %9, i32* %12, i32* %13, i32* %14)
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %335

333:                                              ; preds = %330
  %334 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %385

335:                                              ; preds = %330
  %336 = load i32, i32* %12, align 4
  %337 = load i32, i32* @ASN1_CTX, align 4
  %338 = icmp ne i32 %336, %337
  br i1 %338, label %343, label %339

339:                                              ; preds = %335
  %340 = load i32, i32* %13, align 4
  %341 = load i32, i32* @ASN1_CON, align 4
  %342 = icmp ne i32 %340, %341
  br i1 %342, label %343, label %352

343:                                              ; preds = %339, %335
  %344 = load i32, i32* %12, align 4
  %345 = load i32, i32* %13, align 4
  %346 = load i32, i32* %14, align 4
  %347 = load i8*, i8** %9, align 8
  %348 = load i8*, i8** %9, align 8
  %349 = load i8, i8* %348, align 1
  %350 = zext i8 %349 to i32
  %351 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i64 0, i64 0), i32 %344, i32 %345, i32 %346, i8* %347, i32 %350)
  store i32 0, i32* %4, align 4
  br label %385

352:                                              ; preds = %339
  br label %353

353:                                              ; preds = %352
  %354 = call i32 @asn1_header_decode(%struct.asn1_ctx* %8, i8** %9, i32* %12, i32* %13, i32* %14)
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %358

356:                                              ; preds = %353
  %357 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %385

358:                                              ; preds = %353
  %359 = load i32, i32* %12, align 4
  %360 = load i32, i32* @ASN1_UNI, align 4
  %361 = icmp ne i32 %359, %360
  br i1 %361, label %370, label %362

362:                                              ; preds = %358
  %363 = load i32, i32* %13, align 4
  %364 = load i32, i32* @ASN1_PRI, align 4
  %365 = icmp ne i32 %363, %364
  br i1 %365, label %370, label %366

366:                                              ; preds = %362
  %367 = load i32, i32* %14, align 4
  %368 = load i32, i32* @ASN1_GENSTR, align 4
  %369 = icmp ne i32 %367, %368
  br i1 %369, label %370, label %379

370:                                              ; preds = %366, %362, %358
  %371 = load i32, i32* %12, align 4
  %372 = load i32, i32* %13, align 4
  %373 = load i32, i32* %14, align 4
  %374 = load i8*, i8** %9, align 8
  %375 = load i8*, i8** %9, align 8
  %376 = load i8, i8* %375, align 1
  %377 = zext i8 %376 to i32
  %378 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i64 0, i64 0), i32 %371, i32 %372, i32 %373, i8* %374, i32 %377)
  store i32 0, i32* %4, align 4
  br label %385

379:                                              ; preds = %366
  br label %380

380:                                              ; preds = %379
  %381 = getelementptr inbounds %struct.asn1_ctx, %struct.asn1_ctx* %8, i32 0, i32 1
  %382 = load i32, i32* %381, align 8
  %383 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.17, i64 0, i64 0), i32 %382)
  br label %384

384:                                              ; preds = %380, %282
  store i32 1, i32* %4, align 4
  br label %385

385:                                              ; preds = %384, %370, %356, %343, %333, %306, %293, %283, %197, %177, %163, %150, %136, %123, %109, %96, %82, %77, %36, %22
  %386 = load i32, i32* %4, align 4
  ret i32 %386
}

declare dso_local i32 @asn1_open(%struct.asn1_ctx*, i8*, i32) #1

declare dso_local i32 @asn1_header_decode(%struct.asn1_ctx*, i8**, i32*, i32*, i32*) #1

declare dso_local i32 @cFYI(i32, i8*, ...) #1

declare dso_local i32 @asn1_oid_decode(%struct.asn1_ctx*, i8*, i64**, i32*) #1

declare dso_local i32 @compare_oid(i64*, i32, i32, i32) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @asn1_eoc_decode(%struct.asn1_ctx*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
