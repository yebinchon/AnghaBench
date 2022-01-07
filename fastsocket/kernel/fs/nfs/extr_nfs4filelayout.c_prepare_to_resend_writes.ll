; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4filelayout.c_prepare_to_resend_writes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4filelayout.c_prepare_to_resend_writes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_commit_data = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.nfs_page = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_commit_data*)* @prepare_to_resend_writes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_to_resend_writes(%struct.nfs_commit_data* %0) #0 {
  %2 = alloca %struct.nfs_commit_data*, align 8
  %3 = alloca %struct.nfs_page*, align 8
  store %struct.nfs_commit_data* %0, %struct.nfs_commit_data** %2, align 8
  %4 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %2, align 8
  %5 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.nfs_page* @nfs_list_entry(i32 %7)
  store %struct.nfs_page* %8, %struct.nfs_page** %3, align 8
  %9 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %2, align 8
  %10 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %2, align 8
  %13 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %17 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @memcpy(i32* %15, i32 %19, i32 4)
  %21 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %2, align 8
  %22 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  ret void
}

declare dso_local %struct.nfs_page* @nfs_list_entry(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
