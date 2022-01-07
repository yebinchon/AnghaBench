; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4filelayoutdev.c_nfs4_fl_free_deviceid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4filelayoutdev.c_nfs4_fl_free_deviceid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_file_layout_dsaddr = type { i32, %struct.nfs4_file_layout_dsaddr*, %struct.nfs4_pnfs_ds**, %struct.TYPE_2__ }
%struct.nfs4_pnfs_ds = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@nfs4_ds_cache_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs4_fl_free_deviceid(%struct.nfs4_file_layout_dsaddr* %0) #0 {
  %2 = alloca %struct.nfs4_file_layout_dsaddr*, align 8
  %3 = alloca %struct.nfs4_pnfs_ds*, align 8
  %4 = alloca i32, align 4
  store %struct.nfs4_file_layout_dsaddr* %0, %struct.nfs4_file_layout_dsaddr** %2, align 8
  %5 = load %struct.nfs4_file_layout_dsaddr*, %struct.nfs4_file_layout_dsaddr** %2, align 8
  %6 = getelementptr inbounds %struct.nfs4_file_layout_dsaddr, %struct.nfs4_file_layout_dsaddr* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @nfs4_print_deviceid(i32* %7)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %39, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.nfs4_file_layout_dsaddr*, %struct.nfs4_file_layout_dsaddr** %2, align 8
  %12 = getelementptr inbounds %struct.nfs4_file_layout_dsaddr, %struct.nfs4_file_layout_dsaddr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %42

15:                                               ; preds = %9
  %16 = load %struct.nfs4_file_layout_dsaddr*, %struct.nfs4_file_layout_dsaddr** %2, align 8
  %17 = getelementptr inbounds %struct.nfs4_file_layout_dsaddr, %struct.nfs4_file_layout_dsaddr* %16, i32 0, i32 2
  %18 = load %struct.nfs4_pnfs_ds**, %struct.nfs4_pnfs_ds*** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.nfs4_pnfs_ds*, %struct.nfs4_pnfs_ds** %18, i64 %20
  %22 = load %struct.nfs4_pnfs_ds*, %struct.nfs4_pnfs_ds** %21, align 8
  store %struct.nfs4_pnfs_ds* %22, %struct.nfs4_pnfs_ds** %3, align 8
  %23 = load %struct.nfs4_pnfs_ds*, %struct.nfs4_pnfs_ds** %3, align 8
  %24 = icmp ne %struct.nfs4_pnfs_ds* %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %15
  %26 = load %struct.nfs4_pnfs_ds*, %struct.nfs4_pnfs_ds** %3, align 8
  %27 = getelementptr inbounds %struct.nfs4_pnfs_ds, %struct.nfs4_pnfs_ds* %26, i32 0, i32 1
  %28 = call i64 @atomic_dec_and_lock(i32* %27, i32* @nfs4_ds_cache_lock)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.nfs4_pnfs_ds*, %struct.nfs4_pnfs_ds** %3, align 8
  %32 = getelementptr inbounds %struct.nfs4_pnfs_ds, %struct.nfs4_pnfs_ds* %31, i32 0, i32 0
  %33 = call i32 @list_del_init(i32* %32)
  %34 = call i32 @spin_unlock(i32* @nfs4_ds_cache_lock)
  %35 = load %struct.nfs4_pnfs_ds*, %struct.nfs4_pnfs_ds** %3, align 8
  %36 = call i32 @destroy_ds(%struct.nfs4_pnfs_ds* %35)
  br label %37

37:                                               ; preds = %30, %25
  br label %38

38:                                               ; preds = %37, %15
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %9

42:                                               ; preds = %9
  %43 = load %struct.nfs4_file_layout_dsaddr*, %struct.nfs4_file_layout_dsaddr** %2, align 8
  %44 = getelementptr inbounds %struct.nfs4_file_layout_dsaddr, %struct.nfs4_file_layout_dsaddr* %43, i32 0, i32 1
  %45 = load %struct.nfs4_file_layout_dsaddr*, %struct.nfs4_file_layout_dsaddr** %44, align 8
  %46 = call i32 @kfree(%struct.nfs4_file_layout_dsaddr* %45)
  %47 = load %struct.nfs4_file_layout_dsaddr*, %struct.nfs4_file_layout_dsaddr** %2, align 8
  %48 = call i32 @kfree(%struct.nfs4_file_layout_dsaddr* %47)
  ret void
}

declare dso_local i32 @nfs4_print_deviceid(i32*) #1

declare dso_local i64 @atomic_dec_and_lock(i32*, i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @destroy_ds(%struct.nfs4_pnfs_ds*) #1

declare dso_local i32 @kfree(%struct.nfs4_file_layout_dsaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
