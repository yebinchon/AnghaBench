; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_record_value_for_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_record_value_for_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32, i64, i64, i8*, i64, i64, i64, i8* }

@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@hard_regno_nregs = common dso_local global i32** null, align 8
@subst_low_cuid = common dso_local global i32 0, align 4
@CLOBBER = common dso_local global i64 0, align 8
@MAX_LAST_VALUE_RTL = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i32 0, align 4
@reg_stat = common dso_local global %struct.TYPE_2__* null, align 8
@label_tick = common dso_local global i64 0, align 8
@MODE_INT = common dso_local global i64 0, align 8
@HOST_BITS_PER_WIDE_INT = common dso_local global i64 0, align 8
@nonzero_bits_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*)* @record_value_for_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record_value_for_reg(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @REGNO(i8* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = load i32**, i32*** @hard_regno_nregs, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i64 @GET_MODE(i8* %24)
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  br label %29

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %28, %18
  %30 = phi i32 [ %27, %18 ], [ 1, %28 ]
  %31 = add i32 %14, %30
  store i32 %31, i32* %8, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %92

34:                                               ; preds = %29
  %35 = load i8*, i8** %5, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %92

37:                                               ; preds = %34
  %38 = load i8*, i8** %4, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i64 @reg_overlap_mentioned_p(i8* %38, i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %92

42:                                               ; preds = %37
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @INSN_CUID(i8* %43)
  store i32 %44, i32* @subst_low_cuid, align 4
  %45 = load i8*, i8** %4, align 8
  %46 = call i8* @get_last_value(i8* %45)
  store i8* %46, i8** %10, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %91

49:                                               ; preds = %42
  %50 = load i8*, i8** %10, align 8
  %51 = call i64 @ARITHMETIC_P(i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %49
  %54 = load i8*, i8** %10, align 8
  %55 = call i8* @XEXP(i8* %54, i32 0)
  %56 = call i64 @GET_CODE(i8* %55)
  %57 = load i64, i64* @CLOBBER, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = load i8*, i8** %10, align 8
  %61 = call i8* @XEXP(i8* %60, i32 1)
  %62 = call i64 @GET_CODE(i8* %61)
  %63 = load i64, i64* @CLOBBER, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i8*, i8** %10, align 8
  %67 = call i8* @XEXP(i8* %66, i32 0)
  store i8* %67, i8** %10, align 8
  br label %85

68:                                               ; preds = %59, %53, %49
  %69 = load i8*, i8** %6, align 8
  %70 = load i8*, i8** %4, align 8
  %71 = call i32 @count_occurrences(i8* %69, i8* %70, i32 1)
  %72 = icmp sge i32 %71, 2
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = load i8*, i8** %10, align 8
  %75 = call i64 @count_rtxs(i8* %74)
  %76 = load i64, i64* @MAX_LAST_VALUE_RTL, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load i8*, i8** %10, align 8
  %80 = call i64 @GET_MODE(i8* %79)
  %81 = load i32, i32* @const0_rtx, align 4
  %82 = call i8* @gen_rtx_CLOBBER(i64 %80, i32 %81)
  store i8* %82, i8** %10, align 8
  br label %83

83:                                               ; preds = %78, %73
  br label %84

84:                                               ; preds = %83, %68
  br label %85

85:                                               ; preds = %84, %65
  %86 = load i8*, i8** %6, align 8
  %87 = call i8* @copy_rtx(i8* %86)
  %88 = load i8*, i8** %4, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = call i8* @replace_rtx(i8* %87, i8* %88, i8* %89)
  store i8* %90, i8** %6, align 8
  br label %91

91:                                               ; preds = %85, %42
  br label %92

92:                                               ; preds = %91, %37, %34, %29
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %139, %92
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %98, label %142

98:                                               ; preds = %94
  %99 = load i8*, i8** %5, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load i8*, i8** %5, align 8
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_stat, align 8
  %104 = load i32, i32* %9, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 9
  store i8* %102, i8** %107, align 8
  br label %108

108:                                              ; preds = %101, %98
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_stat, align 8
  %110 = load i32, i32* %9, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 5
  store i8* null, i8** %113, align 8
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_stat, align 8
  %115 = load i32, i32* %9, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  store i32 0, i32* %118, align 8
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_stat, align 8
  %120 = load i32, i32* %9, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 4
  store i64 0, i64* %123, align 8
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_stat, align 8
  %125 = load i32, i32* %9, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 3
  store i64 0, i64* %128, align 8
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_stat, align 8
  %130 = load i32, i32* %9, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 8
  store i64 0, i64* %133, align 8
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_stat, align 8
  %135 = load i32, i32* %9, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 7
  store i64 0, i64* %138, align 8
  br label %139

139:                                              ; preds = %108
  %140 = load i32, i32* %9, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %9, align 4
  br label %94

142:                                              ; preds = %94
  %143 = load i8*, i8** %6, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load i8*, i8** %6, align 8
  %147 = call i32 @update_table_tick(i8* %146)
  br label %148

148:                                              ; preds = %145, %142
  %149 = load i32, i32* %7, align 4
  store i32 %149, i32* %9, align 4
  br label %150

150:                                              ; preds = %188, %148
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* %8, align 4
  %153 = icmp ult i32 %151, %152
  br i1 %153, label %154, label %191

154:                                              ; preds = %150
  %155 = load i64, i64* @label_tick, align 8
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_stat, align 8
  %157 = load i32, i32* %9, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 6
  store i64 %155, i64* %160, align 8
  %161 = load i8*, i8** %5, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %175

163:                                              ; preds = %154
  %164 = load i8*, i8** %6, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %181

166:                                              ; preds = %163
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_stat, align 8
  %168 = load i32, i32* %9, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @label_tick, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %181

175:                                              ; preds = %166, %154
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_stat, align 8
  %177 = load i32, i32* %9, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 2
  store i32 1, i32* %180, align 8
  br label %187

181:                                              ; preds = %166, %163
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_stat, align 8
  %183 = load i32, i32* %9, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 2
  store i32 0, i32* %186, align 8
  br label %187

187:                                              ; preds = %181, %175
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %9, align 4
  %190 = add i32 %189, 1
  store i32 %190, i32* %9, align 4
  br label %150

191:                                              ; preds = %150
  %192 = load i8*, i8** %6, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %194, label %218

194:                                              ; preds = %191
  %195 = load i8*, i8** %5, align 8
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_stat, align 8
  %197 = load i32, i32* %7, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 6
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @get_last_value_validate(i8** %6, i8* %195, i64 %201, i32 0)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %218, label %204

204:                                              ; preds = %194
  %205 = load i8*, i8** %6, align 8
  %206 = call i8* @copy_rtx(i8* %205)
  store i8* %206, i8** %6, align 8
  %207 = load i8*, i8** %5, align 8
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_stat, align 8
  %209 = load i32, i32* %7, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 6
  %213 = load i64, i64* %212, align 8
  %214 = call i32 @get_last_value_validate(i8** %6, i8* %207, i64 %213, i32 1)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %204
  store i8* null, i8** %6, align 8
  br label %217

217:                                              ; preds = %216, %204
  br label %218

218:                                              ; preds = %217, %194, %191
  %219 = load i8*, i8** %6, align 8
  %220 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_stat, align 8
  %221 = load i32, i32* %7, align 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 5
  store i8* %219, i8** %224, align 8
  %225 = load i8*, i8** %6, align 8
  %226 = icmp ne i8* %225, null
  br i1 %226, label %227, label %268

227:                                              ; preds = %218
  %228 = load i8*, i8** %4, align 8
  %229 = call i64 @GET_MODE(i8* %228)
  %230 = trunc i64 %229 to i32
  store i32 %230, i32* %11, align 4
  %231 = load i8*, i8** %5, align 8
  %232 = call i32 @INSN_CUID(i8* %231)
  store i32 %232, i32* @subst_low_cuid, align 4
  %233 = load i32, i32* %11, align 4
  %234 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_stat, align 8
  %235 = load i32, i32* %7, align 4
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 0
  store i32 %233, i32* %238, align 8
  %239 = load i32, i32* %11, align 4
  %240 = call i64 @GET_MODE_CLASS(i32 %239)
  %241 = load i64, i64* @MODE_INT, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %250

243:                                              ; preds = %227
  %244 = load i32, i32* %11, align 4
  %245 = call i64 @GET_MODE_BITSIZE(i32 %244)
  %246 = load i64, i64* @HOST_BITS_PER_WIDE_INT, align 8
  %247 = icmp sle i64 %245, %246
  br i1 %247, label %248, label %250

248:                                              ; preds = %243
  %249 = load i32, i32* @nonzero_bits_mode, align 4
  store i32 %249, i32* %11, align 4
  br label %250

250:                                              ; preds = %248, %243, %227
  %251 = load i8*, i8** %6, align 8
  %252 = load i32, i32* %11, align 4
  %253 = call i64 @nonzero_bits(i8* %251, i32 %252)
  %254 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_stat, align 8
  %255 = load i32, i32* %7, align 4
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 4
  store i64 %253, i64* %258, align 8
  %259 = load i8*, i8** %6, align 8
  %260 = load i8*, i8** %4, align 8
  %261 = call i64 @GET_MODE(i8* %260)
  %262 = call i64 @num_sign_bit_copies(i8* %259, i64 %261)
  %263 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_stat, align 8
  %264 = load i32, i32* %7, align 4
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %266, i32 0, i32 3
  store i64 %262, i64* %267, align 8
  br label %268

268:                                              ; preds = %250, %218
  ret void
}

declare dso_local i32 @REGNO(i8*) #1

declare dso_local i64 @GET_MODE(i8*) #1

declare dso_local i64 @reg_overlap_mentioned_p(i8*, i8*) #1

declare dso_local i32 @INSN_CUID(i8*) #1

declare dso_local i8* @get_last_value(i8*) #1

declare dso_local i64 @ARITHMETIC_P(i8*) #1

declare dso_local i64 @GET_CODE(i8*) #1

declare dso_local i8* @XEXP(i8*, i32) #1

declare dso_local i32 @count_occurrences(i8*, i8*, i32) #1

declare dso_local i64 @count_rtxs(i8*) #1

declare dso_local i8* @gen_rtx_CLOBBER(i64, i32) #1

declare dso_local i8* @replace_rtx(i8*, i8*, i8*) #1

declare dso_local i8* @copy_rtx(i8*) #1

declare dso_local i32 @update_table_tick(i8*) #1

declare dso_local i32 @get_last_value_validate(i8**, i8*, i64, i32) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i64 @GET_MODE_BITSIZE(i32) #1

declare dso_local i64 @nonzero_bits(i8*, i32) #1

declare dso_local i64 @num_sign_bit_copies(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
