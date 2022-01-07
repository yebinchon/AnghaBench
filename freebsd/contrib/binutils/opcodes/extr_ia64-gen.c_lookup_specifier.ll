; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-gen.c_lookup_specifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-gen.c_lookup_specifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"AR[K%]\00", align 1
@IA64_RS_AR_K = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"AR[UNAT]\00", align 1
@IA64_RS_AR_UNAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"AR%, % in 8\00", align 1
@IA64_RS_AR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"AR%, % in 48\00", align 1
@IA64_RS_ARb = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"BR%\00", align 1
@IA64_RS_BR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"CR[IRR%]\00", align 1
@IA64_RS_CR_IRR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"CR[LRR%]\00", align 1
@IA64_RS_CR_LRR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"CR%\00", align 1
@IA64_RS_CR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"FR%, % in 0\00", align 1
@IA64_RS_FR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"FR%, % in 2\00", align 1
@IA64_RS_FRb = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"GR%\00", align 1
@IA64_RS_GR = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"PR%, % in 1 \00", align 1
@IA64_RS_PR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [14 x i8] c"PR%, % in 16 \00", align 1
@IA64_RS_PRr = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [44 x i8] c"don't know how to specify %% dependency %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"CPUID#\00", align 1
@IA64_RS_CPUID = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"DBR#\00", align 1
@IA64_RS_DBR = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"IBR#\00", align 1
@IA64_RS_IBR = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [5 x i8] c"MSR#\00", align 1
@IA64_RS_MSR = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [5 x i8] c"PKR#\00", align 1
@IA64_RS_PKR = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [5 x i8] c"PMC#\00", align 1
@IA64_RS_PMC = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [5 x i8] c"PMD#\00", align 1
@IA64_RS_PMD = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [4 x i8] c"RR#\00", align 1
@IA64_RS_RR = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [43 x i8] c"Don't know how to specify # dependency %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"AR[FPSR]\00", align 1
@IA64_RS_AR_FPSR = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [4 x i8] c"AR[\00", align 1
@IA64_RS_ARX = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [4 x i8] c"CR[\00", align 1
@IA64_RS_CRX = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [5 x i8] c"PSR.\00", align 1
@IA64_RS_PSR = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [11 x i8] c"InService*\00", align 1
@IA64_RS_INSERVICE = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [4 x i8] c"GR0\00", align 1
@IA64_RS_GR0 = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [4 x i8] c"CFM\00", align 1
@IA64_RS_CFM = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [5 x i8] c"PR63\00", align 1
@IA64_RS_PR63 = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [4 x i8] c"RSE\00", align 1
@IA64_RS_RSE = common dso_local global i32 0, align 4
@IA64_RS_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @lookup_specifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_specifier(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @strchr(i8* %4, i8 signext 37)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %89

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = call i32* @strstr(i8* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load i32, i32* @IA64_RS_AR_K, align 4
  store i32 %12, i32* %2, align 4
  br label %211

13:                                               ; preds = %7
  %14 = load i8*, i8** %3, align 8
  %15 = call i32* @strstr(i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @IA64_RS_AR_UNAT, align 4
  store i32 %18, i32* %2, align 4
  br label %211

19:                                               ; preds = %13
  %20 = load i8*, i8** %3, align 8
  %21 = call i32* @strstr(i8* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @IA64_RS_AR, align 4
  store i32 %24, i32* %2, align 4
  br label %211

25:                                               ; preds = %19
  %26 = load i8*, i8** %3, align 8
  %27 = call i32* @strstr(i8* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @IA64_RS_ARb, align 4
  store i32 %30, i32* %2, align 4
  br label %211

31:                                               ; preds = %25
  %32 = load i8*, i8** %3, align 8
  %33 = call i32* @strstr(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @IA64_RS_BR, align 4
  store i32 %36, i32* %2, align 4
  br label %211

37:                                               ; preds = %31
  %38 = load i8*, i8** %3, align 8
  %39 = call i32* @strstr(i8* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @IA64_RS_CR_IRR, align 4
  store i32 %42, i32* %2, align 4
  br label %211

43:                                               ; preds = %37
  %44 = load i8*, i8** %3, align 8
  %45 = call i32* @strstr(i8* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* @IA64_RS_CR_LRR, align 4
  store i32 %48, i32* %2, align 4
  br label %211

49:                                               ; preds = %43
  %50 = load i8*, i8** %3, align 8
  %51 = call i32* @strstr(i8* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @IA64_RS_CR, align 4
  store i32 %54, i32* %2, align 4
  br label %211

55:                                               ; preds = %49
  %56 = load i8*, i8** %3, align 8
  %57 = call i32* @strstr(i8* %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @IA64_RS_FR, align 4
  store i32 %60, i32* %2, align 4
  br label %211

61:                                               ; preds = %55
  %62 = load i8*, i8** %3, align 8
  %63 = call i32* @strstr(i8* %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* @IA64_RS_FRb, align 4
  store i32 %66, i32* %2, align 4
  br label %211

67:                                               ; preds = %61
  %68 = load i8*, i8** %3, align 8
  %69 = call i32* @strstr(i8* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* @IA64_RS_GR, align 4
  store i32 %72, i32* %2, align 4
  br label %211

73:                                               ; preds = %67
  %74 = load i8*, i8** %3, align 8
  %75 = call i32* @strstr(i8* %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, i32* @IA64_RS_PR, align 4
  store i32 %78, i32* %2, align 4
  br label %211

79:                                               ; preds = %73
  %80 = load i8*, i8** %3, align 8
  %81 = call i32* @strstr(i8* %80, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i32, i32* @IA64_RS_PRr, align 4
  store i32 %84, i32* %2, align 4
  br label %211

85:                                               ; preds = %79
  %86 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0))
  %87 = load i8*, i8** %3, align 8
  %88 = call i32 @warn(i32 %86, i8* %87)
  br label %209

89:                                               ; preds = %1
  %90 = load i8*, i8** %3, align 8
  %91 = call i64 @strchr(i8* %90, i8 signext 35)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %145

93:                                               ; preds = %89
  %94 = load i8*, i8** %3, align 8
  %95 = call i32* @strstr(i8* %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i32, i32* @IA64_RS_CPUID, align 4
  store i32 %98, i32* %2, align 4
  br label %211

99:                                               ; preds = %93
  %100 = load i8*, i8** %3, align 8
  %101 = call i32* @strstr(i8* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i32, i32* @IA64_RS_DBR, align 4
  store i32 %104, i32* %2, align 4
  br label %211

105:                                              ; preds = %99
  %106 = load i8*, i8** %3, align 8
  %107 = call i32* @strstr(i8* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = load i32, i32* @IA64_RS_IBR, align 4
  store i32 %110, i32* %2, align 4
  br label %211

111:                                              ; preds = %105
  %112 = load i8*, i8** %3, align 8
  %113 = call i32* @strstr(i8* %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load i32, i32* @IA64_RS_MSR, align 4
  store i32 %116, i32* %2, align 4
  br label %211

117:                                              ; preds = %111
  %118 = load i8*, i8** %3, align 8
  %119 = call i32* @strstr(i8* %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load i32, i32* @IA64_RS_PKR, align 4
  store i32 %122, i32* %2, align 4
  br label %211

123:                                              ; preds = %117
  %124 = load i8*, i8** %3, align 8
  %125 = call i32* @strstr(i8* %124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i32, i32* @IA64_RS_PMC, align 4
  store i32 %128, i32* %2, align 4
  br label %211

129:                                              ; preds = %123
  %130 = load i8*, i8** %3, align 8
  %131 = call i32* @strstr(i8* %130, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = load i32, i32* @IA64_RS_PMD, align 4
  store i32 %134, i32* %2, align 4
  br label %211

135:                                              ; preds = %129
  %136 = load i8*, i8** %3, align 8
  %137 = call i32* @strstr(i8* %136, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = load i32, i32* @IA64_RS_RR, align 4
  store i32 %140, i32* %2, align 4
  br label %211

141:                                              ; preds = %135
  %142 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i64 0, i64 0))
  %143 = load i8*, i8** %3, align 8
  %144 = call i32 @warn(i32 %142, i8* %143)
  br label %208

145:                                              ; preds = %89
  %146 = load i8*, i8** %3, align 8
  %147 = call i64 @CONST_STRNEQ(i8* %146, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0))
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = load i32, i32* @IA64_RS_AR_FPSR, align 4
  store i32 %150, i32* %2, align 4
  br label %211

151:                                              ; preds = %145
  %152 = load i8*, i8** %3, align 8
  %153 = call i64 @CONST_STRNEQ(i8* %152, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0))
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = load i32, i32* @IA64_RS_ARX, align 4
  store i32 %156, i32* %2, align 4
  br label %211

157:                                              ; preds = %151
  %158 = load i8*, i8** %3, align 8
  %159 = call i64 @CONST_STRNEQ(i8* %158, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0))
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %157
  %162 = load i32, i32* @IA64_RS_CRX, align 4
  store i32 %162, i32* %2, align 4
  br label %211

163:                                              ; preds = %157
  %164 = load i8*, i8** %3, align 8
  %165 = call i64 @CONST_STRNEQ(i8* %164, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0))
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = load i32, i32* @IA64_RS_PSR, align 4
  store i32 %168, i32* %2, align 4
  br label %211

169:                                              ; preds = %163
  %170 = load i8*, i8** %3, align 8
  %171 = call i64 @strcmp(i8* %170, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0))
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %169
  %174 = load i32, i32* @IA64_RS_INSERVICE, align 4
  store i32 %174, i32* %2, align 4
  br label %211

175:                                              ; preds = %169
  %176 = load i8*, i8** %3, align 8
  %177 = call i64 @strcmp(i8* %176, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0))
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %175
  %180 = load i32, i32* @IA64_RS_GR0, align 4
  store i32 %180, i32* %2, align 4
  br label %211

181:                                              ; preds = %175
  %182 = load i8*, i8** %3, align 8
  %183 = call i64 @strcmp(i8* %182, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0))
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %181
  %186 = load i32, i32* @IA64_RS_CFM, align 4
  store i32 %186, i32* %2, align 4
  br label %211

187:                                              ; preds = %181
  %188 = load i8*, i8** %3, align 8
  %189 = call i64 @strcmp(i8* %188, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0))
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %187
  %192 = load i32, i32* @IA64_RS_PR63, align 4
  store i32 %192, i32* %2, align 4
  br label %211

193:                                              ; preds = %187
  %194 = load i8*, i8** %3, align 8
  %195 = call i64 @strcmp(i8* %194, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0))
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %193
  %198 = load i32, i32* @IA64_RS_RSE, align 4
  store i32 %198, i32* %2, align 4
  br label %211

199:                                              ; preds = %193
  br label %200

200:                                              ; preds = %199
  br label %201

201:                                              ; preds = %200
  br label %202

202:                                              ; preds = %201
  br label %203

203:                                              ; preds = %202
  br label %204

204:                                              ; preds = %203
  br label %205

205:                                              ; preds = %204
  br label %206

206:                                              ; preds = %205
  br label %207

207:                                              ; preds = %206
  br label %208

208:                                              ; preds = %207, %141
  br label %209

209:                                              ; preds = %208, %85
  %210 = load i32, i32* @IA64_RS_ANY, align 4
  store i32 %210, i32* %2, align 4
  br label %211

211:                                              ; preds = %209, %197, %191, %185, %179, %173, %167, %161, %155, %149, %139, %133, %127, %121, %115, %109, %103, %97, %83, %77, %71, %65, %59, %53, %47, %41, %35, %29, %23, %17, %11
  %212 = load i32, i32* %2, align 4
  ret i32 %212
}

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i32 @warn(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @CONST_STRNEQ(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
