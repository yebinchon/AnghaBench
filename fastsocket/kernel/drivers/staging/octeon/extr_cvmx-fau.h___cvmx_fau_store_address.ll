; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-fau.h___cvmx_fau_store_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-fau.h___cvmx_fau_store_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CVMX_FAU_LOAD_IO_ADDRESS = common dso_local global i32 0, align 4
@CVMX_FAU_BITS_NOADD = common dso_local global i32 0, align 4
@CVMX_FAU_BITS_REGISTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @__cvmx_fau_store_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cvmx_fau_store_address(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @CVMX_FAU_LOAD_IO_ADDRESS, align 4
  %6 = call i32 @CVMX_ADD_IO_SEG(i32 %5)
  %7 = load i32, i32* @CVMX_FAU_BITS_NOADD, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @cvmx_build_bits(i32 %7, i32 %8)
  %10 = or i32 %6, %9
  %11 = load i32, i32* @CVMX_FAU_BITS_REGISTER, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @cvmx_build_bits(i32 %11, i32 %12)
  %14 = or i32 %10, %13
  ret i32 %14
}

declare dso_local i32 @CVMX_ADD_IO_SEG(i32) #1

declare dso_local i32 @cvmx_build_bits(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
