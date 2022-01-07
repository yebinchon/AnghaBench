; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_write_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_write_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@TYPE_DECL = common dso_local global i64 0, align 8
@global_namespace = common dso_local global i32* null, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @write_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_name(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @MANGLE_TRACE_TREE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %8)
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @TREE_CODE(i32* %10)
  %12 = load i64, i64* @TYPE_DECL, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @TREE_TYPE(i32* %15)
  %17 = call i32* @TYPE_MAIN_VARIANT(i32 %16)
  %18 = call i32* @TYPE_NAME(i32* %17)
  store i32* %18, i32** %3, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @TREE_TYPE(i32* %19)
  %21 = call i32* @TYPE_MAIN_VARIANT(i32 %20)
  %22 = call i32* @TYPE_CONTEXT(i32* %21)
  store i32* %22, i32** %5, align 8
  br label %33

23:                                               ; preds = %2
  %24 = load i32*, i32** %3, align 8
  %25 = call i32* @DECL_CONTEXT(i32* %24)
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %31

28:                                               ; preds = %23
  %29 = load i32*, i32** %3, align 8
  %30 = call i32* @CP_DECL_CONTEXT(i32* %29)
  br label %31

31:                                               ; preds = %28, %27
  %32 = phi i32* [ null, %27 ], [ %30, %28 ]
  store i32* %32, i32** %5, align 8
  br label %33

33:                                               ; preds = %31, %14
  %34 = load i32*, i32** %5, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %52, label %36

36:                                               ; preds = %33
  %37 = load i32*, i32** %5, align 8
  %38 = load i32*, i32** @global_namespace, align 8
  %39 = icmp eq i32* %37, %38
  br i1 %39, label %52, label %40

40:                                               ; preds = %36
  %41 = load i32*, i32** %5, align 8
  %42 = call i64 @DECL_NAMESPACE_STD_P(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %44
  %48 = load i32*, i32** %5, align 8
  %49 = call i64 @TREE_CODE(i32* %48)
  %50 = load i64, i64* @FUNCTION_DECL, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %47, %40, %36, %33
  %53 = load i32*, i32** %3, align 8
  %54 = call i64 @decl_is_template_id(i32* %53, i32** %6)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @TI_TEMPLATE(i32* %57)
  %59 = call i32 @write_unscoped_template_name(i32 %58)
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @TI_ARGS(i32* %60)
  %62 = call i32 @write_template_args(i32 %61)
  br label %66

63:                                               ; preds = %52
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @write_unscoped_name(i32* %64)
  br label %66

66:                                               ; preds = %63, %56
  br label %109

67:                                               ; preds = %47, %44
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %106, label %70

70:                                               ; preds = %67
  %71 = load i32*, i32** %3, align 8
  store i32* %71, i32** %7, align 8
  br label %72

72:                                               ; preds = %101, %70
  %73 = load i32*, i32** %5, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i32*, i32** %5, align 8
  %77 = load i32*, i32** @global_namespace, align 8
  %78 = icmp ne i32* %76, %77
  br label %79

79:                                               ; preds = %75, %72
  %80 = phi i1 [ false, %72 ], [ %78, %75 ]
  br i1 %80, label %81, label %105

81:                                               ; preds = %79
  %82 = load i32*, i32** %5, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load i32*, i32** %5, align 8
  %86 = call i64 @TYPE_P(i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32*, i32** %5, align 8
  %90 = call i32* @TYPE_NAME(i32* %89)
  store i32* %90, i32** %5, align 8
  br label %91

91:                                               ; preds = %88, %84, %81
  %92 = load i32*, i32** %5, align 8
  %93 = call i64 @TREE_CODE(i32* %92)
  %94 = load i64, i64* @FUNCTION_DECL, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load i32*, i32** %5, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = load i32*, i32** %3, align 8
  %100 = call i32 @write_local_name(i32* %97, i32* %98, i32* %99)
  br label %109

101:                                              ; preds = %91
  %102 = load i32*, i32** %5, align 8
  store i32* %102, i32** %7, align 8
  %103 = load i32*, i32** %5, align 8
  %104 = call i32* @CP_DECL_CONTEXT(i32* %103)
  store i32* %104, i32** %5, align 8
  br label %72

105:                                              ; preds = %79
  br label %106

106:                                              ; preds = %105, %67
  %107 = load i32*, i32** %3, align 8
  %108 = call i32 @write_nested_name(i32* %107)
  br label %109

109:                                              ; preds = %96, %106, %66
  ret void
}

declare dso_local i32 @MANGLE_TRACE_TREE(i8*, i32*) #1

declare dso_local i64 @TREE_CODE(i32*) #1

declare dso_local i32* @TYPE_NAME(i32*) #1

declare dso_local i32* @TYPE_MAIN_VARIANT(i32) #1

declare dso_local i32 @TREE_TYPE(i32*) #1

declare dso_local i32* @TYPE_CONTEXT(i32*) #1

declare dso_local i32* @DECL_CONTEXT(i32*) #1

declare dso_local i32* @CP_DECL_CONTEXT(i32*) #1

declare dso_local i64 @DECL_NAMESPACE_STD_P(i32*) #1

declare dso_local i64 @decl_is_template_id(i32*, i32**) #1

declare dso_local i32 @write_unscoped_template_name(i32) #1

declare dso_local i32 @TI_TEMPLATE(i32*) #1

declare dso_local i32 @write_template_args(i32) #1

declare dso_local i32 @TI_ARGS(i32*) #1

declare dso_local i32 @write_unscoped_name(i32*) #1

declare dso_local i64 @TYPE_P(i32*) #1

declare dso_local i32 @write_local_name(i32*, i32*, i32*) #1

declare dso_local i32 @write_nested_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
