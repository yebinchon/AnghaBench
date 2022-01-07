; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_do_case.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_do_case.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32, i32, i32 }

@NULL_TREE = common dso_local global i64 0, align 8
@c_switch_stack = common dso_local global %struct.TYPE_2__* null, align 8
@error_mark_node = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [77 x i8] c"case label in statement expression not containing enclosing switch statement\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"%<default%> label in statement expression not containing enclosing switch statement\00", align 1
@.str.2 = private unnamed_addr constant [104 x i8] c"case label in scope of identifier with variably modified type not containing enclosing switch statement\00", align 1
@.str.3 = private unnamed_addr constant [111 x i8] c"%<default%> label in scope of identifier with variably modified type not containing enclosing switch statement\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"case label not within a switch statement\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"%<default%> label not within a switch statement\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @do_case(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* @NULL_TREE, align 8
  store i64 %6, i64* %5, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @c_switch_stack, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %39

9:                                                ; preds = %2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @c_switch_stack, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %39, label %14

14:                                               ; preds = %9
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @c_switch_stack, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %14
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @c_switch_stack, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @c_switch_stack, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @SWITCH_COND(i32 %25)
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @c_switch_stack, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* %3, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i64 @c_add_case_label(i32 %22, i32 %26, i32 %29, i64 %30, i64 %31)
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @error_mark_node, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %19
  %37 = load i64, i64* @NULL_TREE, align 8
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %36, %19
  br label %81

39:                                               ; preds = %14, %9, %2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @c_switch_stack, align 8
  %41 = icmp ne %struct.TYPE_2__* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @c_switch_stack, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load i64, i64* %3, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 @error(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  br label %54

52:                                               ; preds = %47
  %53 = call i32 @error(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %50
  br label %80

55:                                               ; preds = %42, %39
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @c_switch_stack, align 8
  %57 = icmp ne %struct.TYPE_2__* %56, null
  br i1 %57, label %58, label %71

58:                                               ; preds = %55
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @c_switch_stack, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load i64, i64* %3, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = call i32 @error(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.2, i64 0, i64 0))
  br label %70

68:                                               ; preds = %63
  %69 = call i32 @error(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.3, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %66
  br label %79

71:                                               ; preds = %58, %55
  %72 = load i64, i64* %3, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %78

76:                                               ; preds = %71
  %77 = call i32 @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %74
  br label %79

79:                                               ; preds = %78, %70
  br label %80

80:                                               ; preds = %79, %54
  br label %81

81:                                               ; preds = %80, %38
  %82 = load i64, i64* %5, align 8
  ret i64 %82
}

declare dso_local i64 @c_add_case_label(i32, i32, i32, i64, i64) #1

declare dso_local i32 @SWITCH_COND(i32) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
