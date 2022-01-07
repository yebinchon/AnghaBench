; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-stdarg.c_va_list_counter_struct_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-stdarg.c_va_list_counter_struct_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stdarg_info = type { i32 }

@COMPONENT_REF = common dso_local global i64 0, align 8
@FIELD_DECL = common dso_local global i64 0, align 8
@SSA_NAME = common dso_local global i64 0, align 8
@VAR_DECL = common dso_local global i64 0, align 8
@va_list_gpr_counter_field = common dso_local global i64 0, align 8
@va_list_fpr_counter_field = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stdarg_info*, i64, i64, i32)* @va_list_counter_struct_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @va_list_counter_struct_op(%struct.stdarg_info* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.stdarg_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.stdarg_info* %0, %struct.stdarg_info** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i64, i64* %7, align 8
  %12 = call i64 @TREE_CODE(i64 %11)
  %13 = load i64, i64* @COMPONENT_REF, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %4
  %16 = load i64, i64* %7, align 8
  %17 = call i64 @TREE_OPERAND(i64 %16, i32 1)
  %18 = call i64 @TREE_CODE(i64 %17)
  %19 = load i64, i64* @FIELD_DECL, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %4
  store i32 0, i32* %5, align 4
  br label %77

22:                                               ; preds = %15
  %23 = load i64, i64* %8, align 8
  %24 = call i64 @TREE_CODE(i64 %23)
  %25 = load i64, i64* @SSA_NAME, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %36, label %27

27:                                               ; preds = %22
  %28 = load %struct.stdarg_info*, %struct.stdarg_info** %6, align 8
  %29 = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %8, align 8
  %32 = call i64 @SSA_NAME_VAR(i64 %31)
  %33 = call i32 @DECL_UID(i64 %32)
  %34 = call i64 @bitmap_bit_p(i32 %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27, %22
  store i32 0, i32* %5, align 4
  br label %77

37:                                               ; preds = %27
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @get_base_address(i64 %38)
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i64 @TREE_CODE(i64 %40)
  %42 = load i64, i64* @VAR_DECL, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %37
  %45 = load %struct.stdarg_info*, %struct.stdarg_info** %6, align 8
  %46 = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @DECL_UID(i64 %48)
  %50 = call i64 @bitmap_bit_p(i32 %47, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %44, %37
  store i32 0, i32* %5, align 4
  br label %77

53:                                               ; preds = %44
  %54 = load i64, i64* %7, align 8
  %55 = call i64 @TREE_OPERAND(i64 %54, i32 1)
  %56 = load i64, i64* @va_list_gpr_counter_field, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.stdarg_info*, %struct.stdarg_info** %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @va_list_counter_op(%struct.stdarg_info* %59, i64 %60, i64 %61, i32 1, i32 %62)
  br label %76

64:                                               ; preds = %53
  %65 = load i64, i64* %7, align 8
  %66 = call i64 @TREE_OPERAND(i64 %65, i32 1)
  %67 = load i64, i64* @va_list_fpr_counter_field, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load %struct.stdarg_info*, %struct.stdarg_info** %6, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @va_list_counter_op(%struct.stdarg_info* %70, i64 %71, i64 %72, i32 0, i32 %73)
  br label %75

75:                                               ; preds = %69, %64
  br label %76

76:                                               ; preds = %75, %58
  store i32 1, i32* %5, align 4
  br label %77

77:                                               ; preds = %76, %52, %36, %21
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @bitmap_bit_p(i32, i32) #1

declare dso_local i32 @DECL_UID(i64) #1

declare dso_local i64 @SSA_NAME_VAR(i64) #1

declare dso_local i64 @get_base_address(i64) #1

declare dso_local i32 @va_list_counter_op(%struct.stdarg_info*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
