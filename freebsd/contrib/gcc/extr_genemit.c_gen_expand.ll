; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genemit.c_gen_expand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genemit.c_gen_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"define_expand lacks a name\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"define_expand for %s lacks a pattern\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"rtx\0Agen_%s (\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c",\0A\09rtx operand%d\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"rtx operand%d\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@max_dup_opno = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"  return \00", align 1
@DEFINE_EXPAND = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c";\0A}\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"  rtx operand%d;\0A\00", align 1
@max_scratch_opno = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [35 x i8] c"  rtx operand%d ATTRIBUTE_UNUSED;\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"  rtx _val = 0;\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"  start_sequence ();\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"  {\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"    rtx operands[%d];\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"    operands[%d] = operand%d;\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"    operand%d = operands[%d];\0A\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"  }\0A\00", align 1
@SET = common dso_local global i64 0, align 8
@PC = common dso_local global i64 0, align 8
@PARALLEL = common dso_local global i64 0, align 8
@RETURN = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [19 x i8] c"  emit_jump_insn (\00", align 1
@CALL = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [19 x i8] c"  emit_call_insn (\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"  emit_label (\00", align 1
@MATCH_OPERAND = common dso_local global i64 0, align 8
@MATCH_DUP = common dso_local global i64 0, align 8
@MATCH_OPERATOR = common dso_local global i64 0, align 8
@MATCH_OP_DUP = common dso_local global i64 0, align 8
@MATCH_PARALLEL = common dso_local global i64 0, align 8
@MATCH_PAR_DUP = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [9 x i8] c"  emit (\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"  emit_insn (\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c");\0A\00", align 1
@LABEL_REF = common dso_local global i64 0, align 8
@.str.26 = private unnamed_addr constant [19 x i8] c"  emit_barrier ();\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"  _val = get_insns ();\0A\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"  end_sequence ();\0A\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"  return _val;\0A}\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @gen_expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_expand(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i8* @XSTR(i32 %6, i32 0)
  %8 = call i64 @strlen(i8* %7)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %1
  %13 = load i32, i32* %2, align 4
  %14 = call i64 @XVEC(i32 %13, i32 1)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i32, i32* %2, align 4
  %18 = call i8* @XSTR(i32 %17, i32 0)
  %19 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %16, %12
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @max_operand_vec(i32 %21, i32 1)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %2, align 4
  %24 = call i8* @XSTR(i32 %23, i32 0)
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %43, %28
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  br label %42

39:                                               ; preds = %33
  %40 = load i32, i32* %4, align 4
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %36
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %29

46:                                               ; preds = %29
  br label %49

47:                                               ; preds = %20
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %46
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %52 = load i32, i32* %2, align 4
  %53 = call i8* @XSTR(i32 %52, i32 3)
  %54 = icmp eq i8* %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %2, align 4
  %57 = call i8* @XSTR(i32 %56, i32 3)
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %55, %49
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @max_dup_opno, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %61
  %66 = load i32, i32* %2, align 4
  %67 = call i32 @XVECLEN(i32 %66, i32 1)
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %71 = load i32, i32* %2, align 4
  %72 = call i32 @XVECEXP(i32 %71, i32 1, i32 0)
  %73 = load i32, i32* @DEFINE_EXPAND, align 4
  %74 = call i32 @gen_exp(i32 %72, i32 %73, i32* null)
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  br label %367

76:                                               ; preds = %65, %61, %55
  %77 = load i32, i32* %3, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %85, %76
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @max_dup_opno, align 4
  %81 = icmp sle i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load i32, i32* %4, align 4
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %4, align 4
  br label %78

88:                                               ; preds = %78
  br label %89

89:                                               ; preds = %96, %88
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @max_scratch_opno, align 4
  %92 = icmp sle i32 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load i32, i32* %4, align 4
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %4, align 4
  br label %89

99:                                               ; preds = %89
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %102 = load i32, i32* %2, align 4
  %103 = call i8* @XSTR(i32 %102, i32 3)
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %190

105:                                              ; preds = %99
  %106 = load i32, i32* %2, align 4
  %107 = call i8* @XSTR(i32 %106, i32 3)
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %190

111:                                              ; preds = %105
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %113 = load i32, i32* %3, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %111
  %116 = load i32, i32* @max_dup_opno, align 4
  %117 = icmp sge i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* @max_scratch_opno, align 4
  %120 = icmp sge i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %118, %115, %111
  %122 = load i32, i32* %3, align 4
  %123 = load i32, i32* @max_scratch_opno, align 4
  %124 = load i32, i32* @max_dup_opno, align 4
  %125 = call i32 @MAX(i32 %123, i32 %124)
  %126 = add nsw i32 %125, 1
  %127 = call i32 @MAX(i32 %122, i32 %126)
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %127)
  br label %129

129:                                              ; preds = %121, %118
  store i32 0, i32* %4, align 4
  br label %130

130:                                              ; preds = %138, %129
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* %3, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %130
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* %4, align 4
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %134
  %139 = load i32, i32* %4, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %4, align 4
  br label %130

141:                                              ; preds = %130
  %142 = load i32, i32* %2, align 4
  %143 = call i8* @XSTR(i32 %142, i32 3)
  %144 = call i32 @print_rtx_ptr_loc(i8* %143)
  %145 = load i32, i32* %2, align 4
  %146 = call i8* @XSTR(i32 %145, i32 3)
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* %146)
  %148 = load i32, i32* %2, align 4
  %149 = call i64 @XVEC(i32 %148, i32 1)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %188

151:                                              ; preds = %141
  store i32 0, i32* %4, align 4
  br label %152

152:                                              ; preds = %160, %151
  %153 = load i32, i32* %4, align 4
  %154 = load i32, i32* %3, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %163

156:                                              ; preds = %152
  %157 = load i32, i32* %4, align 4
  %158 = load i32, i32* %4, align 4
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i32 %157, i32 %158)
  br label %160

160:                                              ; preds = %156
  %161 = load i32, i32* %4, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %4, align 4
  br label %152

163:                                              ; preds = %152
  br label %164

164:                                              ; preds = %172, %163
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* @max_dup_opno, align 4
  %167 = icmp sle i32 %165, %166
  br i1 %167, label %168, label %175

168:                                              ; preds = %164
  %169 = load i32, i32* %4, align 4
  %170 = load i32, i32* %4, align 4
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i32 %169, i32 %170)
  br label %172

172:                                              ; preds = %168
  %173 = load i32, i32* %4, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %4, align 4
  br label %164

175:                                              ; preds = %164
  br label %176

176:                                              ; preds = %184, %175
  %177 = load i32, i32* %4, align 4
  %178 = load i32, i32* @max_scratch_opno, align 4
  %179 = icmp sle i32 %177, %178
  br i1 %179, label %180, label %187

180:                                              ; preds = %176
  %181 = load i32, i32* %4, align 4
  %182 = load i32, i32* %4, align 4
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i32 %181, i32 %182)
  br label %184

184:                                              ; preds = %180
  %185 = load i32, i32* %4, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %4, align 4
  br label %176

187:                                              ; preds = %176
  br label %188

188:                                              ; preds = %187, %141
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  br label %190

190:                                              ; preds = %188, %105, %99
  store i32 0, i32* %4, align 4
  br label %191

191:                                              ; preds = %360, %190
  %192 = load i32, i32* %4, align 4
  %193 = load i32, i32* %2, align 4
  %194 = call i32 @XVECLEN(i32 %193, i32 1)
  %195 = icmp slt i32 %192, %194
  br i1 %195, label %196, label %363

196:                                              ; preds = %191
  %197 = load i32, i32* %2, align 4
  %198 = load i32, i32* %4, align 4
  %199 = call i32 @XVECEXP(i32 %197, i32 1, i32 %198)
  store i32 %199, i32* %5, align 4
  %200 = load i32, i32* %5, align 4
  %201 = call i64 @GET_CODE(i32 %200)
  %202 = load i64, i64* @SET, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %210

204:                                              ; preds = %196
  %205 = load i32, i32* %5, align 4
  %206 = call i32 @SET_DEST(i32 %205)
  %207 = call i64 @GET_CODE(i32 %206)
  %208 = load i64, i64* @PC, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %239, label %210

210:                                              ; preds = %204, %196
  %211 = load i32, i32* %5, align 4
  %212 = call i64 @GET_CODE(i32 %211)
  %213 = load i64, i64* @PARALLEL, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %234

215:                                              ; preds = %210
  %216 = load i32, i32* %5, align 4
  %217 = call i32 @XVECEXP(i32 %216, i32 0, i32 0)
  %218 = call i64 @GET_CODE(i32 %217)
  %219 = load i64, i64* @SET, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %228

221:                                              ; preds = %215
  %222 = load i32, i32* %5, align 4
  %223 = call i32 @XVECEXP(i32 %222, i32 0, i32 0)
  %224 = call i32 @SET_DEST(i32 %223)
  %225 = call i64 @GET_CODE(i32 %224)
  %226 = load i64, i64* @PC, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %239, label %228

228:                                              ; preds = %221, %215
  %229 = load i32, i32* %5, align 4
  %230 = call i32 @XVECEXP(i32 %229, i32 0, i32 0)
  %231 = call i64 @GET_CODE(i32 %230)
  %232 = load i64, i64* @RETURN, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %239, label %234

234:                                              ; preds = %228, %210
  %235 = load i32, i32* %5, align 4
  %236 = call i64 @GET_CODE(i32 %235)
  %237 = load i64, i64* @RETURN, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %241

239:                                              ; preds = %234, %228, %221, %204
  %240 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0))
  br label %336

241:                                              ; preds = %234
  %242 = load i32, i32* %5, align 4
  %243 = call i64 @GET_CODE(i32 %242)
  %244 = load i64, i64* @SET, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %252

246:                                              ; preds = %241
  %247 = load i32, i32* %5, align 4
  %248 = call i32 @SET_SRC(i32 %247)
  %249 = call i64 @GET_CODE(i32 %248)
  %250 = load i64, i64* @CALL, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %286, label %252

252:                                              ; preds = %246, %241
  %253 = load i32, i32* %5, align 4
  %254 = call i64 @GET_CODE(i32 %253)
  %255 = load i64, i64* @CALL, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %286, label %257

257:                                              ; preds = %252
  %258 = load i32, i32* %5, align 4
  %259 = call i64 @GET_CODE(i32 %258)
  %260 = load i64, i64* @PARALLEL, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %275

262:                                              ; preds = %257
  %263 = load i32, i32* %5, align 4
  %264 = call i32 @XVECEXP(i32 %263, i32 0, i32 0)
  %265 = call i64 @GET_CODE(i32 %264)
  %266 = load i64, i64* @SET, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %275

268:                                              ; preds = %262
  %269 = load i32, i32* %5, align 4
  %270 = call i32 @XVECEXP(i32 %269, i32 0, i32 0)
  %271 = call i32 @SET_SRC(i32 %270)
  %272 = call i64 @GET_CODE(i32 %271)
  %273 = load i64, i64* @CALL, align 8
  %274 = icmp eq i64 %272, %273
  br i1 %274, label %286, label %275

275:                                              ; preds = %268, %262, %257
  %276 = load i32, i32* %5, align 4
  %277 = call i64 @GET_CODE(i32 %276)
  %278 = load i64, i64* @PARALLEL, align 8
  %279 = icmp eq i64 %277, %278
  br i1 %279, label %280, label %288

280:                                              ; preds = %275
  %281 = load i32, i32* %5, align 4
  %282 = call i32 @XVECEXP(i32 %281, i32 0, i32 0)
  %283 = call i64 @GET_CODE(i32 %282)
  %284 = load i64, i64* @CALL, align 8
  %285 = icmp eq i64 %283, %284
  br i1 %285, label %286, label %288

286:                                              ; preds = %280, %268, %252, %246
  %287 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0))
  br label %335

288:                                              ; preds = %280, %275
  %289 = load i32, i32* %5, align 4
  %290 = call i64 @LABEL_P(i32 %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %288
  %293 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0))
  br label %334

294:                                              ; preds = %288
  %295 = load i32, i32* %5, align 4
  %296 = call i64 @GET_CODE(i32 %295)
  %297 = load i64, i64* @MATCH_OPERAND, align 8
  %298 = icmp eq i64 %296, %297
  br i1 %298, label %329, label %299

299:                                              ; preds = %294
  %300 = load i32, i32* %5, align 4
  %301 = call i64 @GET_CODE(i32 %300)
  %302 = load i64, i64* @MATCH_DUP, align 8
  %303 = icmp eq i64 %301, %302
  br i1 %303, label %329, label %304

304:                                              ; preds = %299
  %305 = load i32, i32* %5, align 4
  %306 = call i64 @GET_CODE(i32 %305)
  %307 = load i64, i64* @MATCH_OPERATOR, align 8
  %308 = icmp eq i64 %306, %307
  br i1 %308, label %329, label %309

309:                                              ; preds = %304
  %310 = load i32, i32* %5, align 4
  %311 = call i64 @GET_CODE(i32 %310)
  %312 = load i64, i64* @MATCH_OP_DUP, align 8
  %313 = icmp eq i64 %311, %312
  br i1 %313, label %329, label %314

314:                                              ; preds = %309
  %315 = load i32, i32* %5, align 4
  %316 = call i64 @GET_CODE(i32 %315)
  %317 = load i64, i64* @MATCH_PARALLEL, align 8
  %318 = icmp eq i64 %316, %317
  br i1 %318, label %329, label %319

319:                                              ; preds = %314
  %320 = load i32, i32* %5, align 4
  %321 = call i64 @GET_CODE(i32 %320)
  %322 = load i64, i64* @MATCH_PAR_DUP, align 8
  %323 = icmp eq i64 %321, %322
  br i1 %323, label %329, label %324

324:                                              ; preds = %319
  %325 = load i32, i32* %5, align 4
  %326 = call i64 @GET_CODE(i32 %325)
  %327 = load i64, i64* @PARALLEL, align 8
  %328 = icmp eq i64 %326, %327
  br i1 %328, label %329, label %331

329:                                              ; preds = %324, %319, %314, %309, %304, %299, %294
  %330 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0))
  br label %333

331:                                              ; preds = %324
  %332 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0))
  br label %333

333:                                              ; preds = %331, %329
  br label %334

334:                                              ; preds = %333, %292
  br label %335

335:                                              ; preds = %334, %286
  br label %336

336:                                              ; preds = %335, %239
  %337 = load i32, i32* %5, align 4
  %338 = load i32, i32* @DEFINE_EXPAND, align 4
  %339 = call i32 @gen_exp(i32 %337, i32 %338, i32* null)
  %340 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0))
  %341 = load i32, i32* %5, align 4
  %342 = call i64 @GET_CODE(i32 %341)
  %343 = load i64, i64* @SET, align 8
  %344 = icmp eq i64 %342, %343
  br i1 %344, label %345, label %359

345:                                              ; preds = %336
  %346 = load i32, i32* %5, align 4
  %347 = call i32 @SET_DEST(i32 %346)
  %348 = call i64 @GET_CODE(i32 %347)
  %349 = load i64, i64* @PC, align 8
  %350 = icmp eq i64 %348, %349
  br i1 %350, label %351, label %359

351:                                              ; preds = %345
  %352 = load i32, i32* %5, align 4
  %353 = call i32 @SET_SRC(i32 %352)
  %354 = call i64 @GET_CODE(i32 %353)
  %355 = load i64, i64* @LABEL_REF, align 8
  %356 = icmp eq i64 %354, %355
  br i1 %356, label %357, label %359

357:                                              ; preds = %351
  %358 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0))
  br label %359

359:                                              ; preds = %357, %351, %345, %336
  br label %360

360:                                              ; preds = %359
  %361 = load i32, i32* %4, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %4, align 4
  br label %191

363:                                              ; preds = %191
  %364 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0))
  %365 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i64 0, i64 0))
  %366 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0))
  br label %367

367:                                              ; preds = %363, %69
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @XSTR(i32, i32) #1

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i64 @XVEC(i32, i32) #1

declare dso_local i32 @max_operand_vec(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @gen_exp(i32, i32, i32*) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @print_rtx_ptr_loc(i8*) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @SET_DEST(i32) #1

declare dso_local i32 @SET_SRC(i32) #1

declare dso_local i64 @LABEL_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
