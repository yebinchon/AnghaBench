; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl2.c_build_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl2.c_build_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARRAY_TYPE = common dso_local global i64 0, align 8
@ADDR_EXPR = common dso_local global i32 0, align 4
@sfk_complete_destructor = common dso_local global i32 0, align 4
@LOOKUP_NORMAL = common dso_local global i32 0, align 4
@LOOKUP_NONVIRTUAL = common dso_local global i32 0, align 4
@LOOKUP_DESTRUCTOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @build_cleanup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @TREE_TYPE(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @TYPE_HAS_TRIVIAL_DESTRUCTOR(i32 %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @gcc_assert(i32 %11)
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @mark_used(i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @TREE_CODE(i32 %15)
  %17 = load i64, i64* @ARRAY_TYPE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %2, align 4
  store i32 %20, i32* %3, align 4
  br label %29

21:                                               ; preds = %1
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @cxx_mark_addressable(i32 %22)
  %24 = load i32, i32* @ADDR_EXPR, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @build_pointer_type(i32 %25)
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @build1(i32 %24, i32 %26, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %21, %19
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @TREE_TYPE(i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @sfk_complete_destructor, align 4
  %34 = load i32, i32* @LOOKUP_NORMAL, align 4
  %35 = load i32, i32* @LOOKUP_NONVIRTUAL, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @LOOKUP_DESTRUCTOR, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @build_delete(i32 %31, i32 %32, i32 %33, i32 %38, i32 0)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @TYPE_HAS_TRIVIAL_DESTRUCTOR(i32) #1

declare dso_local i32 @mark_used(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @cxx_mark_addressable(i32) #1

declare dso_local i32 @build1(i32, i32, i32) #1

declare dso_local i32 @build_pointer_type(i32) #1

declare dso_local i32 @build_delete(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
