; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_writehdr_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_writehdr_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_write_header = type { i32, %struct.nfs_pgio_header }
%struct.nfs_pgio_header = type { i32*, i32, i32, i32, i32 }

@nfs_wdata_mempool = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfs_write_header* @nfs_writehdr_alloc() #0 {
  %1 = alloca %struct.nfs_write_header*, align 8
  %2 = alloca %struct.nfs_pgio_header*, align 8
  %3 = load i32, i32* @nfs_wdata_mempool, align 4
  %4 = load i32, i32* @GFP_NOFS, align 4
  %5 = call %struct.nfs_write_header* @mempool_alloc(i32 %3, i32 %4)
  store %struct.nfs_write_header* %5, %struct.nfs_write_header** %1, align 8
  %6 = load %struct.nfs_write_header*, %struct.nfs_write_header** %1, align 8
  %7 = icmp ne %struct.nfs_write_header* %6, null
  br i1 %7, label %8, label %29

8:                                                ; preds = %0
  %9 = load %struct.nfs_write_header*, %struct.nfs_write_header** %1, align 8
  %10 = getelementptr inbounds %struct.nfs_write_header, %struct.nfs_write_header* %9, i32 0, i32 1
  store %struct.nfs_pgio_header* %10, %struct.nfs_pgio_header** %2, align 8
  %11 = load %struct.nfs_write_header*, %struct.nfs_write_header** %1, align 8
  %12 = call i32 @memset(%struct.nfs_write_header* %11, i32 0, i32 32)
  %13 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %14 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %13, i32 0, i32 4
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %17 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %16, i32 0, i32 3
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %20 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %19, i32 0, i32 2
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %23 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %22, i32 0, i32 1
  %24 = call i32 @atomic_set(i32* %23, i32 0)
  %25 = load %struct.nfs_write_header*, %struct.nfs_write_header** %1, align 8
  %26 = getelementptr inbounds %struct.nfs_write_header, %struct.nfs_write_header* %25, i32 0, i32 0
  %27 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %28 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %27, i32 0, i32 0
  store i32* %26, i32** %28, align 8
  br label %29

29:                                               ; preds = %8, %0
  %30 = load %struct.nfs_write_header*, %struct.nfs_write_header** %1, align 8
  ret %struct.nfs_write_header* %30
}

declare dso_local %struct.nfs_write_header* @mempool_alloc(i32, i32) #1

declare dso_local i32 @memset(%struct.nfs_write_header*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
