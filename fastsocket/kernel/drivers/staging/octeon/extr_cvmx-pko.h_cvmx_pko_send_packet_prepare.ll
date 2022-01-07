; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-pko.h_cvmx_pko_send_packet_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-pko.h_cvmx_pko_send_packet_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CVMX_PKO_LOCK_ATOMIC_TAG = common dso_local global i64 0, align 8
@CVMX_TAG_SW_BITS_INTERNAL = common dso_local global i32 0, align 4
@CVMX_TAG_SW_SHIFT = common dso_local global i32 0, align 4
@CVMX_TAG_SUBGROUP_PKO = common dso_local global i32 0, align 4
@CVMX_TAG_SUBGROUP_SHIFT = common dso_local global i32 0, align 4
@CVMX_TAG_SUBGROUP_MASK = common dso_local global i32 0, align 4
@CVMX_POW_TAG_TYPE_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64)* @cvmx_pko_send_packet_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvmx_pko_send_packet_prepare(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @CVMX_PKO_LOCK_ATOMIC_TAG, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %3
  %12 = load i32, i32* @CVMX_TAG_SW_BITS_INTERNAL, align 4
  %13 = load i32, i32* @CVMX_TAG_SW_SHIFT, align 4
  %14 = shl i32 %12, %13
  %15 = load i32, i32* @CVMX_TAG_SUBGROUP_PKO, align 4
  %16 = load i32, i32* @CVMX_TAG_SUBGROUP_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = or i32 %14, %17
  %19 = load i32, i32* @CVMX_TAG_SUBGROUP_MASK, align 4
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %19, %20
  %22 = or i32 %18, %21
  store i32 %22, i32* %7, align 4
  %23 = call i64 @cvmx_phys_to_ptr(i32 128)
  %24 = inttoptr i64 %23 to i32*
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @CVMX_POW_TAG_TYPE_ATOMIC, align 4
  %27 = call i32 @cvmx_pow_tag_sw_full(i32* %24, i32 %25, i32 %26, i32 0)
  br label %28

28:                                               ; preds = %11, %3
  ret void
}

declare dso_local i32 @cvmx_pow_tag_sw_full(i32*, i32, i32, i32) #1

declare dso_local i64 @cvmx_phys_to_ptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
