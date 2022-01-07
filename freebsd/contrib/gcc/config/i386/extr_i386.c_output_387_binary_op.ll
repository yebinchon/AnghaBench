; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_output_387_binary_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_output_387_binary_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@output_387_binary_op.buf = internal global [30 x i8] zeroinitializer, align 16
@MODE_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"fiadd\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"fisub\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"fimul\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"mul\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"fidiv\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"fdiv\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"div\00", align 1
@SFmode = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [19 x i8] c"ss\09{%2, %0|%0, %2}\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"sd\09{%2, %0|%0, %2}\00", align 1
@MEM = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"%z2\09%2\00", align 1
@REG_DEAD = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [18 x i8] c"p\09{%0, %2|%2, %0}\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"p\09{%2, %0|%0, %2}\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"\09{%y2, %0|%0, %y2}\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"\09{%2, %0|%0, %2}\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"r%z1\09%1\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"rp\09{%0, %2|%2, %0}\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"p\09{%0, %1|%1, %0}\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"rp\09{%1, %0|%0, %1}\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"r\09{%y1, %0|%0, %y1}\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"r\09{%1, %0|%0, %1}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @output_387_binary_op(i32 %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @SSE_REG_P(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @SSE_REG_P(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @SSE_REG_P(i32 %24)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %21, %15, %2
  %28 = phi i1 [ true, %15 ], [ true, %2 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %8, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @GET_CODE(i32 %32)
  switch i32 %33, label %110 [
    i32 128, label %34
    i32 130, label %53
    i32 129, label %72
    i32 131, label %91
  ]

34:                                               ; preds = %27
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @GET_MODE(i32 %37)
  %39 = call i32 @GET_MODE_CLASS(i64 %38)
  %40 = load i32, i32* @MODE_INT, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %50, label %42

42:                                               ; preds = %34
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @GET_MODE(i32 %45)
  %47 = call i32 @GET_MODE_CLASS(i64 %46)
  %48 = load i32, i32* @MODE_INT, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42, %34
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %52

51:                                               ; preds = %42
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %52

52:                                               ; preds = %51, %50
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %112

53:                                               ; preds = %27
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @GET_MODE(i32 %56)
  %58 = call i32 @GET_MODE_CLASS(i64 %57)
  %59 = load i32, i32* @MODE_INT, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %69, label %61

61:                                               ; preds = %53
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @GET_MODE(i32 %64)
  %66 = call i32 @GET_MODE_CLASS(i64 %65)
  %67 = load i32, i32* @MODE_INT, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %61, %53
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %71

70:                                               ; preds = %61
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %71

71:                                               ; preds = %70, %69
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %112

72:                                               ; preds = %27
  %73 = load i32*, i32** %5, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @GET_MODE(i32 %75)
  %77 = call i32 @GET_MODE_CLASS(i64 %76)
  %78 = load i32, i32* @MODE_INT, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %88, label %80

80:                                               ; preds = %72
  %81 = load i32*, i32** %5, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @GET_MODE(i32 %83)
  %85 = call i32 @GET_MODE_CLASS(i64 %84)
  %86 = load i32, i32* @MODE_INT, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %80, %72
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %90

89:                                               ; preds = %80
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  br label %90

90:                                               ; preds = %89, %88
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %7, align 8
  br label %112

91:                                               ; preds = %27
  %92 = load i32*, i32** %5, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @GET_MODE(i32 %94)
  %96 = call i32 @GET_MODE_CLASS(i64 %95)
  %97 = load i32, i32* @MODE_INT, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %107, label %99

99:                                               ; preds = %91
  %100 = load i32*, i32** %5, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @GET_MODE(i32 %102)
  %104 = call i32 @GET_MODE_CLASS(i64 %103)
  %105 = load i32, i32* @MODE_INT, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %99, %91
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8** %6, align 8
  br label %109

108:                                              ; preds = %99
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8** %6, align 8
  br label %109

109:                                              ; preds = %108, %107
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8** %7, align 8
  br label %112

110:                                              ; preds = %27
  %111 = call i32 (...) @gcc_unreachable()
  br label %112

112:                                              ; preds = %110, %109, %90, %71, %52
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %112
  %116 = load i8*, i8** %7, align 8
  %117 = call i32 @strcpy(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @output_387_binary_op.buf, i64 0, i64 0), i8* %116)
  %118 = load i32*, i32** %5, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @GET_MODE(i32 %120)
  %122 = load i64, i64* @SFmode, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %115
  %125 = call i32 @strcat(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @output_387_binary_op.buf, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  br label %128

126:                                              ; preds = %115
  %127 = call i32 @strcat(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @output_387_binary_op.buf, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %124
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @output_387_binary_op.buf, i64 0, i64 0), i8** %3, align 8
  br label %281

129:                                              ; preds = %112
  %130 = load i8*, i8** %6, align 8
  %131 = call i32 @strcpy(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @output_387_binary_op.buf, i64 0, i64 0), i8* %130)
  %132 = load i32*, i32** %5, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 3
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @GET_CODE(i32 %134)
  switch i32 %135, label %276 [
    i32 129, label %136
    i32 128, label %136
    i32 130, label %199
    i32 131, label %199
  ]

136:                                              ; preds = %129, %129
  %137 = load i32*, i32** %5, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 2
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @REG_P(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %164

142:                                              ; preds = %136
  %143 = load i32*, i32** %5, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @REGNO(i32 %145)
  %147 = load i32*, i32** %5, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 2
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @REGNO(i32 %149)
  %151 = icmp eq i64 %146, %150
  br i1 %151, label %152, label %164

152:                                              ; preds = %142
  %153 = load i32*, i32** %5, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 2
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %9, align 4
  %156 = load i32*, i32** %5, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32*, i32** %5, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 2
  store i32 %158, i32* %160, align 4
  %161 = load i32, i32* %9, align 4
  %162 = load i32*, i32** %5, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  store i32 %161, i32* %163, align 4
  br label %164

164:                                              ; preds = %152, %142, %136
  %165 = load i32*, i32** %5, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 2
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @GET_CODE(i32 %167)
  %169 = load i32, i32* @MEM, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %164
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8** %6, align 8
  br label %278

172:                                              ; preds = %164
  %173 = load i32, i32* %4, align 4
  %174 = load i32, i32* @REG_DEAD, align 4
  %175 = load i32*, i32** %5, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 2
  %177 = load i32, i32* %176, align 4
  %178 = call i64 @REGNO(i32 %177)
  %179 = call i32 @find_regno_note(i32 %173, i32 %174, i64 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %190

181:                                              ; preds = %172
  %182 = load i32*, i32** %5, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 0
  %184 = load i32, i32* %183, align 4
  %185 = call i64 @STACK_TOP_P(i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %181
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i8** %6, align 8
  br label %189

188:                                              ; preds = %181
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i8** %6, align 8
  br label %189

189:                                              ; preds = %188, %187
  br label %278

190:                                              ; preds = %172
  %191 = load i32*, i32** %5, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 0
  %193 = load i32, i32* %192, align 4
  %194 = call i64 @STACK_TOP_P(i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %190
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i8** %6, align 8
  br label %198

197:                                              ; preds = %190
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i8** %6, align 8
  br label %198

198:                                              ; preds = %197, %196
  br label %278

199:                                              ; preds = %129, %129
  %200 = load i32*, i32** %5, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 1
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @GET_CODE(i32 %202)
  %204 = load i32, i32* @MEM, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %199
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8** %6, align 8
  br label %278

207:                                              ; preds = %199
  %208 = load i32*, i32** %5, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 2
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @GET_CODE(i32 %210)
  %212 = load i32, i32* @MEM, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %207
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8** %6, align 8
  br label %278

215:                                              ; preds = %207
  %216 = load i32, i32* %4, align 4
  %217 = load i32, i32* @REG_DEAD, align 4
  %218 = load i32*, i32** %5, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 2
  %220 = load i32, i32* %219, align 4
  %221 = call i64 @REGNO(i32 %220)
  %222 = call i32 @find_regno_note(i32 %216, i32 %217, i64 %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %233

224:                                              ; preds = %215
  %225 = load i32*, i32** %5, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 0
  %227 = load i32, i32* %226, align 4
  %228 = call i64 @STACK_TOP_P(i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %224
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i8** %6, align 8
  br label %232

231:                                              ; preds = %224
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i8** %6, align 8
  br label %232

232:                                              ; preds = %231, %230
  br label %278

233:                                              ; preds = %215
  %234 = load i32, i32* %4, align 4
  %235 = load i32, i32* @REG_DEAD, align 4
  %236 = load i32*, i32** %5, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 1
  %238 = load i32, i32* %237, align 4
  %239 = call i64 @REGNO(i32 %238)
  %240 = call i32 @find_regno_note(i32 %234, i32 %235, i64 %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %251

242:                                              ; preds = %233
  %243 = load i32*, i32** %5, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  %245 = load i32, i32* %244, align 4
  %246 = call i64 @STACK_TOP_P(i32 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %242
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i8** %6, align 8
  br label %250

249:                                              ; preds = %242
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i8** %6, align 8
  br label %250

250:                                              ; preds = %249, %248
  br label %278

251:                                              ; preds = %233
  %252 = load i32*, i32** %5, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 0
  %254 = load i32, i32* %253, align 4
  %255 = call i64 @STACK_TOP_P(i32 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %266

257:                                              ; preds = %251
  %258 = load i32*, i32** %5, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 1
  %260 = load i32, i32* %259, align 4
  %261 = call i64 @STACK_TOP_P(i32 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %257
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i8** %6, align 8
  br label %265

264:                                              ; preds = %257
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i8** %6, align 8
  br label %265

265:                                              ; preds = %264, %263
  br label %278

266:                                              ; preds = %251
  %267 = load i32*, i32** %5, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 1
  %269 = load i32, i32* %268, align 4
  %270 = call i64 @STACK_TOP_P(i32 %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %266
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0), i8** %6, align 8
  br label %274

273:                                              ; preds = %266
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i8** %6, align 8
  br label %274

274:                                              ; preds = %273, %272
  br label %275

275:                                              ; preds = %274
  br label %278

276:                                              ; preds = %129
  %277 = call i32 (...) @gcc_unreachable()
  br label %278

278:                                              ; preds = %276, %275, %265, %250, %232, %214, %206, %198, %189, %171
  %279 = load i8*, i8** %6, align 8
  %280 = call i32 @strcat(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @output_387_binary_op.buf, i64 0, i64 0), i8* %279)
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @output_387_binary_op.buf, i64 0, i64 0), i8** %3, align 8
  br label %281

281:                                              ; preds = %278, %128
  %282 = load i8*, i8** %3, align 8
  ret i8* %282
}

declare dso_local i64 @SSE_REG_P(i32) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @GET_MODE_CLASS(i64) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i64 @REGNO(i32) #1

declare dso_local i32 @find_regno_note(i32, i32, i64) #1

declare dso_local i64 @STACK_TOP_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
