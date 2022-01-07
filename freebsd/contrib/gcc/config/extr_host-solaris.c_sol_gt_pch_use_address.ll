; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_host-solaris.c_sol_gt_pch_use_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_host-solaris.c_sol_gt_pch_use_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@MAP_FIXED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32, i64)* @sol_gt_pch_use_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sol_gt_pch_use_address(i8* %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %85

17:                                               ; preds = %4
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* @PROT_READ, align 4
  %21 = load i32, i32* @PROT_WRITE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @MAP_PRIVATE, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i64, i64* %9, align 8
  %26 = call i8* @mmap(i8* %18, i64 %19, i32 %22, i32 %23, i32 %24, i64 %25)
  store i8* %26, i8** %10, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = icmp ne i8* %27, %28
  br i1 %29, label %30, label %79

30:                                               ; preds = %17
  %31 = call i64 (...) @getpagesize()
  store i64 %31, i64* %11, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i64, i64* @MAP_FAILED, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = icmp ne i8* %32, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i8*, i8** %10, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @munmap(i8* %37, i64 %38)
  br label %40

40:                                               ; preds = %36, %30
  store i64 0, i64* @errno, align 8
  store i64 0, i64* %13, align 8
  br label %41

41:                                               ; preds = %58, %40
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %41
  %46 = load i8*, i8** %6, align 8
  %47 = load i64, i64* %13, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @mincore(i8* %48, i64 %49, i8* %12)
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load i64, i64* @errno, align 8
  %54 = load i64, i64* @ENOMEM, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %58

57:                                               ; preds = %52, %45
  br label %62

58:                                               ; preds = %56
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* %13, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %13, align 8
  br label %41

62:                                               ; preds = %57, %41
  %63 = load i64, i64* %13, align 8
  %64 = load i64, i64* %7, align 8
  %65 = icmp uge i64 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %62
  %67 = load i8*, i8** %6, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load i32, i32* @PROT_READ, align 4
  %70 = load i32, i32* @PROT_WRITE, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @MAP_PRIVATE, align 4
  %73 = load i32, i32* @MAP_FIXED, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* %8, align 4
  %76 = load i64, i64* %9, align 8
  %77 = call i8* @mmap(i8* %67, i64 %68, i32 %71, i32 %74, i32 %75, i64 %76)
  store i8* %77, i8** %10, align 8
  br label %78

78:                                               ; preds = %66, %62
  br label %79

79:                                               ; preds = %78, %17
  %80 = load i8*, i8** %10, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = icmp eq i8* %80, %81
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 1, i32 -1
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %79, %16
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i8* @mmap(i8*, i64, i32, i32, i32, i64) #1

declare dso_local i64 @getpagesize(...) #1

declare dso_local i32 @munmap(i8*, i64) #1

declare dso_local i32 @mincore(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
