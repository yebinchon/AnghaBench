; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bout.c_b_out_set_arch_mach.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bout.c_b_out_set_arch_mach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bfd_arch_unknown = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@bfd_arch_i960 = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64)* @b_out_set_arch_mach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b_out_set_arch_mach(i32* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @bfd_default_set_arch_mach(i32* %8, i32 %9, i64 %10)
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @bfd_arch_unknown, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @TRUE, align 4
  store i32 %16, i32* %4, align 4
  br label %29

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @bfd_arch_i960, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i64, i64* %7, align 8
  switch i64 %22, label %25 [
    i64 134, label %23
    i64 130, label %23
    i64 129, label %23
    i64 128, label %23
    i64 135, label %23
    i64 131, label %23
    i64 132, label %23
    i64 133, label %23
    i64 0, label %23
  ]

23:                                               ; preds = %21, %21, %21, %21, %21, %21, %21, %21, %21
  %24 = load i32, i32* @TRUE, align 4
  store i32 %24, i32* %4, align 4
  br label %29

25:                                               ; preds = %21
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %4, align 4
  br label %29

27:                                               ; preds = %17
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %27, %25, %23, %15
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @bfd_default_set_arch_mach(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
