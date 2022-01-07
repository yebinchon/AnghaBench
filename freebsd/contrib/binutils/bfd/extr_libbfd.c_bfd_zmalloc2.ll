; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_libbfd.c_bfd_zmalloc2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_libbfd.c_bfd_zmalloc2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HALF_BFD_SIZE_TYPE = common dso_local global i64 0, align 8
@bfd_error_no_memory = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @bfd_zmalloc2(i64 %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = or i64 %7, %8
  %10 = load i64, i64* @HALF_BFD_SIZE_TYPE, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = sdiv i64 -1, %17
  %19 = icmp sgt i64 %16, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @bfd_error_no_memory, align 4
  %22 = call i32 @bfd_set_error(i32 %21)
  store i8* null, i8** %3, align 8
  br label %51

23:                                               ; preds = %15, %12, %2
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = mul nsw i64 %25, %24
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @bfd_error_no_memory, align 4
  %32 = call i32 @bfd_set_error(i32 %31)
  store i8* null, i8** %3, align 8
  br label %51

33:                                               ; preds = %23
  %34 = load i64, i64* %5, align 8
  %35 = call i8* @malloc(i64 %34)
  store i8* %35, i8** %6, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load i8*, i8** %6, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @bfd_error_no_memory, align 4
  %43 = call i32 @bfd_set_error(i32 %42)
  br label %48

44:                                               ; preds = %38
  %45 = load i8*, i8** %6, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @memset(i8* %45, i32 0, i64 %46)
  br label %48

48:                                               ; preds = %44, %41
  br label %49

49:                                               ; preds = %48, %33
  %50 = load i8*, i8** %6, align 8
  store i8* %50, i8** %3, align 8
  br label %51

51:                                               ; preds = %49, %30, %20
  %52 = load i8*, i8** %3, align 8
  ret i8* %52
}

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
