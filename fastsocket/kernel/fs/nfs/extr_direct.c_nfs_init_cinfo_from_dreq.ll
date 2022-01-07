; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_direct.c_nfs_init_cinfo_from_dreq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_direct.c_nfs_init_cinfo_from_dreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_commit_info = type { i32*, %struct.nfs_direct_req*, i32*, i32*, i32* }
%struct.nfs_direct_req = type { i32, i32, i32 }

@nfs_direct_commit_completion_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_init_cinfo_from_dreq(%struct.nfs_commit_info* %0, %struct.nfs_direct_req* %1) #0 {
  %3 = alloca %struct.nfs_commit_info*, align 8
  %4 = alloca %struct.nfs_direct_req*, align 8
  store %struct.nfs_commit_info* %0, %struct.nfs_commit_info** %3, align 8
  store %struct.nfs_direct_req* %1, %struct.nfs_direct_req** %4, align 8
  %5 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %4, align 8
  %6 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %5, i32 0, i32 2
  %7 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %3, align 8
  %8 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %7, i32 0, i32 4
  store i32* %6, i32** %8, align 8
  %9 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %4, align 8
  %10 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %9, i32 0, i32 1
  %11 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %3, align 8
  %12 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %11, i32 0, i32 3
  store i32* %10, i32** %12, align 8
  %13 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %4, align 8
  %14 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %13, i32 0, i32 0
  %15 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %3, align 8
  %16 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %15, i32 0, i32 2
  store i32* %14, i32** %16, align 8
  %17 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %4, align 8
  %18 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %3, align 8
  %19 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %18, i32 0, i32 1
  store %struct.nfs_direct_req* %17, %struct.nfs_direct_req** %19, align 8
  %20 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %3, align 8
  %21 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %20, i32 0, i32 0
  store i32* @nfs_direct_commit_completion_ops, i32** %21, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
