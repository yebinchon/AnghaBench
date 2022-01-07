; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_expr.c_expr_join_and.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_expr.c_expr_join_and.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i64, i32 }
%struct.expr = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.symbol* }
%struct.TYPE_3__ = type { %struct.symbol*, %struct.expr* }

@E_EQUAL = common dso_local global i64 0, align 8
@E_UNEQUAL = common dso_local global i64 0, align 8
@E_SYMBOL = common dso_local global i64 0, align 8
@E_NOT = common dso_local global i64 0, align 8
@S_BOOLEAN = common dso_local global i64 0, align 8
@S_TRISTATE = common dso_local global i64 0, align 8
@symbol_yes = common dso_local global %struct.symbol zeroinitializer, align 8
@symbol_no = common dso_local global %struct.symbol zeroinitializer, align 8
@symbol_mod = common dso_local global %struct.symbol zeroinitializer, align 8
@SYMBOL_CONST = common dso_local global i32 0, align 4
@DEBUG_EXPR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"optimize (\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c") && (\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c")?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.expr* (%struct.expr*, %struct.expr*)* @expr_join_and to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.expr* @expr_join_and(%struct.expr* %0, %struct.expr* %1) #0 {
  %3 = alloca %struct.expr*, align 8
  %4 = alloca %struct.expr*, align 8
  %5 = alloca %struct.expr*, align 8
  %6 = alloca %struct.expr*, align 8
  %7 = alloca %struct.symbol*, align 8
  %8 = alloca %struct.symbol*, align 8
  store %struct.expr* %0, %struct.expr** %4, align 8
  store %struct.expr* %1, %struct.expr** %5, align 8
  %9 = load %struct.expr*, %struct.expr** %4, align 8
  %10 = load %struct.expr*, %struct.expr** %5, align 8
  %11 = call i64 @expr_eq(%struct.expr* %9, %struct.expr* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.expr*, %struct.expr** %4, align 8
  %15 = call %struct.expr* @expr_copy(%struct.expr* %14)
  store %struct.expr* %15, %struct.expr** %3, align 8
  br label %585

16:                                               ; preds = %2
  %17 = load %struct.expr*, %struct.expr** %4, align 8
  %18 = getelementptr inbounds %struct.expr, %struct.expr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @E_EQUAL, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %16
  %23 = load %struct.expr*, %struct.expr** %4, align 8
  %24 = getelementptr inbounds %struct.expr, %struct.expr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @E_UNEQUAL, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %22
  %29 = load %struct.expr*, %struct.expr** %4, align 8
  %30 = getelementptr inbounds %struct.expr, %struct.expr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @E_SYMBOL, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.expr*, %struct.expr** %4, align 8
  %36 = getelementptr inbounds %struct.expr, %struct.expr* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @E_NOT, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store %struct.expr* null, %struct.expr** %3, align 8
  br label %585

41:                                               ; preds = %34, %28, %22, %16
  %42 = load %struct.expr*, %struct.expr** %5, align 8
  %43 = getelementptr inbounds %struct.expr, %struct.expr* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @E_EQUAL, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %41
  %48 = load %struct.expr*, %struct.expr** %5, align 8
  %49 = getelementptr inbounds %struct.expr, %struct.expr* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @E_UNEQUAL, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %47
  %54 = load %struct.expr*, %struct.expr** %5, align 8
  %55 = getelementptr inbounds %struct.expr, %struct.expr* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @E_SYMBOL, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = load %struct.expr*, %struct.expr** %5, align 8
  %61 = getelementptr inbounds %struct.expr, %struct.expr* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @E_NOT, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store %struct.expr* null, %struct.expr** %3, align 8
  br label %585

66:                                               ; preds = %59, %53, %47, %41
  %67 = load %struct.expr*, %struct.expr** %4, align 8
  %68 = getelementptr inbounds %struct.expr, %struct.expr* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @E_NOT, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %100

72:                                               ; preds = %66
  %73 = load %struct.expr*, %struct.expr** %4, align 8
  %74 = getelementptr inbounds %struct.expr, %struct.expr* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load %struct.expr*, %struct.expr** %75, align 8
  store %struct.expr* %76, %struct.expr** %6, align 8
  %77 = load %struct.expr*, %struct.expr** %6, align 8
  %78 = getelementptr inbounds %struct.expr, %struct.expr* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @E_EQUAL, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %72
  %83 = load %struct.expr*, %struct.expr** %6, align 8
  %84 = getelementptr inbounds %struct.expr, %struct.expr* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @E_UNEQUAL, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load %struct.expr*, %struct.expr** %6, align 8
  %90 = getelementptr inbounds %struct.expr, %struct.expr* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @E_SYMBOL, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  store %struct.expr* null, %struct.expr** %3, align 8
  br label %585

95:                                               ; preds = %88, %82, %72
  %96 = load %struct.expr*, %struct.expr** %6, align 8
  %97 = getelementptr inbounds %struct.expr, %struct.expr* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load %struct.symbol*, %struct.symbol** %98, align 8
  store %struct.symbol* %99, %struct.symbol** %7, align 8
  br label %105

100:                                              ; preds = %66
  %101 = load %struct.expr*, %struct.expr** %4, align 8
  %102 = getelementptr inbounds %struct.expr, %struct.expr* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load %struct.symbol*, %struct.symbol** %103, align 8
  store %struct.symbol* %104, %struct.symbol** %7, align 8
  br label %105

105:                                              ; preds = %100, %95
  %106 = load %struct.expr*, %struct.expr** %5, align 8
  %107 = getelementptr inbounds %struct.expr, %struct.expr* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @E_NOT, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %129

111:                                              ; preds = %105
  %112 = load %struct.expr*, %struct.expr** %5, align 8
  %113 = getelementptr inbounds %struct.expr, %struct.expr* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load %struct.expr*, %struct.expr** %114, align 8
  %116 = getelementptr inbounds %struct.expr, %struct.expr* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @E_SYMBOL, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  store %struct.expr* null, %struct.expr** %3, align 8
  br label %585

121:                                              ; preds = %111
  %122 = load %struct.expr*, %struct.expr** %5, align 8
  %123 = getelementptr inbounds %struct.expr, %struct.expr* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = load %struct.expr*, %struct.expr** %124, align 8
  %126 = getelementptr inbounds %struct.expr, %struct.expr* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load %struct.symbol*, %struct.symbol** %127, align 8
  store %struct.symbol* %128, %struct.symbol** %8, align 8
  br label %134

129:                                              ; preds = %105
  %130 = load %struct.expr*, %struct.expr** %5, align 8
  %131 = getelementptr inbounds %struct.expr, %struct.expr* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load %struct.symbol*, %struct.symbol** %132, align 8
  store %struct.symbol* %133, %struct.symbol** %8, align 8
  br label %134

134:                                              ; preds = %129, %121
  %135 = load %struct.symbol*, %struct.symbol** %7, align 8
  %136 = load %struct.symbol*, %struct.symbol** %8, align 8
  %137 = icmp ne %struct.symbol* %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  store %struct.expr* null, %struct.expr** %3, align 8
  br label %585

139:                                              ; preds = %134
  %140 = load %struct.symbol*, %struct.symbol** %7, align 8
  %141 = getelementptr inbounds %struct.symbol, %struct.symbol* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @S_BOOLEAN, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %139
  %146 = load %struct.symbol*, %struct.symbol** %7, align 8
  %147 = getelementptr inbounds %struct.symbol, %struct.symbol* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @S_TRISTATE, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  store %struct.expr* null, %struct.expr** %3, align 8
  br label %585

152:                                              ; preds = %145, %139
  %153 = load %struct.expr*, %struct.expr** %4, align 8
  %154 = getelementptr inbounds %struct.expr, %struct.expr* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @E_SYMBOL, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %170

158:                                              ; preds = %152
  %159 = load %struct.expr*, %struct.expr** %5, align 8
  %160 = getelementptr inbounds %struct.expr, %struct.expr* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @E_EQUAL, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %158
  %165 = load %struct.expr*, %struct.expr** %5, align 8
  %166 = getelementptr inbounds %struct.expr, %struct.expr* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load %struct.symbol*, %struct.symbol** %167, align 8
  %169 = icmp eq %struct.symbol* %168, @symbol_yes
  br i1 %169, label %188, label %170

170:                                              ; preds = %164, %158, %152
  %171 = load %struct.expr*, %struct.expr** %5, align 8
  %172 = getelementptr inbounds %struct.expr, %struct.expr* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @E_SYMBOL, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %192

176:                                              ; preds = %170
  %177 = load %struct.expr*, %struct.expr** %4, align 8
  %178 = getelementptr inbounds %struct.expr, %struct.expr* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @E_EQUAL, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %192

182:                                              ; preds = %176
  %183 = load %struct.expr*, %struct.expr** %4, align 8
  %184 = getelementptr inbounds %struct.expr, %struct.expr* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load %struct.symbol*, %struct.symbol** %185, align 8
  %187 = icmp eq %struct.symbol* %186, @symbol_yes
  br i1 %187, label %188, label %192

188:                                              ; preds = %182, %164
  %189 = load i64, i64* @E_EQUAL, align 8
  %190 = load %struct.symbol*, %struct.symbol** %7, align 8
  %191 = call %struct.expr* @expr_alloc_comp(i64 %189, %struct.symbol* %190, %struct.symbol* @symbol_yes)
  store %struct.expr* %191, %struct.expr** %3, align 8
  br label %585

192:                                              ; preds = %182, %176, %170
  %193 = load %struct.expr*, %struct.expr** %4, align 8
  %194 = getelementptr inbounds %struct.expr, %struct.expr* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @E_SYMBOL, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %210

198:                                              ; preds = %192
  %199 = load %struct.expr*, %struct.expr** %5, align 8
  %200 = getelementptr inbounds %struct.expr, %struct.expr* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @E_UNEQUAL, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %210

204:                                              ; preds = %198
  %205 = load %struct.expr*, %struct.expr** %5, align 8
  %206 = getelementptr inbounds %struct.expr, %struct.expr* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  %208 = load %struct.symbol*, %struct.symbol** %207, align 8
  %209 = icmp eq %struct.symbol* %208, @symbol_no
  br i1 %209, label %228, label %210

210:                                              ; preds = %204, %198, %192
  %211 = load %struct.expr*, %struct.expr** %5, align 8
  %212 = getelementptr inbounds %struct.expr, %struct.expr* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @E_SYMBOL, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %231

216:                                              ; preds = %210
  %217 = load %struct.expr*, %struct.expr** %4, align 8
  %218 = getelementptr inbounds %struct.expr, %struct.expr* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @E_UNEQUAL, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %231

222:                                              ; preds = %216
  %223 = load %struct.expr*, %struct.expr** %4, align 8
  %224 = getelementptr inbounds %struct.expr, %struct.expr* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  %226 = load %struct.symbol*, %struct.symbol** %225, align 8
  %227 = icmp eq %struct.symbol* %226, @symbol_no
  br i1 %227, label %228, label %231

228:                                              ; preds = %222, %204
  %229 = load %struct.symbol*, %struct.symbol** %7, align 8
  %230 = call %struct.expr* @expr_alloc_symbol(%struct.symbol* %229)
  store %struct.expr* %230, %struct.expr** %3, align 8
  br label %585

231:                                              ; preds = %222, %216, %210
  %232 = load %struct.expr*, %struct.expr** %4, align 8
  %233 = getelementptr inbounds %struct.expr, %struct.expr* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @E_SYMBOL, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %249

237:                                              ; preds = %231
  %238 = load %struct.expr*, %struct.expr** %5, align 8
  %239 = getelementptr inbounds %struct.expr, %struct.expr* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @E_UNEQUAL, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %249

243:                                              ; preds = %237
  %244 = load %struct.expr*, %struct.expr** %5, align 8
  %245 = getelementptr inbounds %struct.expr, %struct.expr* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 0
  %247 = load %struct.symbol*, %struct.symbol** %246, align 8
  %248 = icmp eq %struct.symbol* %247, @symbol_mod
  br i1 %248, label %267, label %249

249:                                              ; preds = %243, %237, %231
  %250 = load %struct.expr*, %struct.expr** %5, align 8
  %251 = getelementptr inbounds %struct.expr, %struct.expr* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @E_SYMBOL, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %271

255:                                              ; preds = %249
  %256 = load %struct.expr*, %struct.expr** %4, align 8
  %257 = getelementptr inbounds %struct.expr, %struct.expr* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @E_UNEQUAL, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %271

261:                                              ; preds = %255
  %262 = load %struct.expr*, %struct.expr** %4, align 8
  %263 = getelementptr inbounds %struct.expr, %struct.expr* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 0
  %265 = load %struct.symbol*, %struct.symbol** %264, align 8
  %266 = icmp eq %struct.symbol* %265, @symbol_mod
  br i1 %266, label %267, label %271

267:                                              ; preds = %261, %243
  %268 = load i64, i64* @E_EQUAL, align 8
  %269 = load %struct.symbol*, %struct.symbol** %7, align 8
  %270 = call %struct.expr* @expr_alloc_comp(i64 %268, %struct.symbol* %269, %struct.symbol* @symbol_yes)
  store %struct.expr* %270, %struct.expr** %3, align 8
  br label %585

271:                                              ; preds = %261, %255, %249
  %272 = load %struct.symbol*, %struct.symbol** %7, align 8
  %273 = getelementptr inbounds %struct.symbol, %struct.symbol* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @S_TRISTATE, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %571

277:                                              ; preds = %271
  %278 = load %struct.expr*, %struct.expr** %4, align 8
  %279 = getelementptr inbounds %struct.expr, %struct.expr* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* @E_EQUAL, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %283, label %327

283:                                              ; preds = %277
  %284 = load %struct.expr*, %struct.expr** %5, align 8
  %285 = getelementptr inbounds %struct.expr, %struct.expr* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @E_UNEQUAL, align 8
  %288 = icmp eq i64 %286, %287
  br i1 %288, label %289, label %327

289:                                              ; preds = %283
  %290 = load %struct.expr*, %struct.expr** %4, align 8
  %291 = getelementptr inbounds %struct.expr, %struct.expr* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 0
  %293 = load %struct.symbol*, %struct.symbol** %292, align 8
  store %struct.symbol* %293, %struct.symbol** %8, align 8
  %294 = load %struct.expr*, %struct.expr** %5, align 8
  %295 = getelementptr inbounds %struct.expr, %struct.expr* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 0
  %297 = load %struct.symbol*, %struct.symbol** %296, align 8
  %298 = getelementptr inbounds %struct.symbol, %struct.symbol* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* @SYMBOL_CONST, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %326

303:                                              ; preds = %289
  %304 = load %struct.symbol*, %struct.symbol** %8, align 8
  %305 = getelementptr inbounds %struct.symbol, %struct.symbol* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 8
  %307 = load i32, i32* @SYMBOL_CONST, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %326

310:                                              ; preds = %303
  %311 = load %struct.symbol*, %struct.symbol** %8, align 8
  %312 = load %struct.expr*, %struct.expr** %5, align 8
  %313 = getelementptr inbounds %struct.expr, %struct.expr* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 0
  %315 = load %struct.symbol*, %struct.symbol** %314, align 8
  %316 = icmp ne %struct.symbol* %311, %315
  br i1 %316, label %317, label %322

317:                                              ; preds = %310
  %318 = load i64, i64* @E_EQUAL, align 8
  %319 = load %struct.symbol*, %struct.symbol** %7, align 8
  %320 = load %struct.symbol*, %struct.symbol** %8, align 8
  %321 = call %struct.expr* @expr_alloc_comp(i64 %318, %struct.symbol* %319, %struct.symbol* %320)
  br label %324

322:                                              ; preds = %310
  %323 = call %struct.expr* @expr_alloc_symbol(%struct.symbol* @symbol_no)
  br label %324

324:                                              ; preds = %322, %317
  %325 = phi %struct.expr* [ %321, %317 ], [ %323, %322 ]
  store %struct.expr* %325, %struct.expr** %3, align 8
  br label %585

326:                                              ; preds = %303, %289
  br label %327

327:                                              ; preds = %326, %283, %277
  %328 = load %struct.expr*, %struct.expr** %4, align 8
  %329 = getelementptr inbounds %struct.expr, %struct.expr* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = load i64, i64* @E_UNEQUAL, align 8
  %332 = icmp eq i64 %330, %331
  br i1 %332, label %333, label %377

333:                                              ; preds = %327
  %334 = load %struct.expr*, %struct.expr** %5, align 8
  %335 = getelementptr inbounds %struct.expr, %struct.expr* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = load i64, i64* @E_EQUAL, align 8
  %338 = icmp eq i64 %336, %337
  br i1 %338, label %339, label %377

339:                                              ; preds = %333
  %340 = load %struct.expr*, %struct.expr** %5, align 8
  %341 = getelementptr inbounds %struct.expr, %struct.expr* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %341, i32 0, i32 0
  %343 = load %struct.symbol*, %struct.symbol** %342, align 8
  store %struct.symbol* %343, %struct.symbol** %8, align 8
  %344 = load %struct.expr*, %struct.expr** %4, align 8
  %345 = getelementptr inbounds %struct.expr, %struct.expr* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %345, i32 0, i32 0
  %347 = load %struct.symbol*, %struct.symbol** %346, align 8
  %348 = getelementptr inbounds %struct.symbol, %struct.symbol* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 8
  %350 = load i32, i32* @SYMBOL_CONST, align 4
  %351 = and i32 %349, %350
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %376

353:                                              ; preds = %339
  %354 = load %struct.symbol*, %struct.symbol** %8, align 8
  %355 = getelementptr inbounds %struct.symbol, %struct.symbol* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 8
  %357 = load i32, i32* @SYMBOL_CONST, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %376

360:                                              ; preds = %353
  %361 = load %struct.symbol*, %struct.symbol** %8, align 8
  %362 = load %struct.expr*, %struct.expr** %4, align 8
  %363 = getelementptr inbounds %struct.expr, %struct.expr* %362, i32 0, i32 1
  %364 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %363, i32 0, i32 0
  %365 = load %struct.symbol*, %struct.symbol** %364, align 8
  %366 = icmp ne %struct.symbol* %361, %365
  br i1 %366, label %367, label %372

367:                                              ; preds = %360
  %368 = load i64, i64* @E_EQUAL, align 8
  %369 = load %struct.symbol*, %struct.symbol** %7, align 8
  %370 = load %struct.symbol*, %struct.symbol** %8, align 8
  %371 = call %struct.expr* @expr_alloc_comp(i64 %368, %struct.symbol* %369, %struct.symbol* %370)
  br label %374

372:                                              ; preds = %360
  %373 = call %struct.expr* @expr_alloc_symbol(%struct.symbol* @symbol_no)
  br label %374

374:                                              ; preds = %372, %367
  %375 = phi %struct.expr* [ %371, %367 ], [ %373, %372 ]
  store %struct.expr* %375, %struct.expr** %3, align 8
  br label %585

376:                                              ; preds = %353, %339
  br label %377

377:                                              ; preds = %376, %333, %327
  %378 = load %struct.expr*, %struct.expr** %4, align 8
  %379 = getelementptr inbounds %struct.expr, %struct.expr* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = load i64, i64* @E_UNEQUAL, align 8
  %382 = icmp eq i64 %380, %381
  br i1 %382, label %383, label %417

383:                                              ; preds = %377
  %384 = load %struct.expr*, %struct.expr** %5, align 8
  %385 = getelementptr inbounds %struct.expr, %struct.expr* %384, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = load i64, i64* @E_UNEQUAL, align 8
  %388 = icmp eq i64 %386, %387
  br i1 %388, label %389, label %417

389:                                              ; preds = %383
  %390 = load %struct.expr*, %struct.expr** %4, align 8
  %391 = getelementptr inbounds %struct.expr, %struct.expr* %390, i32 0, i32 1
  %392 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %391, i32 0, i32 0
  %393 = load %struct.symbol*, %struct.symbol** %392, align 8
  %394 = icmp eq %struct.symbol* %393, @symbol_yes
  br i1 %394, label %395, label %401

395:                                              ; preds = %389
  %396 = load %struct.expr*, %struct.expr** %5, align 8
  %397 = getelementptr inbounds %struct.expr, %struct.expr* %396, i32 0, i32 1
  %398 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %397, i32 0, i32 0
  %399 = load %struct.symbol*, %struct.symbol** %398, align 8
  %400 = icmp eq %struct.symbol* %399, @symbol_no
  br i1 %400, label %413, label %401

401:                                              ; preds = %395, %389
  %402 = load %struct.expr*, %struct.expr** %4, align 8
  %403 = getelementptr inbounds %struct.expr, %struct.expr* %402, i32 0, i32 1
  %404 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %403, i32 0, i32 0
  %405 = load %struct.symbol*, %struct.symbol** %404, align 8
  %406 = icmp eq %struct.symbol* %405, @symbol_no
  br i1 %406, label %407, label %417

407:                                              ; preds = %401
  %408 = load %struct.expr*, %struct.expr** %5, align 8
  %409 = getelementptr inbounds %struct.expr, %struct.expr* %408, i32 0, i32 1
  %410 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %409, i32 0, i32 0
  %411 = load %struct.symbol*, %struct.symbol** %410, align 8
  %412 = icmp eq %struct.symbol* %411, @symbol_yes
  br i1 %412, label %413, label %417

413:                                              ; preds = %407, %395
  %414 = load i64, i64* @E_EQUAL, align 8
  %415 = load %struct.symbol*, %struct.symbol** %7, align 8
  %416 = call %struct.expr* @expr_alloc_comp(i64 %414, %struct.symbol* %415, %struct.symbol* @symbol_mod)
  store %struct.expr* %416, %struct.expr** %3, align 8
  br label %585

417:                                              ; preds = %407, %401, %383, %377
  %418 = load %struct.expr*, %struct.expr** %4, align 8
  %419 = getelementptr inbounds %struct.expr, %struct.expr* %418, i32 0, i32 0
  %420 = load i64, i64* %419, align 8
  %421 = load i64, i64* @E_UNEQUAL, align 8
  %422 = icmp eq i64 %420, %421
  br i1 %422, label %423, label %457

423:                                              ; preds = %417
  %424 = load %struct.expr*, %struct.expr** %5, align 8
  %425 = getelementptr inbounds %struct.expr, %struct.expr* %424, i32 0, i32 0
  %426 = load i64, i64* %425, align 8
  %427 = load i64, i64* @E_UNEQUAL, align 8
  %428 = icmp eq i64 %426, %427
  br i1 %428, label %429, label %457

429:                                              ; preds = %423
  %430 = load %struct.expr*, %struct.expr** %4, align 8
  %431 = getelementptr inbounds %struct.expr, %struct.expr* %430, i32 0, i32 1
  %432 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %431, i32 0, i32 0
  %433 = load %struct.symbol*, %struct.symbol** %432, align 8
  %434 = icmp eq %struct.symbol* %433, @symbol_yes
  br i1 %434, label %435, label %441

435:                                              ; preds = %429
  %436 = load %struct.expr*, %struct.expr** %5, align 8
  %437 = getelementptr inbounds %struct.expr, %struct.expr* %436, i32 0, i32 1
  %438 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %437, i32 0, i32 0
  %439 = load %struct.symbol*, %struct.symbol** %438, align 8
  %440 = icmp eq %struct.symbol* %439, @symbol_mod
  br i1 %440, label %453, label %441

441:                                              ; preds = %435, %429
  %442 = load %struct.expr*, %struct.expr** %4, align 8
  %443 = getelementptr inbounds %struct.expr, %struct.expr* %442, i32 0, i32 1
  %444 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %443, i32 0, i32 0
  %445 = load %struct.symbol*, %struct.symbol** %444, align 8
  %446 = icmp eq %struct.symbol* %445, @symbol_mod
  br i1 %446, label %447, label %457

447:                                              ; preds = %441
  %448 = load %struct.expr*, %struct.expr** %5, align 8
  %449 = getelementptr inbounds %struct.expr, %struct.expr* %448, i32 0, i32 1
  %450 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %449, i32 0, i32 0
  %451 = load %struct.symbol*, %struct.symbol** %450, align 8
  %452 = icmp eq %struct.symbol* %451, @symbol_yes
  br i1 %452, label %453, label %457

453:                                              ; preds = %447, %435
  %454 = load i64, i64* @E_EQUAL, align 8
  %455 = load %struct.symbol*, %struct.symbol** %7, align 8
  %456 = call %struct.expr* @expr_alloc_comp(i64 %454, %struct.symbol* %455, %struct.symbol* @symbol_no)
  store %struct.expr* %456, %struct.expr** %3, align 8
  br label %585

457:                                              ; preds = %447, %441, %423, %417
  %458 = load %struct.expr*, %struct.expr** %4, align 8
  %459 = getelementptr inbounds %struct.expr, %struct.expr* %458, i32 0, i32 0
  %460 = load i64, i64* %459, align 8
  %461 = load i64, i64* @E_UNEQUAL, align 8
  %462 = icmp eq i64 %460, %461
  br i1 %462, label %463, label %497

463:                                              ; preds = %457
  %464 = load %struct.expr*, %struct.expr** %5, align 8
  %465 = getelementptr inbounds %struct.expr, %struct.expr* %464, i32 0, i32 0
  %466 = load i64, i64* %465, align 8
  %467 = load i64, i64* @E_UNEQUAL, align 8
  %468 = icmp eq i64 %466, %467
  br i1 %468, label %469, label %497

469:                                              ; preds = %463
  %470 = load %struct.expr*, %struct.expr** %4, align 8
  %471 = getelementptr inbounds %struct.expr, %struct.expr* %470, i32 0, i32 1
  %472 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %471, i32 0, i32 0
  %473 = load %struct.symbol*, %struct.symbol** %472, align 8
  %474 = icmp eq %struct.symbol* %473, @symbol_mod
  br i1 %474, label %475, label %481

475:                                              ; preds = %469
  %476 = load %struct.expr*, %struct.expr** %5, align 8
  %477 = getelementptr inbounds %struct.expr, %struct.expr* %476, i32 0, i32 1
  %478 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %477, i32 0, i32 0
  %479 = load %struct.symbol*, %struct.symbol** %478, align 8
  %480 = icmp eq %struct.symbol* %479, @symbol_no
  br i1 %480, label %493, label %481

481:                                              ; preds = %475, %469
  %482 = load %struct.expr*, %struct.expr** %4, align 8
  %483 = getelementptr inbounds %struct.expr, %struct.expr* %482, i32 0, i32 1
  %484 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %483, i32 0, i32 0
  %485 = load %struct.symbol*, %struct.symbol** %484, align 8
  %486 = icmp eq %struct.symbol* %485, @symbol_no
  br i1 %486, label %487, label %497

487:                                              ; preds = %481
  %488 = load %struct.expr*, %struct.expr** %5, align 8
  %489 = getelementptr inbounds %struct.expr, %struct.expr* %488, i32 0, i32 1
  %490 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %489, i32 0, i32 0
  %491 = load %struct.symbol*, %struct.symbol** %490, align 8
  %492 = icmp eq %struct.symbol* %491, @symbol_mod
  br i1 %492, label %493, label %497

493:                                              ; preds = %487, %475
  %494 = load i64, i64* @E_EQUAL, align 8
  %495 = load %struct.symbol*, %struct.symbol** %7, align 8
  %496 = call %struct.expr* @expr_alloc_comp(i64 %494, %struct.symbol* %495, %struct.symbol* @symbol_yes)
  store %struct.expr* %496, %struct.expr** %3, align 8
  br label %585

497:                                              ; preds = %487, %481, %463, %457
  %498 = load %struct.expr*, %struct.expr** %4, align 8
  %499 = getelementptr inbounds %struct.expr, %struct.expr* %498, i32 0, i32 0
  %500 = load i64, i64* %499, align 8
  %501 = load i64, i64* @E_SYMBOL, align 8
  %502 = icmp eq i64 %500, %501
  br i1 %502, label %503, label %515

503:                                              ; preds = %497
  %504 = load %struct.expr*, %struct.expr** %5, align 8
  %505 = getelementptr inbounds %struct.expr, %struct.expr* %504, i32 0, i32 0
  %506 = load i64, i64* %505, align 8
  %507 = load i64, i64* @E_EQUAL, align 8
  %508 = icmp eq i64 %506, %507
  br i1 %508, label %509, label %515

509:                                              ; preds = %503
  %510 = load %struct.expr*, %struct.expr** %5, align 8
  %511 = getelementptr inbounds %struct.expr, %struct.expr* %510, i32 0, i32 1
  %512 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %511, i32 0, i32 0
  %513 = load %struct.symbol*, %struct.symbol** %512, align 8
  %514 = icmp eq %struct.symbol* %513, @symbol_mod
  br i1 %514, label %569, label %515

515:                                              ; preds = %509, %503, %497
  %516 = load %struct.expr*, %struct.expr** %5, align 8
  %517 = getelementptr inbounds %struct.expr, %struct.expr* %516, i32 0, i32 0
  %518 = load i64, i64* %517, align 8
  %519 = load i64, i64* @E_SYMBOL, align 8
  %520 = icmp eq i64 %518, %519
  br i1 %520, label %521, label %533

521:                                              ; preds = %515
  %522 = load %struct.expr*, %struct.expr** %4, align 8
  %523 = getelementptr inbounds %struct.expr, %struct.expr* %522, i32 0, i32 0
  %524 = load i64, i64* %523, align 8
  %525 = load i64, i64* @E_EQUAL, align 8
  %526 = icmp eq i64 %524, %525
  br i1 %526, label %527, label %533

527:                                              ; preds = %521
  %528 = load %struct.expr*, %struct.expr** %4, align 8
  %529 = getelementptr inbounds %struct.expr, %struct.expr* %528, i32 0, i32 1
  %530 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %529, i32 0, i32 0
  %531 = load %struct.symbol*, %struct.symbol** %530, align 8
  %532 = icmp eq %struct.symbol* %531, @symbol_mod
  br i1 %532, label %569, label %533

533:                                              ; preds = %527, %521, %515
  %534 = load %struct.expr*, %struct.expr** %4, align 8
  %535 = getelementptr inbounds %struct.expr, %struct.expr* %534, i32 0, i32 0
  %536 = load i64, i64* %535, align 8
  %537 = load i64, i64* @E_SYMBOL, align 8
  %538 = icmp eq i64 %536, %537
  br i1 %538, label %539, label %551

539:                                              ; preds = %533
  %540 = load %struct.expr*, %struct.expr** %5, align 8
  %541 = getelementptr inbounds %struct.expr, %struct.expr* %540, i32 0, i32 0
  %542 = load i64, i64* %541, align 8
  %543 = load i64, i64* @E_UNEQUAL, align 8
  %544 = icmp eq i64 %542, %543
  br i1 %544, label %545, label %551

545:                                              ; preds = %539
  %546 = load %struct.expr*, %struct.expr** %5, align 8
  %547 = getelementptr inbounds %struct.expr, %struct.expr* %546, i32 0, i32 1
  %548 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %547, i32 0, i32 0
  %549 = load %struct.symbol*, %struct.symbol** %548, align 8
  %550 = icmp eq %struct.symbol* %549, @symbol_yes
  br i1 %550, label %569, label %551

551:                                              ; preds = %545, %539, %533
  %552 = load %struct.expr*, %struct.expr** %5, align 8
  %553 = getelementptr inbounds %struct.expr, %struct.expr* %552, i32 0, i32 0
  %554 = load i64, i64* %553, align 8
  %555 = load i64, i64* @E_SYMBOL, align 8
  %556 = icmp eq i64 %554, %555
  br i1 %556, label %557, label %570

557:                                              ; preds = %551
  %558 = load %struct.expr*, %struct.expr** %4, align 8
  %559 = getelementptr inbounds %struct.expr, %struct.expr* %558, i32 0, i32 0
  %560 = load i64, i64* %559, align 8
  %561 = load i64, i64* @E_UNEQUAL, align 8
  %562 = icmp eq i64 %560, %561
  br i1 %562, label %563, label %570

563:                                              ; preds = %557
  %564 = load %struct.expr*, %struct.expr** %4, align 8
  %565 = getelementptr inbounds %struct.expr, %struct.expr* %564, i32 0, i32 1
  %566 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %565, i32 0, i32 0
  %567 = load %struct.symbol*, %struct.symbol** %566, align 8
  %568 = icmp eq %struct.symbol* %567, @symbol_yes
  br i1 %568, label %569, label %570

569:                                              ; preds = %563, %545, %527, %509
  store %struct.expr* null, %struct.expr** %3, align 8
  br label %585

570:                                              ; preds = %563, %557, %551
  br label %571

571:                                              ; preds = %570, %271
  %572 = load i64, i64* @DEBUG_EXPR, align 8
  %573 = icmp ne i64 %572, 0
  br i1 %573, label %574, label %584

574:                                              ; preds = %571
  %575 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %576 = load %struct.expr*, %struct.expr** %4, align 8
  %577 = load i32, i32* @stdout, align 4
  %578 = call i32 @expr_fprint(%struct.expr* %576, i32 %577)
  %579 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %580 = load %struct.expr*, %struct.expr** %5, align 8
  %581 = load i32, i32* @stdout, align 4
  %582 = call i32 @expr_fprint(%struct.expr* %580, i32 %581)
  %583 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %584

584:                                              ; preds = %574, %571
  store %struct.expr* null, %struct.expr** %3, align 8
  br label %585

585:                                              ; preds = %584, %569, %493, %453, %413, %374, %324, %267, %228, %188, %151, %138, %120, %94, %65, %40, %13
  %586 = load %struct.expr*, %struct.expr** %3, align 8
  ret %struct.expr* %586
}

declare dso_local i64 @expr_eq(%struct.expr*, %struct.expr*) #1

declare dso_local %struct.expr* @expr_copy(%struct.expr*) #1

declare dso_local %struct.expr* @expr_alloc_comp(i64, %struct.symbol*, %struct.symbol*) #1

declare dso_local %struct.expr* @expr_alloc_symbol(%struct.symbol*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @expr_fprint(%struct.expr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
