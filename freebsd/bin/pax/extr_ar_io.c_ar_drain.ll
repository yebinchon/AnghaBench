; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_ar_io.c_ar_drain.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_ar_io.c_ar_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXBLK = common dso_local global i32 0, align 4
@artyp = common dso_local global i64 0, align 8
@ISPIPE = common dso_local global i64 0, align 8
@lstrval = common dso_local global i32 0, align 4
@arfd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar_drain() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @MAXBLK, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %2, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %3, align 8
  %9 = load i64, i64* @artyp, align 8
  %10 = load i64, i64* @ISPIPE, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %15, label %12

12:                                               ; preds = %0
  %13 = load i32, i32* @lstrval, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %0
  store i32 1, i32* %4, align 4
  br label %25

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %22, %16
  %18 = load i32, i32* @arfd, align 4
  %19 = trunc i64 %6 to i32
  %20 = call i32 @read(i32 %18, i8* %8, i32 %19)
  store i32 %20, i32* %1, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %17

23:                                               ; preds = %17
  %24 = load i32, i32* %1, align 4
  store i32 %24, i32* @lstrval, align 4
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %23, %15
  %26 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %26)
  %27 = load i32, i32* %4, align 4
  switch i32 %27, label %29 [
    i32 0, label %28
    i32 1, label %28
  ]

28:                                               ; preds = %25, %25
  ret void

29:                                               ; preds = %25
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @read(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
