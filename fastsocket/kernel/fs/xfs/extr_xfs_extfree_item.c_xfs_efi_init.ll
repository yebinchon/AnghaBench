; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_extfree_item.c_xfs_efi_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_extfree_item.c_xfs_efi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_efi_log_item = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.xfs_mount = type { i32 }

@XFS_EFI_MAX_FAST_EXTENTS = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@xfs_efi_zone = common dso_local global i32 0, align 4
@XFS_LI_EFI = common dso_local global i32 0, align 4
@xfs_efi_item_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xfs_efi_log_item* @xfs_efi_init(%struct.xfs_mount* %0, i32 %1) #0 {
  %3 = alloca %struct.xfs_mount*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_efi_log_item*, align 8
  %6 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @ASSERT(i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @XFS_EFI_MAX_FAST_EXTENTS, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = add i64 4, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @KM_SLEEP, align 4
  %23 = call %struct.xfs_efi_log_item* @kmem_zalloc(i32 %21, i32 %22)
  store %struct.xfs_efi_log_item* %23, %struct.xfs_efi_log_item** %5, align 8
  br label %28

24:                                               ; preds = %2
  %25 = load i32, i32* @xfs_efi_zone, align 4
  %26 = load i32, i32* @KM_SLEEP, align 4
  %27 = call %struct.xfs_efi_log_item* @kmem_zone_zalloc(i32 %25, i32 %26)
  store %struct.xfs_efi_log_item* %27, %struct.xfs_efi_log_item** %5, align 8
  br label %28

28:                                               ; preds = %24, %14
  %29 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %30 = load %struct.xfs_efi_log_item*, %struct.xfs_efi_log_item** %5, align 8
  %31 = getelementptr inbounds %struct.xfs_efi_log_item, %struct.xfs_efi_log_item* %30, i32 0, i32 3
  %32 = load i32, i32* @XFS_LI_EFI, align 4
  %33 = call i32 @xfs_log_item_init(%struct.xfs_mount* %29, i32* %31, i32 %32, i32* @xfs_efi_item_ops)
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.xfs_efi_log_item*, %struct.xfs_efi_log_item** %5, align 8
  %36 = getelementptr inbounds %struct.xfs_efi_log_item, %struct.xfs_efi_log_item* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.xfs_efi_log_item*, %struct.xfs_efi_log_item** %5, align 8
  %39 = bitcast %struct.xfs_efi_log_item* %38 to i8*
  %40 = ptrtoint i8* %39 to i64
  %41 = load %struct.xfs_efi_log_item*, %struct.xfs_efi_log_item** %5, align 8
  %42 = getelementptr inbounds %struct.xfs_efi_log_item, %struct.xfs_efi_log_item* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i64 %40, i64* %43, align 8
  %44 = load %struct.xfs_efi_log_item*, %struct.xfs_efi_log_item** %5, align 8
  %45 = getelementptr inbounds %struct.xfs_efi_log_item, %struct.xfs_efi_log_item* %44, i32 0, i32 1
  %46 = call i32 @atomic_set(i32* %45, i32 0)
  %47 = load %struct.xfs_efi_log_item*, %struct.xfs_efi_log_item** %5, align 8
  %48 = getelementptr inbounds %struct.xfs_efi_log_item, %struct.xfs_efi_log_item* %47, i32 0, i32 0
  %49 = call i32 @atomic_set(i32* %48, i32 2)
  %50 = load %struct.xfs_efi_log_item*, %struct.xfs_efi_log_item** %5, align 8
  ret %struct.xfs_efi_log_item* %50
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.xfs_efi_log_item* @kmem_zalloc(i32, i32) #1

declare dso_local %struct.xfs_efi_log_item* @kmem_zone_zalloc(i32, i32) #1

declare dso_local i32 @xfs_log_item_init(%struct.xfs_mount*, i32*, i32, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
