; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_host-linux.c_linux_gt_pch_use_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_host-linux.c_linux_gt_pch_use_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i64 0, align 8
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@SSIZE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32, i64)* @linux_gt_pch_use_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_gt_pch_use_address(i8* %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %90

15:                                               ; preds = %4
  %16 = load i8*, i8** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i32, i32* @PROT_READ, align 4
  %19 = load i32, i32* @PROT_WRITE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @MAP_PRIVATE, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i64, i64* %9, align 8
  %24 = call i8* @mmap(i8* %16, i64 %17, i32 %20, i32 %21, i32 %22, i64 %23)
  store i8* %24, i8** %10, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp eq i8* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  store i32 1, i32* %5, align 4
  br label %90

29:                                               ; preds = %15
  %30 = load i8*, i8** %10, align 8
  %31 = load i64, i64* @MAP_FAILED, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = icmp ne i8* %30, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i8*, i8** %10, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @munmap(i8* %35, i64 %36)
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i32, i32* @PROT_READ, align 4
  %42 = load i32, i32* @PROT_WRITE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @MAP_PRIVATE, align 4
  %45 = load i32, i32* @MAP_ANONYMOUS, align 4
  %46 = or i32 %44, %45
  %47 = call i8* @mmap(i8* %39, i64 %40, i32 %43, i32 %46, i32 -1, i64 0)
  store i8* %47, i8** %10, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = icmp ne i8* %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %38
  %52 = load i8*, i8** %10, align 8
  %53 = load i64, i64* @MAP_FAILED, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = icmp ne i8* %52, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i8*, i8** %10, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @munmap(i8* %57, i64 %58)
  br label %60

60:                                               ; preds = %56, %51
  store i32 -1, i32* %5, align 4
  br label %90

61:                                               ; preds = %38
  %62 = load i32, i32* %8, align 4
  %63 = load i64, i64* %9, align 8
  %64 = load i32, i32* @SEEK_SET, align 4
  %65 = call i64 @lseek(i32 %62, i64 %63, i32 %64)
  %66 = icmp eq i64 %65, -1
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i32 -1, i32* %5, align 4
  br label %90

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %82, %68
  %70 = load i64, i64* %7, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %69
  %73 = load i32, i32* %8, align 4
  %74 = load i8*, i8** %6, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load i32, i32* @SSIZE_MAX, align 4
  %77 = call i32 @MIN(i64 %75, i32 %76)
  %78 = call i64 @read(i32 %73, i8* %74, i32 %77)
  store i64 %78, i64* %11, align 8
  %79 = load i64, i64* %11, align 8
  %80 = icmp sle i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  store i32 -1, i32* %5, align 4
  br label %90

82:                                               ; preds = %72
  %83 = load i8*, i8** %6, align 8
  %84 = load i64, i64* %11, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8* %85, i8** %6, align 8
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* %7, align 8
  %88 = sub i64 %87, %86
  store i64 %88, i64* %7, align 8
  br label %69

89:                                               ; preds = %69
  store i32 1, i32* %5, align 4
  br label %90

90:                                               ; preds = %89, %81, %67, %60, %28, %14
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i8* @mmap(i8*, i64, i32, i32, i32, i64) #1

declare dso_local i32 @munmap(i8*, i64) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @MIN(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
