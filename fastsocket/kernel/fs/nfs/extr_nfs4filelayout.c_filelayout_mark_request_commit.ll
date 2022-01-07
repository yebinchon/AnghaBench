; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4filelayout.c_filelayout_mark_request_commit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4filelayout.c_filelayout_mark_request_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { i32 }
%struct.pnfs_layout_segment = type { i32 }
%struct.nfs_commit_info = type { i32 }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_page*, %struct.pnfs_layout_segment*, %struct.nfs_commit_info*)* @filelayout_mark_request_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filelayout_mark_request_commit(%struct.nfs_page* %0, %struct.pnfs_layout_segment* %1, %struct.nfs_commit_info* %2) #0 {
  %4 = alloca %struct.nfs_page*, align 8
  %5 = alloca %struct.pnfs_layout_segment*, align 8
  %6 = alloca %struct.nfs_commit_info*, align 8
  %7 = alloca %struct.list_head*, align 8
  store %struct.nfs_page* %0, %struct.nfs_page** %4, align 8
  store %struct.pnfs_layout_segment* %1, %struct.pnfs_layout_segment** %5, align 8
  store %struct.nfs_commit_info* %2, %struct.nfs_commit_info** %6, align 8
  %8 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %9 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %5, align 8
  %10 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %6, align 8
  %11 = call %struct.list_head* @filelayout_choose_commit_list(%struct.nfs_page* %8, %struct.pnfs_layout_segment* %9, %struct.nfs_commit_info* %10)
  store %struct.list_head* %11, %struct.list_head** %7, align 8
  %12 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %13 = load %struct.list_head*, %struct.list_head** %7, align 8
  %14 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %6, align 8
  %15 = call i32 @nfs_request_add_commit_list(%struct.nfs_page* %12, %struct.list_head* %13, %struct.nfs_commit_info* %14)
  ret void
}

declare dso_local %struct.list_head* @filelayout_choose_commit_list(%struct.nfs_page*, %struct.pnfs_layout_segment*, %struct.nfs_commit_info*) #1

declare dso_local i32 @nfs_request_add_commit_list(%struct.nfs_page*, %struct.list_head*, %struct.nfs_commit_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
