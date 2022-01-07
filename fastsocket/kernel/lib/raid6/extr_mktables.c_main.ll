; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/raid6/extr_mktables.c_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/raid6/extr_mktables.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"#include <linux/raid/pq.h>\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"\0Aconst u8  __attribute__((aligned(256)))\0Araid6_gfmul[256][256] =\0A{\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"\09{\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\09\09\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"0x%02x,%c\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"\09},\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"#ifdef __KERNEL__\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"EXPORT_SYMBOL(raid6_gfmul);\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"#endif\0A\00", align 1
@.str.10 = private unnamed_addr constant [68 x i8] c"\0Aconst u8  __attribute__((aligned(256)))\0Araid6_vgfmul[256][32] =\0A{\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"EXPORT_SYMBOL(raid6_vgfmul);\0A\00", align 1
@.str.12 = private unnamed_addr constant [62 x i8] c"\0Aconst u8 __attribute__((aligned(256)))\0Araid6_gfexp[256] =\0A{\0A\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"EXPORT_SYMBOL(raid6_gfexp);\0A\00", align 1
@.str.15 = private unnamed_addr constant [62 x i8] c"\0Aconst u8 __attribute__((aligned(256)))\0Araid6_gfinv[256] =\0A{\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"EXPORT_SYMBOL(raid6_gfinv);\0A\00", align 1
@.str.17 = private unnamed_addr constant [62 x i8] c"\0Aconst u8 __attribute__((aligned(256)))\0Araid6_gfexi[256] =\0A{\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"EXPORT_SYMBOL(raid6_gfexi);\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [256 x i32], align 16
  %11 = alloca [256 x i32], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %47, %2
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 256
  br i1 %16, label %17, label %50

17:                                               ; preds = %14
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %42, %17
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 256
  br i1 %21, label %22, label %45

22:                                               ; preds = %19
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %38, %22
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 8
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %29, %30
  %32 = call i32 @gfmul(i32 %28, i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 7
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 10, i32 32
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %32, i32 %36)
  br label %38

38:                                               ; preds = %27
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %24

41:                                               ; preds = %24
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 8
  store i32 %44, i32* %7, align 4
  br label %19

45:                                               ; preds = %19
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %14

50:                                               ; preds = %14
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %117, %50
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 256
  br i1 %58, label %59, label %120

59:                                               ; preds = %56
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %84, %59
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 16
  br i1 %63, label %64, label %87

64:                                               ; preds = %61
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %80, %64
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 8
  br i1 %68, label %69, label %83

69:                                               ; preds = %66
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %71, %72
  %74 = call i32 @gfmul(i32 %70, i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = icmp eq i32 %75, 7
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 10, i32 32
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %74, i32 %78)
  br label %80

80:                                               ; preds = %69
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %66

83:                                               ; preds = %66
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 8
  store i32 %86, i32* %7, align 4
  br label %61

87:                                               ; preds = %61
  store i32 0, i32* %7, align 4
  br label %88

88:                                               ; preds = %112, %87
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %89, 16
  br i1 %90, label %91, label %115

91:                                               ; preds = %88
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %93

93:                                               ; preds = %108, %91
  %94 = load i32, i32* %8, align 4
  %95 = icmp slt i32 %94, 8
  br i1 %95, label %96, label %111

96:                                               ; preds = %93
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %98, %99
  %101 = shl i32 %100, 4
  %102 = call i32 @gfmul(i32 %97, i32 %101)
  %103 = load i32, i32* %8, align 4
  %104 = icmp eq i32 %103, 7
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 10, i32 32
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %102, i32 %106)
  br label %108

108:                                              ; preds = %96
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %93

111:                                              ; preds = %93
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 8
  store i32 %114, i32* %7, align 4
  br label %88

115:                                              ; preds = %88
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %56

120:                                              ; preds = %56
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %126

126:                                              ; preds = %157, %120
  %127 = load i32, i32* %6, align 4
  %128 = icmp slt i32 %127, 256
  br i1 %128, label %129, label %160

129:                                              ; preds = %126
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %131

131:                                              ; preds = %153, %129
  %132 = load i32, i32* %7, align 4
  %133 = icmp slt i32 %132, 8
  br i1 %133, label %134, label %156

134:                                              ; preds = %131
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %136, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 %139
  store i32 %135, i32* %140, align 4
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp eq i32 %142, 7
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i32 10, i32 32
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %141, i32 %145)
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @gfmul(i32 %147, i32 2)
  store i32 %148, i32* %9, align 4
  %149 = load i32, i32* %9, align 4
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %151, label %152

151:                                              ; preds = %134
  store i32 0, i32* %9, align 4
  br label %152

152:                                              ; preds = %151, %134
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %7, align 4
  br label %131

156:                                              ; preds = %131
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %6, align 4
  %159 = add nsw i32 %158, 8
  store i32 %159, i32* %6, align 4
  br label %126

160:                                              ; preds = %126
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0))
  %164 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.15, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %166

166:                                              ; preds = %194, %160
  %167 = load i32, i32* %6, align 4
  %168 = icmp slt i32 %167, 256
  br i1 %168, label %169, label %197

169:                                              ; preds = %166
  %170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %171

171:                                              ; preds = %190, %169
  %172 = load i32, i32* %7, align 4
  %173 = icmp slt i32 %172, 8
  br i1 %173, label %174, label %193

174:                                              ; preds = %171
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* %7, align 4
  %177 = add nsw i32 %175, %176
  %178 = call i32 @gfpow(i32 %177, i32 254)
  store i32 %178, i32* %9, align 4
  %179 = load i32, i32* %6, align 4
  %180 = load i32, i32* %7, align 4
  %181 = add nsw i32 %179, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [256 x i32], [256 x i32]* %11, i64 0, i64 %182
  store i32 %178, i32* %183, align 4
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* %7, align 4
  %186 = icmp eq i32 %185, 7
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i32 10, i32 32
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %184, i32 %188)
  br label %190

190:                                              ; preds = %174
  %191 = load i32, i32* %7, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %7, align 4
  br label %171

193:                                              ; preds = %171
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %6, align 4
  %196 = add nsw i32 %195, 8
  store i32 %196, i32* %6, align 4
  br label %166

197:                                              ; preds = %166
  %198 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %199 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %200 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0))
  %201 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %202 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.17, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %203

203:                                              ; preds = %231, %197
  %204 = load i32, i32* %6, align 4
  %205 = icmp slt i32 %204, 256
  br i1 %205, label %206, label %234

206:                                              ; preds = %203
  %207 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %208

208:                                              ; preds = %227, %206
  %209 = load i32, i32* %7, align 4
  %210 = icmp slt i32 %209, 8
  br i1 %210, label %211, label %230

211:                                              ; preds = %208
  %212 = load i32, i32* %6, align 4
  %213 = load i32, i32* %7, align 4
  %214 = add nsw i32 %212, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = xor i32 %217, 1
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [256 x i32], [256 x i32]* %11, i64 0, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* %7, align 4
  %223 = icmp eq i32 %222, 7
  %224 = zext i1 %223 to i64
  %225 = select i1 %223, i32 10, i32 32
  %226 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %221, i32 %225)
  br label %227

227:                                              ; preds = %211
  %228 = load i32, i32* %7, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %7, align 4
  br label %208

230:                                              ; preds = %208
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %6, align 4
  %233 = add nsw i32 %232, 8
  store i32 %233, i32* %6, align 4
  br label %203

234:                                              ; preds = %203
  %235 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %236 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %237 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0))
  %238 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @gfmul(i32, i32) #1

declare dso_local i32 @gfpow(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
