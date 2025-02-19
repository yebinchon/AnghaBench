; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_fscache.c_nfs_fscache_release_inode_cookie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_fscache.c_nfs_fscache_release_inode_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_inode = type { i32* }

@FSCACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"NFS: clear cookie (0x%p/0x%p)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_fscache_release_inode_cookie(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.nfs_inode*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = call %struct.nfs_inode* @NFS_I(%struct.inode* %4)
  store %struct.nfs_inode* %5, %struct.nfs_inode** %3, align 8
  %6 = load i32, i32* @FSCACHE, align 4
  %7 = load %struct.nfs_inode*, %struct.nfs_inode** %3, align 8
  %8 = load %struct.nfs_inode*, %struct.nfs_inode** %3, align 8
  %9 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @dfprintk(i32 %6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.nfs_inode* %7, i32* %10)
  %12 = load %struct.nfs_inode*, %struct.nfs_inode** %3, align 8
  %13 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @fscache_relinquish_cookie(i32* %14, i32 0)
  %16 = load %struct.nfs_inode*, %struct.nfs_inode** %3, align 8
  %17 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %16, i32 0, i32 0
  store i32* null, i32** %17, align 8
  ret void
}

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i32 @dfprintk(i32, i8*, %struct.nfs_inode*, i32*) #1

declare dso_local i32 @fscache_relinquish_cookie(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
