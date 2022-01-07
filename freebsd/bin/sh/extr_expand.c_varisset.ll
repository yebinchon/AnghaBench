; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_expand.c_varisset.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_expand.c_varisset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8**, i64 }

@shellparam = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@errno = common dso_local global i64 0, align 8
@arg0 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @varisset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @varisset(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 33
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 (...) @backgndpidset()
  store i32 %14, i32* %3, align 4
  br label %94

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 64
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load i8*, i8** %4, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 42
  br i1 %24, label %25, label %52

25:                                               ; preds = %20, %15
  %26 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @shellparam, i32 0, i32 0), align 8
  %27 = load i8*, i8** %26, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %94

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %30
  %34 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @shellparam, i32 0, i32 0), align 8
  store i8** %34, i8*** %6, align 8
  br label %35

35:                                               ; preds = %47, %33
  %36 = load i8**, i8*** %6, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load i8**, i8*** %6, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 1, i32* %3, align 4
  br label %94

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46
  %48 = load i8**, i8*** %6, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i32 1
  store i8** %49, i8*** %6, align 8
  br label %35

50:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %94

51:                                               ; preds = %30
  br label %92

52:                                               ; preds = %20
  %53 = load i8*, i8** %4, align 8
  %54 = load i8, i8* %53, align 1
  %55 = call i64 @is_digit(i8 signext %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %91

57:                                               ; preds = %52
  store i64 0, i64* @errno, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = call i64 @strtol(i8* %58, i32* null, i32 10)
  store i64 %59, i64* %8, align 8
  %60 = load i64, i64* @errno, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @shellparam, i32 0, i32 1), align 8
  %65 = icmp sgt i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62, %57
  store i32 0, i32* %3, align 4
  br label %94

67:                                               ; preds = %62
  %68 = load i64, i64* %8, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i8*, i8** @arg0, align 8
  store i8* %71, i8** %7, align 8
  br label %78

72:                                               ; preds = %67
  %73 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @shellparam, i32 0, i32 0), align 8
  %74 = load i64, i64* %8, align 8
  %75 = sub nsw i64 %74, 1
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %7, align 8
  br label %78

78:                                               ; preds = %72, %70
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = load i8*, i8** %7, align 8
  %83 = icmp eq i8* %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %81
  %85 = load i8*, i8** %7, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84, %81
  store i32 0, i32* %3, align 4
  br label %94

90:                                               ; preds = %84, %78
  br label %91

91:                                               ; preds = %90, %52
  br label %92

92:                                               ; preds = %91, %51
  br label %93

93:                                               ; preds = %92
  store i32 1, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %89, %66, %50, %45, %29, %13
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @backgndpidset(...) #1

declare dso_local i64 @is_digit(i8 signext) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
