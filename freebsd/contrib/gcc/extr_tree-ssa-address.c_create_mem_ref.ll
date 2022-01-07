; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-address.c_create_mem_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-address.c_create_mem_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.affine_tree_combination = type { i32 }
%struct.mem_address = type { i8*, i32, i64, i8*, i8* }

@MULT_EXPR = common dso_local global i32 0, align 4
@sizetype = common dso_local global i8* null, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@current_function_decl = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @create_mem_ref(i32* %0, i8* %1, %struct.affine_tree_combination* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.affine_tree_combination*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.mem_address, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.affine_tree_combination* %2, %struct.affine_tree_combination** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i8* @build_pointer_type(i8* %13)
  store i8* %14, i8** %10, align 8
  %15 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %7, align 8
  %16 = call i32 @addr_to_parts(%struct.affine_tree_combination* %15, %struct.mem_address* %12)
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @gimplify_mem_ref_parts(i32* %17, %struct.mem_address* %12)
  %19 = load i8*, i8** %6, align 8
  %20 = call i8* @create_mem_ref_raw(i8* %19, %struct.mem_address* %12)
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i8*, i8** %8, align 8
  store i8* %24, i8** %4, align 8
  br label %242

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %62

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @integer_onep(i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %62, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @gcc_assert(i32 %36)
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* @MULT_EXPR, align 4
  %40 = load i8*, i8** @sizetype, align 8
  %41 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @fold_build2(i32 %39, i8* %40, i8* %44, i8* %46)
  %48 = load i64, i64* @NULL_TREE, align 8
  %49 = call i8* @force_gimple_operand_bsi(i32* %38, i32 %47, i32 1, i64 %48)
  %50 = ptrtoint i8* %49 to i32
  %51 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 1
  store i32 %50, i32* %51, align 8
  %52 = load i64, i64* @NULL_TREE, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 0
  store i8* %53, i8** %54, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = call i8* @create_mem_ref_raw(i8* %55, %struct.mem_address* %12)
  store i8* %56, i8** %8, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %34
  %60 = load i8*, i8** %8, align 8
  store i8* %60, i8** %4, align 8
  br label %242

61:                                               ; preds = %34
  br label %62

62:                                               ; preds = %61, %29, %25
  %63 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %114

66:                                               ; preds = %62
  %67 = load i8*, i8** %10, align 8
  %68 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* @current_function_decl, align 4
  %71 = call i8* @build_addr(i64 %69, i32 %70)
  %72 = call i8* @fold_convert(i8* %67, i8* %71)
  store i8* %72, i8** %9, align 8
  %73 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 3
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %101

76:                                               ; preds = %66
  %77 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %76
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* @PLUS_EXPR, align 4
  %83 = load i8*, i8** %10, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 3
  %86 = load i8*, i8** %85, align 8
  %87 = call i8* @fold_convert(i8* %84, i8* %86)
  %88 = load i8*, i8** %9, align 8
  %89 = call i32 @fold_build2(i32 %82, i8* %83, i8* %87, i8* %88)
  %90 = load i64, i64* @NULL_TREE, align 8
  %91 = call i8* @force_gimple_operand_bsi(i32* %81, i32 %89, i32 1, i64 %90)
  %92 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 3
  store i8* %91, i8** %92, align 8
  br label %100

93:                                               ; preds = %76
  %94 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 3
  %95 = load i8*, i8** %94, align 8
  %96 = ptrtoint i8* %95 to i32
  %97 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 1
  store i32 %96, i32* %97, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 3
  store i8* %98, i8** %99, align 8
  br label %100

100:                                              ; preds = %93, %80
  br label %104

101:                                              ; preds = %66
  %102 = load i8*, i8** %9, align 8
  %103 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 3
  store i8* %102, i8** %103, align 8
  br label %104

104:                                              ; preds = %101, %100
  %105 = load i64, i64* @NULL_TREE, align 8
  %106 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 2
  store i64 %105, i64* %106, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = call i8* @create_mem_ref_raw(i8* %107, %struct.mem_address* %12)
  store i8* %108, i8** %8, align 8
  %109 = load i8*, i8** %8, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = load i8*, i8** %8, align 8
  store i8* %112, i8** %4, align 8
  br label %242

113:                                              ; preds = %104
  br label %114

114:                                              ; preds = %113, %62
  %115 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %158

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 3
  %120 = load i8*, i8** %119, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %141

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 3
  %124 = load i8*, i8** %123, align 8
  %125 = call i8* @TREE_TYPE(i8* %124)
  store i8* %125, i8** %11, align 8
  %126 = load i32*, i32** %5, align 8
  %127 = load i32, i32* @PLUS_EXPR, align 4
  %128 = load i8*, i8** %11, align 8
  %129 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 3
  %130 = load i8*, i8** %129, align 8
  %131 = load i8*, i8** %11, align 8
  %132 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = inttoptr i64 %134 to i8*
  %136 = call i8* @fold_convert(i8* %131, i8* %135)
  %137 = call i32 @fold_build2(i32 %127, i8* %128, i8* %130, i8* %136)
  %138 = load i64, i64* @NULL_TREE, align 8
  %139 = call i8* @force_gimple_operand_bsi(i32* %126, i32 %137, i32 1, i64 %138)
  %140 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 3
  store i8* %139, i8** %140, align 8
  br label %147

141:                                              ; preds = %118
  %142 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = inttoptr i64 %144 to i8*
  %146 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 3
  store i8* %145, i8** %146, align 8
  br label %147

147:                                              ; preds = %141, %122
  %148 = load i64, i64* @NULL_TREE, align 8
  %149 = trunc i64 %148 to i32
  %150 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 1
  store i32 %149, i32* %150, align 8
  %151 = load i8*, i8** %6, align 8
  %152 = call i8* @create_mem_ref_raw(i8* %151, %struct.mem_address* %12)
  store i8* %152, i8** %8, align 8
  %153 = load i8*, i8** %8, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %155, label %157

155:                                              ; preds = %147
  %156 = load i8*, i8** %8, align 8
  store i8* %156, i8** %4, align 8
  br label %242

157:                                              ; preds = %147
  br label %158

158:                                              ; preds = %157, %114
  %159 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 4
  %160 = load i8*, i8** %159, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %203

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 4
  %164 = load i8*, i8** %163, align 8
  %165 = call i64 @integer_zerop(i8* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %203, label %167

167:                                              ; preds = %162
  %168 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 3
  %169 = load i8*, i8** %168, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %188

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 3
  %173 = load i8*, i8** %172, align 8
  %174 = call i8* @TREE_TYPE(i8* %173)
  store i8* %174, i8** %11, align 8
  %175 = load i32*, i32** %5, align 8
  %176 = load i32, i32* @PLUS_EXPR, align 4
  %177 = load i8*, i8** %11, align 8
  %178 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 3
  %179 = load i8*, i8** %178, align 8
  %180 = load i8*, i8** %11, align 8
  %181 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 4
  %182 = load i8*, i8** %181, align 8
  %183 = call i8* @fold_convert(i8* %180, i8* %182)
  %184 = call i32 @fold_build2(i32 %176, i8* %177, i8* %179, i8* %183)
  %185 = load i64, i64* @NULL_TREE, align 8
  %186 = call i8* @force_gimple_operand_bsi(i32* %175, i32 %184, i32 1, i64 %185)
  %187 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 3
  store i8* %186, i8** %187, align 8
  br label %192

188:                                              ; preds = %167
  %189 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 4
  %190 = load i8*, i8** %189, align 8
  %191 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 3
  store i8* %190, i8** %191, align 8
  br label %192

192:                                              ; preds = %188, %171
  %193 = load i64, i64* @NULL_TREE, align 8
  %194 = inttoptr i64 %193 to i8*
  %195 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 4
  store i8* %194, i8** %195, align 8
  %196 = load i8*, i8** %6, align 8
  %197 = call i8* @create_mem_ref_raw(i8* %196, %struct.mem_address* %12)
  store i8* %197, i8** %8, align 8
  %198 = load i8*, i8** %8, align 8
  %199 = icmp ne i8* %198, null
  br i1 %199, label %200, label %202

200:                                              ; preds = %192
  %201 = load i8*, i8** %8, align 8
  store i8* %201, i8** %4, align 8
  br label %242

202:                                              ; preds = %192
  br label %203

203:                                              ; preds = %202, %162, %158
  %204 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @NULL_TREE, align 8
  %207 = icmp eq i64 %205, %206
  %208 = zext i1 %207 to i32
  %209 = call i32 @gcc_assert(i32 %208)
  %210 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = sext i32 %211 to i64
  %213 = load i64, i64* @NULL_TREE, align 8
  %214 = icmp eq i64 %212, %213
  %215 = zext i1 %214 to i32
  %216 = call i32 @gcc_assert(i32 %215)
  %217 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = icmp ne i8* %218, null
  br i1 %219, label %220, label %225

220:                                              ; preds = %203
  %221 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = call i64 @integer_onep(i8* %222)
  %224 = icmp ne i64 %223, 0
  br label %225

225:                                              ; preds = %220, %203
  %226 = phi i1 [ true, %203 ], [ %224, %220 ]
  %227 = zext i1 %226 to i32
  %228 = call i32 @gcc_assert(i32 %227)
  %229 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 4
  %230 = load i8*, i8** %229, align 8
  %231 = icmp ne i8* %230, null
  br i1 %231, label %232, label %237

232:                                              ; preds = %225
  %233 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %12, i32 0, i32 4
  %234 = load i8*, i8** %233, align 8
  %235 = call i64 @integer_zerop(i8* %234)
  %236 = icmp ne i64 %235, 0
  br label %237

237:                                              ; preds = %232, %225
  %238 = phi i1 [ true, %225 ], [ %236, %232 ]
  %239 = zext i1 %238 to i32
  %240 = call i32 @gcc_assert(i32 %239)
  %241 = call i32 (...) @gcc_unreachable()
  br label %242

242:                                              ; preds = %237, %200, %155, %111, %59, %23
  %243 = load i8*, i8** %4, align 8
  ret i8* %243
}

declare dso_local i8* @build_pointer_type(i8*) #1

declare dso_local i32 @addr_to_parts(%struct.affine_tree_combination*, %struct.mem_address*) #1

declare dso_local i32 @gimplify_mem_ref_parts(i32*, %struct.mem_address*) #1

declare dso_local i8* @create_mem_ref_raw(i8*, %struct.mem_address*) #1

declare dso_local i64 @integer_onep(i8*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i8* @force_gimple_operand_bsi(i32*, i32, i32, i64) #1

declare dso_local i32 @fold_build2(i32, i8*, i8*, i8*) #1

declare dso_local i8* @fold_convert(i8*, i8*) #1

declare dso_local i8* @build_addr(i64, i32) #1

declare dso_local i8* @TREE_TYPE(i8*) #1

declare dso_local i64 @integer_zerop(i8*) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
