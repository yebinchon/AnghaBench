; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_check-integrity.c_btrfsic_block_hashtable_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_check-integrity.c_btrfsic_block_hashtable_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfsic_block = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.btrfsic_block_hashtable = type { i64 }

@BTRFSIC_BLOCK_HASHTABLE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfsic_block*, %struct.btrfsic_block_hashtable*)* @btrfsic_block_hashtable_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfsic_block_hashtable_add(%struct.btrfsic_block* %0, %struct.btrfsic_block_hashtable* %1) #0 {
  %3 = alloca %struct.btrfsic_block*, align 8
  %4 = alloca %struct.btrfsic_block_hashtable*, align 8
  %5 = alloca i32, align 4
  store %struct.btrfsic_block* %0, %struct.btrfsic_block** %3, align 8
  store %struct.btrfsic_block_hashtable* %1, %struct.btrfsic_block_hashtable** %4, align 8
  %6 = load %struct.btrfsic_block*, %struct.btrfsic_block** %3, align 8
  %7 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = ashr i32 %8, 16
  %10 = load %struct.btrfsic_block*, %struct.btrfsic_block** %3, align 8
  %11 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = xor i32 %9, %15
  %17 = load i32, i32* @BTRFSIC_BLOCK_HASHTABLE_SIZE, align 4
  %18 = sub nsw i32 %17, 1
  %19 = and i32 %16, %18
  store i32 %19, i32* %5, align 4
  %20 = load %struct.btrfsic_block*, %struct.btrfsic_block** %3, align 8
  %21 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %20, i32 0, i32 1
  %22 = load %struct.btrfsic_block_hashtable*, %struct.btrfsic_block_hashtable** %4, align 8
  %23 = getelementptr inbounds %struct.btrfsic_block_hashtable, %struct.btrfsic_block_hashtable* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = call i32 @list_add(i32* %21, i64 %27)
  ret void
}

declare dso_local i32 @list_add(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
