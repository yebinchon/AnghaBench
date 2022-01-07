; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-tailcall.c_process_assignment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-tailcall.c_process_assignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSA_NAME = common dso_local global i64 0, align 8
@tcc_binary = common dso_local global i64 0, align 8
@flag_unsafe_math_optimizations = common dso_local global i32 0, align 4
@current_function_decl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*, i32*, i32*)* @process_assignment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_assignment(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @TREE_OPERAND(i32 %21, i32 0)
  store i32 %22, i32* %17, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @TREE_OPERAND(i32 %23, i32 1)
  store i32 %24, i32* %18, align 4
  %25 = load i32, i32* %18, align 4
  %26 = call i64 @TREE_CODE(i32 %25)
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %19, align 4
  %28 = load i32, i32* %18, align 4
  store i32 %28, i32* %20, align 4
  %29 = load i32, i32* %20, align 4
  %30 = call i32 @STRIP_NOPS(i32 %29)
  %31 = load i32, i32* %20, align 4
  %32 = call i64 @TREE_CODE(i32 %31)
  %33 = load i64, i64* @SSA_NAME, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %6
  %36 = load i32, i32* %20, align 4
  %37 = load i32*, i32** %13, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  br label %118

41:                                               ; preds = %35
  %42 = load i32, i32* %17, align 4
  %43 = load i32*, i32** %13, align 8
  store i32 %42, i32* %43, align 4
  store i32 1, i32* %7, align 4
  br label %118

44:                                               ; preds = %6
  %45 = load i32, i32* %19, align 4
  %46 = call i64 @TREE_CODE_CLASS(i32 %45)
  %47 = load i64, i64* @tcc_binary, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 0, i32* %7, align 4
  br label %118

50:                                               ; preds = %44
  %51 = load i32, i32* @flag_unsafe_math_optimizations, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @current_function_decl, align 4
  %55 = call i32 @DECL_RESULT(i32 %54)
  %56 = call i32 @TREE_TYPE(i32 %55)
  %57 = call i64 @FLOAT_TYPE_P(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 0, i32* %7, align 4
  br label %118

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %50
  %62 = load i32, i32* %18, align 4
  %63 = call i32 @TREE_OPERAND(i32 %62, i32 0)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %18, align 4
  %65 = call i32 @TREE_OPERAND(i32 %64, i32 1)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load i32*, i32** %13, align 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %61
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @independent_of_stmt_p(i32 %71, i32 %72, i32 %73)
  store i32 %74, i32* %16, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %91

77:                                               ; preds = %70, %61
  %78 = load i32, i32* %15, align 4
  %79 = load i32*, i32** %13, align 8
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @independent_of_stmt_p(i32 %83, i32 %84, i32 %85)
  store i32 %86, i32* %16, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %90

89:                                               ; preds = %82, %77
  store i32 0, i32* %7, align 4
  br label %118

90:                                               ; preds = %88
  br label %91

91:                                               ; preds = %90, %76
  %92 = load i32, i32* %19, align 4
  switch i32 %92, label %117 [
    i32 128, label %93
    i32 129, label %103
  ]

93:                                               ; preds = %91
  %94 = load i32*, i32** %12, align 8
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i32 0, i32* %7, align 4
  br label %118

98:                                               ; preds = %93
  %99 = load i32, i32* %16, align 4
  %100 = load i32*, i32** %12, align 8
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* %17, align 4
  %102 = load i32*, i32** %13, align 8
  store i32 %101, i32* %102, align 4
  store i32 1, i32* %7, align 4
  br label %118

103:                                              ; preds = %91
  %104 = load i32*, i32** %12, align 8
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = load i32*, i32** %11, align 8
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %107, %103
  store i32 0, i32* %7, align 4
  br label %118

112:                                              ; preds = %107
  %113 = load i32, i32* %16, align 4
  %114 = load i32*, i32** %11, align 8
  store i32 %113, i32* %114, align 4
  %115 = load i32, i32* %17, align 4
  %116 = load i32*, i32** %13, align 8
  store i32 %115, i32* %116, align 4
  store i32 1, i32* %7, align 4
  br label %118

117:                                              ; preds = %91
  store i32 0, i32* %7, align 4
  br label %118

118:                                              ; preds = %117, %112, %111, %98, %97, %89, %59, %49, %41, %40
  %119 = load i32, i32* %7, align 4
  ret i32 %119
}

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @STRIP_NOPS(i32) #1

declare dso_local i64 @TREE_CODE_CLASS(i32) #1

declare dso_local i64 @FLOAT_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @DECL_RESULT(i32) #1

declare dso_local i32 @independent_of_stmt_p(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
