; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_combine_reloads.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_combine_reloads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_14__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@n_reloads = common dso_local global i32 0, align 4
@rld = common dso_local global %struct.TYPE_11__* null, align 8
@RELOAD_FOR_OUTPUT_ADDRESS = common dso_local global i64 0, align 8
@RELOAD_FOR_OUTADDR_ADDRESS = common dso_local global i64 0, align 8
@RELOAD_OTHER = common dso_local global i64 0, align 8
@SMALL_REGISTER_CLASSES = common dso_local global i64 0, align 8
@RELOAD_FOR_INPUT = common dso_local global i64 0, align 8
@reg_class_size = common dso_local global i64* null, align 8
@RELOAD_FOR_OUTPUT = common dso_local global i64 0, align 8
@n_replacements = common dso_local global i32 0, align 4
@replacements = common dso_local global %struct.TYPE_12__* null, align 8
@this_insn = common dso_local global i32 0, align 4
@insn_data = common dso_local global %struct.TYPE_13__* null, align 8
@REG_DEAD = common dso_local global i64 0, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i64 0, align 8
@reg_class_contents = common dso_local global i32* null, align 8
@hard_regno_nregs = common dso_local global i64** null, align 8
@fixed_regs = common dso_local global i32* null, align 8
@ENTRY_BLOCK_PTR = common dso_local global %struct.TYPE_14__* null, align 8
@secondary_memlocs_elim = common dso_local global i64** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @combine_reloads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @combine_reloads() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 -1, i32* %2, align 4
  store i32 -1, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %25, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @n_reloads, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %6
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %10
  %19 = load i32, i32* %2, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %729

22:                                               ; preds = %18
  %23 = load i32, i32* %1, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %22, %10
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %6

28:                                               ; preds = %6
  %29 = load i32, i32* %2, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %28
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 13
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31, %28
  br label %729

40:                                               ; preds = %31
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %729

49:                                               ; preds = %40
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %51 = load i32, i32* %2, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @earlyclobber_operand_p(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %729

59:                                               ; preds = %49
  store i32 0, i32* %1, align 4
  br label %60

60:                                               ; preds = %98, %59
  %61 = load i32, i32* %1, align 4
  %62 = load i32, i32* @n_reloads, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %101

64:                                               ; preds = %60
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %66 = load i32, i32* %1, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @RELOAD_FOR_OUTPUT_ADDRESS, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %82, label %73

73:                                               ; preds = %64
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %75 = load i32, i32* %1, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @RELOAD_FOR_OUTADDR_ADDRESS, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %97

82:                                               ; preds = %73, %64
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %84 = load i32, i32* %1, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %90 = load i32, i32* %2, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %88, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %82
  br label %729

97:                                               ; preds = %82, %73
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %1, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %1, align 4
  br label %60

101:                                              ; preds = %60
  store i32 0, i32* %1, align 4
  br label %102

102:                                              ; preds = %489, %101
  %103 = load i32, i32* %1, align 4
  %104 = load i32, i32* @n_reloads, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %492

106:                                              ; preds = %102
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %108 = load i32, i32* %1, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %488

114:                                              ; preds = %106
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %116 = load i32, i32* %1, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 13
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %488, label %122

122:                                              ; preds = %114
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %124 = load i32, i32* %1, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 12
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %488, label %130

130:                                              ; preds = %122
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %132 = load i32, i32* %1, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @RELOAD_FOR_OUTPUT_ADDRESS, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %488

139:                                              ; preds = %130
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %141 = load i32, i32* %1, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @RELOAD_FOR_OUTADDR_ADDRESS, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %488

148:                                              ; preds = %139
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %150 = load i32, i32* %1, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @RELOAD_OTHER, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %488

157:                                              ; preds = %148
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %159 = load i32, i32* %1, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 4
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %165 = load i32, i32* %1, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 5
  %169 = load i64, i64* %168, align 8
  %170 = call i64 @CLASS_MAX_NREGS(i64 %163, i64 %169)
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %172 = load i32, i32* %2, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 4
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %178 = load i32, i32* %2, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 6
  %182 = load i64, i64* %181, align 8
  %183 = call i64 @CLASS_MAX_NREGS(i64 %176, i64 %182)
  %184 = icmp eq i64 %170, %183
  br i1 %184, label %185, label %488

185:                                              ; preds = %157
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %187 = load i32, i32* %1, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 7
  %191 = load i64, i64* %190, align 8
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %488

193:                                              ; preds = %185
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %195 = load i32, i32* %1, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 8
  %199 = load i64, i64* %198, align 8
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %488

201:                                              ; preds = %193
  %202 = load i64, i64* @SMALL_REGISTER_CLASSES, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %218

204:                                              ; preds = %201
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %206 = load i32, i32* %1, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 4
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %212 = load i32, i32* %2, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 4
  %216 = load i64, i64* %215, align 8
  %217 = icmp eq i64 %210, %216
  br i1 %217, label %248, label %488

218:                                              ; preds = %201
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %220 = load i32, i32* %1, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 4
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %226 = load i32, i32* %2, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 4
  %230 = load i64, i64* %229, align 8
  %231 = call i64 @reg_class_subset_p(i64 %224, i64 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %248, label %233

233:                                              ; preds = %218
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %235 = load i32, i32* %2, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 4
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %241 = load i32, i32* %1, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 4
  %245 = load i64, i64* %244, align 8
  %246 = call i64 @reg_class_subset_p(i64 %239, i64 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %488

248:                                              ; preds = %233, %218, %204
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %250 = load i32, i32* %1, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %256 = load i32, i32* %2, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = call i64 @MATCHES(i64 %254, i64 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %302, label %263

263:                                              ; preds = %248
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %265 = load i32, i32* %2, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %271 = load i32, i32* %1, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = call i64 @reg_overlap_mentioned_for_reload_p(i64 %269, i64 %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %488, label %278

278:                                              ; preds = %263
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %280 = load i32, i32* %1, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = call i64 @REG_P(i64 %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %302

287:                                              ; preds = %278
  %288 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %289 = load i32, i32* %1, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %295 = load i32, i32* %2, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = call i64 @reg_overlap_mentioned_for_reload_p(i64 %293, i64 %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %488, label %302

302:                                              ; preds = %287, %278, %248
  %303 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %304 = load i32, i32* %1, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %303, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %310 = load i32, i32* %1, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %309, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 5
  %314 = load i64, i64* %313, align 8
  %315 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %316 = load i32, i32* %1, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %318, i32 0, i32 2
  %320 = load i64, i64* %319, align 8
  %321 = load i64, i64* @RELOAD_FOR_INPUT, align 8
  %322 = icmp ne i64 %320, %321
  %323 = zext i1 %322 to i32
  %324 = call i32 @reload_inner_reg_of_subreg(i64 %308, i64 %314, i32 %323)
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %488, label %326

326:                                              ; preds = %302
  %327 = load i64*, i64** @reg_class_size, align 8
  %328 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %329 = load i32, i32* %1, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %331, i32 0, i32 4
  %333 = load i64, i64* %332, align 8
  %334 = trunc i64 %333 to i32
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i64, i64* %327, i64 %335
  %337 = load i64, i64* %336, align 8
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %342, label %339

339:                                              ; preds = %326
  %340 = load i64, i64* @SMALL_REGISTER_CLASSES, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %488

342:                                              ; preds = %339, %326
  %343 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %344 = load i32, i32* %1, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %343, i64 %345
  %347 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %346, i32 0, i32 2
  %348 = load i64, i64* %347, align 8
  %349 = load i64, i64* @RELOAD_FOR_INPUT, align 8
  %350 = icmp eq i64 %348, %349
  br i1 %350, label %360, label %351

351:                                              ; preds = %342
  %352 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %353 = load i32, i32* %1, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %352, i64 %354
  %356 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %355, i32 0, i32 2
  %357 = load i64, i64* %356, align 8
  %358 = load i64, i64* @RELOAD_FOR_OUTPUT, align 8
  %359 = icmp eq i64 %357, %358
  br i1 %359, label %360, label %488

360:                                              ; preds = %351, %342
  %361 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %362 = load i32, i32* %2, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %361, i64 %363
  %365 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %364, i32 0, i32 0
  %366 = load i64, i64* %365, align 8
  %367 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %368 = load i32, i32* %1, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %367, i64 %369
  %371 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %370, i32 0, i32 0
  store i64 %366, i64* %371, align 8
  %372 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %373 = load i32, i32* %2, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %372, i64 %374
  %376 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %375, i32 0, i32 11
  %377 = load i32, i32* %376, align 8
  %378 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %379 = load i32, i32* %1, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %378, i64 %380
  %382 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %381, i32 0, i32 11
  store i32 %377, i32* %382, align 8
  %383 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %384 = load i32, i32* %2, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %383, i64 %385
  %387 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %386, i32 0, i32 6
  %388 = load i64, i64* %387, align 8
  %389 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %390 = load i32, i32* %1, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %389, i64 %391
  %393 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %392, i32 0, i32 6
  store i64 %388, i64* %393, align 8
  %394 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %395 = load i32, i32* %2, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %394, i64 %396
  %398 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %397, i32 0, i32 0
  store i64 0, i64* %398, align 8
  %399 = load i64, i64* @RELOAD_OTHER, align 8
  %400 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %401 = load i32, i32* %1, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %400, i64 %402
  %404 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %403, i32 0, i32 2
  store i64 %399, i64* %404, align 8
  %405 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %406 = load i32, i32* %2, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %405, i64 %407
  %409 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %408, i32 0, i32 9
  %410 = load i32, i32* %409, align 8
  %411 = icmp ne i32 %410, -1
  br i1 %411, label %412, label %435

412:                                              ; preds = %360
  %413 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %414 = load i32, i32* %2, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %413, i64 %415
  %417 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %416, i32 0, i32 9
  %418 = load i32, i32* %417, align 8
  %419 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %420 = load i32, i32* %1, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %419, i64 %421
  %423 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %422, i32 0, i32 9
  store i32 %418, i32* %423, align 8
  %424 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %425 = load i32, i32* %2, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %424, i64 %426
  %428 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %427, i32 0, i32 10
  %429 = load i32, i32* %428, align 4
  %430 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %431 = load i32, i32* %1, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %430, i64 %432
  %434 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %433, i32 0, i32 10
  store i32 %429, i32* %434, align 4
  br label %435

435:                                              ; preds = %412, %360
  %436 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %437 = load i32, i32* %2, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %436, i64 %438
  %440 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %439, i32 0, i32 4
  %441 = load i64, i64* %440, align 8
  %442 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %443 = load i32, i32* %1, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %442, i64 %444
  %446 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %445, i32 0, i32 4
  %447 = load i64, i64* %446, align 8
  %448 = call i64 @reg_class_subset_p(i64 %441, i64 %447)
  %449 = icmp ne i64 %448, 0
  br i1 %449, label %450, label %462

450:                                              ; preds = %435
  %451 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %452 = load i32, i32* %2, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %451, i64 %453
  %455 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %454, i32 0, i32 4
  %456 = load i64, i64* %455, align 8
  %457 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %458 = load i32, i32* %1, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %457, i64 %459
  %461 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %460, i32 0, i32 4
  store i64 %456, i64* %461, align 8
  br label %462

462:                                              ; preds = %450, %435
  store i32 0, i32* %5, align 4
  br label %463

463:                                              ; preds = %484, %462
  %464 = load i32, i32* %5, align 4
  %465 = load i32, i32* @n_replacements, align 4
  %466 = icmp slt i32 %464, %465
  br i1 %466, label %467, label %487

467:                                              ; preds = %463
  %468 = load %struct.TYPE_12__*, %struct.TYPE_12__** @replacements, align 8
  %469 = load i32, i32* %5, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %468, i64 %470
  %472 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %471, i32 0, i32 0
  %473 = load i32, i32* %472, align 4
  %474 = load i32, i32* %2, align 4
  %475 = icmp eq i32 %473, %474
  br i1 %475, label %476, label %483

476:                                              ; preds = %467
  %477 = load i32, i32* %1, align 4
  %478 = load %struct.TYPE_12__*, %struct.TYPE_12__** @replacements, align 8
  %479 = load i32, i32* %5, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %478, i64 %480
  %482 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %481, i32 0, i32 0
  store i32 %477, i32* %482, align 4
  br label %483

483:                                              ; preds = %476, %467
  br label %484

484:                                              ; preds = %483
  %485 = load i32, i32* %5, align 4
  %486 = add nsw i32 %485, 1
  store i32 %486, i32* %5, align 4
  br label %463

487:                                              ; preds = %463
  br label %729

488:                                              ; preds = %351, %339, %302, %287, %263, %233, %204, %193, %185, %157, %148, %139, %130, %122, %114, %106
  br label %489

489:                                              ; preds = %488
  %490 = load i32, i32* %1, align 4
  %491 = add nsw i32 %490, 1
  store i32 %491, i32* %1, align 4
  br label %102

492:                                              ; preds = %102
  %493 = load i32, i32* @this_insn, align 4
  %494 = call i64 @INSN_CODE(i32 %493)
  %495 = icmp eq i64 %494, -1
  br i1 %495, label %496, label %497

496:                                              ; preds = %492
  br label %729

497:                                              ; preds = %492
  store i32 1, i32* %1, align 4
  br label %498

498:                                              ; preds = %541, %497
  %499 = load i32, i32* %1, align 4
  %500 = load %struct.TYPE_13__*, %struct.TYPE_13__** @insn_data, align 8
  %501 = load i32, i32* @this_insn, align 4
  %502 = call i64 @INSN_CODE(i32 %501)
  %503 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %500, i64 %502
  %504 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %503, i32 0, i32 0
  %505 = load i32, i32* %504, align 8
  %506 = icmp slt i32 %499, %505
  br i1 %506, label %507, label %544

507:                                              ; preds = %498
  %508 = load %struct.TYPE_13__*, %struct.TYPE_13__** @insn_data, align 8
  %509 = load i32, i32* @this_insn, align 4
  %510 = call i64 @INSN_CODE(i32 %509)
  %511 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %508, i64 %510
  %512 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %511, i32 0, i32 1
  %513 = load %struct.TYPE_8__*, %struct.TYPE_8__** %512, align 8
  %514 = load i32, i32* %1, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %513, i64 %515
  %517 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %516, i32 0, i32 0
  %518 = load i8*, i8** %517, align 8
  %519 = getelementptr inbounds i8, i8* %518, i64 0
  %520 = load i8, i8* %519, align 1
  %521 = sext i8 %520 to i32
  %522 = icmp eq i32 %521, 61
  br i1 %522, label %539, label %523

523:                                              ; preds = %507
  %524 = load %struct.TYPE_13__*, %struct.TYPE_13__** @insn_data, align 8
  %525 = load i32, i32* @this_insn, align 4
  %526 = call i64 @INSN_CODE(i32 %525)
  %527 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %524, i64 %526
  %528 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %527, i32 0, i32 1
  %529 = load %struct.TYPE_8__*, %struct.TYPE_8__** %528, align 8
  %530 = load i32, i32* %1, align 4
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %529, i64 %531
  %533 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %532, i32 0, i32 0
  %534 = load i8*, i8** %533, align 8
  %535 = getelementptr inbounds i8, i8* %534, i64 0
  %536 = load i8, i8* %535, align 1
  %537 = sext i8 %536 to i32
  %538 = icmp eq i32 %537, 43
  br i1 %538, label %539, label %540

539:                                              ; preds = %523, %507
  br label %729

540:                                              ; preds = %523
  br label %541

541:                                              ; preds = %540
  %542 = load i32, i32* %1, align 4
  %543 = add nsw i32 %542, 1
  store i32 %543, i32* %1, align 4
  br label %498

544:                                              ; preds = %498
  %545 = load i32, i32* @this_insn, align 4
  %546 = call i64 @REG_NOTES(i32 %545)
  store i64 %546, i64* %4, align 8
  br label %547

547:                                              ; preds = %726, %544
  %548 = load i64, i64* %4, align 8
  %549 = icmp ne i64 %548, 0
  br i1 %549, label %550, label %729

550:                                              ; preds = %547
  %551 = load i64, i64* %4, align 8
  %552 = call i64 @REG_NOTE_KIND(i64 %551)
  %553 = load i64, i64* @REG_DEAD, align 8
  %554 = icmp eq i64 %552, %553
  br i1 %554, label %555, label %725

555:                                              ; preds = %550
  %556 = load i64, i64* %4, align 8
  %557 = call i64 @XEXP(i64 %556, i32 0)
  %558 = call i64 @REG_P(i64 %557)
  %559 = icmp ne i64 %558, 0
  br i1 %559, label %560, label %725

560:                                              ; preds = %555
  %561 = load i64, i64* %4, align 8
  %562 = call i64 @XEXP(i64 %561, i32 0)
  %563 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %564 = load i32, i32* %2, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %563, i64 %565
  %567 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %566, i32 0, i32 0
  %568 = load i64, i64* %567, align 8
  %569 = call i64 @reg_overlap_mentioned_for_reload_p(i64 %562, i64 %568)
  %570 = icmp ne i64 %569, 0
  br i1 %570, label %725, label %571

571:                                              ; preds = %560
  %572 = load i64, i64* %4, align 8
  %573 = call i64 @XEXP(i64 %572, i32 0)
  %574 = call i64 @REGNO(i64 %573)
  %575 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %576 = icmp ult i64 %574, %575
  br i1 %576, label %577, label %725

577:                                              ; preds = %571
  %578 = load i64, i64* %4, align 8
  %579 = call i64 @XEXP(i64 %578, i32 0)
  %580 = call i64 @REGNO(i64 %579)
  %581 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %582 = load i32, i32* %2, align 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %581, i64 %583
  %585 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %584, i32 0, i32 6
  %586 = load i64, i64* %585, align 8
  %587 = call i64 @HARD_REGNO_MODE_OK(i64 %580, i64 %586)
  %588 = icmp ne i64 %587, 0
  br i1 %588, label %589, label %725

589:                                              ; preds = %577
  %590 = load i32*, i32** @reg_class_contents, align 8
  %591 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %592 = load i32, i32* %2, align 4
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %591, i64 %593
  %595 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %594, i32 0, i32 4
  %596 = load i64, i64* %595, align 8
  %597 = trunc i64 %596 to i32
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds i32, i32* %590, i64 %598
  %600 = load i32, i32* %599, align 4
  %601 = load i64, i64* %4, align 8
  %602 = call i64 @XEXP(i64 %601, i32 0)
  %603 = call i64 @REGNO(i64 %602)
  %604 = call i64 @TEST_HARD_REG_BIT(i32 %600, i64 %603)
  %605 = icmp ne i64 %604, 0
  br i1 %605, label %606, label %725

606:                                              ; preds = %589
  %607 = load i64**, i64*** @hard_regno_nregs, align 8
  %608 = load i64, i64* %4, align 8
  %609 = call i64 @XEXP(i64 %608, i32 0)
  %610 = call i64 @REGNO(i64 %609)
  %611 = getelementptr inbounds i64*, i64** %607, i64 %610
  %612 = load i64*, i64** %611, align 8
  %613 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %614 = load i32, i32* %2, align 4
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %613, i64 %615
  %617 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %616, i32 0, i32 6
  %618 = load i64, i64* %617, align 8
  %619 = getelementptr inbounds i64, i64* %612, i64 %618
  %620 = load i64, i64* %619, align 8
  %621 = load i64**, i64*** @hard_regno_nregs, align 8
  %622 = load i64, i64* %4, align 8
  %623 = call i64 @XEXP(i64 %622, i32 0)
  %624 = call i64 @REGNO(i64 %623)
  %625 = getelementptr inbounds i64*, i64** %621, i64 %624
  %626 = load i64*, i64** %625, align 8
  %627 = load i64, i64* %4, align 8
  %628 = call i64 @XEXP(i64 %627, i32 0)
  %629 = call i64 @GET_MODE(i64 %628)
  %630 = getelementptr inbounds i64, i64* %626, i64 %629
  %631 = load i64, i64* %630, align 8
  %632 = icmp sle i64 %620, %631
  br i1 %632, label %633, label %725

633:                                              ; preds = %606
  %634 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %635 = load i32, i32* %2, align 4
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %634, i64 %636
  %638 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %637, i32 0, i32 9
  %639 = load i32, i32* %638, align 8
  store i32 %639, i32* %3, align 4
  %640 = icmp eq i32 %639, -1
  br i1 %640, label %683, label %641

641:                                              ; preds = %633
  %642 = load i32*, i32** @reg_class_contents, align 8
  %643 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %644 = load i32, i32* %3, align 4
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %643, i64 %645
  %647 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %646, i32 0, i32 4
  %648 = load i64, i64* %647, align 8
  %649 = trunc i64 %648 to i32
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds i32, i32* %642, i64 %650
  %652 = load i32, i32* %651, align 4
  %653 = load i64, i64* %4, align 8
  %654 = call i64 @XEXP(i64 %653, i32 0)
  %655 = call i64 @REGNO(i64 %654)
  %656 = call i64 @TEST_HARD_REG_BIT(i32 %652, i64 %655)
  %657 = icmp ne i64 %656, 0
  br i1 %657, label %725, label %658

658:                                              ; preds = %641
  %659 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %660 = load i32, i32* %3, align 4
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %659, i64 %661
  %663 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %662, i32 0, i32 9
  %664 = load i32, i32* %663, align 8
  store i32 %664, i32* %3, align 4
  %665 = icmp eq i32 %664, -1
  br i1 %665, label %683, label %666

666:                                              ; preds = %658
  %667 = load i32*, i32** @reg_class_contents, align 8
  %668 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %669 = load i32, i32* %3, align 4
  %670 = sext i32 %669 to i64
  %671 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %668, i64 %670
  %672 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %671, i32 0, i32 4
  %673 = load i64, i64* %672, align 8
  %674 = trunc i64 %673 to i32
  %675 = sext i32 %674 to i64
  %676 = getelementptr inbounds i32, i32* %667, i64 %675
  %677 = load i32, i32* %676, align 4
  %678 = load i64, i64* %4, align 8
  %679 = call i64 @XEXP(i64 %678, i32 0)
  %680 = call i64 @REGNO(i64 %679)
  %681 = call i64 @TEST_HARD_REG_BIT(i32 %677, i64 %680)
  %682 = icmp ne i64 %681, 0
  br i1 %682, label %725, label %683

683:                                              ; preds = %666, %658, %633
  %684 = load i32*, i32** @fixed_regs, align 8
  %685 = load i64, i64* %4, align 8
  %686 = call i64 @XEXP(i64 %685, i32 0)
  %687 = call i64 @REGNO(i64 %686)
  %688 = getelementptr inbounds i32, i32* %684, i64 %687
  %689 = load i32, i32* %688, align 4
  %690 = icmp ne i32 %689, 0
  br i1 %690, label %725, label %691

691:                                              ; preds = %683
  %692 = load i64, i64* %4, align 8
  %693 = call i64 @XEXP(i64 %692, i32 0)
  %694 = call i64 @ORIGINAL_REGNO(i64 %693)
  %695 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %696 = icmp slt i64 %694, %695
  br i1 %696, label %709, label %697

697:                                              ; preds = %691
  %698 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ENTRY_BLOCK_PTR, align 8
  %699 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %698, i32 0, i32 0
  %700 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %699, i32 0, i32 0
  %701 = load %struct.TYPE_9__*, %struct.TYPE_9__** %700, align 8
  %702 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %701, i32 0, i32 0
  %703 = load i32, i32* %702, align 4
  %704 = load i64, i64* %4, align 8
  %705 = call i64 @XEXP(i64 %704, i32 0)
  %706 = call i64 @ORIGINAL_REGNO(i64 %705)
  %707 = call i32 @bitmap_bit_p(i32 %703, i64 %706)
  %708 = icmp ne i32 %707, 0
  br i1 %708, label %725, label %709

709:                                              ; preds = %697, %691
  %710 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %711 = load i32, i32* %2, align 4
  %712 = sext i32 %711 to i64
  %713 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %710, i64 %712
  %714 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %713, i32 0, i32 6
  %715 = load i64, i64* %714, align 8
  %716 = load i64, i64* %4, align 8
  %717 = call i64 @XEXP(i64 %716, i32 0)
  %718 = call i64 @REGNO(i64 %717)
  %719 = call i64 @gen_rtx_REG(i64 %715, i64 %718)
  %720 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %721 = load i32, i32* %2, align 4
  %722 = sext i32 %721 to i64
  %723 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %720, i64 %722
  %724 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %723, i32 0, i32 8
  store i64 %719, i64* %724, align 8
  br label %729

725:                                              ; preds = %697, %683, %666, %641, %606, %589, %577, %571, %560, %555, %550
  br label %726

726:                                              ; preds = %725
  %727 = load i64, i64* %4, align 8
  %728 = call i64 @XEXP(i64 %727, i32 1)
  store i64 %728, i64* %4, align 8
  br label %547

729:                                              ; preds = %21, %39, %48, %58, %96, %487, %496, %539, %709, %547
  ret void
}

declare dso_local i64 @earlyclobber_operand_p(i64) #1

declare dso_local i64 @CLASS_MAX_NREGS(i64, i64) #1

declare dso_local i64 @reg_class_subset_p(i64, i64) #1

declare dso_local i64 @MATCHES(i64, i64) #1

declare dso_local i64 @reg_overlap_mentioned_for_reload_p(i64, i64) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i32 @reload_inner_reg_of_subreg(i64, i64, i32) #1

declare dso_local i64 @INSN_CODE(i32) #1

declare dso_local i64 @REG_NOTES(i32) #1

declare dso_local i64 @REG_NOTE_KIND(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @REGNO(i64) #1

declare dso_local i64 @HARD_REGNO_MODE_OK(i64, i64) #1

declare dso_local i64 @TEST_HARD_REG_BIT(i32, i64) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i64 @ORIGINAL_REGNO(i64) #1

declare dso_local i32 @bitmap_bit_p(i32, i64) #1

declare dso_local i64 @gen_rtx_REG(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
