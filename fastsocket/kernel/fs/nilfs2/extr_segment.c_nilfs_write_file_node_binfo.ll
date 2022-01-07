; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_write_file_node_binfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_write_file_node_binfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { i32 }
%struct.nilfs_segsum_pointer = type { i32 }
%union.nilfs_binfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_sc_info*, %struct.nilfs_segsum_pointer*, %union.nilfs_binfo*)* @nilfs_write_file_node_binfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_write_file_node_binfo(%struct.nilfs_sc_info* %0, %struct.nilfs_segsum_pointer* %1, %union.nilfs_binfo* %2) #0 {
  %4 = alloca %struct.nilfs_sc_info*, align 8
  %5 = alloca %struct.nilfs_segsum_pointer*, align 8
  %6 = alloca %union.nilfs_binfo*, align 8
  %7 = alloca i32*, align 8
  store %struct.nilfs_sc_info* %0, %struct.nilfs_sc_info** %4, align 8
  store %struct.nilfs_segsum_pointer* %1, %struct.nilfs_segsum_pointer** %5, align 8
  store %union.nilfs_binfo* %2, %union.nilfs_binfo** %6, align 8
  %8 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %9 = load %struct.nilfs_segsum_pointer*, %struct.nilfs_segsum_pointer** %5, align 8
  %10 = call i32* @nilfs_segctor_map_segsum_entry(%struct.nilfs_sc_info* %8, %struct.nilfs_segsum_pointer* %9, i32 4)
  store i32* %10, i32** %7, align 8
  %11 = load %union.nilfs_binfo*, %union.nilfs_binfo** %6, align 8
  %12 = bitcast %union.nilfs_binfo* %11 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %7, align 8
  store i32 %14, i32* %15, align 4
  ret void
}

declare dso_local i32* @nilfs_segctor_map_segsum_entry(%struct.nilfs_sc_info*, %struct.nilfs_segsum_pointer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
