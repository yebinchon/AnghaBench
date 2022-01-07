; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4filelayout.c_filelayout_recover_commit_reqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4filelayout.c_filelayout_recover_commit_reqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.nfs_commit_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, %struct.pnfs_commit_bucket* }
%struct.pnfs_commit_bucket = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_head*, %struct.nfs_commit_info*)* @filelayout_recover_commit_reqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filelayout_recover_commit_reqs(%struct.list_head* %0, %struct.nfs_commit_info* %1) #0 {
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca %struct.nfs_commit_info*, align 8
  %5 = alloca %struct.pnfs_commit_bucket*, align 8
  %6 = alloca i32, align 4
  store %struct.list_head* %0, %struct.list_head** %3, align 8
  store %struct.nfs_commit_info* %1, %struct.nfs_commit_info** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %4, align 8
  %8 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %10, align 8
  store %struct.pnfs_commit_bucket* %11, %struct.pnfs_commit_bucket** %5, align 8
  br label %12

12:                                               ; preds = %42, %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %4, align 8
  %15 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %13, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %12
  %21 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %5, align 8
  %22 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %21, i32 0, i32 1
  %23 = load %struct.list_head*, %struct.list_head** %3, align 8
  %24 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %4, align 8
  %25 = call i64 @transfer_commit_list(i32* %22, %struct.list_head* %23, %struct.nfs_commit_info* %24, i32 0)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %20
  %28 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %5, align 8
  %29 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %28, i32 0, i32 1
  %30 = call i32 @list_empty(i32* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %5, align 8
  %36 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @put_lseg(i32* %37)
  %39 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %5, align 8
  %40 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %27, %20
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  %45 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %5, align 8
  %46 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %45, i32 1
  store %struct.pnfs_commit_bucket* %46, %struct.pnfs_commit_bucket** %5, align 8
  br label %12

47:                                               ; preds = %12
  %48 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %4, align 8
  %49 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  ret void
}

declare dso_local i64 @transfer_commit_list(i32*, %struct.list_head*, %struct.nfs_commit_info*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @put_lseg(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
