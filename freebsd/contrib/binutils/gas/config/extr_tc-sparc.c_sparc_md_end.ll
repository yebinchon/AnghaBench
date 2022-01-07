; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-sparc.c_sparc_md_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-sparc.c_sparc_md_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bfd_mach_sparc = common dso_local global i64 0, align 8
@sparc_arch_size = common dso_local global i32 0, align 4
@current_architecture = common dso_local global i32 0, align 4
@bfd_mach_sparc_v9a = common dso_local global i64 0, align 8
@bfd_mach_sparc_v9b = common dso_local global i64 0, align 8
@bfd_mach_sparc_v9 = common dso_local global i64 0, align 8
@bfd_mach_sparc_sparclet = common dso_local global i64 0, align 8
@bfd_mach_sparc_v8plus = common dso_local global i64 0, align 8
@bfd_mach_sparc_v8plusa = common dso_local global i64 0, align 8
@bfd_mach_sparc_v8plusb = common dso_local global i64 0, align 8
@stdoutput = common dso_local global i32 0, align 4
@bfd_arch_sparc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sparc_md_end() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @bfd_mach_sparc, align 8
  store i64 %2, i64* %1, align 8
  %3 = load i32, i32* @sparc_arch_size, align 4
  %4 = icmp eq i32 %3, 64
  br i1 %4, label %5, label %14

5:                                                ; preds = %0
  %6 = load i32, i32* @current_architecture, align 4
  switch i32 %6, label %11 [
    i32 129, label %7
    i32 128, label %9
  ]

7:                                                ; preds = %5
  %8 = load i64, i64* @bfd_mach_sparc_v9a, align 8
  store i64 %8, i64* %1, align 8
  br label %13

9:                                                ; preds = %5
  %10 = load i64, i64* @bfd_mach_sparc_v9b, align 8
  store i64 %10, i64* %1, align 8
  br label %13

11:                                               ; preds = %5
  %12 = load i64, i64* @bfd_mach_sparc_v9, align 8
  store i64 %12, i64* %1, align 8
  br label %13

13:                                               ; preds = %11, %9, %7
  br label %26

14:                                               ; preds = %0
  %15 = load i32, i32* @current_architecture, align 4
  switch i32 %15, label %24 [
    i32 131, label %16
    i32 130, label %18
    i32 129, label %20
    i32 128, label %22
  ]

16:                                               ; preds = %14
  %17 = load i64, i64* @bfd_mach_sparc_sparclet, align 8
  store i64 %17, i64* %1, align 8
  br label %25

18:                                               ; preds = %14
  %19 = load i64, i64* @bfd_mach_sparc_v8plus, align 8
  store i64 %19, i64* %1, align 8
  br label %25

20:                                               ; preds = %14
  %21 = load i64, i64* @bfd_mach_sparc_v8plusa, align 8
  store i64 %21, i64* %1, align 8
  br label %25

22:                                               ; preds = %14
  %23 = load i64, i64* @bfd_mach_sparc_v8plusb, align 8
  store i64 %23, i64* %1, align 8
  br label %25

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24, %22, %20, %18, %16
  br label %26

26:                                               ; preds = %25, %13
  %27 = load i32, i32* @stdoutput, align 4
  %28 = load i32, i32* @bfd_arch_sparc, align 4
  %29 = load i64, i64* %1, align 8
  %30 = call i32 @bfd_set_arch_mach(i32 %27, i32 %28, i64 %29)
  ret void
}

declare dso_local i32 @bfd_set_arch_mach(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
