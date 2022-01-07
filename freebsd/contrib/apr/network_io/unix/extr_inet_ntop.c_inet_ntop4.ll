; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr/network_io/unix/extr_inet_ntop.c_inet_ntop4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr/network_io/unix/extr_inet_ntop.c_inet_ntop4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOSPC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i64)* @inet_ntop4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @inet_ntop4(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 16, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %10, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp slt i64 %13, 16
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOSPC, align 4
  store i32 %16, i32* @errno, align 4
  store i8* null, i8** %4, align 8
  br label %83

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %76, %17
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %5, align 8
  %21 = load i8, i8* %19, align 1
  store i8 %21, i8* %11, align 1
  %22 = load i8, i8* %11, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp sgt i32 %23, 99
  br i1 %24, label %25, label %48

25:                                               ; preds = %18
  %26 = load i8, i8* %11, align 1
  %27 = zext i8 %26 to i32
  %28 = sdiv i32 %27, 100
  %29 = add nsw i32 48, %28
  %30 = trunc i32 %29 to i8
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %10, align 8
  store i8 %30, i8* %31, align 1
  %33 = load i8, i8* %11, align 1
  %34 = zext i8 %33 to i32
  %35 = srem i32 %34, 100
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %11, align 1
  %37 = load i8, i8* %11, align 1
  %38 = zext i8 %37 to i32
  %39 = sdiv i32 %38, 10
  %40 = add nsw i32 48, %39
  %41 = trunc i32 %40 to i8
  %42 = load i8*, i8** %10, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %10, align 8
  store i8 %41, i8* %42, align 1
  %44 = load i8, i8* %11, align 1
  %45 = zext i8 %44 to i32
  %46 = srem i32 %45, 10
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %11, align 1
  br label %65

48:                                               ; preds = %18
  %49 = load i8, i8* %11, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp sgt i32 %50, 9
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = load i8, i8* %11, align 1
  %54 = zext i8 %53 to i32
  %55 = sdiv i32 %54, 10
  %56 = add nsw i32 48, %55
  %57 = trunc i32 %56 to i8
  %58 = load i8*, i8** %10, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %10, align 8
  store i8 %57, i8* %58, align 1
  %60 = load i8, i8* %11, align 1
  %61 = zext i8 %60 to i32
  %62 = srem i32 %61, 10
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %11, align 1
  br label %64

64:                                               ; preds = %52, %48
  br label %65

65:                                               ; preds = %64, %25
  %66 = load i8, i8* %11, align 1
  %67 = zext i8 %66 to i32
  %68 = add nsw i32 48, %67
  %69 = trunc i32 %68 to i8
  %70 = load i8*, i8** %10, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %10, align 8
  store i8 %69, i8* %70, align 1
  %72 = load i8*, i8** %10, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %10, align 8
  store i8 46, i8* %72, align 1
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %65
  %77 = load i32, i32* %9, align 4
  %78 = icmp slt i32 %77, 4
  br i1 %78, label %18, label %79

79:                                               ; preds = %76
  %80 = load i8*, i8** %10, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 -1
  store i8* %81, i8** %10, align 8
  store i8 0, i8* %81, align 1
  %82 = load i8*, i8** %6, align 8
  store i8* %82, i8** %4, align 8
  br label %83

83:                                               ; preds = %79, %15
  %84 = load i8*, i8** %4, align 8
  ret i8* %84
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
