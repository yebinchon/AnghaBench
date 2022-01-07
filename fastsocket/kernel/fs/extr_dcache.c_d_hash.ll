; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_dcache.c_d_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_dcache.c_d_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlist_head = type { i32 }
%struct.dentry = type { i32 }

@GOLDEN_RATIO_PRIME = common dso_local global i64 0, align 8
@L1_CACHE_BYTES = common dso_local global i64 0, align 8
@D_HASHBITS = common dso_local global i64 0, align 8
@dentry_hashtable = common dso_local global %struct.hlist_head* null, align 8
@D_HASHMASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hlist_head* (%struct.dentry*, i64)* @d_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hlist_head* @d_hash(%struct.dentry* %0, i64 %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i64, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.dentry*, %struct.dentry** %3, align 8
  %6 = ptrtoint %struct.dentry* %5 to i64
  %7 = load i64, i64* @GOLDEN_RATIO_PRIME, align 8
  %8 = xor i64 %6, %7
  %9 = load i64, i64* @L1_CACHE_BYTES, align 8
  %10 = udiv i64 %8, %9
  %11 = load i64, i64* %4, align 8
  %12 = add i64 %11, %10
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @GOLDEN_RATIO_PRIME, align 8
  %16 = xor i64 %14, %15
  %17 = load i64, i64* @D_HASHBITS, align 8
  %18 = lshr i64 %16, %17
  %19 = xor i64 %13, %18
  store i64 %19, i64* %4, align 8
  %20 = load %struct.hlist_head*, %struct.hlist_head** @dentry_hashtable, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @D_HASHMASK, align 8
  %23 = and i64 %21, %22
  %24 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %20, i64 %23
  ret %struct.hlist_head* %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
