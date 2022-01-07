; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4filelayout.c_filelayout_scan_ds_commit_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4filelayout.c_filelayout_scan_ds_commit_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_commit_bucket = type { i32*, i32*, %struct.list_head, %struct.list_head }
%struct.list_head = type { i32 }
%struct.nfs_commit_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnfs_commit_bucket*, %struct.nfs_commit_info*, i32)* @filelayout_scan_ds_commit_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filelayout_scan_ds_commit_list(%struct.pnfs_commit_bucket* %0, %struct.nfs_commit_info* %1, i32 %2) #0 {
  %4 = alloca %struct.pnfs_commit_bucket*, align 8
  %5 = alloca %struct.nfs_commit_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca i32, align 4
  store %struct.pnfs_commit_bucket* %0, %struct.pnfs_commit_bucket** %4, align 8
  store %struct.nfs_commit_info* %1, %struct.nfs_commit_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %4, align 8
  %11 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %10, i32 0, i32 3
  store %struct.list_head* %11, %struct.list_head** %7, align 8
  %12 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %4, align 8
  %13 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %12, i32 0, i32 2
  store %struct.list_head* %13, %struct.list_head** %8, align 8
  %14 = load %struct.list_head*, %struct.list_head** %7, align 8
  %15 = load %struct.list_head*, %struct.list_head** %8, align 8
  %16 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @transfer_commit_list(%struct.list_head* %14, %struct.list_head* %15, %struct.nfs_commit_info* %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %53

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %5, align 8
  %24 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, %22
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %5, align 8
  %31 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, %29
  store i32 %35, i32* %33, align 4
  %36 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %4, align 8
  %37 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %4, align 8
  %40 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %39, i32 0, i32 0
  store i32* %38, i32** %40, align 8
  %41 = load %struct.list_head*, %struct.list_head** %7, align 8
  %42 = call i64 @list_empty(%struct.list_head* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %21
  %45 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %4, align 8
  %46 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %45, i32 0, i32 1
  store i32* null, i32** %46, align 8
  br label %52

47:                                               ; preds = %21
  %48 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %4, align 8
  %49 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @get_lseg(i32* %50)
  br label %52

52:                                               ; preds = %47, %44
  br label %53

53:                                               ; preds = %52, %3
  %54 = load i32, i32* %9, align 4
  ret i32 %54
}

declare dso_local i32 @transfer_commit_list(%struct.list_head*, %struct.list_head*, %struct.nfs_commit_info*, i32) #1

declare dso_local i64 @list_empty(%struct.list_head*) #1

declare dso_local i32 @get_lseg(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
