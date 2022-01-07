; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4filelayout.c_filelayout_choose_commit_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4filelayout.c_filelayout_choose_commit_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.nfs_page = type { i32 }
%struct.pnfs_layout_segment = type { i32 }
%struct.nfs_commit_info = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, %struct.pnfs_commit_bucket* }
%struct.pnfs_commit_bucket = type { i32, %struct.list_head }
%struct.TYPE_3__ = type { %struct.list_head }
%struct.nfs4_filelayout_segment = type { i64 }

@PG_COMMIT_TO_DS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.list_head* (%struct.nfs_page*, %struct.pnfs_layout_segment*, %struct.nfs_commit_info*)* @filelayout_choose_commit_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.list_head* @filelayout_choose_commit_list(%struct.nfs_page* %0, %struct.pnfs_layout_segment* %1, %struct.nfs_commit_info* %2) #0 {
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.nfs_page*, align 8
  %6 = alloca %struct.pnfs_layout_segment*, align 8
  %7 = alloca %struct.nfs_commit_info*, align 8
  %8 = alloca %struct.nfs4_filelayout_segment*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.list_head*, align 8
  %12 = alloca %struct.pnfs_commit_bucket*, align 8
  store %struct.nfs_page* %0, %struct.nfs_page** %5, align 8
  store %struct.pnfs_layout_segment* %1, %struct.pnfs_layout_segment** %6, align 8
  store %struct.nfs_commit_info* %2, %struct.nfs_commit_info** %7, align 8
  %13 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %6, align 8
  %14 = call %struct.nfs4_filelayout_segment* @FILELAYOUT_LSEG(%struct.pnfs_layout_segment* %13)
  store %struct.nfs4_filelayout_segment* %14, %struct.nfs4_filelayout_segment** %8, align 8
  %15 = load %struct.nfs4_filelayout_segment*, %struct.nfs4_filelayout_segment** %8, align 8
  %16 = getelementptr inbounds %struct.nfs4_filelayout_segment, %struct.nfs4_filelayout_segment* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %7, align 8
  %21 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store %struct.list_head* %23, %struct.list_head** %4, align 8
  br label %63

24:                                               ; preds = %3
  %25 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %6, align 8
  %26 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %27 = call i32 @req_offset(%struct.nfs_page* %26)
  %28 = call i64 @nfs4_fl_calc_j_index(%struct.pnfs_layout_segment* %25, i32 %27)
  store i64 %28, i64* %10, align 8
  %29 = load %struct.nfs4_filelayout_segment*, %struct.nfs4_filelayout_segment** %8, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i64 @select_bucket_index(%struct.nfs4_filelayout_segment* %29, i64 %30)
  store i64 %31, i64* %9, align 8
  %32 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %7, align 8
  %33 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %35, align 8
  store %struct.pnfs_commit_bucket* %36, %struct.pnfs_commit_bucket** %12, align 8
  %37 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %12, align 8
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %37, i64 %38
  %40 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %39, i32 0, i32 1
  store %struct.list_head* %40, %struct.list_head** %11, align 8
  %41 = load %struct.list_head*, %struct.list_head** %11, align 8
  %42 = call i64 @list_empty(%struct.list_head* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %24
  %45 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %6, align 8
  %46 = call i32 @get_lseg(%struct.pnfs_layout_segment* %45)
  %47 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %12, align 8
  %48 = load i64, i64* %9, align 8
  %49 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %47, i64 %48
  %50 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 4
  br label %51

51:                                               ; preds = %44, %24
  %52 = load i32, i32* @PG_COMMIT_TO_DS, align 4
  %53 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %54 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %53, i32 0, i32 0
  %55 = call i32 @set_bit(i32 %52, i32* %54)
  %56 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %7, align 8
  %57 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = load %struct.list_head*, %struct.list_head** %11, align 8
  store %struct.list_head* %62, %struct.list_head** %4, align 8
  br label %63

63:                                               ; preds = %51, %19
  %64 = load %struct.list_head*, %struct.list_head** %4, align 8
  ret %struct.list_head* %64
}

declare dso_local %struct.nfs4_filelayout_segment* @FILELAYOUT_LSEG(%struct.pnfs_layout_segment*) #1

declare dso_local i64 @nfs4_fl_calc_j_index(%struct.pnfs_layout_segment*, i32) #1

declare dso_local i32 @req_offset(%struct.nfs_page*) #1

declare dso_local i64 @select_bucket_index(%struct.nfs4_filelayout_segment*, i64) #1

declare dso_local i64 @list_empty(%struct.list_head*) #1

declare dso_local i32 @get_lseg(%struct.pnfs_layout_segment*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
