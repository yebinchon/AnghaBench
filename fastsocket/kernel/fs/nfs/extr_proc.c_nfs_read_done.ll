; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_proc.c_nfs_read_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_proc.c_nfs_read_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i64 }
%struct.nfs_read_data = type { %struct.TYPE_6__, %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.inode = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_task*, %struct.nfs_read_data*)* @nfs_read_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_read_done(%struct.rpc_task* %0, %struct.nfs_read_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_task*, align 8
  %5 = alloca %struct.nfs_read_data*, align 8
  %6 = alloca %struct.inode*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %4, align 8
  store %struct.nfs_read_data* %1, %struct.nfs_read_data** %5, align 8
  %7 = load %struct.nfs_read_data*, %struct.nfs_read_data** %5, align 8
  %8 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %7, i32 0, i32 2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %6, align 8
  %12 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %13 = call i64 @nfs_async_handle_expired_key(%struct.rpc_task* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EAGAIN, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %54

18:                                               ; preds = %2
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = call i32 @nfs_invalidate_atime(%struct.inode* %19)
  %21 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %22 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %25, label %53

25:                                               ; preds = %18
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = load %struct.nfs_read_data*, %struct.nfs_read_data** %5, align 8
  %28 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = call i32 @nfs_refresh_inode(%struct.inode* %26, %struct.TYPE_8__* %30)
  %32 = load %struct.nfs_read_data*, %struct.nfs_read_data** %5, align 8
  %33 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.nfs_read_data*, %struct.nfs_read_data** %5, align 8
  %37 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %35, %39
  %41 = load %struct.nfs_read_data*, %struct.nfs_read_data** %5, align 8
  %42 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %40, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %25
  %49 = load %struct.nfs_read_data*, %struct.nfs_read_data** %5, align 8
  %50 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  store i32 1, i32* %51, align 8
  br label %52

52:                                               ; preds = %48, %25
  br label %53

53:                                               ; preds = %52, %18
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %15
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @nfs_async_handle_expired_key(%struct.rpc_task*) #1

declare dso_local i32 @nfs_invalidate_atime(%struct.inode*) #1

declare dso_local i32 @nfs_refresh_inode(%struct.inode*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
