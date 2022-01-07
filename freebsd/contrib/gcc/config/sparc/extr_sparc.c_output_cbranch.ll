; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_output_cbranch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_output_cbranch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@output_cbranch.string = internal global [64 x i8] zeroinitializer, align 16
@TARGET_V9 = common dso_local global i64 0, align 8
@CCFPmode = common dso_local global i32 0, align 4
@CCFPEmode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"fbne\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"fbe\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"fbge\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"fbg\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"fble\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"fbl\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"fbu\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"fbo\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"fbug\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"fbul\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"fbue\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"fbuge\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"fbule\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"fblg\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"nop\0A\09\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"bne\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"be\00", align 1
@CC_NOOVmode = common dso_local global i32 0, align 4
@CCX_NOOVmode = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [5 x i8] c"bpos\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"bge\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"bg\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"ble\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"bneg\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"bl\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"bgeu\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"bgu\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"bleu\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"blu\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c",a\00", align 1
@output_cbranch.v9_fcc_labelno = internal global [9 x i8] c"%%fccX, \00", align 1
@SPARC_FIRST_V9_FCC_REG = common dso_local global i64 0, align 8
@SPARC_FCC_REG = common dso_local global i64 0, align 8
@.str.28 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CCXmode = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [8 x i8] c"%%xcc, \00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"%%icc, \00", align 1
@REG_BR_PROB = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@REG_BR_PROB_BASE = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [4 x i8] c",pt\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c",pn\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c".+12\0A\09 nop\0A\09b\09\00", align 1
@final_sequence = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @output_cbranch(i64 %0, i64 %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @GET_CODE(i64 %24)
  store i32 %25, i32* %13, align 4
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @XEXP(i64 %26, i32 0)
  store i64 %27, i64* %14, align 8
  %28 = load i64, i64* %14, align 8
  %29 = call i32 @GET_MODE(i64 %28)
  store i32 %29, i32* %15, align 4
  store i32 8, i32* %18, align 4
  %30 = load i64, i64* @TARGET_V9, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %6
  %33 = load i64, i64* %12, align 8
  %34 = call i32 @get_attr_length(i64 %33)
  %35 = icmp sge i32 %34, 3
  br label %36

36:                                               ; preds = %32, %6
  %37 = phi i1 [ false, %6 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %19, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %19, align 4
  %41 = xor i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %36
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* @CCFPmode, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* @CCFPEmode, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47, %43
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @reverse_condition_maybe_unordered(i32 %52)
  store i32 %53, i32* %13, align 4
  br label %57

54:                                               ; preds = %47
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @reverse_condition(i32 %55)
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %54, %51
  br label %58

58:                                               ; preds = %57, %36
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* @CCFPmode, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* @CCFPEmode, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %92

66:                                               ; preds = %62, %58
  %67 = load i32, i32* %13, align 4
  switch i32 %67, label %82 [
    i32 135, label %68
    i32 145, label %69
    i32 144, label %70
    i32 142, label %71
    i32 140, label %72
    i32 138, label %73
    i32 128, label %74
    i32 134, label %75
    i32 131, label %76
    i32 129, label %77
    i32 133, label %78
    i32 132, label %79
    i32 130, label %80
    i32 137, label %81
  ]

68:                                               ; preds = %66
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  br label %84

69:                                               ; preds = %66
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  br label %84

70:                                               ; preds = %66
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %17, align 8
  br label %84

71:                                               ; preds = %66
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %17, align 8
  br label %84

72:                                               ; preds = %66
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %17, align 8
  br label %84

73:                                               ; preds = %66
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %17, align 8
  br label %84

74:                                               ; preds = %66
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %17, align 8
  br label %84

75:                                               ; preds = %66
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %17, align 8
  br label %84

76:                                               ; preds = %66
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %17, align 8
  br label %84

77:                                               ; preds = %66
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %17, align 8
  br label %84

78:                                               ; preds = %66
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8** %17, align 8
  br label %84

79:                                               ; preds = %66
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8** %17, align 8
  br label %84

80:                                               ; preds = %66
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8** %17, align 8
  br label %84

81:                                               ; preds = %66
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8** %17, align 8
  br label %84

82:                                               ; preds = %66
  %83 = call i32 (...) @gcc_unreachable()
  br label %84

84:                                               ; preds = %82, %81, %80, %79, %78, %77, %76, %75, %74, %73, %72, %71, %70, %69, %68
  store i8 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @output_cbranch.string, i64 0, i64 0), align 16
  %85 = load i64, i64* @TARGET_V9, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = call i32 @strcpy(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @output_cbranch.string, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %84
  %90 = load i8*, i8** %17, align 8
  %91 = call i32 @strcat(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @output_cbranch.string, i64 0, i64 0), i8* %90)
  br label %129

92:                                               ; preds = %62
  %93 = load i32, i32* %13, align 4
  switch i32 %93, label %124 [
    i32 135, label %94
    i32 145, label %95
    i32 144, label %96
    i32 142, label %107
    i32 140, label %108
    i32 138, label %109
    i32 143, label %120
    i32 141, label %121
    i32 139, label %122
    i32 136, label %123
  ]

94:                                               ; preds = %92
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8** %17, align 8
  br label %126

95:                                               ; preds = %92
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8** %17, align 8
  br label %126

96:                                               ; preds = %92
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* @CC_NOOVmode, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* @CCX_NOOVmode, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100, %96
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8** %17, align 8
  br label %106

105:                                              ; preds = %100
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8** %17, align 8
  br label %106

106:                                              ; preds = %105, %104
  br label %126

107:                                              ; preds = %92
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8** %17, align 8
  br label %126

108:                                              ; preds = %92
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8** %17, align 8
  br label %126

109:                                              ; preds = %92
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* @CC_NOOVmode, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* @CCX_NOOVmode, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113, %109
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8** %17, align 8
  br label %119

118:                                              ; preds = %113
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i8** %17, align 8
  br label %119

119:                                              ; preds = %118, %117
  br label %126

120:                                              ; preds = %92
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8** %17, align 8
  br label %126

121:                                              ; preds = %92
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i8** %17, align 8
  br label %126

122:                                              ; preds = %92
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8** %17, align 8
  br label %126

123:                                              ; preds = %92
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8** %17, align 8
  br label %126

124:                                              ; preds = %92
  %125 = call i32 (...) @gcc_unreachable()
  br label %126

126:                                              ; preds = %124, %123, %122, %121, %120, %119, %108, %107, %106, %95, %94
  %127 = load i8*, i8** %17, align 8
  %128 = call i32 @strcpy(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @output_cbranch.string, i64 0, i64 0), i8* %127)
  br label %129

129:                                              ; preds = %126, %89
  %130 = load i8*, i8** %17, align 8
  %131 = call i64 @strlen(i8* %130)
  %132 = load i32, i32* %18, align 4
  %133 = sext i32 %132 to i64
  %134 = sub nsw i64 %133, %131
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %18, align 4
  %136 = call i8* @strchr(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @output_cbranch.string, i64 0, i64 0), i8 signext 0)
  store i8* %136, i8** %20, align 8
  %137 = load i32, i32* %11, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %129
  %140 = load i32, i32* %19, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %149, label %142

142:                                              ; preds = %139
  %143 = load i8*, i8** %20, align 8
  %144 = call i32 @strcpy(i8* %143, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0))
  %145 = load i8*, i8** %20, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 2
  store i8* %146, i8** %20, align 8
  %147 = load i32, i32* %18, align 4
  %148 = sub nsw i32 %147, 2
  store i32 %148, i32* %18, align 4
  br label %149

149:                                              ; preds = %142, %139, %129
  %150 = load i64, i64* @TARGET_V9, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %255

152:                                              ; preds = %149
  store i32 0, i32* %22, align 4
  %153 = load i32, i32* %19, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %176, label %155

155:                                              ; preds = %152
  %156 = load i64, i64* %12, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %176

158:                                              ; preds = %155
  %159 = call i64 (...) @INSN_ADDRESSES_SET_P()
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %176

161:                                              ; preds = %158
  %162 = load i64, i64* %8, align 8
  %163 = call i32 @INSN_UID(i64 %162)
  %164 = call i32 @INSN_ADDRESSES(i32 %163)
  %165 = load i64, i64* %12, align 8
  %166 = call i32 @INSN_UID(i64 %165)
  %167 = call i32 @INSN_ADDRESSES(i32 %166)
  %168 = sub nsw i32 %164, %167
  store i32 %168, i32* %23, align 4
  %169 = load i32, i32* %23, align 4
  %170 = icmp slt i32 %169, -260000
  br i1 %170, label %174, label %171

171:                                              ; preds = %161
  %172 = load i32, i32* %23, align 4
  %173 = icmp sge i32 %172, 260000
  br i1 %173, label %174, label %175

174:                                              ; preds = %171, %161
  store i32 1, i32* %22, align 4
  br label %175

175:                                              ; preds = %174, %171
  br label %176

176:                                              ; preds = %175, %158, %155, %152
  %177 = load i32, i32* %15, align 4
  %178 = load i32, i32* @CCFPmode, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %184, label %180

180:                                              ; preds = %176
  %181 = load i32, i32* %15, align 4
  %182 = load i32, i32* @CCFPEmode, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %201

184:                                              ; preds = %180, %176
  %185 = load i64, i64* %14, align 8
  %186 = call i64 @REGNO(i64 %185)
  %187 = load i64, i64* @SPARC_FIRST_V9_FCC_REG, align 8
  %188 = sub nsw i64 %186, %187
  %189 = add nsw i64 %188, 48
  %190 = trunc i64 %189 to i8
  store i8 %190, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @output_cbranch.v9_fcc_labelno, i64 0, i64 5), align 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @output_cbranch.v9_fcc_labelno, i64 0, i64 0), i8** %16, align 8
  %191 = load i32, i32* %22, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %200

193:                                              ; preds = %184
  %194 = load i64, i64* %14, align 8
  %195 = call i64 @REGNO(i64 %194)
  %196 = load i64, i64* @SPARC_FCC_REG, align 8
  %197 = icmp eq i64 %195, %196
  %198 = zext i1 %197 to i32
  %199 = call i32 @gcc_assert(i32 %198)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i64 0, i64 0), i8** %16, align 8
  br label %200

200:                                              ; preds = %193, %184
  br label %221

201:                                              ; preds = %180
  %202 = load i32, i32* %15, align 4
  %203 = load i32, i32* @CCXmode, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %209, label %205

205:                                              ; preds = %201
  %206 = load i32, i32* %15, align 4
  %207 = load i32, i32* @CCX_NOOVmode, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %205, %201
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0), i8** %16, align 8
  %210 = load i32, i32* %22, align 4
  %211 = icmp ne i32 %210, 0
  %212 = xor i1 %211, true
  %213 = zext i1 %212 to i32
  %214 = call i32 @gcc_assert(i32 %213)
  br label %220

215:                                              ; preds = %205
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0), i8** %16, align 8
  %216 = load i32, i32* %22, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %215
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i64 0, i64 0), i8** %16, align 8
  br label %219

219:                                              ; preds = %218, %215
  br label %220

220:                                              ; preds = %219, %209
  br label %221

221:                                              ; preds = %220, %200
  %222 = load i8*, i8** %16, align 8
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %254

226:                                              ; preds = %221
  %227 = load i64, i64* %12, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %254

229:                                              ; preds = %226
  %230 = load i64, i64* %12, align 8
  %231 = load i32, i32* @REG_BR_PROB, align 4
  %232 = load i32, i32* @NULL_RTX, align 4
  %233 = call i64 @find_reg_note(i64 %230, i32 %231, i32 %232)
  store i64 %233, i64* %21, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %254

235:                                              ; preds = %229
  %236 = load i8*, i8** %20, align 8
  %237 = load i64, i64* %21, align 8
  %238 = call i64 @XEXP(i64 %237, i32 0)
  %239 = call i32 @INTVAL(i64 %238)
  %240 = load i32, i32* @REG_BR_PROB_BASE, align 4
  %241 = sdiv i32 %240, 2
  %242 = icmp sge i32 %239, %241
  %243 = zext i1 %242 to i32
  %244 = load i32, i32* %19, align 4
  %245 = xor i32 %243, %244
  %246 = icmp ne i32 %245, 0
  %247 = zext i1 %246 to i64
  %248 = select i1 %246, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0)
  %249 = call i32 @strcpy(i8* %236, i8* %248)
  %250 = load i8*, i8** %20, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 3
  store i8* %251, i8** %20, align 8
  %252 = load i32, i32* %18, align 4
  %253 = sub nsw i32 %252, 3
  store i32 %253, i32* %18, align 4
  br label %254

254:                                              ; preds = %235, %229, %226, %221
  br label %256

255:                                              ; preds = %149
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i64 0, i64 0), i8** %16, align 8
  br label %256

256:                                              ; preds = %255, %254
  %257 = load i32, i32* %18, align 4
  %258 = icmp sgt i32 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %256
  %260 = load i8*, i8** %20, align 8
  %261 = getelementptr inbounds i8, i8* %260, i32 1
  store i8* %261, i8** %20, align 8
  store i8 9, i8* %260, align 1
  br label %265

262:                                              ; preds = %256
  %263 = load i8*, i8** %20, align 8
  %264 = getelementptr inbounds i8, i8* %263, i32 1
  store i8* %264, i8** %20, align 8
  store i8 32, i8* %263, align 1
  br label %265

265:                                              ; preds = %262, %259
  %266 = load i8*, i8** %20, align 8
  %267 = load i8*, i8** %16, align 8
  %268 = call i32 @strcpy(i8* %266, i8* %267)
  %269 = load i8*, i8** %20, align 8
  %270 = call i8* @strchr(i8* %269, i8 signext 0)
  store i8* %270, i8** %20, align 8
  %271 = load i32, i32* %19, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %287

273:                                              ; preds = %265
  %274 = load i8*, i8** %20, align 8
  %275 = call i32 @strcpy(i8* %274, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0))
  %276 = load i32, i32* %11, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %281, label %278

278:                                              ; preds = %273
  %279 = load i32, i32* @final_sequence, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %284, label %281

281:                                              ; preds = %278, %273
  %282 = load i8*, i8** %20, align 8
  %283 = getelementptr inbounds i8, i8* %282, i64 3
  store i8 54, i8* %283, align 1
  br label %284

284:                                              ; preds = %281, %278
  %285 = load i8*, i8** %20, align 8
  %286 = getelementptr inbounds i8, i8* %285, i64 14
  store i8* %286, i8** %20, align 8
  br label %287

287:                                              ; preds = %284, %265
  %288 = load i8*, i8** %20, align 8
  %289 = getelementptr inbounds i8, i8* %288, i32 1
  store i8* %289, i8** %20, align 8
  store i8 37, i8* %288, align 1
  %290 = load i8*, i8** %20, align 8
  %291 = getelementptr inbounds i8, i8* %290, i32 1
  store i8* %291, i8** %20, align 8
  store i8 108, i8* %290, align 1
  %292 = load i32, i32* %9, align 4
  %293 = add nsw i32 %292, 48
  %294 = trunc i32 %293 to i8
  %295 = load i8*, i8** %20, align 8
  %296 = getelementptr inbounds i8, i8* %295, i32 1
  store i8* %296, i8** %20, align 8
  store i8 %294, i8* %295, align 1
  %297 = load i8*, i8** %20, align 8
  %298 = getelementptr inbounds i8, i8* %297, i32 1
  store i8* %298, i8** %20, align 8
  store i8 37, i8* %297, align 1
  %299 = load i8*, i8** %20, align 8
  %300 = getelementptr inbounds i8, i8* %299, i32 1
  store i8* %300, i8** %20, align 8
  store i8 35, i8* %299, align 1
  %301 = load i8*, i8** %20, align 8
  store i8 0, i8* %301, align 1
  ret i8* getelementptr inbounds ([64 x i8], [64 x i8]* @output_cbranch.string, i64 0, i64 0)
}

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i32 @get_attr_length(i64) #1

declare dso_local i32 @reverse_condition_maybe_unordered(i32) #1

declare dso_local i32 @reverse_condition(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @INSN_ADDRESSES_SET_P(...) #1

declare dso_local i32 @INSN_ADDRESSES(i32) #1

declare dso_local i32 @INSN_UID(i64) #1

declare dso_local i64 @REGNO(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @find_reg_note(i64, i32, i32) #1

declare dso_local i32 @INTVAL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
