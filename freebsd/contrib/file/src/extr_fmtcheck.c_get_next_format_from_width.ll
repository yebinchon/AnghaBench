; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/file/src/extr_fmtcheck.c_get_next_format_from_width.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/file/src/extr_fmtcheck.c_get_next_format_from_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FMTCHECK_PRECISION = common dso_local global i32 0, align 4
@FMTCHECK_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @get_next_format_from_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_next_format_from_width(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  %5 = load i8**, i8*** %3, align 8
  %6 = load i8*, i8** %5, align 8
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 46
  br i1 %10, label %11, label %42

11:                                               ; preds = %1
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 42
  br i1 %17, label %18, label %23

18:                                               ; preds = %11
  %19 = load i8**, i8*** %3, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* @FMTCHECK_PRECISION, align 4
  %22 = call i32 @RETURN(i8** %19, i8* %20, i32 %21)
  br label %23

23:                                               ; preds = %18, %11
  br label %24

24:                                               ; preds = %29, %23
  %25 = load i8*, i8** %4, align 8
  %26 = load i8, i8* %25, align 1
  %27 = call i64 @isdigit(i8 zeroext %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %4, align 8
  br label %24

32:                                               ; preds = %24
  %33 = load i8*, i8** %4, align 8
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = load i8**, i8*** %3, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* @FMTCHECK_UNKNOWN, align 4
  %40 = call i32 @RETURN(i8** %37, i8* %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %32
  br label %42

42:                                               ; preds = %41, %1
  %43 = load i8**, i8*** %3, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = load i8**, i8*** %3, align 8
  %46 = call i32 @get_next_format_from_precision(i8** %45)
  %47 = call i32 @RETURN(i8** %43, i8* %44, i32 %46)
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @RETURN(i8**, i8*, i32) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i32 @get_next_format_from_precision(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
