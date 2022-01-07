; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_get_class_binding.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_get_class_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@TYPE_DECL = common dso_local global i64 0, align 8
@TREE_LIST = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64, %struct.TYPE_4__*)* @get_class_binding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_class_binding(i64 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @lookup_member(i64 %13, i64 %14, i32 2, i32 1)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %3, align 8
  %18 = call i64 @lookup_member(i64 %16, i64 %17, i32 2, i32 0)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %2
  %22 = load i64, i64* %7, align 8
  %23 = call i64 @TREE_CODE(i64 %22)
  %24 = load i64, i64* @TYPE_DECL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %46, label %26

26:                                               ; preds = %21
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @DECL_CLASS_TEMPLATE_P(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @TREE_CODE(i64 %31)
  %33 = load i64, i64* @TREE_LIST, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load i64, i64* %7, align 8
  %37 = call i64 @TREE_TYPE(i64 %36)
  %38 = load i64, i64* @error_mark_node, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load i64, i64* %7, align 8
  %42 = call i64 @TREE_VALUE(i64 %41)
  %43 = call i64 @TREE_CODE(i64 %42)
  %44 = load i64, i64* @TYPE_DECL, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40, %26, %21
  br label %71

47:                                               ; preds = %40, %35, %30, %2
  %48 = load i64, i64* %7, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %47
  %51 = load i64, i64* %7, align 8
  %52 = call i64 @TREE_CODE(i64 %51)
  %53 = load i64, i64* @TREE_LIST, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i64, i64* %7, align 8
  %57 = call i64 @TREE_TYPE(i64 %56)
  %58 = load i64, i64* @error_mark_node, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %69

61:                                               ; preds = %55, %50
  %62 = load i64, i64* %7, align 8
  %63 = call i64 @BASELINK_P(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i64, i64* %7, align 8
  %67 = call i64 @BASELINK_FUNCTIONS(i64 %66)
  store i64 %67, i64* %7, align 8
  br label %68

68:                                               ; preds = %65, %61
  br label %69

69:                                               ; preds = %68, %60
  br label %70

70:                                               ; preds = %69, %47
  br label %71

71:                                               ; preds = %70, %46
  %72 = load i64, i64* %6, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i64, i64* %7, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %74, %71
  %78 = load i64, i64* %3, align 8
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* %6, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %82 = call i32* @new_class_binding(i64 %78, i64 %79, i64 %80, %struct.TYPE_4__* %81)
  store i32* %82, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* %5, align 8
  %86 = call i32 @set_inherited_value_binding_p(i32 %83, i64 %84, i64 %85)
  br label %88

87:                                               ; preds = %74
  store i32* null, i32** %8, align 8
  br label %88

88:                                               ; preds = %87, %77
  %89 = load i32*, i32** %8, align 8
  ret i32* %89
}

declare dso_local i64 @lookup_member(i64, i64, i32, i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @DECL_CLASS_TEMPLATE_P(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @BASELINK_P(i64) #1

declare dso_local i64 @BASELINK_FUNCTIONS(i64) #1

declare dso_local i32* @new_class_binding(i64, i64, i64, %struct.TYPE_4__*) #1

declare dso_local i32 @set_inherited_value_binding_p(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
