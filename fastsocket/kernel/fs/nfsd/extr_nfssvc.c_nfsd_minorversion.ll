; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfssvc.c_nfsd_minorversion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfssvc.c_nfsd_minorversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NFSD_SUPPORTED_MINOR_VERSION = common dso_local global i64 0, align 8
@nfsd_supported_minorversion = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd_minorversion(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @NFSD_SUPPORTED_MINOR_VERSION, align 8
  %8 = icmp sgt i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %32

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %31 [
    i32 129, label %12
    i32 130, label %14
    i32 128, label %21
    i32 131, label %26
  ]

12:                                               ; preds = %10
  %13 = load i64, i64* %4, align 8
  store i64 %13, i64* @nfsd_supported_minorversion, align 8
  br label %31

14:                                               ; preds = %10
  %15 = load i64, i64* %4, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %32

18:                                               ; preds = %14
  %19 = load i64, i64* %4, align 8
  %20 = sub nsw i64 %19, 1
  store i64 %20, i64* @nfsd_supported_minorversion, align 8
  br label %31

21:                                               ; preds = %10
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @nfsd_supported_minorversion, align 8
  %24 = icmp sle i64 %22, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %3, align 4
  br label %32

26:                                               ; preds = %10
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @NFSD_SUPPORTED_MINOR_VERSION, align 8
  %29 = icmp sle i64 %27, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %32

31:                                               ; preds = %10, %18, %12
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %26, %21, %17, %9
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
