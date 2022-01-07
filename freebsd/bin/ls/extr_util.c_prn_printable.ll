; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ls/extr_util.c_prn_printable.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ls/extr_util.c_prn_printable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MB_LEN_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prn_printable(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = call i32 @memset(i32* %3, i32 0, i32 4)
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %58, %35, %17, %1
  %10 = load i8*, i8** %2, align 8
  %11 = load i32, i32* @MB_LEN_MAX, align 4
  %12 = call i64 @mbrtowc(i32* %4, i8* %10, i32 %11, i32* %3)
  store i64 %12, i64* %7, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %68

14:                                               ; preds = %9
  %15 = load i64, i64* %7, align 8
  %16 = icmp eq i64 %15, -1
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = call i32 @putchar(i8 zeroext 63)
  %19 = load i8*, i8** %2, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %2, align 8
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  %23 = call i32 @memset(i32* %3, i32 0, i32 4)
  br label %9

24:                                               ; preds = %14
  %25 = load i64, i64* %7, align 8
  %26 = icmp eq i64 %25, -2
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = call i32 @putchar(i8 zeroext 63)
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %68

31:                                               ; preds = %24
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @iswprint(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = call i32 @putchar(i8 zeroext 63)
  %37 = load i64, i64* %7, align 8
  %38 = load i8*, i8** %2, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 %37
  store i8* %39, i8** %2, align 8
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %9

42:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %55, %42
  %44 = load i32, i32* %5, align 4
  %45 = load i64, i64* %7, align 8
  %46 = trunc i64 %45 to i32
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load i8*, i8** %2, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = call i32 @putchar(i8 zeroext %53)
  br label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %43

58:                                               ; preds = %43
  %59 = load i64, i64* %7, align 8
  %60 = load i8*, i8** %2, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 %59
  store i8* %61, i8** %2, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i64 @wcwidth(i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %6, align 4
  br label %9

68:                                               ; preds = %27, %9
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @mbrtowc(i32*, i8*, i32, i32*) #1

declare dso_local i32 @putchar(i8 zeroext) #1

declare dso_local i32 @iswprint(i32) #1

declare dso_local i64 @wcwidth(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
