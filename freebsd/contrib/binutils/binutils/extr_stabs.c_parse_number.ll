; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_parse_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_parse_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"numeric overflow\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*)* @parse_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_number(i8** %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = icmp ne i64* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i64, i64* @FALSE, align 8
  %12 = load i64*, i64** %5, align 8
  store i64 %11, i64* %12, align 8
  br label %13

13:                                               ; preds = %10, %2
  %14 = load i8**, i8*** %4, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %7, align 8
  store i64 0, i64* @errno, align 8
  %16 = load i8**, i8*** %4, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load i8**, i8*** %4, align 8
  %19 = call i64 @strtoul(i8* %17, i8** %18, i32 0)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = add i64 %20, 1
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %13
  %24 = load i64, i64* @errno, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %23, %13
  %27 = load i8*, i8** %7, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 45
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i64, i64* %6, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %3, align 4
  br label %48

34:                                               ; preds = %26
  %35 = load i64, i64* %6, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %3, align 4
  br label %48

37:                                               ; preds = %23
  %38 = load i64*, i64** %5, align 8
  %39 = icmp ne i64* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i64, i64* @TRUE, align 8
  %42 = load i64*, i64** %5, align 8
  store i64 %41, i64* %42, align 8
  br label %47

43:                                               ; preds = %37
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %46 = call i32 @warn_stab(i8* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %40
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %34, %31
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @warn_stab(i8*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
