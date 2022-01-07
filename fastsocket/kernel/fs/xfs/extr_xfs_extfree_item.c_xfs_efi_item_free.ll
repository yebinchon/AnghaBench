; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_extfree_item.c_xfs_efi_item_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_extfree_item.c_xfs_efi_item_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_efi_log_item = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@XFS_EFI_MAX_FAST_EXTENTS = common dso_local global i64 0, align 8
@xfs_efi_zone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_efi_item_free(%struct.xfs_efi_log_item* %0) #0 {
  %2 = alloca %struct.xfs_efi_log_item*, align 8
  store %struct.xfs_efi_log_item* %0, %struct.xfs_efi_log_item** %2, align 8
  %3 = load %struct.xfs_efi_log_item*, %struct.xfs_efi_log_item** %2, align 8
  %4 = getelementptr inbounds %struct.xfs_efi_log_item, %struct.xfs_efi_log_item* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @XFS_EFI_MAX_FAST_EXTENTS, align 8
  %8 = icmp sgt i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.xfs_efi_log_item*, %struct.xfs_efi_log_item** %2, align 8
  %11 = call i32 @kmem_free(%struct.xfs_efi_log_item* %10)
  br label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @xfs_efi_zone, align 4
  %14 = load %struct.xfs_efi_log_item*, %struct.xfs_efi_log_item** %2, align 8
  %15 = call i32 @kmem_zone_free(i32 %13, %struct.xfs_efi_log_item* %14)
  br label %16

16:                                               ; preds = %12, %9
  ret void
}

declare dso_local i32 @kmem_free(%struct.xfs_efi_log_item*) #1

declare dso_local i32 @kmem_zone_free(i32, %struct.xfs_efi_log_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
