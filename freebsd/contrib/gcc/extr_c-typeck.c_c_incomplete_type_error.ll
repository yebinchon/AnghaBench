; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_c_incomplete_type_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_c_incomplete_type_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_MARK = common dso_local global i32 0, align 4
@VAR_DECL = common dso_local global i32 0, align 4
@PARM_DECL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%qD has an incomplete type\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"invalid use of void expression\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"invalid use of flexible array member\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"invalid use of array with unspecified bounds\00", align 1
@IDENTIFIER_NODE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"invalid use of undefined type %<%s %E%>\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"invalid use of incomplete typedef %qD\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_incomplete_type_error(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = inttoptr i64 %6 to i8*
  %8 = call i32 @TREE_CODE(i8* %7)
  %9 = load i32, i32* @ERROR_MARK, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %74

12:                                               ; preds = %2
  %13 = load i64, i64* %3, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = load i64, i64* %3, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @TREE_CODE(i8* %17)
  %19 = load i32, i32* @VAR_DECL, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load i64, i64* %3, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @TREE_CODE(i8* %23)
  %25 = load i32, i32* @PARM_DECL, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21, %15
  %28 = load i64, i64* %3, align 8
  %29 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %28)
  br label %74

30:                                               ; preds = %21, %12
  br label %31

31:                                               ; preds = %51, %30
  %32 = load i64, i64* %4, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @TREE_CODE(i8* %33)
  switch i32 %34, label %56 [
    i32 130, label %35
    i32 129, label %36
    i32 131, label %37
    i32 128, label %38
    i32 132, label %40
  ]

35:                                               ; preds = %31
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %58

36:                                               ; preds = %31
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %58

37:                                               ; preds = %31
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %58

38:                                               ; preds = %31
  %39 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %74

40:                                               ; preds = %31
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @TYPE_DOMAIN(i64 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @TYPE_DOMAIN(i64 %45)
  %47 = call i32* @TYPE_MAX_VALUE(i32 %46)
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %74

51:                                               ; preds = %44
  %52 = load i64, i64* %4, align 8
  %53 = call i64 @TREE_TYPE(i64 %52)
  store i64 %53, i64* %4, align 8
  br label %31

54:                                               ; preds = %40
  %55 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  br label %74

56:                                               ; preds = %31
  %57 = call i32 (...) @gcc_unreachable()
  br label %58

58:                                               ; preds = %56, %37, %36, %35
  %59 = load i64, i64* %4, align 8
  %60 = call i8* @TYPE_NAME(i64 %59)
  %61 = call i32 @TREE_CODE(i8* %60)
  %62 = load i32, i32* @IDENTIFIER_NODE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load i8*, i8** %5, align 8
  %66 = load i64, i64* %4, align 8
  %67 = call i8* @TYPE_NAME(i64 %66)
  %68 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* %65, i8* %67)
  br label %73

69:                                               ; preds = %58
  %70 = load i64, i64* %4, align 8
  %71 = call i8* @TYPE_NAME(i64 %70)
  %72 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %69, %64
  br label %74

74:                                               ; preds = %11, %38, %49, %54, %73, %27
  ret void
}

declare dso_local i32 @TREE_CODE(i8*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @TYPE_DOMAIN(i64) #1

declare dso_local i32* @TYPE_MAX_VALUE(i32) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i8* @TYPE_NAME(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
