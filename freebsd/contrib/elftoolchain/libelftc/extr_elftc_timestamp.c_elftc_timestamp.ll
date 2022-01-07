; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_elftc_timestamp.c_elftc_timestamp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_elftc_timestamp.c_elftc_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"SOURCE_DATE_EPOCH\00", align 1
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elftc_timestamp(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i64* %0, i64** %3, align 8
  %7 = call i8* @getenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i8* %7, i8** %5, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %30

9:                                                ; preds = %1
  store i64 0, i64* @errno, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @strtoll(i8* %10, i8** %6, i32 10)
  store i64 %11, i64* %4, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load i64, i64* @EINVAL, align 8
  store i64 %17, i64* @errno, align 8
  br label %18

18:                                               ; preds = %16, %9
  %19 = load i64, i64* %4, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i64, i64* @ERANGE, align 8
  store i64 %22, i64* @errno, align 8
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i64, i64* @errno, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 -1, i32* %2, align 4
  br label %33

27:                                               ; preds = %23
  %28 = load i64, i64* %4, align 8
  %29 = load i64*, i64** %3, align 8
  store i64 %28, i64* %29, align 8
  store i32 0, i32* %2, align 4
  br label %33

30:                                               ; preds = %1
  %31 = call i64 @time(i32* null)
  %32 = load i64*, i64** %3, align 8
  store i64 %31, i64* %32, align 8
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %30, %27, %26
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strtoll(i8*, i8**, i32) #1

declare dso_local i64 @time(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
