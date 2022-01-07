; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_build_ptrmem_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_build_ptrmem_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@METHOD_TYPE = common dso_local global i64 0, align 8
@FUNCTION_TYPE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @build_ptrmem_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @TREE_CODE(i32 %7)
  %9 = load i64, i64* @METHOD_TYPE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @TYPE_ARG_TYPES(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @TREE_VALUE(i32 %15)
  %17 = call i32 @TREE_TYPE(i32 %16)
  %18 = call i32 @cp_type_quals(i32 %17)
  %19 = call i32 @cp_build_qualified_type(i32 %14, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @TREE_TYPE(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @TREE_CHAIN(i32 %23)
  %25 = call i32 @build_method_type_directly(i32 %20, i32 %22, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @build_pointer_type(i32 %26)
  %28 = call i32 @build_ptrmemfunc_type(i32 %27)
  store i32 %28, i32* %3, align 4
  br label %39

29:                                               ; preds = %2
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @TREE_CODE(i32 %30)
  %32 = load i64, i64* @FUNCTION_TYPE, align 8
  %33 = icmp ne i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @gcc_assert(i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @build_offset_type(i32 %36, i32 %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %29, %11
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TYPE_ARG_TYPES(i32) #1

declare dso_local i32 @cp_build_qualified_type(i32, i32) #1

declare dso_local i32 @cp_type_quals(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @build_method_type_directly(i32, i32, i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i32 @build_ptrmemfunc_type(i32) #1

declare dso_local i32 @build_pointer_type(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @build_offset_type(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
