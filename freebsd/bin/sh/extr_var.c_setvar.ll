; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_var.c_setvar.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_var.c_setvar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"%.*s: bad variable name\00", align 1
@VUNSET = common dso_local global i32 0, align 4
@INTOFF = common dso_local global i32 0, align 4
@INTON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setvar(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %12, align 4
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i8, i8* %14, align 1
  %16 = call i32 @is_name(i8 signext %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 1, i32* %12, align 4
  br label %19

19:                                               ; preds = %18, %3
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %7, align 8
  br label %22

22:                                               ; preds = %39, %19
  %23 = load i8*, i8** %7, align 8
  %24 = load i8, i8* %23, align 1
  %25 = call i32 @is_in_name(i8 signext %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %22
  %28 = load i8*, i8** %7, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** %7, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 61
  br i1 %36, label %37, label %38

37:                                               ; preds = %32, %27
  br label %42

38:                                               ; preds = %32
  store i32 1, i32* %12, align 4
  br label %39

39:                                               ; preds = %38, %22
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %7, align 8
  br label %22

42:                                               ; preds = %37
  %43 = load i8*, i8** %7, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  store i64 %47, i64* %9, align 8
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load i64, i64* %9, align 8
  %52 = trunc i64 %51 to i32
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %52, i8* %53)
  br label %55

55:                                               ; preds = %50, %42
  %56 = load i64, i64* %9, align 8
  %57 = add i64 %56, 2
  store i64 %57, i64* %8, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* @VUNSET, align 4
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  store i64 0, i64* %10, align 8
  br label %70

64:                                               ; preds = %55
  %65 = load i8*, i8** %5, align 8
  %66 = call i64 @strlen(i8* %65)
  store i64 %66, i64* %10, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %8, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %8, align 8
  br label %70

70:                                               ; preds = %64, %60
  %71 = load i32, i32* @INTOFF, align 4
  %72 = load i64, i64* %8, align 8
  %73 = call i8* @ckmalloc(i64 %72)
  store i8* %73, i8** %11, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = load i8*, i8** %4, align 8
  %76 = load i64, i64* %9, align 8
  %77 = call i32 @memcpy(i8* %74, i8* %75, i64 %76)
  %78 = load i8*, i8** %11, align 8
  %79 = load i64, i64* %9, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8 61, i8* %80, align 1
  %81 = load i8*, i8** %5, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %92

83:                                               ; preds = %70
  %84 = load i8*, i8** %11, align 8
  %85 = load i64, i64* %9, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = load i8*, i8** %5, align 8
  %89 = load i64, i64* %10, align 8
  %90 = add i64 %89, 1
  %91 = call i32 @memcpy(i8* %87, i8* %88, i64 %90)
  br label %97

92:                                               ; preds = %70
  %93 = load i8*, i8** %11, align 8
  %94 = load i64, i64* %9, align 8
  %95 = add i64 %94, 1
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  store i8 0, i8* %96, align 1
  br label %97

97:                                               ; preds = %92, %83
  %98 = load i8*, i8** %11, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @setvareq(i8* %98, i32 %99)
  %101 = load i32, i32* @INTON, align 4
  ret void
}

declare dso_local i32 @is_name(i8 signext) #1

declare dso_local i32 @is_in_name(i8 signext) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @ckmalloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @setvareq(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
