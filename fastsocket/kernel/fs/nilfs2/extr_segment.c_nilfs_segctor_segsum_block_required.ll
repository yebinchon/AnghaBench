; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_segsum_block_required.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_segsum_block_required.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nilfs_segsum_pointer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_sc_info*, %struct.nilfs_segsum_pointer*, i32)* @nilfs_segctor_segsum_block_required to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_segctor_segsum_block_required(%struct.nilfs_sc_info* %0, %struct.nilfs_segsum_pointer* %1, i32 %2) #0 {
  %4 = alloca %struct.nilfs_sc_info*, align 8
  %5 = alloca %struct.nilfs_segsum_pointer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nilfs_sc_info* %0, %struct.nilfs_sc_info** %4, align 8
  store %struct.nilfs_segsum_pointer* %1, %struct.nilfs_segsum_pointer** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %9 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.nilfs_segsum_pointer*, %struct.nilfs_segsum_pointer** %5, align 8
  %14 = getelementptr inbounds %struct.nilfs_segsum_pointer, %struct.nilfs_segsum_pointer* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add i32 %15, %16
  %18 = zext i32 %17 to i64
  %19 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %20 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i64 4, i64 0
  %26 = add i64 %18, %25
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = icmp ugt i64 %26, %28
  %30 = zext i1 %29 to i32
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
