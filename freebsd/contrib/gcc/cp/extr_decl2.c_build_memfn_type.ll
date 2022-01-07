; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl2.c_build_memfn_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl2.c_build_memfn_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i64 0, align 8
@TYPE_QUAL_RESTRICT = common dso_local global i32 0, align 4
@METHOD_TYPE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @build_memfn_type(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @error_mark_node, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @error_mark_node, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %3
  %18 = load i64, i64* @error_mark_node, align 8
  store i64 %18, i64* %4, align 8
  br label %54

19:                                               ; preds = %13
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @TYPE_QUAL_RESTRICT, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  store i32 %23, i32* %9, align 4
  %24 = load i64, i64* %6, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i64 @cp_build_qualified_type(i64 %24, i32 %25)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @TREE_TYPE(i64 %28)
  %30 = load i64, i64* %5, align 8
  %31 = call i64 @TREE_CODE(i64 %30)
  %32 = load i64, i64* @METHOD_TYPE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %19
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @TYPE_ARG_TYPES(i64 %35)
  %37 = call i32 @TREE_CHAIN(i32 %36)
  br label %41

38:                                               ; preds = %19
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @TYPE_ARG_TYPES(i64 %39)
  br label %41

41:                                               ; preds = %38, %34
  %42 = phi i32 [ %37, %34 ], [ %40, %38 ]
  %43 = call i64 @build_method_type_directly(i64 %27, i32 %29, i32 %42)
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i64 @TYPE_RAISES_EXCEPTIONS(i64 %44)
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i64 @build_exception_variant(i64 %49, i64 %50)
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %48, %41
  %53 = load i64, i64* %5, align 8
  store i64 %53, i64* %4, align 8
  br label %54

54:                                               ; preds = %52, %17
  %55 = load i64, i64* %4, align 8
  ret i64 %55
}

declare dso_local i64 @cp_build_qualified_type(i64, i32) #1

declare dso_local i64 @build_method_type_directly(i64, i32, i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i32 @TYPE_ARG_TYPES(i64) #1

declare dso_local i64 @TYPE_RAISES_EXCEPTIONS(i64) #1

declare dso_local i64 @build_exception_variant(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
