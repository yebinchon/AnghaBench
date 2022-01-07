; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ppc.c_ppc_mach.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ppc.c_ppc_mach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ppc_obj64 = common dso_local global i64 0, align 8
@bfd_mach_ppc64 = common dso_local global i64 0, align 8
@bfd_arch_rs6000 = common dso_local global i64 0, align 8
@bfd_mach_rs6k = common dso_local global i64 0, align 8
@bfd_mach_ppc = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ppc_mach() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @ppc_obj64, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = load i64, i64* @bfd_mach_ppc64, align 8
  store i64 %5, i64* %1, align 8
  br label %14

6:                                                ; preds = %0
  %7 = call i64 (...) @ppc_arch()
  %8 = load i64, i64* @bfd_arch_rs6000, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load i64, i64* @bfd_mach_rs6k, align 8
  store i64 %11, i64* %1, align 8
  br label %14

12:                                               ; preds = %6
  %13 = load i64, i64* @bfd_mach_ppc, align 8
  store i64 %13, i64* %1, align 8
  br label %14

14:                                               ; preds = %12, %10, %4
  %15 = load i64, i64* %1, align 8
  ret i64 %15
}

declare dso_local i64 @ppc_arch(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
