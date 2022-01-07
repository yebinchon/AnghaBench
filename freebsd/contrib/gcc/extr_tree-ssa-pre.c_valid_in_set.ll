; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-pre.c_valid_in_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-pre.c_valid_in_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CALL_EXPR = common dso_local global i32 0, align 4
@INDIRECT_REF = common dso_local global i32 0, align 4
@COMPONENT_REF = common dso_local global i32 0, align 4
@ARRAY_REF = common dso_local global i32 0, align 4
@VALUE_HANDLE = common dso_local global i32 0, align 4
@SSA_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @valid_in_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valid_in_set(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @get_value_handle(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @TREE_CODE(i32 %21)
  %23 = call i32 @TREE_CODE_CLASS(i32 %22)
  switch i32 %23, label %241 [
    i32 134, label %24
    i32 133, label %24
    i32 128, label %41
    i32 130, label %47
    i32 129, label %96
    i32 131, label %226
    i32 132, label %233
  ]

24:                                               ; preds = %3, %3
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @TREE_OPERAND(i32 %25, i32 0)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @TREE_OPERAND(i32 %27, i32 1)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @set_contains_value(i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @set_contains_value(i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %33, %24
  %39 = phi i1 [ false, %24 ], [ %37, %33 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %4, align 4
  br label %243

41:                                               ; preds = %3
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @TREE_OPERAND(i32 %42, i32 0)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @set_contains_value(i32 %44, i32 %45)
  store i32 %46, i32* %4, align 4
  br label %243

47:                                               ; preds = %3
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @TREE_CODE(i32 %48)
  %50 = load i32, i32* @CALL_EXPR, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %95

52:                                               ; preds = %47
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @TREE_OPERAND(i32 %53, i32 0)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @TREE_OPERAND(i32 %55, i32 1)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @TREE_OPERAND(i32 %57, i32 2)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @set_contains_value(i32 %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %52
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @set_contains_value(i32 %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66, %52
  store i32 0, i32* %4, align 4
  br label %243

72:                                               ; preds = %66, %63
  br label %73

73:                                               ; preds = %84, %72
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @TREE_VALUE(i32 %78)
  %80 = call i32 @set_contains_value(i32 %77, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %243

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @TREE_CHAIN(i32 %85)
  store i32 %86, i32* %13, align 4
  br label %73

87:                                               ; preds = %73
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @VALUE_HANDLE_VUSES(i32 %88)
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @vuses_dies_in_block_x(i32 %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %4, align 4
  br label %243

95:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %243

96:                                               ; preds = %3
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @TREE_CODE(i32 %97)
  %99 = load i32, i32* @INDIRECT_REF, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %111, label %101

101:                                              ; preds = %96
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @TREE_CODE(i32 %102)
  %104 = load i32, i32* @COMPONENT_REF, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %111, label %106

106:                                              ; preds = %101
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @TREE_CODE(i32 %107)
  %109 = load i32, i32* @ARRAY_REF, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %225

111:                                              ; preds = %106, %101, %96
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @TREE_OPERAND(i32 %112, i32 0)
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %15, align 4
  %115 = call i32 @is_gimple_min_invariant(i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %111
  %118 = load i32, i32* %15, align 4
  %119 = call i32 @TREE_CODE(i32 %118)
  %120 = load i32, i32* @VALUE_HANDLE, align 4
  %121 = icmp eq i32 %119, %120
  br label %122

122:                                              ; preds = %117, %111
  %123 = phi i1 [ true, %111 ], [ %121, %117 ]
  %124 = zext i1 %123 to i32
  %125 = call i32 @gcc_assert(i32 %124)
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* %15, align 4
  %128 = call i32 @set_contains_value(i32 %126, i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %122
  store i32 0, i32* %4, align 4
  br label %243

131:                                              ; preds = %122
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @TREE_CODE(i32 %132)
  %134 = load i32, i32* @ARRAY_REF, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %209

136:                                              ; preds = %131
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @TREE_OPERAND(i32 %137, i32 1)
  store i32 %138, i32* %16, align 4
  %139 = load i32, i32* %6, align 4
  %140 = call i32 @TREE_OPERAND(i32 %139, i32 2)
  store i32 %140, i32* %17, align 4
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @TREE_OPERAND(i32 %141, i32 3)
  store i32 %142, i32* %18, align 4
  %143 = load i32, i32* %16, align 4
  %144 = call i32 @is_gimple_min_invariant(i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %136
  %147 = load i32, i32* %16, align 4
  %148 = call i32 @TREE_CODE(i32 %147)
  %149 = load i32, i32* @VALUE_HANDLE, align 4
  %150 = icmp eq i32 %148, %149
  br label %151

151:                                              ; preds = %146, %136
  %152 = phi i1 [ true, %136 ], [ %150, %146 ]
  %153 = zext i1 %152 to i32
  %154 = call i32 @gcc_assert(i32 %153)
  %155 = load i32, i32* %5, align 4
  %156 = load i32, i32* %16, align 4
  %157 = call i32 @set_contains_value(i32 %155, i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %151
  store i32 0, i32* %4, align 4
  br label %243

160:                                              ; preds = %151
  %161 = load i32, i32* %17, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %160
  %164 = load i32, i32* %17, align 4
  %165 = call i32 @is_gimple_min_invariant(i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %163
  %168 = load i32, i32* %17, align 4
  %169 = call i32 @TREE_CODE(i32 %168)
  %170 = load i32, i32* @VALUE_HANDLE, align 4
  %171 = icmp eq i32 %169, %170
  br label %172

172:                                              ; preds = %167, %163, %160
  %173 = phi i1 [ true, %163 ], [ true, %160 ], [ %171, %167 ]
  %174 = zext i1 %173 to i32
  %175 = call i32 @gcc_assert(i32 %174)
  %176 = load i32, i32* %17, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %172
  %179 = load i32, i32* %5, align 4
  %180 = load i32, i32* %17, align 4
  %181 = call i32 @set_contains_value(i32 %179, i32 %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %178
  store i32 0, i32* %4, align 4
  br label %243

184:                                              ; preds = %178, %172
  %185 = load i32, i32* %18, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %196

187:                                              ; preds = %184
  %188 = load i32, i32* %18, align 4
  %189 = call i32 @is_gimple_min_invariant(i32 %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %196, label %191

191:                                              ; preds = %187
  %192 = load i32, i32* %18, align 4
  %193 = call i32 @TREE_CODE(i32 %192)
  %194 = load i32, i32* @VALUE_HANDLE, align 4
  %195 = icmp eq i32 %193, %194
  br label %196

196:                                              ; preds = %191, %187, %184
  %197 = phi i1 [ true, %187 ], [ true, %184 ], [ %195, %191 ]
  %198 = zext i1 %197 to i32
  %199 = call i32 @gcc_assert(i32 %198)
  %200 = load i32, i32* %18, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %196
  %203 = load i32, i32* %5, align 4
  %204 = load i32, i32* %18, align 4
  %205 = call i32 @set_contains_value(i32 %203, i32 %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %202
  store i32 0, i32* %4, align 4
  br label %243

208:                                              ; preds = %202, %196
  br label %209

209:                                              ; preds = %208, %131
  %210 = load i32, i32* %7, align 4
  %211 = call i32 @ANTIC_SAFE_LOADS(i32 %210)
  %212 = load i32, i32* %8, align 4
  %213 = call i32 @set_contains_value(i32 %211, i32 %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %222, label %215

215:                                              ; preds = %209
  %216 = load i32, i32* %8, align 4
  %217 = call i32 @VALUE_HANDLE_VUSES(i32 %216)
  %218 = load i32, i32* %7, align 4
  %219 = call i32 @vuses_dies_in_block_x(i32 %217, i32 %218)
  %220 = icmp ne i32 %219, 0
  %221 = xor i1 %220, true
  br label %222

222:                                              ; preds = %215, %209
  %223 = phi i1 [ true, %209 ], [ %221, %215 ]
  %224 = zext i1 %223 to i32
  store i32 %224, i32* %4, align 4
  br label %243

225:                                              ; preds = %106
  store i32 0, i32* %4, align 4
  br label %243

226:                                              ; preds = %3
  %227 = load i32, i32* %6, align 4
  %228 = call i32 @TREE_CODE(i32 %227)
  %229 = load i32, i32* @SSA_NAME, align 4
  %230 = icmp eq i32 %228, %229
  %231 = zext i1 %230 to i32
  %232 = call i32 @gcc_assert(i32 %231)
  store i32 1, i32* %4, align 4
  br label %243

233:                                              ; preds = %3
  %234 = load i32, i32* %8, align 4
  %235 = call i32 @VALUE_HANDLE_VUSES(i32 %234)
  %236 = load i32, i32* %7, align 4
  %237 = call i32 @vuses_dies_in_block_x(i32 %235, i32 %236)
  %238 = icmp ne i32 %237, 0
  %239 = xor i1 %238, true
  %240 = zext i1 %239 to i32
  store i32 %240, i32* %4, align 4
  br label %243

241:                                              ; preds = %3
  %242 = call i32 (...) @gcc_unreachable()
  br label %243

243:                                              ; preds = %38, %41, %71, %82, %87, %95, %130, %159, %183, %207, %222, %225, %226, %233, %241
  %244 = load i32, i32* %4, align 4
  ret i32 %244
}

declare dso_local i32 @get_value_handle(i32) #1

declare dso_local i32 @TREE_CODE_CLASS(i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @set_contains_value(i32, i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i32 @vuses_dies_in_block_x(i32, i32) #1

declare dso_local i32 @VALUE_HANDLE_VUSES(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @is_gimple_min_invariant(i32) #1

declare dso_local i32 @ANTIC_SAFE_LOADS(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
