; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c__nfs4_recover_proc_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c__nfs4_recover_proc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_opendata = type { i32, i32, %struct.nfs_openres, %struct.TYPE_2__* }
%struct.nfs_openres = type { i32 }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }

@NFS4_OPEN_RESULT_CONFIRM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_opendata*)* @_nfs4_recover_proc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_recover_proc_open(%struct.nfs4_opendata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs4_opendata*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.nfs_openres*, align 8
  %6 = alloca i32, align 4
  store %struct.nfs4_opendata* %0, %struct.nfs4_opendata** %3, align 8
  %7 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %8 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %4, align 8
  %12 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %13 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %12, i32 0, i32 2
  store %struct.nfs_openres* %13, %struct.nfs_openres** %5, align 8
  %14 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %15 = call i32 @nfs4_run_open_task(%struct.nfs4_opendata* %14, i32 1)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %20 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18, %1
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %47

25:                                               ; preds = %18
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = call i32 @NFS_SERVER(%struct.inode* %26)
  %28 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %29 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %28, i32 0, i32 0
  %30 = call i32 @nfs_fattr_map_and_free_names(i32 %27, i32* %29)
  %31 = load %struct.nfs_openres*, %struct.nfs_openres** %5, align 8
  %32 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @NFS4_OPEN_RESULT_CONFIRM, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %25
  %38 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %39 = call i32 @_nfs4_proc_open_confirm(%struct.nfs4_opendata* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %47

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %25
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %42, %23
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @nfs4_run_open_task(%struct.nfs4_opendata*, i32) #1

declare dso_local i32 @nfs_fattr_map_and_free_names(i32, i32*) #1

declare dso_local i32 @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @_nfs4_proc_open_confirm(%struct.nfs4_opendata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
