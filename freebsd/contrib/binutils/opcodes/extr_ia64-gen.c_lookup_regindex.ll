; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-gen.c_lookup_regindex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-gen.c_lookup_regindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"[RSC]\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"[BSP]\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"[BSPSTORE]\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"[RNAT]\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"[FCR]\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"[EFLAG]\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"[CSD]\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"[SSD]\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"[CFLG]\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"[FSR]\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"[FIR]\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"[FDR]\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"[CCV]\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"[ITC]\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"[PFS]\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"[LC]\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"[EC]\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"[DCR]\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"[ITM]\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"[IVA]\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"[PTA]\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"[GPTA]\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"[IPSR]\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"[ISR]\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"[IIP]\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"[IFA]\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"[ITIR]\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"[IIPA]\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"[IFS]\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"[IIM]\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"[IHA]\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"[LID]\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"[IVR]\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"[TPR]\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"[EOI]\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"[ITV]\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"[PMV]\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"[CMCV]\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c".be\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c".up\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c".ac\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c".mfl\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c".mfh\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c".ic\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c".i\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c".pk\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c".dt\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c".dfl\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c".dfh\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c".sp\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c".pp\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c".di\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c".si\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c".db\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c".lp\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c".tb\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c".rt\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c".cpl\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c".rs\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c".mc\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c".it\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c".id\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c".da\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c".dd\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c".ss\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c".ri\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c".ed\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c".bn\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c".ia\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c".vm\00", align 1
@REG_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @lookup_regindex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_regindex(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %398 [
    i32 130, label %7
    i32 129, label %109
    i32 128, label %236
  ]

7:                                                ; preds = %2
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @strstr(i8* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i32 16, i32* %3, align 4
  br label %401

12:                                               ; preds = %7
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @strstr(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 17, i32* %3, align 4
  br label %401

17:                                               ; preds = %12
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @strstr(i8* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 18, i32* %3, align 4
  br label %401

22:                                               ; preds = %17
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @strstr(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 19, i32* %3, align 4
  br label %401

27:                                               ; preds = %22
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @strstr(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 21, i32* %3, align 4
  br label %401

32:                                               ; preds = %27
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @strstr(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 24, i32* %3, align 4
  br label %401

37:                                               ; preds = %32
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @strstr(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 25, i32* %3, align 4
  br label %401

42:                                               ; preds = %37
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @strstr(i8* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 26, i32* %3, align 4
  br label %401

47:                                               ; preds = %42
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @strstr(i8* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 27, i32* %3, align 4
  br label %401

52:                                               ; preds = %47
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 @strstr(i8* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 28, i32* %3, align 4
  br label %401

57:                                               ; preds = %52
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @strstr(i8* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 29, i32* %3, align 4
  br label %401

62:                                               ; preds = %57
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 @strstr(i8* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 30, i32* %3, align 4
  br label %401

67:                                               ; preds = %62
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 @strstr(i8* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 32, i32* %3, align 4
  br label %401

72:                                               ; preds = %67
  %73 = load i8*, i8** %4, align 8
  %74 = call i32 @strstr(i8* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 44, i32* %3, align 4
  br label %401

77:                                               ; preds = %72
  %78 = load i8*, i8** %4, align 8
  %79 = call i32 @strstr(i8* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 64, i32* %3, align 4
  br label %401

82:                                               ; preds = %77
  %83 = load i8*, i8** %4, align 8
  %84 = call i32 @strstr(i8* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 65, i32* %3, align 4
  br label %401

87:                                               ; preds = %82
  %88 = load i8*, i8** %4, align 8
  %89 = call i32 @strstr(i8* %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 66, i32* %3, align 4
  br label %401

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %92
  br label %94

94:                                               ; preds = %93
  br label %95

95:                                               ; preds = %94
  br label %96

96:                                               ; preds = %95
  br label %97

97:                                               ; preds = %96
  br label %98

98:                                               ; preds = %97
  br label %99

99:                                               ; preds = %98
  br label %100

100:                                              ; preds = %99
  br label %101

101:                                              ; preds = %100
  br label %102

102:                                              ; preds = %101
  br label %103

103:                                              ; preds = %102
  br label %104

104:                                              ; preds = %103
  br label %105

105:                                              ; preds = %104
  br label %106

106:                                              ; preds = %105
  br label %107

107:                                              ; preds = %106
  %108 = call i32 (...) @abort() #3
  unreachable

109:                                              ; preds = %2
  %110 = load i8*, i8** %4, align 8
  %111 = call i32 @strstr(i8* %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  store i32 0, i32* %3, align 4
  br label %401

114:                                              ; preds = %109
  %115 = load i8*, i8** %4, align 8
  %116 = call i32 @strstr(i8* %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  store i32 1, i32* %3, align 4
  br label %401

119:                                              ; preds = %114
  %120 = load i8*, i8** %4, align 8
  %121 = call i32 @strstr(i8* %120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  store i32 2, i32* %3, align 4
  br label %401

124:                                              ; preds = %119
  %125 = load i8*, i8** %4, align 8
  %126 = call i32 @strstr(i8* %125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  store i32 8, i32* %3, align 4
  br label %401

129:                                              ; preds = %124
  %130 = load i8*, i8** %4, align 8
  %131 = call i32 @strstr(i8* %130, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0))
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  store i32 9, i32* %3, align 4
  br label %401

134:                                              ; preds = %129
  %135 = load i8*, i8** %4, align 8
  %136 = call i32 @strstr(i8* %135, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0))
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  store i32 16, i32* %3, align 4
  br label %401

139:                                              ; preds = %134
  %140 = load i8*, i8** %4, align 8
  %141 = call i32 @strstr(i8* %140, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0))
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  store i32 17, i32* %3, align 4
  br label %401

144:                                              ; preds = %139
  %145 = load i8*, i8** %4, align 8
  %146 = call i32 @strstr(i8* %145, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0))
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  store i32 19, i32* %3, align 4
  br label %401

149:                                              ; preds = %144
  %150 = load i8*, i8** %4, align 8
  %151 = call i32 @strstr(i8* %150, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0))
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  store i32 20, i32* %3, align 4
  br label %401

154:                                              ; preds = %149
  %155 = load i8*, i8** %4, align 8
  %156 = call i32 @strstr(i8* %155, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0))
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  store i32 21, i32* %3, align 4
  br label %401

159:                                              ; preds = %154
  %160 = load i8*, i8** %4, align 8
  %161 = call i32 @strstr(i8* %160, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0))
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  store i32 22, i32* %3, align 4
  br label %401

164:                                              ; preds = %159
  %165 = load i8*, i8** %4, align 8
  %166 = call i32 @strstr(i8* %165, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0))
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %164
  store i32 23, i32* %3, align 4
  br label %401

169:                                              ; preds = %164
  %170 = load i8*, i8** %4, align 8
  %171 = call i32 @strstr(i8* %170, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0))
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %169
  store i32 24, i32* %3, align 4
  br label %401

174:                                              ; preds = %169
  %175 = load i8*, i8** %4, align 8
  %176 = call i32 @strstr(i8* %175, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0))
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %174
  store i32 25, i32* %3, align 4
  br label %401

179:                                              ; preds = %174
  %180 = load i8*, i8** %4, align 8
  %181 = call i32 @strstr(i8* %180, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0))
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %179
  store i32 64, i32* %3, align 4
  br label %401

184:                                              ; preds = %179
  %185 = load i8*, i8** %4, align 8
  %186 = call i32 @strstr(i8* %185, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0))
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %184
  store i32 65, i32* %3, align 4
  br label %401

189:                                              ; preds = %184
  %190 = load i8*, i8** %4, align 8
  %191 = call i32 @strstr(i8* %190, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0))
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %189
  store i32 66, i32* %3, align 4
  br label %401

194:                                              ; preds = %189
  %195 = load i8*, i8** %4, align 8
  %196 = call i32 @strstr(i8* %195, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0))
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %194
  store i32 67, i32* %3, align 4
  br label %401

199:                                              ; preds = %194
  %200 = load i8*, i8** %4, align 8
  %201 = call i32 @strstr(i8* %200, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0))
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %199
  store i32 72, i32* %3, align 4
  br label %401

204:                                              ; preds = %199
  %205 = load i8*, i8** %4, align 8
  %206 = call i32 @strstr(i8* %205, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0))
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %204
  store i32 73, i32* %3, align 4
  br label %401

209:                                              ; preds = %204
  %210 = load i8*, i8** %4, align 8
  %211 = call i32 @strstr(i8* %210, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0))
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %209
  store i32 74, i32* %3, align 4
  br label %401

214:                                              ; preds = %209
  br label %215

215:                                              ; preds = %214
  br label %216

216:                                              ; preds = %215
  br label %217

217:                                              ; preds = %216
  br label %218

218:                                              ; preds = %217
  br label %219

219:                                              ; preds = %218
  br label %220

220:                                              ; preds = %219
  br label %221

221:                                              ; preds = %220
  br label %222

222:                                              ; preds = %221
  br label %223

223:                                              ; preds = %222
  br label %224

224:                                              ; preds = %223
  br label %225

225:                                              ; preds = %224
  br label %226

226:                                              ; preds = %225
  br label %227

227:                                              ; preds = %226
  br label %228

228:                                              ; preds = %227
  br label %229

229:                                              ; preds = %228
  br label %230

230:                                              ; preds = %229
  br label %231

231:                                              ; preds = %230
  br label %232

232:                                              ; preds = %231
  br label %233

233:                                              ; preds = %232
  br label %234

234:                                              ; preds = %233
  %235 = call i32 (...) @abort() #3
  unreachable

236:                                              ; preds = %2
  %237 = load i8*, i8** %4, align 8
  %238 = call i32 @strstr(i8* %237, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0))
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %236
  store i32 1, i32* %3, align 4
  br label %401

241:                                              ; preds = %236
  %242 = load i8*, i8** %4, align 8
  %243 = call i32 @strstr(i8* %242, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0))
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %241
  store i32 2, i32* %3, align 4
  br label %401

246:                                              ; preds = %241
  %247 = load i8*, i8** %4, align 8
  %248 = call i32 @strstr(i8* %247, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0))
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %246
  store i32 3, i32* %3, align 4
  br label %401

251:                                              ; preds = %246
  %252 = load i8*, i8** %4, align 8
  %253 = call i32 @strstr(i8* %252, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0))
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %251
  store i32 4, i32* %3, align 4
  br label %401

256:                                              ; preds = %251
  %257 = load i8*, i8** %4, align 8
  %258 = call i32 @strstr(i8* %257, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0))
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %256
  store i32 5, i32* %3, align 4
  br label %401

261:                                              ; preds = %256
  %262 = load i8*, i8** %4, align 8
  %263 = call i32 @strstr(i8* %262, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0))
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %261
  store i32 13, i32* %3, align 4
  br label %401

266:                                              ; preds = %261
  %267 = load i8*, i8** %4, align 8
  %268 = call i32 @strstr(i8* %267, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0))
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %266
  store i32 14, i32* %3, align 4
  br label %401

271:                                              ; preds = %266
  %272 = load i8*, i8** %4, align 8
  %273 = call i32 @strstr(i8* %272, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0))
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %271
  store i32 15, i32* %3, align 4
  br label %401

276:                                              ; preds = %271
  %277 = load i8*, i8** %4, align 8
  %278 = call i32 @strstr(i8* %277, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0))
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %276
  store i32 17, i32* %3, align 4
  br label %401

281:                                              ; preds = %276
  %282 = load i8*, i8** %4, align 8
  %283 = call i32 @strstr(i8* %282, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0))
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %281
  store i32 18, i32* %3, align 4
  br label %401

286:                                              ; preds = %281
  %287 = load i8*, i8** %4, align 8
  %288 = call i32 @strstr(i8* %287, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0))
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %286
  store i32 19, i32* %3, align 4
  br label %401

291:                                              ; preds = %286
  %292 = load i8*, i8** %4, align 8
  %293 = call i32 @strstr(i8* %292, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0))
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %291
  store i32 20, i32* %3, align 4
  br label %401

296:                                              ; preds = %291
  %297 = load i8*, i8** %4, align 8
  %298 = call i32 @strstr(i8* %297, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0))
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %296
  store i32 21, i32* %3, align 4
  br label %401

301:                                              ; preds = %296
  %302 = load i8*, i8** %4, align 8
  %303 = call i32 @strstr(i8* %302, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i64 0, i64 0))
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %301
  store i32 22, i32* %3, align 4
  br label %401

306:                                              ; preds = %301
  %307 = load i8*, i8** %4, align 8
  %308 = call i32 @strstr(i8* %307, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0))
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %306
  store i32 23, i32* %3, align 4
  br label %401

311:                                              ; preds = %306
  %312 = load i8*, i8** %4, align 8
  %313 = call i32 @strstr(i8* %312, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0))
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %311
  store i32 24, i32* %3, align 4
  br label %401

316:                                              ; preds = %311
  %317 = load i8*, i8** %4, align 8
  %318 = call i32 @strstr(i8* %317, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0))
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %321

320:                                              ; preds = %316
  store i32 25, i32* %3, align 4
  br label %401

321:                                              ; preds = %316
  %322 = load i8*, i8** %4, align 8
  %323 = call i32 @strstr(i8* %322, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0))
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %326

325:                                              ; preds = %321
  store i32 26, i32* %3, align 4
  br label %401

326:                                              ; preds = %321
  %327 = load i8*, i8** %4, align 8
  %328 = call i32 @strstr(i8* %327, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i64 0, i64 0))
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %326
  store i32 27, i32* %3, align 4
  br label %401

331:                                              ; preds = %326
  %332 = load i8*, i8** %4, align 8
  %333 = call i32 @strstr(i8* %332, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i64 0, i64 0))
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %336

335:                                              ; preds = %331
  store i32 32, i32* %3, align 4
  br label %401

336:                                              ; preds = %331
  %337 = load i8*, i8** %4, align 8
  %338 = call i32 @strstr(i8* %337, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0))
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %341

340:                                              ; preds = %336
  store i32 34, i32* %3, align 4
  br label %401

341:                                              ; preds = %336
  %342 = load i8*, i8** %4, align 8
  %343 = call i32 @strstr(i8* %342, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0))
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %341
  store i32 35, i32* %3, align 4
  br label %401

346:                                              ; preds = %341
  %347 = load i8*, i8** %4, align 8
  %348 = call i32 @strstr(i8* %347, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0))
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %346
  store i32 36, i32* %3, align 4
  br label %401

351:                                              ; preds = %346
  %352 = load i8*, i8** %4, align 8
  %353 = call i32 @strstr(i8* %352, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i64 0, i64 0))
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %356

355:                                              ; preds = %351
  store i32 37, i32* %3, align 4
  br label %401

356:                                              ; preds = %351
  %357 = load i8*, i8** %4, align 8
  %358 = call i32 @strstr(i8* %357, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i64 0, i64 0))
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %356
  store i32 38, i32* %3, align 4
  br label %401

361:                                              ; preds = %356
  %362 = load i8*, i8** %4, align 8
  %363 = call i32 @strstr(i8* %362, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i64 0, i64 0))
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %366

365:                                              ; preds = %361
  store i32 39, i32* %3, align 4
  br label %401

366:                                              ; preds = %361
  %367 = load i8*, i8** %4, align 8
  %368 = call i32 @strstr(i8* %367, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i64 0, i64 0))
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %371

370:                                              ; preds = %366
  store i32 40, i32* %3, align 4
  br label %401

371:                                              ; preds = %366
  %372 = load i8*, i8** %4, align 8
  %373 = call i32 @strstr(i8* %372, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i64 0, i64 0))
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %376

375:                                              ; preds = %371
  store i32 41, i32* %3, align 4
  br label %401

376:                                              ; preds = %371
  %377 = load i8*, i8** %4, align 8
  %378 = call i32 @strstr(i8* %377, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i64 0, i64 0))
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %381

380:                                              ; preds = %376
  store i32 43, i32* %3, align 4
  br label %401

381:                                              ; preds = %376
  %382 = load i8*, i8** %4, align 8
  %383 = call i32 @strstr(i8* %382, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i64 0, i64 0))
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %386

385:                                              ; preds = %381
  store i32 44, i32* %3, align 4
  br label %401

386:                                              ; preds = %381
  %387 = load i8*, i8** %4, align 8
  %388 = call i32 @strstr(i8* %387, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i64 0, i64 0))
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %391

390:                                              ; preds = %386
  store i32 45, i32* %3, align 4
  br label %401

391:                                              ; preds = %386
  %392 = load i8*, i8** %4, align 8
  %393 = call i32 @strstr(i8* %392, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0))
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %396

395:                                              ; preds = %391
  store i32 46, i32* %3, align 4
  br label %401

396:                                              ; preds = %391
  %397 = call i32 (...) @abort() #3
  unreachable

398:                                              ; preds = %2
  br label %399

399:                                              ; preds = %398
  %400 = load i32, i32* @REG_NONE, align 4
  store i32 %400, i32* %3, align 4
  br label %401

401:                                              ; preds = %399, %395, %390, %385, %380, %375, %370, %365, %360, %355, %350, %345, %340, %335, %330, %325, %320, %315, %310, %305, %300, %295, %290, %285, %280, %275, %270, %265, %260, %255, %250, %245, %240, %213, %208, %203, %198, %193, %188, %183, %178, %173, %168, %163, %158, %153, %148, %143, %138, %133, %128, %123, %118, %113, %91, %86, %81, %76, %71, %66, %61, %56, %51, %46, %41, %36, %31, %26, %21, %16, %11
  %402 = load i32, i32* %3, align 4
  ret i32 %402
}

declare dso_local i32 @strstr(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
