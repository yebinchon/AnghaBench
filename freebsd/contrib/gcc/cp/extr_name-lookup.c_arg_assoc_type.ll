; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_arg_assoc_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_arg_assoc_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_lookup = type { i32 }

@unknown_type_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arg_lookup*, i32)* @arg_assoc_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arg_assoc_type(%struct.arg_lookup* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.arg_lookup*, align 8
  %5 = alloca i32, align 4
  store %struct.arg_lookup* %0, %struct.arg_lookup** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %77

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @TYPE_PTRMEM_P(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @TYPE_PTRMEM_CLASS_TYPE(i32 %15)
  %17 = call i32 @arg_assoc_type(%struct.arg_lookup* %14, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %77

20:                                               ; preds = %13
  %21 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @TYPE_PTRMEM_POINTED_TO_TYPE(i32 %22)
  %24 = call i32 @arg_assoc_type(%struct.arg_lookup* %21, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %77

25:                                               ; preds = %9
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @TREE_CODE(i32 %26)
  switch i32 %27, label %73 [
    i32 141, label %28
    i32 128, label %29
    i32 139, label %29
    i32 135, label %29
    i32 143, label %29
    i32 129, label %29
    i32 145, label %29
    i32 134, label %30
    i32 136, label %43
    i32 146, label %43
    i32 133, label %43
    i32 147, label %43
    i32 130, label %48
    i32 142, label %48
    i32 137, label %53
    i32 140, label %53
    i32 132, label %65
    i32 144, label %65
    i32 131, label %66
    i32 138, label %67
  ]

28:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %77

29:                                               ; preds = %25, %25, %25, %25, %25, %25
  store i32 0, i32* %3, align 4
  br label %77

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @TYPE_PTRMEMFUNC_P(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @TYPE_PTRMEMFUNC_FN_TYPE(i32 %36)
  %38 = call i32 @arg_assoc_type(%struct.arg_lookup* %35, i32 %37)
  store i32 %38, i32* %3, align 4
  br label %77

39:                                               ; preds = %30
  %40 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @arg_assoc_class(%struct.arg_lookup* %40, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %77

43:                                               ; preds = %25, %25, %25, %25
  %44 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @TREE_TYPE(i32 %45)
  %47 = call i32 @arg_assoc_type(%struct.arg_lookup* %44, i32 %46)
  store i32 %47, i32* %3, align 4
  br label %77

48:                                               ; preds = %25, %25
  %49 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @decl_namespace_context(i32 %50)
  %52 = call i32 @arg_assoc_namespace(%struct.arg_lookup* %49, i32 %51)
  store i32 %52, i32* %3, align 4
  br label %77

53:                                               ; preds = %25, %25
  %54 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @TYPE_ARG_TYPES(i32 %55)
  %57 = call i32 @arg_assoc_args(%struct.arg_lookup* %54, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 1, i32* %3, align 4
  br label %77

60:                                               ; preds = %53
  %61 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @TREE_TYPE(i32 %62)
  %64 = call i32 @arg_assoc_type(%struct.arg_lookup* %61, i32 %63)
  store i32 %64, i32* %3, align 4
  br label %77

65:                                               ; preds = %25, %25
  store i32 0, i32* %3, align 4
  br label %77

66:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %77

67:                                               ; preds = %25
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @unknown_type_node, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @gcc_assert(i32 %71)
  store i32 0, i32* %3, align 4
  br label %77

73:                                               ; preds = %25
  %74 = call i32 (...) @gcc_unreachable()
  br label %75

75:                                               ; preds = %73
  br label %76

76:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %67, %66, %65, %60, %59, %48, %43, %39, %34, %29, %28, %20, %19, %8
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i64 @TYPE_PTRMEM_P(i32) #1

declare dso_local i32 @TYPE_PTRMEM_CLASS_TYPE(i32) #1

declare dso_local i32 @TYPE_PTRMEM_POINTED_TO_TYPE(i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TYPE_PTRMEMFUNC_P(i32) #1

declare dso_local i32 @TYPE_PTRMEMFUNC_FN_TYPE(i32) #1

declare dso_local i32 @arg_assoc_class(%struct.arg_lookup*, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @arg_assoc_namespace(%struct.arg_lookup*, i32) #1

declare dso_local i32 @decl_namespace_context(i32) #1

declare dso_local i32 @arg_assoc_args(%struct.arg_lookup*, i32) #1

declare dso_local i32 @TYPE_ARG_TYPES(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
