; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_function_ok_for_sibcall.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_function_ok_for_sibcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i64)* }
%struct.TYPE_6__ = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i64 }

@TARGET_64BIT = common dso_local global i32 0, align 4
@flag_pic = common dso_local global i64 0, align 8
@targetm = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@cfun = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @ix86_function_ok_for_sibcall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ix86_function_ok_for_sibcall(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i32, i32* @TARGET_64BIT, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* @flag_pic, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i32 (i64)*, i32 (i64)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @targetm, i32 0, i32 0), align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i32 %19(i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18, %15
  store i32 0, i32* %3, align 4
  br label %112

24:                                               ; preds = %18, %12, %2
  %25 = load i64, i64* %4, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i64, i64* %4, align 8
  store i64 %28, i64* %6, align 8
  br label %40

29:                                               ; preds = %24
  %30 = load i64, i64* %5, align 8
  %31 = call i64 @TREE_OPERAND(i64 %30, i32 0)
  %32 = call i64 @TREE_TYPE(i64 %31)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @POINTER_TYPE_P(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i64, i64* %6, align 8
  %38 = call i64 @TREE_TYPE(i64 %37)
  store i64 %38, i64* %6, align 8
  br label %39

39:                                               ; preds = %36, %29
  br label %40

40:                                               ; preds = %39, %27
  %41 = load i64, i64* %5, align 8
  %42 = call i64 @TREE_TYPE(i64 %41)
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @ix86_function_value(i64 %42, i64 %43, i32 0)
  store i32 %44, i32* %7, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @DECL_RESULT(i64 %47)
  %49 = call i64 @TREE_TYPE(i64 %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @ix86_function_value(i64 %49, i64 %52, i32 0)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @STACK_REG_P(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %40
  %58 = load i32, i32* %8, align 4
  %59 = call i64 @STACK_REG_P(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %57, %40
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @rtx_equal_p(i32 %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %112

67:                                               ; preds = %61
  br label %85

68:                                               ; preds = %57
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @DECL_RESULT(i64 %71)
  %73 = call i64 @TREE_TYPE(i64 %72)
  %74 = call i64 @VOID_TYPE_P(i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %84

77:                                               ; preds = %68
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @rtx_equal_p(i32 %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %112

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83, %76
  br label %85

85:                                               ; preds = %84, %67
  %86 = load i64, i64* %4, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %103, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* @TARGET_64BIT, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %103, label %91

91:                                               ; preds = %88
  %92 = load i64, i64* %5, align 8
  %93 = call i64 @TREE_OPERAND(i64 %92, i32 0)
  store i64 %93, i64* %9, align 8
  %94 = load i64, i64* %9, align 8
  %95 = call i64 @TREE_TYPE(i64 %94)
  store i64 %95, i64* %9, align 8
  %96 = load i64, i64* %9, align 8
  %97 = call i64 @TREE_TYPE(i64 %96)
  store i64 %97, i64* %9, align 8
  %98 = load i64, i64* %9, align 8
  %99 = call i32 @ix86_function_regparm(i64 %98, i32* null)
  %100 = icmp sge i32 %99, 3
  br i1 %100, label %101, label %102

101:                                              ; preds = %91
  store i32 0, i32* %3, align 4
  br label %112

102:                                              ; preds = %91
  br label %103

103:                                              ; preds = %102, %88, %85
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  store i32 0, i32* %3, align 4
  br label %112

111:                                              ; preds = %103
  store i32 1, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %110, %101, %82, %66, %23
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @POINTER_TYPE_P(i64) #1

declare dso_local i32 @ix86_function_value(i64, i64, i32) #1

declare dso_local i64 @DECL_RESULT(i64) #1

declare dso_local i64 @STACK_REG_P(i32) #1

declare dso_local i32 @rtx_equal_p(i32, i32) #1

declare dso_local i64 @VOID_TYPE_P(i64) #1

declare dso_local i32 @ix86_function_regparm(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
