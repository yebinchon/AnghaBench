; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_opts.c_backslash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_opts.c_backslash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XLOG_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Empty backslash escape\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Too large character constant %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8**)* @backslash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @backslash(i8** %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8**, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %8 = load i8**, i8*** %3, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 1
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load i32, i32* @XLOG_USER, align 4
  %16 = call i32 (i32, i8*, ...) @plog(i32 %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %17 = load i8**, i8*** %3, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load i8, i8* %18, align 1
  store i8 %19, i8* %2, align 1
  br label %95

20:                                               ; preds = %1
  %21 = load i8**, i8*** %3, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 92
  br i1 %25, label %26, label %89

26:                                               ; preds = %20
  %27 = load i8**, i8*** %3, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %27, align 8
  %30 = load i8**, i8*** %3, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  switch i32 %33, label %84 [
    i32 103, label %34
    i32 98, label %35
    i32 116, label %36
    i32 110, label %37
    i32 118, label %38
    i32 102, label %39
    i32 114, label %40
    i32 101, label %41
    i32 48, label %42
    i32 49, label %42
    i32 50, label %42
    i32 51, label %42
    i32 52, label %42
    i32 53, label %42
    i32 54, label %42
    i32 55, label %42
  ]

34:                                               ; preds = %26
  store i8 7, i8* %4, align 1
  br label %88

35:                                               ; preds = %26
  store i8 8, i8* %4, align 1
  br label %88

36:                                               ; preds = %26
  store i8 9, i8* %4, align 1
  br label %88

37:                                               ; preds = %26
  store i8 10, i8* %4, align 1
  br label %88

38:                                               ; preds = %26
  store i8 11, i8* %4, align 1
  br label %88

39:                                               ; preds = %26
  store i8 12, i8* %4, align 1
  br label %88

40:                                               ; preds = %26
  store i8 13, i8* %4, align 1
  br label %88

41:                                               ; preds = %26
  store i8 27, i8* %4, align 1
  br label %88

42:                                               ; preds = %26, %26, %26, %26, %26, %26, %26, %26
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %67, %42
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 3
  br i1 %45, label %46, label %70

46:                                               ; preds = %43
  %47 = load i8**, i8*** %3, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %47, align 8
  %50 = load i8, i8* %48, align 1
  %51 = sext i8 %50 to i32
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 48
  br i1 %53, label %57, label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %7, align 4
  %56 = icmp sgt i32 %55, 55
  br i1 %56, label %57, label %61

57:                                               ; preds = %54, %46
  %58 = load i8**, i8*** %3, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 -1
  store i8* %60, i8** %58, align 8
  br label %70

61:                                               ; preds = %54
  %62 = load i32, i32* %6, align 4
  %63 = shl i32 %62, 3
  %64 = load i32, i32* %7, align 4
  %65 = sub nsw i32 %64, 48
  %66 = or i32 %63, %65
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %43

70:                                               ; preds = %57, %43
  %71 = load i32, i32* %6, align 4
  %72 = and i32 %71, -256
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* @XLOG_USER, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 (i32, i8*, ...) @plog(i32 %75, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %74, %70
  %79 = load i32, i32* %6, align 4
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %4, align 1
  %81 = load i8**, i8*** %3, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 -1
  store i8* %83, i8** %81, align 8
  br label %88

84:                                               ; preds = %26
  %85 = load i8**, i8*** %3, align 8
  %86 = load i8*, i8** %85, align 8
  %87 = load i8, i8* %86, align 1
  store i8 %87, i8* %4, align 1
  br label %88

88:                                               ; preds = %84, %78, %41, %40, %39, %38, %37, %36, %35, %34
  br label %93

89:                                               ; preds = %20
  %90 = load i8**, i8*** %3, align 8
  %91 = load i8*, i8** %90, align 8
  %92 = load i8, i8* %91, align 1
  store i8 %92, i8* %4, align 1
  br label %93

93:                                               ; preds = %89, %88
  %94 = load i8, i8* %4, align 1
  store i8 %94, i8* %2, align 1
  br label %95

95:                                               ; preds = %93, %14
  %96 = load i8, i8* %2, align 1
  ret i8 %96
}

declare dso_local i32 @plog(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
