; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ls/extr_util.c_len_octal.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ls/extr_util.c_len_octal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @len_octal(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call i32 @memset(i32* %5, i32 0, i32 4)
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %52, %23, %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @mbrtowc(i32* %6, i8* %14, i32 %15, i32* %5)
  store i64 %16, i64* %7, align 8
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %13, %10
  %19 = phi i1 [ false, %10 ], [ %17, %13 ]
  br i1 %19, label %20, label %56

20:                                               ; preds = %18
  %21 = load i64, i64* %7, align 8
  %22 = icmp eq i64 %21, -1
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load i64, i64* %8, align 8
  %25 = add i64 %24, 4
  store i64 %25, i64* %8, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %4, align 4
  %30 = call i32 @memset(i32* %5, i32 0, i32 4)
  br label %10

31:                                               ; preds = %20
  %32 = load i64, i64* %7, align 8
  %33 = icmp eq i64 %32, -2
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = mul nsw i32 4, %35
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %8, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %8, align 8
  br label %56

40:                                               ; preds = %31
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @iswprint(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i64, i64* %8, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %8, align 8
  br label %52

47:                                               ; preds = %40
  %48 = load i64, i64* %7, align 8
  %49 = mul i64 4, %48
  %50 = load i64, i64* %8, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %8, align 8
  br label %52

52:                                               ; preds = %47, %44
  %53 = load i64, i64* %7, align 8
  %54 = load i8*, i8** %3, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 %53
  store i8* %55, i8** %3, align 8
  br label %10

56:                                               ; preds = %34, %18
  %57 = load i64, i64* %8, align 8
  ret i64 %57
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @mbrtowc(i32*, i8*, i32, i32*) #1

declare dso_local i64 @iswprint(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
