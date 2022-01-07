; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_read.c_nfs_readpage_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_read.c_nfs_readpage_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"NFS: read done (%s/%Ld %d@%Ld)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_page*)* @nfs_readpage_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_readpage_release(%struct.nfs_page* %0) #0 {
  %2 = alloca %struct.nfs_page*, align 8
  %3 = alloca %struct.inode*, align 8
  store %struct.nfs_page* %0, %struct.nfs_page** %2, align 8
  %4 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %5 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %4, i32 0, i32 1
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %10, %struct.inode** %3, align 8
  %11 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %12 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @PageUptodate(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %19 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @nfs_readpage_to_fscache(%struct.inode* %17, i32 %20, i32 0)
  br label %22

22:                                               ; preds = %16, %1
  %23 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %24 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @unlock_page(i32 %25)
  %27 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %28 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.inode*, %struct.inode** %32, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %39 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.inode*, %struct.inode** %43, align 8
  %45 = call i64 @NFS_FILEID(%struct.inode* %44)
  %46 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %47 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %50 = call i64 @req_offset(%struct.nfs_page* %49)
  %51 = call i32 @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %37, i64 %45, i32 %48, i64 %50)
  %52 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %53 = call i32 @nfs_release_request(%struct.nfs_page* %52)
  ret void
}

declare dso_local i64 @PageUptodate(i32) #1

declare dso_local i32 @nfs_readpage_to_fscache(%struct.inode*, i32, i32) #1

declare dso_local i32 @unlock_page(i32) #1

declare dso_local i32 @dprintk(i8*, i32, i64, i32, i64) #1

declare dso_local i64 @NFS_FILEID(%struct.inode*) #1

declare dso_local i64 @req_offset(%struct.nfs_page*) #1

declare dso_local i32 @nfs_release_request(%struct.nfs_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
