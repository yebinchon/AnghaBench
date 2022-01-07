; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_sub.c_extract_subst_tail.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_sub.c_extract_subst_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ibufp = common dso_local global i8* null, align 8
@rhbufi = common dso_local global i64 0, align 8
@GPR = common dso_local global i32 0, align 4
@ERR = common dso_local global i32 0, align 4
@GSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @extract_subst_tail(i32* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load i64*, i64** %5, align 8
  store i64 0, i64* %7, align 8
  %8 = load i32*, i32** %4, align 8
  store i32 0, i32* %8, align 4
  %9 = load i8*, i8** @ibufp, align 8
  %10 = load i8, i8* %9, align 1
  store i8 %10, i8* %6, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 10
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  store i64 0, i64* @rhbufi, align 8
  %14 = load i32, i32* @GPR, align 4
  %15 = load i32*, i32** %4, align 8
  store i32 %14, i32* %15, align 4
  store i32 0, i32* %3, align 4
  br label %69

16:                                               ; preds = %2
  %17 = call i32* (...) @extract_subst_template()
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @ERR, align 4
  store i32 %20, i32* %3, align 4
  br label %69

21:                                               ; preds = %16
  %22 = load i8*, i8** @ibufp, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 10
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @GPR, align 4
  %28 = load i32*, i32** %4, align 8
  store i32 %27, i32* %28, align 4
  store i32 0, i32* %3, align 4
  br label %69

29:                                               ; preds = %21
  %30 = load i8*, i8** @ibufp, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8, i8* %6, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i8*, i8** @ibufp, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** @ibufp, align 8
  br label %39

39:                                               ; preds = %36, %29
  br label %40

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %41
  %43 = load i8*, i8** @ibufp, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp sle i32 49, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load i8*, i8** @ibufp, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp sle i32 %50, 57
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i64*, i64** %5, align 8
  %54 = load i64, i64* %53, align 8
  %55 = load i8*, i8** @ibufp, align 8
  %56 = call i32 @STRTOL(i64 %54, i8* %55)
  store i32 0, i32* %3, align 4
  br label %69

57:                                               ; preds = %47, %42
  %58 = load i8*, i8** @ibufp, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 103
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i8*, i8** @ibufp, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** @ibufp, align 8
  %65 = load i32, i32* @GSG, align 4
  %66 = load i32*, i32** %4, align 8
  store i32 %65, i32* %66, align 4
  store i32 0, i32* %3, align 4
  br label %69

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %62, %52, %26, %19, %13
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32* @extract_subst_template(...) #1

declare dso_local i32 @STRTOL(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
