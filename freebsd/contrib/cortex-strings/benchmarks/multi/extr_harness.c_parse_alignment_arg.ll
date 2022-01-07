; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/cortex-strings/benchmarks/multi/extr_harness.c_parse_alignment_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/cortex-strings/benchmarks/multi/extr_harness.c_parse_alignment_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Alignment should be in the range [1, 256].\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32*, i32*)* @parse_alignment_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_alignment_arg(i8* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i64 0, i64* @errno, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @strtol(i8* %11, i8** %10, i32 0)
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* @errno, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @usage(i8* %16)
  br label %18

18:                                               ; preds = %15, %4
  %19 = load i64, i64* %9, align 8
  %20 = trunc i64 %19 to i32
  %21 = load i32*, i32** %7, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i64, i64* %9, align 8
  %23 = icmp sgt i64 %22, 256
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i64, i64* %9, align 8
  %26 = icmp slt i64 %25, 1
  br i1 %26, label %27, label %31

27:                                               ; preds = %24, %18
  %28 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @usage(i8* %29)
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i64, i64* %9, align 8
  %33 = icmp eq i64 %32, 256
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i64 0, i64* %9, align 8
  br label %35

35:                                               ; preds = %34, %31
  %36 = load i8*, i8** %10, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %67

38:                                               ; preds = %35
  %39 = load i8*, i8** %10, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 58
  br i1 %42, label %43, label %67

43:                                               ; preds = %38
  store i64 0, i64* @errno, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = call i64 @strtol(i8* %45, i8** null, i32 0)
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* @errno, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @usage(i8* %50)
  br label %52

52:                                               ; preds = %49, %43
  %53 = load i64, i64* %9, align 8
  %54 = icmp sgt i64 %53, 256
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i64, i64* %9, align 8
  %57 = icmp slt i64 %56, 1
  br i1 %57, label %58, label %62

58:                                               ; preds = %55, %52
  %59 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @usage(i8* %60)
  br label %62

62:                                               ; preds = %58, %55
  %63 = load i64, i64* %9, align 8
  %64 = icmp eq i64 %63, 256
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i64 0, i64* %9, align 8
  br label %66

66:                                               ; preds = %65, %62
  br label %67

67:                                               ; preds = %66, %38, %35
  %68 = load i64, i64* %9, align 8
  %69 = trunc i64 %68 to i32
  %70 = load i32*, i32** %8, align 8
  store i32 %69, i32* %70, align 4
  ret void
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
