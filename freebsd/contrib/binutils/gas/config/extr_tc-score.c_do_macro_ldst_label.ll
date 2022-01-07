; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_do_macro_ldst_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_do_macro_ldst_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.score_it = type { i32, i32, i8*, i32, i64, %struct.TYPE_11__, i8*, i64, i64 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@MAX_LITERAL_POOL_SIZE = common dso_local global i32 0, align 4
@inst = common dso_local global %struct.score_it zeroinitializer, align 8
@REG_TYPE_SCORE = common dso_local global i32 0, align 4
@FAIL = common dso_local global i64 0, align 8
@Rd_rvalueRs_preSI12 = common dso_local global i8* null, align 8
@Rd_rvalueRs_SI15 = common dso_local global i8* null, align 8
@_VALUE = common dso_local global i32 0, align 4
@_GP_IMM15 = common dso_local global i32 0, align 4
@BAD_ARGS = common dso_local global i64 0, align 8
@score_pic = common dso_local global i64 0, align 8
@PIC = common dso_local global i64 0, align 8
@OPC_PSEUDOLDST_MASK = common dso_local global i32 0, align 4
@score_ldst_insns = common dso_local global %struct.TYPE_12__* null, align 8
@GP = common dso_local global i32 0, align 4
@nor1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"ld_i32hi r1, %s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"ld_i32lo r1, %s\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%s r%d, [r1, 0]\00", align 1
@FALSE = common dso_local global i32 0, align 4
@Insn_GP = common dso_local global i8* null, align 8
@frag_now = common dso_local global %struct.TYPE_14__* null, align 8
@BFD_RELOC_NONE = common dso_local global i64 0, align 8
@rs_machine_dependent = common dso_local global i32 0, align 4
@RELAX_PAD_BYTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @do_macro_ldst_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_macro_ldst_label(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.score_it, align 8
  %14 = alloca [3 x %struct.score_it], align 16
  %15 = alloca %struct.score_it, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %20 = load i32, i32* @MAX_LITERAL_POOL_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %10, align 8
  %23 = mul nuw i64 3, %21
  %24 = alloca i8, i64 %23, align 16
  store i64 %21, i64* %11, align 8
  %25 = load i32, i32* @MAX_LITERAL_POOL_SIZE, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %12, align 8
  %28 = call i32 @memcpy(%struct.score_it* %13, %struct.score_it* @inst, i32 88)
  %29 = load i8*, i8** %2, align 8
  %30 = call i32 @strcpy(i8* %27, i8* %29)
  store i8* %27, i8** %7, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @skip_whitespace(i8* %31)
  %33 = load i32, i32* @REG_TYPE_SCORE, align 4
  %34 = call i32 @reg_required_here(i8** %7, i32 -1, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i64, i64* @FAIL, align 8
  %36 = trunc i64 %35 to i32
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %1
  store i32 1, i32* %16, align 4
  br label %367

39:                                               ; preds = %1
  %40 = call i32 @skip_past_comma(i8** %7)
  %41 = load i64, i64* @FAIL, align 8
  %42 = trunc i64 %41 to i32
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 1, i32* %16, align 4
  br label %367

45:                                               ; preds = %39
  %46 = load i8*, i8** %7, align 8
  store i8* %46, i8** %8, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 91
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i8*, i8** @Rd_rvalueRs_preSI12, align 8
  store i8* %52, i8** getelementptr inbounds (%struct.score_it, %struct.score_it* @inst, i32 0, i32 6), align 8
  %53 = load i8*, i8** %2, align 8
  %54 = call i32 @do_ldst_insn(i8* %53)
  store i32 1, i32* %16, align 4
  br label %367

55:                                               ; preds = %45
  %56 = load i8*, i8** %7, align 8
  store i8* %56, i8** %9, align 8
  %57 = load i8*, i8** @Rd_rvalueRs_SI15, align 8
  store i8* %57, i8** getelementptr inbounds (%struct.score_it, %struct.score_it* @inst, i32 0, i32 6), align 8
  %58 = call i32 @my_get_expression(%struct.TYPE_13__* getelementptr inbounds (%struct.score_it, %struct.score_it* @inst, i32 0, i32 5, i32 1), i8** %7)
  %59 = load i64, i64* @FAIL, align 8
  %60 = trunc i64 %59 to i32
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %75, label %62

62:                                               ; preds = %55
  %63 = load i32, i32* getelementptr inbounds (%struct.score_it, %struct.score_it* @inst, i32 0, i32 5, i32 1, i32 0), align 8
  %64 = load i32, i32* @_VALUE, align 4
  %65 = call i32 @validate_immediate(i32 %63, i32 %64, i32 0)
  %66 = load i64, i64* @FAIL, align 8
  %67 = trunc i64 %66 to i32
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %75, label %69

69:                                               ; preds = %62
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @end_of_line(i8* %70)
  %72 = load i64, i64* @FAIL, align 8
  %73 = trunc i64 %72 to i32
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69, %62, %55
  store i32 1, i32* %16, align 4
  br label %367

76:                                               ; preds = %69
  %77 = load i64, i64* getelementptr inbounds (%struct.score_it, %struct.score_it* @inst, i32 0, i32 5, i32 1, i32 1), align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = call i32 @memcpy(%struct.score_it* @inst, %struct.score_it* %13, i32 88)
  %81 = load i8*, i8** %2, align 8
  %82 = call i32 @exp_macro_ldst_abs(i8* %81)
  store i32 1, i32* %16, align 4
  br label %367

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83
  %85 = load i8*, i8** @Rd_rvalueRs_SI15, align 8
  store i8* %85, i8** getelementptr inbounds (%struct.score_it, %struct.score_it* @inst, i32 0, i32 6), align 8
  %86 = load i8*, i8** %9, align 8
  store i8* %86, i8** %7, align 8
  %87 = load i32, i32* @_GP_IMM15, align 4
  %88 = call i32 @data_op2(i8** %7, i32 1, i32 %87)
  %89 = load i64, i64* @FAIL, align 8
  %90 = trunc i64 %89 to i32
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %98, label %92

92:                                               ; preds = %84
  %93 = load i8*, i8** %7, align 8
  %94 = call i32 @end_of_line(i8* %93)
  %95 = load i64, i64* @FAIL, align 8
  %96 = trunc i64 %95 to i32
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %92, %84
  store i32 1, i32* %16, align 4
  br label %367

99:                                               ; preds = %92
  %100 = load i64, i64* getelementptr inbounds (%struct.score_it, %struct.score_it* @inst, i32 0, i32 5, i32 1, i32 1), align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load i64, i64* getelementptr inbounds (%struct.score_it, %struct.score_it* @inst, i32 0, i32 8), align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %102
  %106 = load i64, i64* @BAD_ARGS, align 8
  store i64 %106, i64* getelementptr inbounds (%struct.score_it, %struct.score_it* @inst, i32 0, i32 8), align 8
  br label %107

107:                                              ; preds = %105, %102
  store i32 1, i32* %16, align 4
  br label %367

108:                                              ; preds = %99
  %109 = load i64, i64* @score_pic, align 8
  %110 = load i64, i64* @PIC, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %128

112:                                              ; preds = %108
  store i32 0, i32* %17, align 4
  %113 = load i32, i32* getelementptr inbounds (%struct.score_it, %struct.score_it* @inst, i32 0, i32 0), align 8
  %114 = load i32, i32* @OPC_PSEUDOLDST_MASK, align 4
  %115 = and i32 %113, %114
  store i32 %115, i32* %17, align 4
  %116 = load i32, i32* %5, align 4
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** @score_ldst_insns, align 8
  %118 = load i32, i32* %17, align 4
  %119 = mul nsw i32 %118, 3
  %120 = add nsw i32 %119, 0
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* getelementptr inbounds ({ i32, i64 }, { i32, i64 }* bitcast (%struct.TYPE_13__* getelementptr inbounds (%struct.score_it, %struct.score_it* @inst, i32 0, i32 5, i32 1) to { i32, i64 }*), i32 0, i32 0), align 8
  %126 = load i64, i64* getelementptr inbounds ({ i32, i64 }, { i32, i64 }* bitcast (%struct.TYPE_13__* getelementptr inbounds (%struct.score_it, %struct.score_it* @inst, i32 0, i32 5, i32 1) to { i32, i64 }*), i32 0, i32 1), align 8
  %127 = call i32 @build_lwst_pic(i32 %116, i32 %125, i64 %126, i32 %124)
  store i32 1, i32* %16, align 4
  br label %367

128:                                              ; preds = %108
  %129 = load i32, i32* getelementptr inbounds (%struct.score_it, %struct.score_it* @inst, i32 0, i32 5, i32 1, i32 0), align 8
  %130 = icmp sle i32 %129, 16383
  br i1 %130, label %131, label %164

131:                                              ; preds = %128
  %132 = load i32, i32* getelementptr inbounds (%struct.score_it, %struct.score_it* @inst, i32 0, i32 5, i32 1, i32 0), align 8
  %133 = icmp sge i32 %132, -16384
  br i1 %133, label %134, label %164

134:                                              ; preds = %131
  %135 = load i64, i64* getelementptr inbounds (%struct.score_it, %struct.score_it* @inst, i32 0, i32 5, i32 1, i32 1), align 8
  %136 = call i32 @nopic_need_relax(i64 %135, i32 1)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %164, label %138

138:                                              ; preds = %134
  store i32 0, i32* %18, align 4
  %139 = load i32, i32* getelementptr inbounds (%struct.score_it, %struct.score_it* @inst, i32 0, i32 0), align 8
  %140 = load i32, i32* @OPC_PSEUDOLDST_MASK, align 4
  %141 = and i32 %139, %140
  store i32 %141, i32* %18, align 4
  %142 = load i32, i32* @OPC_PSEUDOLDST_MASK, align 4
  %143 = xor i32 %142, -1
  %144 = load i32, i32* getelementptr inbounds (%struct.score_it, %struct.score_it* @inst, i32 0, i32 0), align 8
  %145 = and i32 %144, %143
  store i32 %145, i32* getelementptr inbounds (%struct.score_it, %struct.score_it* @inst, i32 0, i32 0), align 8
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** @score_ldst_insns, align 8
  %147 = load i32, i32* %18, align 4
  %148 = mul nsw i32 %147, 3
  %149 = add nsw i32 %148, 0
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* getelementptr inbounds (%struct.score_it, %struct.score_it* @inst, i32 0, i32 0), align 8
  %155 = or i32 %154, %153
  store i32 %155, i32* getelementptr inbounds (%struct.score_it, %struct.score_it* @inst, i32 0, i32 0), align 8
  %156 = load i32, i32* %5, align 4
  %157 = shl i32 %156, 20
  %158 = load i32, i32* getelementptr inbounds (%struct.score_it, %struct.score_it* @inst, i32 0, i32 0), align 8
  %159 = or i32 %158, %157
  store i32 %159, i32* getelementptr inbounds (%struct.score_it, %struct.score_it* @inst, i32 0, i32 0), align 8
  %160 = load i32, i32* @GP, align 4
  %161 = shl i32 %160, 15
  %162 = load i32, i32* getelementptr inbounds (%struct.score_it, %struct.score_it* @inst, i32 0, i32 0), align 8
  %163 = or i32 %162, %161
  store i32 %163, i32* getelementptr inbounds (%struct.score_it, %struct.score_it* @inst, i32 0, i32 0), align 8
  store i32 32768, i32* getelementptr inbounds (%struct.score_it, %struct.score_it* @inst, i32 0, i32 1), align 4
  store i64 0, i64* getelementptr inbounds (%struct.score_it, %struct.score_it* @inst, i32 0, i32 7), align 8
  store i32 1, i32* %4, align 4
  br label %164

164:                                              ; preds = %138, %134, %131, %128
  br label %165

165:                                              ; preds = %164
  br label %166

166:                                              ; preds = %165
  %167 = call i32 @memcpy(%struct.score_it* %15, %struct.score_it* @inst, i32 88)
  %168 = load i32, i32* @nor1, align 4
  store i32 %168, i32* %6, align 4
  store i32 0, i32* @nor1, align 4
  %169 = mul nsw i64 0, %21
  %170 = getelementptr inbounds i8, i8* %24, i64 %169
  %171 = load i8*, i8** %8, align 8
  %172 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %170, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %171)
  %173 = mul nsw i64 1, %21
  %174 = getelementptr inbounds i8, i8* %24, i64 %173
  %175 = load i8*, i8** %8, align 8
  %176 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %174, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %175)
  %177 = mul nsw i64 2, %21
  %178 = getelementptr inbounds i8, i8* %24, i64 %177
  %179 = getelementptr inbounds %struct.score_it, %struct.score_it* %13, i32 0, i32 2
  %180 = load i8*, i8** %179, align 8
  %181 = load i32, i32* %5, align 4
  %182 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %178, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %180, i32 %181)
  store i32 0, i32* %3, align 4
  br label %183

183:                                              ; preds = %202, %166
  %184 = load i32, i32* %3, align 4
  %185 = icmp slt i32 %184, 3
  br i1 %185, label %186, label %205

186:                                              ; preds = %183
  %187 = load i32, i32* %3, align 4
  %188 = sext i32 %187 to i64
  %189 = mul nsw i64 %188, %21
  %190 = getelementptr inbounds i8, i8* %24, i64 %189
  %191 = load i32, i32* @FALSE, align 4
  %192 = call i32 @append_insn(i8* %190, i32 %191)
  %193 = load i64, i64* @FAIL, align 8
  %194 = trunc i64 %193 to i32
  %195 = icmp eq i32 %192, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %186
  store i32 1, i32* %16, align 4
  br label %367

197:                                              ; preds = %186
  %198 = load i32, i32* %3, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [3 x %struct.score_it], [3 x %struct.score_it]* %14, i64 0, i64 %199
  %201 = call i32 @memcpy(%struct.score_it* %200, %struct.score_it* @inst, i32 88)
  br label %202

202:                                              ; preds = %197
  %203 = load i32, i32* %3, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %3, align 4
  br label %183

205:                                              ; preds = %183
  %206 = load i32, i32* %4, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %358

208:                                              ; preds = %205
  %209 = getelementptr inbounds %struct.score_it, %struct.score_it* %15, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = getelementptr inbounds %struct.score_it, %struct.score_it* %15, i32 0, i32 6
  %212 = load i8*, i8** %211, align 8
  %213 = call i32 @GET_INSN_CLASS(i8* %212)
  %214 = call i8* @adjust_paritybit(i32 %210, i32 %213)
  %215 = ptrtoint i8* %214 to i32
  %216 = getelementptr inbounds %struct.score_it, %struct.score_it* %15, i32 0, i32 0
  store i32 %215, i32* %216, align 8
  %217 = getelementptr inbounds [3 x %struct.score_it], [3 x %struct.score_it]* %14, i64 0, i64 0
  %218 = getelementptr inbounds %struct.score_it, %struct.score_it* %217, i32 0, i32 4
  %219 = load i64, i64* %218, align 8
  %220 = getelementptr inbounds [3 x %struct.score_it], [3 x %struct.score_it]* %14, i64 0, i64 1
  %221 = getelementptr inbounds %struct.score_it, %struct.score_it* %220, i32 0, i32 4
  %222 = load i64, i64* %221, align 8
  %223 = add nsw i64 %219, %222
  %224 = getelementptr inbounds [3 x %struct.score_it], [3 x %struct.score_it]* %14, i64 0, i64 2
  %225 = getelementptr inbounds %struct.score_it, %struct.score_it* %224, i32 0, i32 4
  %226 = load i64, i64* %225, align 8
  %227 = add nsw i64 %223, %226
  %228 = getelementptr inbounds %struct.score_it, %struct.score_it* %15, i32 0, i32 7
  store i64 %227, i64* %228, align 8
  %229 = load i8*, i8** @Insn_GP, align 8
  %230 = getelementptr inbounds %struct.score_it, %struct.score_it* %15, i32 0, i32 6
  store i8* %229, i8** %230, align 8
  store i32 0, i32* %3, align 4
  br label %231

231:                                              ; preds = %252, %208
  %232 = load i32, i32* %3, align 4
  %233 = icmp slt i32 %232, 3
  br i1 %233, label %234, label %255

234:                                              ; preds = %231
  %235 = load i32, i32* %3, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [3 x %struct.score_it], [3 x %struct.score_it]* %14, i64 0, i64 %236
  %238 = getelementptr inbounds %struct.score_it, %struct.score_it* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* %3, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [3 x %struct.score_it], [3 x %struct.score_it]* %14, i64 0, i64 %241
  %243 = getelementptr inbounds %struct.score_it, %struct.score_it* %242, i32 0, i32 6
  %244 = load i8*, i8** %243, align 8
  %245 = call i32 @GET_INSN_CLASS(i8* %244)
  %246 = call i8* @adjust_paritybit(i32 %239, i32 %245)
  %247 = ptrtoint i8* %246 to i32
  %248 = load i32, i32* %3, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [3 x %struct.score_it], [3 x %struct.score_it]* %14, i64 0, i64 %249
  %251 = getelementptr inbounds %struct.score_it, %struct.score_it* %250, i32 0, i32 0
  store i32 %247, i32* %251, align 8
  br label %252

252:                                              ; preds = %234
  %253 = load i32, i32* %3, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %3, align 4
  br label %231

255:                                              ; preds = %231
  %256 = call i32 @handle_dependency(%struct.score_it* %15)
  %257 = call i64 (...) @frag_now_fix()
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %270

259:                                              ; preds = %255
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** @frag_now, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %268, label %265

265:                                              ; preds = %259
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** @frag_now, align 8
  %267 = call i32 @frag_wane(%struct.TYPE_14__* %266)
  br label %268

268:                                              ; preds = %265, %259
  %269 = call i32 @frag_new(i32 0)
  br label %270

270:                                              ; preds = %268, %255
  %271 = call i32 @frag_grow(i32 20)
  %272 = getelementptr inbounds %struct.score_it, %struct.score_it* %15, i32 0, i32 4
  %273 = load i64, i64* %272, align 8
  %274 = call i8* @frag_more(i64 %273)
  store i8* %274, i8** %19, align 8
  %275 = load i8*, i8** %19, align 8
  %276 = getelementptr inbounds %struct.score_it, %struct.score_it* %15, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = getelementptr inbounds %struct.score_it, %struct.score_it* %15, i32 0, i32 4
  %279 = load i64, i64* %278, align 8
  %280 = call i32 @md_number_to_chars(i8* %275, i32 %277, i64 %279)
  %281 = getelementptr inbounds %struct.score_it, %struct.score_it* %15, i32 0, i32 5
  %282 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @BFD_RELOC_NONE, align 8
  %285 = icmp ne i64 %283, %284
  br i1 %285, label %286, label %306

286:                                              ; preds = %270
  %287 = load %struct.TYPE_14__*, %struct.TYPE_14__** @frag_now, align 8
  %288 = load i8*, i8** %19, align 8
  %289 = load %struct.TYPE_14__*, %struct.TYPE_14__** @frag_now, align 8
  %290 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = sext i32 %291 to i64
  %293 = sub i64 0, %292
  %294 = getelementptr inbounds i8, i8* %288, i64 %293
  %295 = getelementptr inbounds %struct.score_it, %struct.score_it* %15, i32 0, i32 4
  %296 = load i64, i64* %295, align 8
  %297 = getelementptr inbounds %struct.score_it, %struct.score_it* %15, i32 0, i32 5
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.score_it, %struct.score_it* %15, i32 0, i32 5
  %300 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  %302 = getelementptr inbounds %struct.score_it, %struct.score_it* %15, i32 0, i32 5
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = call i32 @fix_new_score(%struct.TYPE_14__* %287, i8* %294, i64 %296, %struct.TYPE_13__* %298, i32 %301, i64 %304)
  br label %306

306:                                              ; preds = %286, %270
  %307 = load i32, i32* @rs_machine_dependent, align 4
  %308 = getelementptr inbounds %struct.score_it, %struct.score_it* %15, i32 0, i32 7
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* @RELAX_PAD_BYTE, align 8
  %311 = add nsw i64 %309, %310
  %312 = getelementptr inbounds %struct.score_it, %struct.score_it* %15, i32 0, i32 4
  %313 = load i64, i64* %312, align 8
  %314 = getelementptr inbounds %struct.score_it, %struct.score_it* %15, i32 0, i32 7
  %315 = load i64, i64* %314, align 8
  %316 = getelementptr inbounds %struct.score_it, %struct.score_it* %15, i32 0, i32 6
  %317 = load i8*, i8** %316, align 8
  %318 = call i32 @RELAX_ENCODE(i64 %313, i64 %315, i8* %317, i32 0, i32 4, i32 0)
  %319 = getelementptr inbounds %struct.score_it, %struct.score_it* %15, i32 0, i32 5
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %320, i32 0, i32 1
  %322 = load i64, i64* %321, align 8
  %323 = call i8* @frag_var(i32 %307, i64 %311, i32 0, i32 %318, i64 %322, i32 0, i32* null)
  store i8* %323, i8** %19, align 8
  %324 = load i8*, i8** %19, align 8
  %325 = getelementptr inbounds [3 x %struct.score_it], [3 x %struct.score_it]* %14, i64 0, i64 0
  %326 = getelementptr inbounds %struct.score_it, %struct.score_it* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 16
  %328 = getelementptr inbounds [3 x %struct.score_it], [3 x %struct.score_it]* %14, i64 0, i64 0
  %329 = getelementptr inbounds %struct.score_it, %struct.score_it* %328, i32 0, i32 4
  %330 = load i64, i64* %329, align 8
  %331 = call i32 @md_number_to_chars(i8* %324, i32 %327, i64 %330)
  %332 = getelementptr inbounds [3 x %struct.score_it], [3 x %struct.score_it]* %14, i64 0, i64 0
  %333 = getelementptr inbounds %struct.score_it, %struct.score_it* %332, i32 0, i32 4
  %334 = load i64, i64* %333, align 8
  %335 = load i8*, i8** %19, align 8
  %336 = getelementptr inbounds i8, i8* %335, i64 %334
  store i8* %336, i8** %19, align 8
  %337 = load i8*, i8** %19, align 8
  %338 = getelementptr inbounds [3 x %struct.score_it], [3 x %struct.score_it]* %14, i64 0, i64 1
  %339 = getelementptr inbounds %struct.score_it, %struct.score_it* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = getelementptr inbounds [3 x %struct.score_it], [3 x %struct.score_it]* %14, i64 0, i64 1
  %342 = getelementptr inbounds %struct.score_it, %struct.score_it* %341, i32 0, i32 4
  %343 = load i64, i64* %342, align 8
  %344 = call i32 @md_number_to_chars(i8* %337, i32 %340, i64 %343)
  %345 = getelementptr inbounds [3 x %struct.score_it], [3 x %struct.score_it]* %14, i64 0, i64 1
  %346 = getelementptr inbounds %struct.score_it, %struct.score_it* %345, i32 0, i32 4
  %347 = load i64, i64* %346, align 8
  %348 = load i8*, i8** %19, align 8
  %349 = getelementptr inbounds i8, i8* %348, i64 %347
  store i8* %349, i8** %19, align 8
  %350 = load i8*, i8** %19, align 8
  %351 = getelementptr inbounds [3 x %struct.score_it], [3 x %struct.score_it]* %14, i64 0, i64 2
  %352 = getelementptr inbounds %struct.score_it, %struct.score_it* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 16
  %354 = getelementptr inbounds [3 x %struct.score_it], [3 x %struct.score_it]* %14, i64 0, i64 2
  %355 = getelementptr inbounds %struct.score_it, %struct.score_it* %354, i32 0, i32 4
  %356 = load i64, i64* %355, align 8
  %357 = call i32 @md_number_to_chars(i8* %350, i32 %353, i64 %356)
  br label %365

358:                                              ; preds = %205
  %359 = getelementptr inbounds [3 x %struct.score_it], [3 x %struct.score_it]* %14, i64 0, i64 0
  %360 = call i32 @gen_insn_frag(%struct.score_it* %359, i32* null)
  %361 = getelementptr inbounds [3 x %struct.score_it], [3 x %struct.score_it]* %14, i64 0, i64 1
  %362 = call i32 @gen_insn_frag(%struct.score_it* %361, i32* null)
  %363 = getelementptr inbounds [3 x %struct.score_it], [3 x %struct.score_it]* %14, i64 0, i64 2
  %364 = call i32 @gen_insn_frag(%struct.score_it* %363, i32* null)
  br label %365

365:                                              ; preds = %358, %306
  %366 = load i32, i32* %6, align 4
  store i32 %366, i32* @nor1, align 4
  store i32 -1, i32* getelementptr inbounds (%struct.score_it, %struct.score_it* @inst, i32 0, i32 3), align 8
  store i32 0, i32* %16, align 4
  br label %367

367:                                              ; preds = %365, %196, %112, %107, %98, %79, %75, %51, %44, %38
  %368 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %368)
  %369 = load i32, i32* %16, align 4
  switch i32 %369, label %371 [
    i32 0, label %370
    i32 1, label %370
  ]

370:                                              ; preds = %367, %367
  ret void

371:                                              ; preds = %367
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(%struct.score_it*, %struct.score_it*, i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @skip_whitespace(i8*) #2

declare dso_local i32 @reg_required_here(i8**, i32, i32) #2

declare dso_local i32 @skip_past_comma(i8**) #2

declare dso_local i32 @do_ldst_insn(i8*) #2

declare dso_local i32 @my_get_expression(%struct.TYPE_13__*, i8**) #2

declare dso_local i32 @validate_immediate(i32, i32, i32) #2

declare dso_local i32 @end_of_line(i8*) #2

declare dso_local i32 @exp_macro_ldst_abs(i8*) #2

declare dso_local i32 @data_op2(i8**, i32, i32) #2

declare dso_local i32 @build_lwst_pic(i32, i32, i64, i32) #2

declare dso_local i32 @nopic_need_relax(i64, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #2

declare dso_local i32 @append_insn(i8*, i32) #2

declare dso_local i8* @adjust_paritybit(i32, i32) #2

declare dso_local i32 @GET_INSN_CLASS(i8*) #2

declare dso_local i32 @handle_dependency(%struct.score_it*) #2

declare dso_local i64 @frag_now_fix(...) #2

declare dso_local i32 @frag_wane(%struct.TYPE_14__*) #2

declare dso_local i32 @frag_new(i32) #2

declare dso_local i32 @frag_grow(i32) #2

declare dso_local i8* @frag_more(i64) #2

declare dso_local i32 @md_number_to_chars(i8*, i32, i64) #2

declare dso_local i32 @fix_new_score(%struct.TYPE_14__*, i8*, i64, %struct.TYPE_13__*, i32, i64) #2

declare dso_local i8* @frag_var(i32, i64, i32, i32, i64, i32, i32*) #2

declare dso_local i32 @RELAX_ENCODE(i64, i64, i8*, i32, i32, i32) #2

declare dso_local i32 @gen_insn_frag(%struct.score_it*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
