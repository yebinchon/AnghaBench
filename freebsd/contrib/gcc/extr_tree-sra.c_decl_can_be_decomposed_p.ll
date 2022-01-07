; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-sra.c_decl_can_be_decomposed_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-sra.c_decl_can_be_decomposed_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Cannot scalarize variable \00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c" because it must live in memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c" because it is declared volatile\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c" because its type cannot be decomposed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @decl_can_be_decomposed_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decl_can_be_decomposed_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @TREE_TYPE(i32 %4)
  %6 = call i64 @is_sra_scalar_type(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %77

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @is_gimple_non_addressable(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %31, label %13

13:                                               ; preds = %9
  %14 = load i64, i64* @dump_file, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = load i32, i32* @dump_flags, align 4
  %18 = load i32, i32* @TDF_DETAILS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load i64, i64* @dump_file, align 8
  %23 = call i32 @fprintf(i64 %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %24 = load i64, i64* @dump_file, align 8
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @dump_flags, align 4
  %27 = call i32 @print_generic_expr(i64 %24, i32 %25, i32 %26)
  %28 = load i64, i64* @dump_file, align 8
  %29 = call i32 @fprintf(i64 %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %21, %16, %13
  store i32 0, i32* %2, align 4
  br label %77

31:                                               ; preds = %9
  %32 = load i32, i32* %3, align 4
  %33 = call i64 @TREE_THIS_VOLATILE(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %31
  %36 = load i64, i64* @dump_file, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  %39 = load i32, i32* @dump_flags, align 4
  %40 = load i32, i32* @TDF_DETAILS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load i64, i64* @dump_file, align 8
  %45 = call i32 @fprintf(i64 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %46 = load i64, i64* @dump_file, align 8
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @dump_flags, align 4
  %49 = call i32 @print_generic_expr(i64 %46, i32 %47, i32 %48)
  %50 = load i64, i64* @dump_file, align 8
  %51 = call i32 @fprintf(i64 %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %43, %38, %35
  store i32 0, i32* %2, align 4
  br label %77

53:                                               ; preds = %31
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @TREE_TYPE(i32 %54)
  %56 = call i32 @sra_type_can_be_decomposed_p(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %76, label %58

58:                                               ; preds = %53
  %59 = load i64, i64* @dump_file, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %58
  %62 = load i32, i32* @dump_flags, align 4
  %63 = load i32, i32* @TDF_DETAILS, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %61
  %67 = load i64, i64* @dump_file, align 8
  %68 = call i32 @fprintf(i64 %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %69 = load i64, i64* @dump_file, align 8
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @dump_flags, align 4
  %72 = call i32 @print_generic_expr(i64 %69, i32 %70, i32 %71)
  %73 = load i64, i64* @dump_file, align 8
  %74 = call i32 @fprintf(i64 %73, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %75

75:                                               ; preds = %66, %61, %58
  store i32 0, i32* %2, align 4
  br label %77

76:                                               ; preds = %53
  store i32 1, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %75, %52, %30, %8
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i64 @is_sra_scalar_type(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @is_gimple_non_addressable(i32) #1

declare dso_local i32 @fprintf(i64, i8*) #1

declare dso_local i32 @print_generic_expr(i64, i32, i32) #1

declare dso_local i64 @TREE_THIS_VOLATILE(i32) #1

declare dso_local i32 @sra_type_can_be_decomposed_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
