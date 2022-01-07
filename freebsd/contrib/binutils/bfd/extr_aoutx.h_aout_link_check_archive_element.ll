; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_aoutx.h_aout_link_check_archive_element.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_aoutx.h_aout_link_check_archive_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.bfd_link_info*, i64*)* @aout_link_check_archive_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @aout_link_check_archive_element(i32* %0, %struct.bfd_link_info* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.bfd_link_info*, align 8
  %7 = alloca i64*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @aout_get_external_symbols(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = load i64, i64* @FALSE, align 8
  store i64 %12, i64* %4, align 8
  br label %51

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %16 = load i64*, i64** %7, align 8
  %17 = call i32 @aout_link_check_ar_symbols(i32* %14, %struct.bfd_link_info* %15, i64* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = load i64, i64* @FALSE, align 8
  store i64 %20, i64* %4, align 8
  br label %51

21:                                               ; preds = %13
  %22 = load i64*, i64** %7, align 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %28 = call i32 @aout_link_add_symbols(i32* %26, %struct.bfd_link_info* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = load i64, i64* @FALSE, align 8
  store i64 %31, i64* %4, align 8
  br label %51

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %21
  %34 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %35 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i64*, i64** %7, align 8
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %38, %33
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @aout_link_free_symbols(i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* @FALSE, align 8
  store i64 %47, i64* %4, align 8
  br label %51

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %38
  %50 = load i64, i64* @TRUE, align 8
  store i64 %50, i64* %4, align 8
  br label %51

51:                                               ; preds = %49, %46, %30, %19, %11
  %52 = load i64, i64* %4, align 8
  ret i64 %52
}

declare dso_local i32 @aout_get_external_symbols(i32*) #1

declare dso_local i32 @aout_link_check_ar_symbols(i32*, %struct.bfd_link_info*, i64*) #1

declare dso_local i32 @aout_link_add_symbols(i32*, %struct.bfd_link_info*) #1

declare dso_local i32 @aout_link_free_symbols(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
