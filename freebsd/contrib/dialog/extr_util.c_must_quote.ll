; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_must_quote.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_must_quote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"\0A\09 \00", align 1
@FIX_DOUBLE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @must_quote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @must_quote(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @FALSE, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i64 @strlen(i8* %11)
  store i64 %12, i64* %4, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = call i8* (...) @quote_delimiter()
  %15 = call i64 @strcspn(i8* %13, i8* %14)
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = load i32, i32* @TRUE, align 4
  store i32 %19, i32* %3, align 4
  br label %35

20:                                               ; preds = %10
  %21 = load i8*, i8** %2, align 8
  %22 = call i64 @strcspn(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %23 = load i64, i64* %4, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @TRUE, align 4
  store i32 %26, i32* %3, align 4
  br label %34

27:                                               ; preds = %20
  %28 = load i8*, i8** %2, align 8
  %29 = load i8*, i8** @FIX_DOUBLE, align 8
  %30 = call i64 @strcspn(i8* %28, i8* %29)
  %31 = load i64, i64* %4, align 8
  %32 = icmp ne i64 %30, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %27, %25
  br label %35

35:                                               ; preds = %34, %18
  br label %38

36:                                               ; preds = %1
  %37 = load i32, i32* @TRUE, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %35
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i8* @quote_delimiter(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
