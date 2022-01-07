; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_vmcore.c_read_from_oldmem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_vmcore.c_read_from_oldmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64*, i32)* @read_from_oldmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_from_oldmem(i8* %0, i64 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %13, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %71

18:                                               ; preds = %4
  %19 = load i64*, i64** %8, align 8
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PAGE_SIZE, align 8
  %22 = urem i64 %20, %21
  store i64 %22, i64* %11, align 8
  %23 = load i64*, i64** %8, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PAGE_SIZE, align 8
  %26 = udiv i64 %24, %25
  store i64 %26, i64* %10, align 8
  br label %27

27:                                               ; preds = %66, %18
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @PAGE_SIZE, align 8
  %30 = load i64, i64* %11, align 8
  %31 = sub i64 %29, %30
  %32 = icmp ugt i64 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i64, i64* @PAGE_SIZE, align 8
  %35 = load i64, i64* %11, align 8
  %36 = sub i64 %34, %35
  store i64 %36, i64* %12, align 8
  br label %39

37:                                               ; preds = %27
  %38 = load i64, i64* %7, align 8
  store i64 %38, i64* %12, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = load i64, i64* %10, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i64 @copy_oldmem_page(i64 %40, i8* %41, i64 %42, i64 %43, i32 %44)
  store i64 %45, i64* %14, align 8
  %46 = load i64, i64* %14, align 8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i64, i64* %14, align 8
  store i64 %49, i64* %5, align 8
  br label %71

50:                                               ; preds = %39
  %51 = load i64, i64* %12, align 8
  %52 = load i64*, i64** %8, align 8
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, %51
  store i64 %54, i64* %52, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* %7, align 8
  %57 = sub i64 %56, %55
  store i64 %57, i64* %7, align 8
  %58 = load i64, i64* %12, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 %58
  store i8* %60, i8** %6, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* %13, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %13, align 8
  %64 = load i64, i64* %10, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %66

66:                                               ; preds = %50
  %67 = load i64, i64* %7, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %27, label %69

69:                                               ; preds = %66
  %70 = load i64, i64* %13, align 8
  store i64 %70, i64* %5, align 8
  br label %71

71:                                               ; preds = %69, %48, %17
  %72 = load i64, i64* %5, align 8
  ret i64 %72
}

declare dso_local i64 @copy_oldmem_page(i64, i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
