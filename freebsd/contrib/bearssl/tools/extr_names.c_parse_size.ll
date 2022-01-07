; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_names.c_parse_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_names.c_parse_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ERROR: not a valid digit: '%c'\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"ERROR: value too large: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @parse_size(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 48
  br i1 %15, label %16, label %31

16:                                               ; preds = %1
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 120
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 88
  br i1 %27, label %28, label %31

28:                                               ; preds = %22, %16
  store i32 16, i32* %4, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 2
  store i8* %30, i8** %6, align 8
  br label %32

31:                                               ; preds = %22, %1
  store i32 10, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %28
  store i64 0, i64* %5, align 8
  br label %33

33:                                               ; preds = %81, %32
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %6, align 8
  %36 = load i8, i8* %34, align 1
  %37 = sext i8 %36 to i32
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i64, i64* %5, align 8
  store i64 %41, i64* %2, align 8
  br label %83

42:                                               ; preds = %33
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @hexval(i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47, %42
  %52 = load i32, i32* @stderr, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %53)
  store i64 -1, i64* %2, align 8
  br label %83

55:                                               ; preds = %47
  %56 = load i64, i64* %5, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %56, %58
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %59, %61
  store i64 %62, i64* %9, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp ult i64 %63, %65
  br i1 %66, label %77, label %67

67:                                               ; preds = %55
  %68 = load i64, i64* %9, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = udiv i64 %68, %70
  %72 = load i64, i64* %5, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %77, label %74

74:                                               ; preds = %67
  %75 = load i64, i64* %9, align 8
  %76 = icmp eq i64 %75, -1
  br i1 %76, label %77, label %81

77:                                               ; preds = %74, %67, %55
  %78 = load i32, i32* @stderr, align 4
  %79 = load i8*, i8** %3, align 8
  %80 = call i32 (i32, i8*, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %79)
  store i64 -1, i64* %2, align 8
  br label %83

81:                                               ; preds = %74
  %82 = load i64, i64* %9, align 8
  store i64 %82, i64* %5, align 8
  br label %33

83:                                               ; preds = %77, %51, %40
  %84 = load i64, i64* %2, align 8
  ret i64 %84
}

declare dso_local i32 @hexval(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
