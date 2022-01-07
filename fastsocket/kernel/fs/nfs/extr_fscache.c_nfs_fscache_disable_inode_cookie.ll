; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_fscache.c_nfs_fscache_disable_inode_cookie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_fscache.c_nfs_fscache_disable_inode_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_3__ = type { i64, i32 }

@NFS_INO_FSCACHE = common dso_local global i32 0, align 4
@FSCACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"NFS: nfsi 0x%p turning cache off\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @nfs_fscache_disable_inode_cookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_fscache_disable_inode_cookie(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %3 = load i32, i32* @NFS_INO_FSCACHE, align 4
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = call %struct.TYPE_3__* @NFS_I(%struct.inode* %4)
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = call i32 @clear_bit(i32 %3, i32* %6)
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = call %struct.TYPE_3__* @NFS_I(%struct.inode* %8)
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load i32, i32* @FSCACHE, align 4
  %15 = load %struct.inode*, %struct.inode** %2, align 8
  %16 = call %struct.TYPE_3__* @NFS_I(%struct.inode* %15)
  %17 = call i32 @dfprintk(i32 %14, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__* %16)
  %18 = load %struct.inode*, %struct.inode** %2, align 8
  %19 = call %struct.TYPE_3__* @NFS_I(%struct.inode* %18)
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.inode*, %struct.inode** %2, align 8
  %23 = call i32 @fscache_uncache_all_inode_pages(i64 %21, %struct.inode* %22)
  %24 = load %struct.inode*, %struct.inode** %2, align 8
  %25 = call i32 @nfs_fscache_zap_inode_cookie(%struct.inode* %24)
  br label %26

26:                                               ; preds = %13, %1
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local %struct.TYPE_3__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @dfprintk(i32, i8*, %struct.TYPE_3__*) #1

declare dso_local i32 @fscache_uncache_all_inode_pages(i64, %struct.inode*) #1

declare dso_local i32 @nfs_fscache_zap_inode_cookie(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
