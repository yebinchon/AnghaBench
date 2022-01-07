; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs.c_pnfs_free_layout_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs.c_pnfs_free_layout_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_layout_hdr = type { i32, i32 }
%struct.pnfs_layoutdriver_type = type { void (%struct.pnfs_layout_hdr.0*)*, i64 }
%struct.pnfs_layout_hdr.0 = type opaque
%struct.TYPE_2__ = type { %struct.pnfs_layoutdriver_type* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnfs_layout_hdr*)* @pnfs_free_layout_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnfs_free_layout_hdr(%struct.pnfs_layout_hdr* %0) #0 {
  %2 = alloca %struct.pnfs_layout_hdr*, align 8
  %3 = alloca %struct.pnfs_layoutdriver_type*, align 8
  store %struct.pnfs_layout_hdr* %0, %struct.pnfs_layout_hdr** %2, align 8
  %4 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %2, align 8
  %5 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.TYPE_2__* @NFS_SERVER(i32 %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.pnfs_layoutdriver_type*, %struct.pnfs_layoutdriver_type** %8, align 8
  store %struct.pnfs_layoutdriver_type* %9, %struct.pnfs_layoutdriver_type** %3, align 8
  %10 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %2, align 8
  %11 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @put_rpccred(i32 %12)
  %14 = load %struct.pnfs_layoutdriver_type*, %struct.pnfs_layoutdriver_type** %3, align 8
  %15 = getelementptr inbounds %struct.pnfs_layoutdriver_type, %struct.pnfs_layoutdriver_type* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.pnfs_layoutdriver_type*, %struct.pnfs_layoutdriver_type** %3, align 8
  %20 = getelementptr inbounds %struct.pnfs_layoutdriver_type, %struct.pnfs_layoutdriver_type* %19, i32 0, i32 0
  %21 = load void (%struct.pnfs_layout_hdr.0*)*, void (%struct.pnfs_layout_hdr.0*)** %20, align 8
  %22 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %2, align 8
  %23 = bitcast %struct.pnfs_layout_hdr* %22 to %struct.pnfs_layout_hdr.0*
  call void %21(%struct.pnfs_layout_hdr.0* %23)
  br label %26

24:                                               ; preds = %1
  %25 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %2, align 8
  call void @kfree(%struct.pnfs_layout_hdr* %25)
  br label %26

26:                                               ; preds = %24, %18
  ret void
}

declare dso_local %struct.TYPE_2__* @NFS_SERVER(i32) #1

declare dso_local i32 @put_rpccred(i32) #1

declare dso_local void @kfree(%struct.pnfs_layout_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
