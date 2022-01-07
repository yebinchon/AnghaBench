; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_toplev.c_error_unavailable_use.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_toplev.c_error_unavailable_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"%qs is unavailable (declared at %s:%d)\00", align 1
@IDENTIFIER_NODE = common dso_local global i64 0, align 8
@TYPE_DECL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"%qs is unavailable\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"type is unavailable (declared at %s:%d)\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"type is unavailable\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_unavailable_use(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %85

8:                                                ; preds = %1
  %9 = load i64, i64* %2, align 8
  %10 = call i64 @DECL_P(i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load i64, i64* %2, align 8
  %14 = call i64 @DECL_NAME(i64 %13)
  %15 = call i8* @IDENTIFIER_POINTER(i64 %14)
  %16 = load i64, i64* %2, align 8
  %17 = call i8* @DECL_SOURCE_FILE(i64 %16)
  %18 = load i64, i64* %2, align 8
  %19 = call i8* @DECL_SOURCE_LINE(i64 %18)
  %20 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %15, i8* %17, i8* %19)
  br label %85

21:                                               ; preds = %8
  %22 = load i64, i64* %2, align 8
  %23 = call i64 @TYPE_P(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %84

25:                                               ; preds = %21
  store i8* null, i8** %3, align 8
  %26 = load i64, i64* %2, align 8
  %27 = call i64 @TYPE_STUB_DECL(i64 %26)
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %2, align 8
  %29 = call i64 @TYPE_NAME(i64 %28)
  %30 = call i64 @TREE_CODE(i64 %29)
  %31 = load i64, i64* @IDENTIFIER_NODE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i64, i64* %2, align 8
  %35 = call i64 @TYPE_NAME(i64 %34)
  %36 = call i8* @IDENTIFIER_POINTER(i64 %35)
  store i8* %36, i8** %3, align 8
  br label %54

37:                                               ; preds = %25
  %38 = load i64, i64* %2, align 8
  %39 = call i64 @TYPE_NAME(i64 %38)
  %40 = call i64 @TREE_CODE(i64 %39)
  %41 = load i64, i64* @TYPE_DECL, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %37
  %44 = load i64, i64* %2, align 8
  %45 = call i64 @TYPE_NAME(i64 %44)
  %46 = call i64 @DECL_NAME(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i64, i64* %2, align 8
  %50 = call i64 @TYPE_NAME(i64 %49)
  %51 = call i64 @DECL_NAME(i64 %50)
  %52 = call i8* @IDENTIFIER_POINTER(i64 %51)
  store i8* %52, i8** %3, align 8
  br label %53

53:                                               ; preds = %48, %43, %37
  br label %54

54:                                               ; preds = %53, %33
  %55 = load i8*, i8** %3, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %71

57:                                               ; preds = %54
  %58 = load i64, i64* %4, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load i8*, i8** %3, align 8
  %62 = load i64, i64* %4, align 8
  %63 = call i8* @DECL_SOURCE_FILE(i64 %62)
  %64 = load i64, i64* %4, align 8
  %65 = call i8* @DECL_SOURCE_LINE(i64 %64)
  %66 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %61, i8* %63, i8* %65)
  br label %70

67:                                               ; preds = %57
  %68 = load i8*, i8** %3, align 8
  %69 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %67, %60
  br label %83

71:                                               ; preds = %54
  %72 = load i64, i64* %4, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load i64, i64* %4, align 8
  %76 = call i8* @DECL_SOURCE_FILE(i64 %75)
  %77 = load i64, i64* %4, align 8
  %78 = call i8* @DECL_SOURCE_LINE(i64 %77)
  %79 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %76, i8* %78)
  br label %82

80:                                               ; preds = %71
  %81 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %74
  br label %83

83:                                               ; preds = %82, %70
  br label %84

84:                                               ; preds = %83, %21
  br label %85

85:                                               ; preds = %7, %84, %12
  ret void
}

declare dso_local i64 @DECL_P(i64) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i8* @IDENTIFIER_POINTER(i64) #1

declare dso_local i64 @DECL_NAME(i64) #1

declare dso_local i8* @DECL_SOURCE_FILE(i64) #1

declare dso_local i8* @DECL_SOURCE_LINE(i64) #1

declare dso_local i64 @TYPE_P(i64) #1

declare dso_local i64 @TYPE_STUB_DECL(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TYPE_NAME(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
