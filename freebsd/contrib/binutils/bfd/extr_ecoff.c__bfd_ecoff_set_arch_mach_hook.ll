; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoff.c__bfd_ecoff_set_arch_mach_hook.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoff.c__bfd_ecoff_set_arch_mach_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.internal_filehdr = type { i32 }

@bfd_arch_mips = common dso_local global i32 0, align 4
@bfd_mach_mips3000 = common dso_local global i64 0, align 8
@bfd_mach_mips6000 = common dso_local global i64 0, align 8
@bfd_mach_mips4000 = common dso_local global i64 0, align 8
@bfd_arch_alpha = common dso_local global i32 0, align 4
@bfd_arch_obscure = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_ecoff_set_arch_mach_hook(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.internal_filehdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.internal_filehdr*
  store %struct.internal_filehdr* %9, %struct.internal_filehdr** %5, align 8
  %10 = load %struct.internal_filehdr*, %struct.internal_filehdr** %5, align 8
  %11 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %24 [
    i32 134, label %13
    i32 130, label %13
    i32 133, label %13
    i32 129, label %16
    i32 132, label %16
    i32 128, label %19
    i32 131, label %19
    i32 135, label %22
  ]

13:                                               ; preds = %2, %2, %2
  %14 = load i32, i32* @bfd_arch_mips, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i64, i64* @bfd_mach_mips3000, align 8
  store i64 %15, i64* %7, align 8
  br label %26

16:                                               ; preds = %2, %2
  %17 = load i32, i32* @bfd_arch_mips, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i64, i64* @bfd_mach_mips6000, align 8
  store i64 %18, i64* %7, align 8
  br label %26

19:                                               ; preds = %2, %2
  %20 = load i32, i32* @bfd_arch_mips, align 4
  store i32 %20, i32* %6, align 4
  %21 = load i64, i64* @bfd_mach_mips4000, align 8
  store i64 %21, i64* %7, align 8
  br label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @bfd_arch_alpha, align 4
  store i32 %23, i32* %6, align 4
  store i64 0, i64* %7, align 8
  br label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @bfd_arch_obscure, align 4
  store i32 %25, i32* %6, align 4
  store i64 0, i64* %7, align 8
  br label %26

26:                                               ; preds = %24, %22, %19, %16, %13
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @bfd_default_set_arch_mach(i32* %27, i32 %28, i64 %29)
  ret i32 %30
}

declare dso_local i32 @bfd_default_set_arch_mach(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
