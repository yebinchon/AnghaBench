; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_extfree_item.c_xfs_efd_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_extfree_item.c_xfs_efd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_efd_log_item = type { %struct.TYPE_3__, %struct.xfs_efi_log_item*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.xfs_mount = type { i32 }
%struct.xfs_efi_log_item = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@XFS_EFD_MAX_FAST_EXTENTS = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@xfs_efd_zone = common dso_local global i32 0, align 4
@XFS_LI_EFD = common dso_local global i32 0, align 4
@xfs_efd_item_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xfs_efd_log_item* @xfs_efd_init(%struct.xfs_mount* %0, %struct.xfs_efi_log_item* %1, i32 %2) #0 {
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca %struct.xfs_efi_log_item*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_efd_log_item*, align 8
  %8 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %4, align 8
  store %struct.xfs_efi_log_item* %1, %struct.xfs_efi_log_item** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp sgt i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @ASSERT(i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @XFS_EFD_MAX_FAST_EXTENTS, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = add i64 4, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @KM_SLEEP, align 4
  %25 = call %struct.xfs_efd_log_item* @kmem_zalloc(i32 %23, i32 %24)
  store %struct.xfs_efd_log_item* %25, %struct.xfs_efd_log_item** %7, align 8
  br label %30

26:                                               ; preds = %3
  %27 = load i32, i32* @xfs_efd_zone, align 4
  %28 = load i32, i32* @KM_SLEEP, align 4
  %29 = call %struct.xfs_efd_log_item* @kmem_zone_zalloc(i32 %27, i32 %28)
  store %struct.xfs_efd_log_item* %29, %struct.xfs_efd_log_item** %7, align 8
  br label %30

30:                                               ; preds = %26, %16
  %31 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %32 = load %struct.xfs_efd_log_item*, %struct.xfs_efd_log_item** %7, align 8
  %33 = getelementptr inbounds %struct.xfs_efd_log_item, %struct.xfs_efd_log_item* %32, i32 0, i32 2
  %34 = load i32, i32* @XFS_LI_EFD, align 4
  %35 = call i32 @xfs_log_item_init(%struct.xfs_mount* %31, i32* %33, i32 %34, i32* @xfs_efd_item_ops)
  %36 = load %struct.xfs_efi_log_item*, %struct.xfs_efi_log_item** %5, align 8
  %37 = load %struct.xfs_efd_log_item*, %struct.xfs_efd_log_item** %7, align 8
  %38 = getelementptr inbounds %struct.xfs_efd_log_item, %struct.xfs_efd_log_item* %37, i32 0, i32 1
  store %struct.xfs_efi_log_item* %36, %struct.xfs_efi_log_item** %38, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.xfs_efd_log_item*, %struct.xfs_efd_log_item** %7, align 8
  %41 = getelementptr inbounds %struct.xfs_efd_log_item, %struct.xfs_efd_log_item* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load %struct.xfs_efi_log_item*, %struct.xfs_efi_log_item** %5, align 8
  %44 = getelementptr inbounds %struct.xfs_efi_log_item, %struct.xfs_efi_log_item* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.xfs_efd_log_item*, %struct.xfs_efd_log_item** %7, align 8
  %48 = getelementptr inbounds %struct.xfs_efd_log_item, %struct.xfs_efd_log_item* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load %struct.xfs_efd_log_item*, %struct.xfs_efd_log_item** %7, align 8
  ret %struct.xfs_efd_log_item* %50
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.xfs_efd_log_item* @kmem_zalloc(i32, i32) #1

declare dso_local %struct.xfs_efd_log_item* @kmem_zone_zalloc(i32, i32) #1

declare dso_local i32 @xfs_log_item_init(%struct.xfs_mount*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
