; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_bzip2.c_addFlagsFromEnvVar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_bzip2.c_addFlagsFromEnvVar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@True = common dso_local global i64 0, align 8
@FILE_NAME_LEN = common dso_local global i32 0, align 4
@tmpName = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i64*)* @addFlagsFromEnvVar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addFlagsFromEnvVar(i32** %0, i64* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  store i32** %0, i32*** %3, align 8
  store i64* %1, i64** %4, align 8
  %10 = load i64*, i64** %4, align 8
  %11 = call i64* @getenv(i64* %10)
  store i64* %11, i64** %8, align 8
  %12 = load i64*, i64** %8, align 8
  %13 = icmp ne i64* %12, null
  br i1 %13, label %14, label %99

14:                                               ; preds = %2
  %15 = load i64*, i64** %8, align 8
  store i64* %15, i64** %9, align 8
  store i64 0, i64* %5, align 8
  br label %16

16:                                               ; preds = %97, %14
  %17 = load i64, i64* @True, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %98

19:                                               ; preds = %16
  %20 = load i64*, i64** %9, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %98

26:                                               ; preds = %19
  %27 = load i64, i64* %5, align 8
  %28 = load i64*, i64** %9, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 %27
  store i64* %29, i64** %9, align 8
  store i64 0, i64* %5, align 8
  br label %30

30:                                               ; preds = %36, %26
  %31 = load i64*, i64** %9, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @isspace(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i64*, i64** %9, align 8
  %38 = getelementptr inbounds i64, i64* %37, i32 1
  store i64* %38, i64** %9, align 8
  br label %30

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %56, %39
  %41 = load i64*, i64** %9, align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load i64*, i64** %9, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @isspace(i64 %50)
  %52 = icmp ne i64 %51, 0
  %53 = xor i1 %52, true
  br label %54

54:                                               ; preds = %46, %40
  %55 = phi i1 [ false, %40 ], [ %53, %46 ]
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = load i64, i64* %5, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %5, align 8
  br label %40

59:                                               ; preds = %54
  %60 = load i64, i64* %5, align 8
  %61 = icmp ugt i64 %60, 0
  br i1 %61, label %62, label %97

62:                                               ; preds = %59
  %63 = load i64, i64* %5, align 8
  store i64 %63, i64* %7, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load i32, i32* @FILE_NAME_LEN, align 4
  %66 = sub nsw i32 %65, 10
  %67 = sext i32 %66 to i64
  %68 = icmp ugt i64 %64, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load i32, i32* @FILE_NAME_LEN, align 4
  %71 = sub nsw i32 %70, 10
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %7, align 8
  br label %73

73:                                               ; preds = %69, %62
  store i64 0, i64* %6, align 8
  br label %74

74:                                               ; preds = %86, %73
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* %7, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %74
  %79 = load i64*, i64** %9, align 8
  %80 = load i64, i64* %6, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = load i64*, i64** @tmpName, align 8
  %84 = load i64, i64* %6, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  store i64 %82, i64* %85, align 8
  br label %86

86:                                               ; preds = %78
  %87 = load i64, i64* %6, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %6, align 8
  br label %74

89:                                               ; preds = %74
  %90 = load i64*, i64** @tmpName, align 8
  %91 = load i64, i64* %7, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  store i64 0, i64* %92, align 8
  %93 = load i32**, i32*** %3, align 8
  %94 = load i32*, i32** %93, align 8
  %95 = load i64*, i64** @tmpName, align 8
  %96 = call i32 @APPEND_FLAG(i32* %94, i64* %95)
  br label %97

97:                                               ; preds = %89, %59
  br label %16

98:                                               ; preds = %25, %16
  br label %99

99:                                               ; preds = %98, %2
  ret void
}

declare dso_local i64* @getenv(i64*) #1

declare dso_local i64 @isspace(i64) #1

declare dso_local i32 @APPEND_FLAG(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
