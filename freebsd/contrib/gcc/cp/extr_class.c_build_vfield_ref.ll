; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_build_vfield_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_build_vfield_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i32 0, align 4
@COMPONENT_REF = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @build_vfield_ref(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @error_mark_node, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @error_mark_node, align 4
  store i32 %12, i32* %3, align 4
  br label %49

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @TREE_TYPE(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @same_type_ignoring_top_level_qualifiers_p(i32 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @convert_to_base(i32 %20, i32 %21, i32 0, i32 1)
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %19, %13
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @TYPE_VFIELD(i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @DECL_CONTEXT(i32 %26)
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %34, %23
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @same_type_ignoring_top_level_qualifiers_p(i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @CLASSTYPE_PRIMARY_BINFO(i32 %36)
  %38 = call i32 @build_simple_base_path(i32 %35, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @TREE_TYPE(i32 %39)
  store i32 %40, i32* %5, align 4
  br label %28

41:                                               ; preds = %28
  %42 = load i32, i32* @COMPONENT_REF, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @TREE_TYPE(i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @NULL_TREE, align 4
  %48 = call i32 @build3(i32 %42, i32 %44, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %41, %11
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @same_type_ignoring_top_level_qualifiers_p(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @convert_to_base(i32, i32, i32, i32) #1

declare dso_local i32 @TYPE_VFIELD(i32) #1

declare dso_local i32 @DECL_CONTEXT(i32) #1

declare dso_local i32 @build_simple_base_path(i32, i32) #1

declare dso_local i32 @CLASSTYPE_PRIMARY_BINFO(i32) #1

declare dso_local i32 @build3(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
