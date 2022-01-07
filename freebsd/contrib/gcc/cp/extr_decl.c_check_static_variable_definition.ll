; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_check_static_variable_definition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_check_static_variable_definition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENUMERAL_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [79 x i8] c"invalid in-class initialization of static data member of non-integral type %qT\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"ISO C++ forbids in-class initialization of non-const static member %qD\00", align 1
@pedantic = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [79 x i8] c"ISO C++ forbids initialization of member constant %qD of non-integral type %qT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_static_variable_definition(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @ARITHMETIC_TYPE_P(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @TREE_CODE(i32 %10)
  %12 = load i64, i64* @ENUMERAL_TYPE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @error(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 1, i32* %3, align 4
  br label %38

17:                                               ; preds = %9, %2
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @CP_TYPE_CONST_P(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @error(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %36

24:                                               ; preds = %17
  %25 = load i64, i64* @pedantic, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @INTEGRAL_TYPE_P(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @pedwarn(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %27, %24
  br label %36

36:                                               ; preds = %35, %21
  br label %37

37:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %14
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @ARITHMETIC_TYPE_P(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @CP_TYPE_CONST_P(i32) #1

declare dso_local i32 @INTEGRAL_TYPE_P(i32) #1

declare dso_local i32 @pedwarn(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
