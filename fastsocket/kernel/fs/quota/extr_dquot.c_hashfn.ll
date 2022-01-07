; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_hashfn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_hashfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }

@L1_CACHE_SHIFT = common dso_local global i64 0, align 8
@MAXQUOTAS = common dso_local global i32 0, align 4
@dq_hash_bits = common dso_local global i64 0, align 8
@dq_hash_mask = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, i32)* @hashfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hashfn(%struct.super_block* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.super_block*, %struct.super_block** %4, align 8
  %9 = ptrtoint %struct.super_block* %8 to i64
  %10 = load i64, i64* @L1_CACHE_SHIFT, align 8
  %11 = lshr i64 %9, %10
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = xor i64 %11, %13
  %15 = load i32, i32* @MAXQUOTAS, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sub nsw i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = mul i64 %14, %18
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @dq_hash_bits, align 8
  %23 = lshr i64 %21, %22
  %24 = add i64 %20, %23
  %25 = load i64, i64* @dq_hash_mask, align 8
  %26 = and i64 %24, %25
  %27 = trunc i64 %26 to i32
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
