; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mep-opc.c_check_configured_mach.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mep-opc.c_check_configured_mach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MACH_BASE = common dso_local global i32 0, align 4
@MEP_CPU = common dso_local global i32 0, align 4
@MACH_MEP = common dso_local global i32 0, align 4
@MACH_H1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @check_configured_mach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_configured_mach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @MACH_BASE, align 4
  %5 = shl i32 1, %4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @MEP_CPU, align 4
  switch i32 %6, label %17 [
    i32 130, label %7
    i32 129, label %7
    i32 128, label %12
  ]

7:                                                ; preds = %1, %1
  %8 = load i32, i32* @MACH_MEP, align 4
  %9 = shl i32 1, %8
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  br label %18

12:                                               ; preds = %1
  %13 = load i32, i32* @MACH_H1, align 4
  %14 = shl i32 1, %13
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  br label %18

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %17, %12, %7
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %19, %20
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
