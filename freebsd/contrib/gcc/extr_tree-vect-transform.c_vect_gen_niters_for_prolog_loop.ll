; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vect-transform.c_vect_gen_niters_for_prolog_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vect-transform.c_vect_gen_niters_for_prolog_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (i32, i32)* }
%struct.data_reference = type { i32 }
%struct.loop = type { i32 }

@BITS_PER_UNIT = common dso_local global i32 0, align 4
@REPORT_DETAILS = common dso_local global i32 0, align 4
@vect_dump = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"known alignment = %d.\00", align 1
@NULL_TREE = common dso_local global i64 0, align 8
@lang_hooks = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@BIT_AND_EXPR = common dso_local global i32 0, align 4
@RSHIFT_EXPR = common dso_local global i32 0, align 4
@MINUS_EXPR = common dso_local global i32 0, align 4
@INTEGER_CST = common dso_local global i64 0, align 8
@MIN_EXPR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"niters for prolog loop: \00", align 1
@TDF_SLIM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"prolog_loop_niters\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64)* @vect_gen_niters_for_prolog_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vect_gen_niters_for_prolog_loop(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.data_reference*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.loop*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call %struct.data_reference* @LOOP_VINFO_UNALIGNED_DR(i32 %34)
  store %struct.data_reference* %35, %struct.data_reference** %5, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @LOOP_VINFO_VECT_FACTOR(i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call %struct.loop* @LOOP_VINFO_LOOP(i32 %38)
  store %struct.loop* %39, %struct.loop** %7, align 8
  %40 = load %struct.data_reference*, %struct.data_reference** %5, align 8
  %41 = call i64 @DR_STMT(%struct.data_reference* %40)
  store i64 %41, i64* %14, align 8
  %42 = load i64, i64* %14, align 8
  %43 = call i32 @vinfo_for_stmt(i64 %42)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = call i64 @STMT_VINFO_VECTYPE(i32 %44)
  store i64 %45, i64* %16, align 8
  %46 = load i64, i64* %16, align 8
  %47 = call i32 @TYPE_ALIGN(i64 %46)
  %48 = load i32, i32* @BITS_PER_UNIT, align 4
  %49 = sdiv i32 %47, %48
  store i32 %49, i32* %17, align 4
  %50 = load i64, i64* %4, align 8
  %51 = call i64 @TREE_TYPE(i64 %50)
  store i64 %51, i64* %18, align 8
  %52 = load %struct.loop*, %struct.loop** %7, align 8
  %53 = call i32 @loop_preheader_edge(%struct.loop* %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @LOOP_PEELING_FOR_ALIGNMENT(i32 %54)
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %82

57:                                               ; preds = %2
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @LOOP_PEELING_FOR_ALIGNMENT(i32 %58)
  store i32 %59, i32* %19, align 4
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* %6, align 4
  %62 = sdiv i32 %60, %61
  store i32 %62, i32* %20, align 4
  %63 = load i32, i32* %19, align 4
  %64 = load i32, i32* %20, align 4
  %65 = sdiv i32 %63, %64
  store i32 %65, i32* %21, align 4
  %66 = load i32, i32* @REPORT_DETAILS, align 4
  %67 = call i64 @vect_print_dump_info(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %57
  %70 = load i32, i32* @vect_dump, align 4
  %71 = load i32, i32* %19, align 4
  %72 = call i32 (i32, i8*, ...) @fprintf(i32 %70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %69, %57
  %74 = load i64, i64* %18, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %21, align 4
  %77 = sub nsw i32 %75, %76
  %78 = load i32, i32* %6, align 4
  %79 = sub nsw i32 %78, 1
  %80 = and i32 %77, %79
  %81 = call i64 @build_int_cst(i64 %74, i32 %80)
  store i64 %81, i64* %10, align 8
  br label %143

82:                                               ; preds = %2
  %83 = load i64, i64* @NULL_TREE, align 8
  store i64 %83, i64* %22, align 8
  %84 = load i64, i64* %14, align 8
  %85 = load i64, i64* @NULL_TREE, align 8
  %86 = call i64 @vect_create_addr_base_for_vector_ref(i64 %84, i64* %22, i64 %85)
  store i64 %86, i64* %23, align 8
  %87 = load i64, i64* %23, align 8
  %88 = call i64 @TREE_TYPE(i64 %87)
  store i64 %88, i64* %24, align 8
  %89 = load i64, i64* %24, align 8
  %90 = call i64 @TYPE_SIZE(i64 %89)
  store i64 %90, i64* %25, align 8
  %91 = load i64 (i32, i32)*, i64 (i32, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %92 = load i64, i64* %25, align 8
  %93 = call i32 @tree_low_cst(i64 %92, i32 1)
  %94 = call i64 %91(i32 %93, i32 1)
  store i64 %94, i64* %26, align 8
  %95 = load i64, i64* %26, align 8
  %96 = load i32, i32* %17, align 4
  %97 = sub nsw i32 %96, 1
  %98 = call i64 @build_int_cst(i64 %95, i32 %97)
  store i64 %98, i64* %27, align 8
  %99 = load i64, i64* %26, align 8
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* %6, align 4
  %102 = sdiv i32 %100, %101
  %103 = call i32 @exact_log2(i32 %102)
  %104 = call i64 @build_int_cst(i64 %99, i32 %103)
  store i64 %104, i64* %28, align 8
  %105 = load i64, i64* %26, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sub nsw i32 %106, 1
  %108 = call i64 @build_int_cst(i64 %105, i32 %107)
  store i64 %108, i64* %29, align 8
  %109 = load i64, i64* %26, align 8
  %110 = load i32, i32* %6, align 4
  %111 = call i64 @build_int_cst(i64 %109, i32 %110)
  store i64 %111, i64* %30, align 8
  %112 = load i32, i32* %12, align 4
  %113 = load i64, i64* %22, align 8
  %114 = call i32 @bsi_insert_on_edge_immediate(i32 %112, i64 %113)
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i32
  %119 = call i32 @gcc_assert(i32 %118)
  %120 = load i32, i32* @BIT_AND_EXPR, align 4
  %121 = load i64, i64* %26, align 8
  %122 = load i64, i64* %23, align 8
  %123 = load i64, i64* %27, align 8
  %124 = call i64 @build2(i32 %120, i64 %121, i64 %122, i64 %123)
  store i64 %124, i64* %31, align 8
  %125 = load i32, i32* @RSHIFT_EXPR, align 4
  %126 = load i64, i64* %26, align 8
  %127 = load i64, i64* %31, align 8
  %128 = load i64, i64* %28, align 8
  %129 = call i64 @build2(i32 %125, i64 %126, i64 %127, i64 %128)
  store i64 %129, i64* %32, align 8
  %130 = load i32, i32* @MINUS_EXPR, align 4
  %131 = load i64, i64* %26, align 8
  %132 = load i64, i64* %30, align 8
  %133 = load i64, i64* %32, align 8
  %134 = call i64 @build2(i32 %130, i64 %131, i64 %132, i64 %133)
  store i64 %134, i64* %10, align 8
  %135 = load i32, i32* @BIT_AND_EXPR, align 4
  %136 = load i64, i64* %26, align 8
  %137 = load i64, i64* %10, align 8
  %138 = load i64, i64* %29, align 8
  %139 = call i64 @build2(i32 %135, i64 %136, i64 %137, i64 %138)
  store i64 %139, i64* %10, align 8
  %140 = load i64, i64* %18, align 8
  %141 = load i64, i64* %10, align 8
  %142 = call i64 @fold_convert(i64 %140, i64 %141)
  store i64 %142, i64* %10, align 8
  br label %143

143:                                              ; preds = %82, %73
  %144 = load i64, i64* %4, align 8
  %145 = call i64 @TREE_CODE(i64 %144)
  %146 = load i64, i64* @INTEGER_CST, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %143
  %149 = load i32, i32* @MIN_EXPR, align 4
  %150 = load i64, i64* %18, align 8
  %151 = load i64, i64* %10, align 8
  %152 = load i64, i64* %4, align 8
  %153 = call i64 @build2(i32 %149, i64 %150, i64 %151, i64 %152)
  store i64 %153, i64* %10, align 8
  br label %154

154:                                              ; preds = %148, %143
  %155 = load i32, i32* @REPORT_DETAILS, align 4
  %156 = call i64 @vect_print_dump_info(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %154
  %159 = load i32, i32* @vect_dump, align 4
  %160 = call i32 (i32, i8*, ...) @fprintf(i32 %159, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %161 = load i32, i32* @vect_dump, align 4
  %162 = load i64, i64* %10, align 8
  %163 = load i32, i32* @TDF_SLIM, align 4
  %164 = call i32 @print_generic_expr(i32 %161, i64 %162, i32 %163)
  br label %165

165:                                              ; preds = %158, %154
  %166 = load i64, i64* %18, align 8
  %167 = call i64 @create_tmp_var(i64 %166, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i64 %167, i64* %8, align 8
  %168 = load i64, i64* %8, align 8
  %169 = call i32 @add_referenced_var(i64 %168)
  %170 = load i64, i64* %10, align 8
  %171 = load i64, i64* %8, align 8
  %172 = call i64 @force_gimple_operand(i64 %170, i64* %9, i32 0, i64 %171)
  store i64 %172, i64* %11, align 8
  %173 = load i64, i64* %9, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %165
  %176 = load i32, i32* %12, align 4
  %177 = load i64, i64* %9, align 8
  %178 = call i32 @bsi_insert_on_edge_immediate(i32 %176, i64 %177)
  store i32 %178, i32* %33, align 4
  %179 = load i32, i32* %33, align 4
  %180 = icmp ne i32 %179, 0
  %181 = xor i1 %180, true
  %182 = zext i1 %181 to i32
  %183 = call i32 @gcc_assert(i32 %182)
  br label %184

184:                                              ; preds = %175, %165
  %185 = load i64, i64* %11, align 8
  ret i64 %185
}

declare dso_local %struct.data_reference* @LOOP_VINFO_UNALIGNED_DR(i32) #1

declare dso_local i32 @LOOP_VINFO_VECT_FACTOR(i32) #1

declare dso_local %struct.loop* @LOOP_VINFO_LOOP(i32) #1

declare dso_local i64 @DR_STMT(%struct.data_reference*) #1

declare dso_local i32 @vinfo_for_stmt(i64) #1

declare dso_local i64 @STMT_VINFO_VECTYPE(i32) #1

declare dso_local i32 @TYPE_ALIGN(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @loop_preheader_edge(%struct.loop*) #1

declare dso_local i32 @LOOP_PEELING_FOR_ALIGNMENT(i32) #1

declare dso_local i64 @vect_print_dump_info(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @build_int_cst(i64, i32) #1

declare dso_local i64 @vect_create_addr_base_for_vector_ref(i64, i64*, i64) #1

declare dso_local i64 @TYPE_SIZE(i64) #1

declare dso_local i32 @tree_low_cst(i64, i32) #1

declare dso_local i32 @exact_log2(i32) #1

declare dso_local i32 @bsi_insert_on_edge_immediate(i32, i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @build2(i32, i64, i64, i64) #1

declare dso_local i64 @fold_convert(i64, i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @print_generic_expr(i32, i64, i32) #1

declare dso_local i64 @create_tmp_var(i64, i8*) #1

declare dso_local i32 @add_referenced_var(i64) #1

declare dso_local i64 @force_gimple_operand(i64, i64*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
