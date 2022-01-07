; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_init_byref_decl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_init_byref_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLOCK_HAS_COPY_DISPOSE = common dso_local global i32 0, align 4
@ptr_type_node = common dso_local global i64 0, align 8
@BLOCK_FIELD_IS_WEAK = common dso_local global i32 0, align 4
@integer_one_node = common dso_local global i32 0, align 4
@integer_zero_node = common dso_local global i32 0, align 4
@ADDR_EXPR = common dso_local global i32 0, align 4
@BLOCK_ALIGN_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"invalid alignment for __block variable\00", align 1
@BLOCK_BYREF_CURRENT_MAX = common dso_local global i32 0, align 4
@block_byref_id_object_copy = common dso_local global i64* null, align 8
@void_type_node = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@void_list_node = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"__Block_byref_id_object_copy%d\00", align 1
@block_byref_id_object_dispose = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"__Block_byref_id_object_dispose%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32)* @init_byref_decl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @init_byref_decl(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca [64 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @TREE_TYPE(i64 %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @TYPE_SIZE_UNIT(i64 %19)
  %21 = call i32 @TREE_INT_CST_LOW(i32 %20)
  store i32 %21, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @COPYABLE_BYREF_LOCAL_NONPOD(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @BLOCK_HAS_COPY_DISPOSE, align 4
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %25, %3
  %28 = load i64, i64* %8, align 8
  %29 = call i64 @TYPE_FIELDS(i64 %28)
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* @ptr_type_node, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @BLOCK_FIELD_IS_WEAK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @integer_one_node, align 4
  br label %40

38:                                               ; preds = %27
  %39 = load i32, i32* @integer_zero_node, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = call i64 @fold_convert(i64 %31, i32 %41)
  %43 = call i64 @tree_cons(i64 %30, i64 %42, i64 0)
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %11, align 8
  %45 = call i64 @TREE_CHAIN(i64 %44)
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i32, i32* @ADDR_EXPR, align 4
  %48 = load i64, i64* %4, align 8
  %49 = call i64 @build_unary_op(i32 %47, i64 %48, i32 0)
  %50 = load i64, i64* %7, align 8
  %51 = call i64 @tree_cons(i64 %46, i64 %49, i64 %50)
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %11, align 8
  %53 = call i64 @TREE_CHAIN(i64 %52)
  store i64 %53, i64* %11, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* %11, align 8
  %56 = call i64 @TREE_TYPE(i64 %55)
  %57 = load i32, i32* %10, align 4
  %58 = call i64 @build_int_cst(i64 %56, i32 %57)
  %59 = load i64, i64* %7, align 8
  %60 = call i64 @tree_cons(i64 %54, i64 %58, i64 %59)
  store i64 %60, i64* %7, align 8
  %61 = load i64, i64* %11, align 8
  %62 = call i64 @TREE_CHAIN(i64 %61)
  store i64 %62, i64* %11, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* %11, align 8
  %65 = call i64 @TREE_TYPE(i64 %64)
  %66 = load i32, i32* %9, align 4
  %67 = call i64 @build_int_cst(i64 %65, i32 %66)
  %68 = load i64, i64* %7, align 8
  %69 = call i64 @tree_cons(i64 %63, i64 %67, i64 %68)
  store i64 %69, i64* %7, align 8
  %70 = load i64, i64* %11, align 8
  %71 = call i64 @TREE_CHAIN(i64 %70)
  store i64 %71, i64* %11, align 8
  %72 = load i64, i64* %4, align 8
  %73 = call i64 @COPYABLE_BYREF_LOCAL_NONPOD(i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %182

75:                                               ; preds = %40
  %76 = load i64, i64* %4, align 8
  %77 = call i32 @DECL_ALIGN(i64 %76)
  %78 = load i64, i64* @ptr_type_node, align 8
  %79 = call i32 @TYPE_ALIGN(i64 %78)
  %80 = add nsw i32 %77, %79
  %81 = sub nsw i32 %80, 1
  %82 = load i64, i64* @ptr_type_node, align 8
  %83 = call i32 @TYPE_ALIGN(i64 %82)
  %84 = sdiv i32 %81, %83
  %85 = call i32 @exact_log2(i32 %84)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %92, label %88

88:                                               ; preds = %75
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* @BLOCK_ALIGN_MAX, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88, %75
  %93 = call i32 @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  br label %100

94:                                               ; preds = %88
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* @BLOCK_BYREF_CURRENT_MAX, align 4
  %97 = mul nsw i32 %95, %96
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %97, %98
  store i32 %99, i32* %14, align 4
  br label %100

100:                                              ; preds = %94, %92
  %101 = load i64*, i64** @block_byref_id_object_copy, align 8
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %131, label %107

107:                                              ; preds = %100
  %108 = load i32, i32* @void_type_node, align 4
  %109 = load i64, i64* @NULL_TREE, align 8
  %110 = load i64, i64* @ptr_type_node, align 8
  %111 = load i64, i64* @NULL_TREE, align 8
  %112 = load i64, i64* @ptr_type_node, align 8
  %113 = load i64, i64* @void_list_node, align 8
  %114 = call i64 @tree_cons(i64 %111, i64 %112, i64 %113)
  %115 = call i64 @tree_cons(i64 %109, i64 %110, i64 %114)
  %116 = call i64 @build_function_type(i32 %108, i64 %115)
  store i64 %116, i64* %15, align 8
  %117 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %118 = load i32, i32* %14, align 4
  %119 = call i32 @sprintf(i8* %117, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  %120 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %121 = call i32 @get_identifier(i8* %120)
  %122 = load i64, i64* %15, align 8
  %123 = call i64 @build_helper_func_decl(i32 %121, i64 %122)
  %124 = load i64*, i64** @block_byref_id_object_copy, align 8
  %125 = load i32, i32* %14, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  store i64 %123, i64* %127, align 8
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %14, align 4
  %130 = call i32 @synth_block_byref_id_object_copy_func(i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %107, %100
  %132 = load i64, i64* %11, align 8
  %133 = load i64*, i64** @block_byref_id_object_copy, align 8
  %134 = load i32, i32* %14, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = call i64 @build_fold_addr_expr(i64 %137)
  %139 = load i64, i64* %7, align 8
  %140 = call i64 @tree_cons(i64 %132, i64 %138, i64 %139)
  store i64 %140, i64* %7, align 8
  %141 = load i64, i64* %11, align 8
  %142 = call i64 @TREE_CHAIN(i64 %141)
  store i64 %142, i64* %11, align 8
  %143 = load i64*, i64** @block_byref_id_object_dispose, align 8
  %144 = load i32, i32* %14, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %143, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %170, label %149

149:                                              ; preds = %131
  %150 = load i32, i32* @void_type_node, align 4
  %151 = load i64, i64* @NULL_TREE, align 8
  %152 = load i64, i64* @ptr_type_node, align 8
  %153 = load i64, i64* @void_list_node, align 8
  %154 = call i64 @tree_cons(i64 %151, i64 %152, i64 %153)
  %155 = call i64 @build_function_type(i32 %150, i64 %154)
  store i64 %155, i64* %16, align 8
  %156 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %157 = load i32, i32* %14, align 4
  %158 = call i32 @sprintf(i8* %156, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %157)
  %159 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %160 = call i32 @get_identifier(i8* %159)
  %161 = load i64, i64* %16, align 8
  %162 = call i64 @build_helper_func_decl(i32 %160, i64 %161)
  %163 = load i64*, i64** @block_byref_id_object_dispose, align 8
  %164 = load i32, i32* %14, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %163, i64 %165
  store i64 %162, i64* %166, align 8
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* %14, align 4
  %169 = call i32 @synth_block_byref_id_object_dispose_func(i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %149, %131
  %171 = load i64, i64* %11, align 8
  %172 = load i64*, i64** @block_byref_id_object_dispose, align 8
  %173 = load i32, i32* %14, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i64, i64* %172, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = call i64 @build_fold_addr_expr(i64 %176)
  %178 = load i64, i64* %7, align 8
  %179 = call i64 @tree_cons(i64 %171, i64 %177, i64 %178)
  store i64 %179, i64* %7, align 8
  %180 = load i64, i64* %11, align 8
  %181 = call i64 @TREE_CHAIN(i64 %180)
  store i64 %181, i64* %11, align 8
  br label %182

182:                                              ; preds = %170, %40
  %183 = load i64, i64* %5, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %194

185:                                              ; preds = %182
  %186 = load i64, i64* %11, align 8
  %187 = call i64 @TREE_TYPE(i64 %186)
  %188 = load i64, i64* %5, align 8
  %189 = call i64 @do_digest_init(i64 %187, i64 %188)
  store i64 %189, i64* %5, align 8
  %190 = load i64, i64* %11, align 8
  %191 = load i64, i64* %5, align 8
  %192 = load i64, i64* %7, align 8
  %193 = call i64 @tree_cons(i64 %190, i64 %191, i64 %192)
  store i64 %193, i64* %7, align 8
  br label %194

194:                                              ; preds = %185, %182
  %195 = load i64, i64* %8, align 8
  %196 = load i64, i64* %7, align 8
  %197 = call i32 @nreverse(i64 %196)
  %198 = call i64 @build_constructor_from_list(i64 %195, i32 %197)
  store i64 %198, i64* %5, align 8
  %199 = load i64, i64* %5, align 8
  ret i64 %199
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @TREE_INT_CST_LOW(i32) #1

declare dso_local i32 @TYPE_SIZE_UNIT(i64) #1

declare dso_local i64 @COPYABLE_BYREF_LOCAL_NONPOD(i64) #1

declare dso_local i64 @TYPE_FIELDS(i64) #1

declare dso_local i64 @tree_cons(i64, i64, i64) #1

declare dso_local i64 @fold_convert(i64, i32) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @build_unary_op(i32, i64, i32) #1

declare dso_local i64 @build_int_cst(i64, i32) #1

declare dso_local i32 @exact_log2(i32) #1

declare dso_local i32 @DECL_ALIGN(i64) #1

declare dso_local i32 @TYPE_ALIGN(i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @build_function_type(i32, i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @build_helper_func_decl(i32, i64) #1

declare dso_local i32 @get_identifier(i8*) #1

declare dso_local i32 @synth_block_byref_id_object_copy_func(i32, i32) #1

declare dso_local i64 @build_fold_addr_expr(i64) #1

declare dso_local i32 @synth_block_byref_id_object_dispose_func(i32, i32) #1

declare dso_local i64 @do_digest_init(i64, i64) #1

declare dso_local i64 @build_constructor_from_list(i64, i32) #1

declare dso_local i32 @nreverse(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
