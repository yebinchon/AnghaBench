; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_direct.c_nfs_direct_readpage_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_direct.c_nfs_direct_readpage_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"NFS: direct read done (%s/%lld %d@%lld)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_page*)* @nfs_direct_readpage_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_direct_readpage_release(%struct.nfs_page* %0) #0 {
  %2 = alloca %struct.nfs_page*, align 8
  store %struct.nfs_page* %0, %struct.nfs_page** %2, align 8
  %3 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %4 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %3, i32 0, i32 1
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %15 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %14, i32 0, i32 1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = call i64 @NFS_FILEID(%struct.TYPE_8__* %20)
  %22 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %23 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %26 = call i64 @req_offset(%struct.nfs_page* %25)
  %27 = call i32 @dprintk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %13, i64 %21, i32 %24, i64 %26)
  %28 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %29 = call i32 @nfs_release_request(%struct.nfs_page* %28)
  ret void
}

declare dso_local i32 @dprintk(i8*, i32, i64, i32, i64) #1

declare dso_local i64 @NFS_FILEID(%struct.TYPE_8__*) #1

declare dso_local i64 @req_offset(%struct.nfs_page*) #1

declare dso_local i32 @nfs_release_request(%struct.nfs_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
