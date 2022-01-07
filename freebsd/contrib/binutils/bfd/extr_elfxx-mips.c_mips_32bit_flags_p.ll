; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c_mips_32bit_flags_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c_mips_32bit_flags_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EF_MIPS_32BITMODE = common dso_local global i32 0, align 4
@EF_MIPS_ABI = common dso_local global i32 0, align 4
@E_MIPS_ABI_O32 = common dso_local global i32 0, align 4
@E_MIPS_ABI_EABI32 = common dso_local global i32 0, align 4
@EF_MIPS_ARCH = common dso_local global i32 0, align 4
@E_MIPS_ARCH_1 = common dso_local global i32 0, align 4
@E_MIPS_ARCH_2 = common dso_local global i32 0, align 4
@E_MIPS_ARCH_32 = common dso_local global i32 0, align 4
@E_MIPS_ARCH_32R2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mips_32bit_flags_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_32bit_flags_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @EF_MIPS_32BITMODE, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %43, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @EF_MIPS_ABI, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @E_MIPS_ABI_O32, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %43, label %13

13:                                               ; preds = %7
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @EF_MIPS_ABI, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @E_MIPS_ABI_EABI32, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %43, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @EF_MIPS_ARCH, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @E_MIPS_ARCH_1, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %43, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @EF_MIPS_ARCH, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @E_MIPS_ARCH_2, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %43, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @EF_MIPS_ARCH, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @E_MIPS_ARCH_32, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @EF_MIPS_ARCH, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @E_MIPS_ARCH_32R2, align 4
  %42 = icmp eq i32 %40, %41
  br label %43

43:                                               ; preds = %37, %31, %25, %19, %13, %7, %1
  %44 = phi i1 [ true, %31 ], [ true, %25 ], [ true, %19 ], [ true, %13 ], [ true, %7 ], [ true, %1 ], [ %42, %37 ]
  %45 = zext i1 %44 to i32
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
