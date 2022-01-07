; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_create_array_type_for_decl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_create_array_type_for_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"array of void\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"array of functions\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"array of references\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"array of function members\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"declaration of %qD as %s\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"creating %s\00", align 1
@ARRAY_TYPE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [98 x i8] c"declaration of %qD as multidimensional array must have bounds for all dimensions except the first\00", align 1
@.str.7 = private unnamed_addr constant [76 x i8] c"multidimensional array must have bounds for all dimensions except the first\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64)* @create_array_type_for_decl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @create_array_type_for_decl(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* @NULL_TREE, align 8
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @error_mark_node, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @error_mark_node, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %3
  %19 = load i64, i64* @error_mark_node, align 8
  store i64 %19, i64* %4, align 8
  br label %76

20:                                               ; preds = %14
  store i8* null, i8** %9, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @TREE_CODE(i64 %21)
  switch i32 %22, label %27 [
    i32 128, label %23
    i32 131, label %24
    i32 129, label %25
    i32 130, label %26
  ]

23:                                               ; preds = %20
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %28

24:                                               ; preds = %20
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %28

25:                                               ; preds = %20
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %28

26:                                               ; preds = %20
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %28

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %26, %25, %24, %23
  %29 = load i8*, i8** %9, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load i64, i64* %5, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i64, i64* %5, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 %35, i8* %36)
  br label %41

38:                                               ; preds = %31
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %38, %34
  %42 = load i64, i64* @error_mark_node, align 8
  store i64 %42, i64* %4, align 8
  br label %76

43:                                               ; preds = %28
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @TREE_CODE(i64 %44)
  %46 = load i32, i32* @ARRAY_TYPE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @TYPE_DOMAIN(i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %48
  %53 = load i64, i64* %5, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i64, i64* %5, align 8
  %57 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.6, i64 0, i64 0), i64 %56)
  br label %60

58:                                               ; preds = %52
  %59 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.7, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %55
  %61 = load i64, i64* @error_mark_node, align 8
  store i64 %61, i64* %4, align 8
  br label %76

62:                                               ; preds = %48, %43
  %63 = load i64, i64* %7, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* %7, align 8
  %68 = call i64 @compute_array_index_type(i64 %66, i64 %67)
  store i64 %68, i64* %8, align 8
  br label %69

69:                                               ; preds = %65, %62
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @abstract_virtuals_error(i64 %70, i64 %71)
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* %8, align 8
  %75 = call i64 @build_cplus_array_type(i64 %73, i64 %74)
  store i64 %75, i64* %4, align 8
  br label %76

76:                                               ; preds = %69, %60, %41, %18
  %77 = load i64, i64* %4, align 8
  ret i64 %77
}

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @TYPE_DOMAIN(i64) #1

declare dso_local i64 @compute_array_index_type(i64, i64) #1

declare dso_local i32 @abstract_virtuals_error(i64, i64) #1

declare dso_local i64 @build_cplus_array_type(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
