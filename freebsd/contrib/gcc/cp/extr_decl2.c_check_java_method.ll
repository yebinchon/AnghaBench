; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl2.c_check_java_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl2.c_check_java_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"Java method %qD has non-Java return type %qT\00", align 1
@NULL_TREE = common dso_local global i8* null, align 8
@error_mark_node = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"Java method %qD has non-Java parameter type %qT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_java_method(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load i8*, i8** %2, align 8
  %8 = call i8* @TREE_TYPE(i8* %7)
  %9 = call i8* @TYPE_ARG_TYPES(i8* %8)
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = call i8* @TREE_TYPE(i8* %10)
  %12 = call i8* @TREE_TYPE(i8* %11)
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @acceptable_java_type(i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load i8*, i8** %2, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %17, i8* %18)
  store i32 1, i32* %3, align 4
  br label %20

20:                                               ; preds = %16, %1
  %21 = load i8*, i8** %4, align 8
  %22 = call i8* @TREE_CHAIN(i8* %21)
  store i8* %22, i8** %4, align 8
  %23 = load i8*, i8** %2, align 8
  %24 = call i64 @DECL_HAS_IN_CHARGE_PARM_P(i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i8*, i8** %4, align 8
  %28 = call i8* @TREE_CHAIN(i8* %27)
  store i8* %28, i8** %4, align 8
  br label %29

29:                                               ; preds = %26, %20
  %30 = load i8*, i8** %2, align 8
  %31 = call i64 @DECL_HAS_VTT_PARM_P(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i8*, i8** %4, align 8
  %35 = call i8* @TREE_CHAIN(i8* %34)
  store i8* %35, i8** %4, align 8
  br label %36

36:                                               ; preds = %33, %29
  br label %37

37:                                               ; preds = %57, %36
  %38 = load i8*, i8** %4, align 8
  %39 = load i8*, i8** @NULL_TREE, align 8
  %40 = icmp ne i8* %38, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %37
  %42 = load i8*, i8** %4, align 8
  %43 = call i8* @TREE_VALUE(i8* %42)
  store i8* %43, i8** %6, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @acceptable_java_type(i8* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %41
  %48 = load i8*, i8** %6, align 8
  %49 = load i8*, i8** @error_mark_node, align 8
  %50 = icmp ne i8* %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i8*, i8** %2, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %52, i8* %53)
  br label %55

55:                                               ; preds = %51, %47
  store i32 1, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %41
  br label %57

57:                                               ; preds = %56
  %58 = load i8*, i8** %4, align 8
  %59 = call i8* @TREE_CHAIN(i8* %58)
  store i8* %59, i8** %4, align 8
  br label %37

60:                                               ; preds = %37
  %61 = load i32, i32* %3, align 4
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  ret i32 %64
}

declare dso_local i8* @TYPE_ARG_TYPES(i8*) #1

declare dso_local i8* @TREE_TYPE(i8*) #1

declare dso_local i32 @acceptable_java_type(i8*) #1

declare dso_local i32 @error(i8*, i8*, i8*) #1

declare dso_local i8* @TREE_CHAIN(i8*) #1

declare dso_local i64 @DECL_HAS_IN_CHARGE_PARM_P(i8*) #1

declare dso_local i64 @DECL_HAS_VTT_PARM_P(i8*) #1

declare dso_local i8* @TREE_VALUE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
