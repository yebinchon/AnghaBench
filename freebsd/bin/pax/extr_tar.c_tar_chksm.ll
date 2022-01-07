; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_tar.c_tar_chksm.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_tar.c_tar_chksm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLNKSUM = common dso_local global i64 0, align 8
@CHK_OFFSET = common dso_local global i32 0, align 4
@CHK_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32)* @tar_chksm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tar_chksm(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i64, i64* @BLNKSUM, align 8
  store i64 %8, i64* %7, align 8
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* @CHK_OFFSET, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %10, i64 %12
  store i8* %13, i8** %5, align 8
  br label %14

14:                                               ; preds = %18, %2
  %15 = load i8*, i8** %6, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ult i8* %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %6, align 8
  %21 = load i8, i8* %19, align 1
  %22 = sext i8 %21 to i32
  %23 = and i32 %22, 255
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* %7, align 8
  %26 = add nsw i64 %25, %24
  store i64 %26, i64* %7, align 8
  br label %14

27:                                               ; preds = %14
  %28 = load i32, i32* @CHK_LEN, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %6, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  store i8* %35, i8** %5, align 8
  br label %36

36:                                               ; preds = %40, %27
  %37 = load i8*, i8** %6, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = icmp ult i8* %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %6, align 8
  %43 = load i8, i8* %41, align 1
  %44 = sext i8 %43 to i32
  %45 = and i32 %44, 255
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %7, align 8
  %48 = add nsw i64 %47, %46
  store i64 %48, i64* %7, align 8
  br label %36

49:                                               ; preds = %36
  %50 = load i64, i64* %7, align 8
  ret i64 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
