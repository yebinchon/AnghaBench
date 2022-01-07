; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_arg_assoc_namespace.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_arg_assoc_namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_lookup = type { i64, i32, i32 }

@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arg_lookup*, i64)* @arg_assoc_namespace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arg_assoc_namespace(%struct.arg_lookup* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.arg_lookup*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.arg_lookup* %0, %struct.arg_lookup** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %10 = getelementptr inbounds %struct.arg_lookup, %struct.arg_lookup* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @purpose_member(i64 %8, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %94

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = load i32, i32* @NULL_TREE, align 4
  %18 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %19 = getelementptr inbounds %struct.arg_lookup, %struct.arg_lookup* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @tree_cons(i64 %16, i32 %17, i32 %20)
  %22 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %23 = getelementptr inbounds %struct.arg_lookup, %struct.arg_lookup* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @DECL_NAMESPACE_ASSOCIATIONS(i64 %24)
  store i64 %25, i64* %6, align 8
  br label %26

26:                                               ; preds = %37, %15
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @TREE_PURPOSE(i64 %31)
  %33 = call i32 @arg_assoc_namespace(%struct.arg_lookup* %30, i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %94

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @TREE_CHAIN(i64 %38)
  store i64 %39, i64* %6, align 8
  br label %26

40:                                               ; preds = %26
  %41 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %42 = getelementptr inbounds %struct.arg_lookup, %struct.arg_lookup* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i64 @namespace_binding(i32 %43, i64 %44)
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %94

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %90, %49
  %51 = load i64, i64* %6, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %93

53:                                               ; preds = %50
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @OVL_CURRENT(i64 %54)
  %56 = call i64 @hidden_name_p(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %82

58:                                               ; preds = %53
  %59 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %60 = getelementptr inbounds %struct.arg_lookup, %struct.arg_lookup* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %7, align 8
  br label %62

62:                                               ; preds = %74, %58
  %63 = load i64, i64* %7, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @TREE_VALUE(i64 %66)
  %68 = load i64, i64* %6, align 8
  %69 = call i32 @OVL_CURRENT(i64 %68)
  %70 = call i64 @friend_of_associated_class_p(i32 %67, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %77

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8
  %76 = call i64 @TREE_CHAIN(i64 %75)
  store i64 %76, i64* %7, align 8
  br label %62

77:                                               ; preds = %72, %62
  %78 = load i64, i64* %7, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  br label %90

81:                                               ; preds = %77
  br label %82

82:                                               ; preds = %81, %53
  %83 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @OVL_CURRENT(i64 %84)
  %86 = call i64 @add_function(%struct.arg_lookup* %83, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  store i32 1, i32* %3, align 4
  br label %94

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89, %80
  %91 = load i64, i64* %6, align 8
  %92 = call i64 @OVL_NEXT(i64 %91)
  store i64 %92, i64* %6, align 8
  br label %50

93:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %88, %48, %35, %14
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i64 @purpose_member(i64, i32) #1

declare dso_local i32 @tree_cons(i64, i32, i32) #1

declare dso_local i64 @DECL_NAMESPACE_ASSOCIATIONS(i64) #1

declare dso_local i64 @TREE_PURPOSE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @namespace_binding(i32, i64) #1

declare dso_local i64 @hidden_name_p(i32) #1

declare dso_local i32 @OVL_CURRENT(i64) #1

declare dso_local i64 @friend_of_associated_class_p(i32, i32) #1

declare dso_local i32 @TREE_VALUE(i64) #1

declare dso_local i64 @add_function(%struct.arg_lookup*, i32) #1

declare dso_local i64 @OVL_NEXT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
