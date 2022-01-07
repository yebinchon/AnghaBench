; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_do_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_do_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.rpc_cred = type { i32 }
%struct.nfs_access_entry = type { i32, i32, %struct.rpc_cred* }
%struct.TYPE_3__ = type { i32 (%struct.inode*, %struct.nfs_access_entry*)* }
%struct.TYPE_4__ = type { i32 }

@MAY_EXEC = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@MAY_READ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@NFS_INO_STALE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.rpc_cred*, i32)* @nfs_do_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_do_access(%struct.inode* %0, %struct.rpc_cred* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.rpc_cred*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfs_access_entry, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.rpc_cred* %1, %struct.rpc_cred** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = load %struct.rpc_cred*, %struct.rpc_cred** %6, align 8
  %12 = call i32 @nfs_access_get_cached(%struct.inode* %10, %struct.rpc_cred* %11, %struct.nfs_access_entry* %8)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %60

16:                                               ; preds = %3
  %17 = load i32, i32* @MAY_EXEC, align 4
  %18 = load i32, i32* @MAY_WRITE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @MAY_READ, align 4
  %21 = or i32 %19, %20
  %22 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %8, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = load %struct.rpc_cred*, %struct.rpc_cred** %6, align 8
  %24 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %8, i32 0, i32 2
  store %struct.rpc_cred* %23, %struct.rpc_cred** %24, align 8
  %25 = load i32, i32* @jiffies, align 4
  %26 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %8, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = call %struct.TYPE_3__* @NFS_PROTO(%struct.inode* %27)
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32 (%struct.inode*, %struct.nfs_access_entry*)*, i32 (%struct.inode*, %struct.nfs_access_entry*)** %29, align 8
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = call i32 %30(%struct.inode* %31, %struct.nfs_access_entry* %8)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %16
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @ESTALE, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %35
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = call i32 @nfs_zap_caches(%struct.inode* %41)
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @S_ISDIR(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* @NFS_INO_STALE, align 4
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = call %struct.TYPE_4__* @NFS_I(%struct.inode* %50)
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = call i32 @set_bit(i32 %49, i32* %52)
  br label %54

54:                                               ; preds = %48, %40
  br label %55

55:                                               ; preds = %54, %35
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %4, align 4
  br label %77

57:                                               ; preds = %16
  %58 = load %struct.inode*, %struct.inode** %5, align 8
  %59 = call i32 @nfs_access_add_cache(%struct.inode* %58, %struct.nfs_access_entry* %8)
  br label %60

60:                                               ; preds = %57, %15
  %61 = load i32, i32* %7, align 4
  %62 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %8, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = xor i32 %63, -1
  %65 = and i32 %61, %64
  %66 = load i32, i32* @MAY_READ, align 4
  %67 = load i32, i32* @MAY_WRITE, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @MAY_EXEC, align 4
  %70 = or i32 %68, %69
  %71 = and i32 %65, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %77

74:                                               ; preds = %60
  %75 = load i32, i32* @EACCES, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %74, %73, %55
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @nfs_access_get_cached(%struct.inode*, %struct.rpc_cred*, %struct.nfs_access_entry*) #1

declare dso_local %struct.TYPE_3__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @nfs_zap_caches(%struct.inode*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.TYPE_4__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @nfs_access_add_cache(%struct.inode*, %struct.nfs_access_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
