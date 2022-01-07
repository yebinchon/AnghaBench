; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs.c_init_lseg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs.c_init_lseg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_layout_hdr = type { i32 }
%struct.pnfs_layout_segment = type { %struct.pnfs_layout_hdr*, i32, i32, i32, i32 }

@NFS_LSEG_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnfs_layout_hdr*, %struct.pnfs_layout_segment*)* @init_lseg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_lseg(%struct.pnfs_layout_hdr* %0, %struct.pnfs_layout_segment* %1) #0 {
  %3 = alloca %struct.pnfs_layout_hdr*, align 8
  %4 = alloca %struct.pnfs_layout_segment*, align 8
  store %struct.pnfs_layout_hdr* %0, %struct.pnfs_layout_hdr** %3, align 8
  store %struct.pnfs_layout_segment* %1, %struct.pnfs_layout_segment** %4, align 8
  %5 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %4, align 8
  %6 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %5, i32 0, i32 4
  %7 = call i32 @INIT_LIST_HEAD(i32* %6)
  %8 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %4, align 8
  %9 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %8, i32 0, i32 3
  %10 = call i32 @INIT_LIST_HEAD(i32* %9)
  %11 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %4, align 8
  %12 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %11, i32 0, i32 2
  %13 = call i32 @atomic_set(i32* %12, i32 1)
  %14 = call i32 (...) @smp_mb()
  %15 = load i32, i32* @NFS_LSEG_VALID, align 4
  %16 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %4, align 8
  %17 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %16, i32 0, i32 1
  %18 = call i32 @set_bit(i32 %15, i32* %17)
  %19 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %3, align 8
  %20 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %4, align 8
  %21 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %20, i32 0, i32 0
  store %struct.pnfs_layout_hdr* %19, %struct.pnfs_layout_hdr** %21, align 8
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
