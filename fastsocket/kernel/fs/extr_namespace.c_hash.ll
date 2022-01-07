; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.dentry = type { i32 }

@L1_CACHE_BYTES = common dso_local global i64 0, align 8
@HASH_SHIFT = common dso_local global i64 0, align 8
@HASH_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vfsmount*, %struct.dentry*)* @hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hash(%struct.vfsmount* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.vfsmount*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i64, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %6 = load %struct.vfsmount*, %struct.vfsmount** %3, align 8
  %7 = ptrtoint %struct.vfsmount* %6 to i64
  %8 = load i64, i64* @L1_CACHE_BYTES, align 8
  %9 = udiv i64 %7, %8
  store i64 %9, i64* %5, align 8
  %10 = load %struct.dentry*, %struct.dentry** %4, align 8
  %11 = ptrtoint %struct.dentry* %10 to i64
  %12 = load i64, i64* @L1_CACHE_BYTES, align 8
  %13 = udiv i64 %11, %12
  %14 = load i64, i64* %5, align 8
  %15 = add i64 %14, %13
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @HASH_SHIFT, align 8
  %19 = lshr i64 %17, %18
  %20 = add i64 %16, %19
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i32, i32* @HASH_SIZE, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = and i64 %21, %24
  ret i64 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
