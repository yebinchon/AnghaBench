; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_memcmp.c_memcmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_memcmp.c_memcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcmp(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %9, align 8
  br label %12

12:                                               ; preds = %38, %3
  %13 = load i64, i64* %7, align 8
  %14 = add i64 %13, -1
  store i64 %14, i64* %7, align 8
  %15 = icmp ugt i64 %13, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %12
  %17 = load i8*, i8** %8, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %8, align 8
  %19 = load i8, i8* %17, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8*, i8** %9, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %9, align 8
  %23 = load i8, i8* %21, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp ne i32 %20, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %16
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 -1
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8*, i8** %9, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 -1
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp slt i32 %30, %34
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 -1, i32 1
  store i32 %37, i32* %4, align 4
  br label %40

38:                                               ; preds = %16
  br label %12

39:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %26
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
