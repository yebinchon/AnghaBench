; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_method.c_thunk_adjust.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_method.c_thunk_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLUS_EXPR = common dso_local global i32 0, align 4
@NOP_EXPR = common dso_local global i32 0, align 4
@vtable_entry_type = common dso_local global i64 0, align 8
@INDIRECT_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32, i32, i64)* @thunk_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @thunk_adjust(i64 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %4
  %13 = load i32, i32* @PLUS_EXPR, align 4
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @TREE_TYPE(i64 %14)
  %16 = load i64, i64* %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @ssize_int(i32 %17)
  %19 = call i64 @fold_build2(i32 %13, i64 %15, i64 %16, i64 %18)
  store i64 %19, i64* %5, align 8
  br label %20

20:                                               ; preds = %12, %4
  %21 = load i64, i64* %8, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %56

23:                                               ; preds = %20
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @save_expr(i64 %24)
  store i64 %25, i64* %5, align 8
  %26 = load i32, i32* @NOP_EXPR, align 4
  %27 = load i64, i64* @vtable_entry_type, align 8
  %28 = call i64 @build_pointer_type(i64 %27)
  %29 = call i64 @build_pointer_type(i64 %28)
  %30 = load i64, i64* %5, align 8
  %31 = call i64 @build1(i32 %26, i64 %29, i64 %30)
  store i64 %31, i64* %9, align 8
  %32 = load i32, i32* @INDIRECT_REF, align 4
  %33 = load i64, i64* %9, align 8
  %34 = call i64 @TREE_TYPE(i64 %33)
  %35 = call i64 @TREE_TYPE(i64 %34)
  %36 = load i64, i64* %9, align 8
  %37 = call i64 @build1(i32 %32, i64 %35, i64 %36)
  store i64 %37, i64* %9, align 8
  %38 = load i32, i32* @PLUS_EXPR, align 4
  %39 = load i64, i64* %9, align 8
  %40 = call i64 @TREE_TYPE(i64 %39)
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i64 @build2(i32 %38, i64 %40, i64 %41, i64 %42)
  store i64 %43, i64* %9, align 8
  %44 = load i32, i32* @INDIRECT_REF, align 4
  %45 = load i64, i64* %9, align 8
  %46 = call i64 @TREE_TYPE(i64 %45)
  %47 = call i64 @TREE_TYPE(i64 %46)
  %48 = load i64, i64* %9, align 8
  %49 = call i64 @build1(i32 %44, i64 %47, i64 %48)
  store i64 %49, i64* %9, align 8
  %50 = load i32, i32* @PLUS_EXPR, align 4
  %51 = load i64, i64* %5, align 8
  %52 = call i64 @TREE_TYPE(i64 %51)
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* %9, align 8
  %55 = call i64 @fold_build2(i32 %50, i64 %52, i64 %53, i64 %54)
  store i64 %55, i64* %5, align 8
  br label %56

56:                                               ; preds = %23, %20
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* @PLUS_EXPR, align 4
  %61 = load i64, i64* %5, align 8
  %62 = call i64 @TREE_TYPE(i64 %61)
  %63 = load i64, i64* %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i64 @ssize_int(i32 %64)
  %66 = call i64 @fold_build2(i32 %60, i64 %62, i64 %63, i64 %65)
  store i64 %66, i64* %5, align 8
  br label %67

67:                                               ; preds = %59, %56
  %68 = load i64, i64* %5, align 8
  ret i64 %68
}

declare dso_local i64 @fold_build2(i32, i64, i64, i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @ssize_int(i32) #1

declare dso_local i64 @save_expr(i64) #1

declare dso_local i64 @build1(i32, i64, i64) #1

declare dso_local i64 @build_pointer_type(i64) #1

declare dso_local i64 @build2(i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
