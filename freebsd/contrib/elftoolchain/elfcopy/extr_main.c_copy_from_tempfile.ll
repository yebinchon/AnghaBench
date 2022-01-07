; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_main.c_copy_from_tempfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_main.c_copy_from_tempfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@EXDEV = common dso_local global i64 0, align 8
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32*, i32)* @copy_from_tempfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_from_tempfile(i8* %0, i8* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %11, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %5
  %16 = load i8*, i8** %7, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @rename(i8* %16, i8* %17)
  %19 = icmp sge i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* %9, align 4
  %22 = load i32*, i32** %10, align 8
  store i32 %21, i32* %22, align 4
  store i32 0, i32* %6, align 4
  br label %61

23:                                               ; preds = %15
  %24 = load i64, i64* @errno, align 8
  %25 = load i64, i64* @EXDEV, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 -1, i32* %6, align 4
  br label %61

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %28
  %30 = load i8*, i8** %8, align 8
  %31 = call i64 @unlink(i8* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 -1, i32* %6, align 4
  br label %61

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %5
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* @O_CREAT, align 4
  %38 = load i32, i32* @O_TRUNC, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @O_WRONLY, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @open(i8* %36, i32 %41, i32 493)
  store i32 %42, i32* %12, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store i32 -1, i32* %6, align 4
  br label %61

45:                                               ; preds = %35
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i64 @elftc_copyfile(i32 %46, i32 %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 -1, i32* %6, align 4
  br label %61

51:                                               ; preds = %45
  %52 = load i8*, i8** %7, align 8
  %53 = call i64 @unlink(i8* %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 -1, i32* %6, align 4
  br label %61

56:                                               ; preds = %51
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @close(i32 %57)
  %59 = load i32, i32* %12, align 4
  %60 = load i32*, i32** %10, align 8
  store i32 %59, i32* %60, align 4
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %56, %55, %50, %44, %33, %27, %20
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i64 @rename(i8*, i8*) #1

declare dso_local i64 @unlink(i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i64 @elftc_copyfile(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
