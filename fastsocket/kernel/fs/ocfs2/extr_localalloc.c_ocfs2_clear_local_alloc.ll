; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_localalloc.c_ocfs2_clear_local_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_localalloc.c_ocfs2_clear_local_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_dinode = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.ocfs2_local_alloc = type { i64*, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_dinode*)* @ocfs2_clear_local_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_clear_local_alloc(%struct.ocfs2_dinode* %0) #0 {
  %2 = alloca %struct.ocfs2_dinode*, align 8
  %3 = alloca %struct.ocfs2_local_alloc*, align 8
  %4 = alloca i32, align 4
  store %struct.ocfs2_dinode* %0, %struct.ocfs2_dinode** %2, align 8
  %5 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %2, align 8
  %6 = call %struct.ocfs2_local_alloc* @OCFS2_LOCAL_ALLOC(%struct.ocfs2_dinode* %5)
  store %struct.ocfs2_local_alloc* %6, %struct.ocfs2_local_alloc** %3, align 8
  %7 = call i32 (...) @mlog_entry_void()
  %8 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %2, align 8
  %9 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %2, align 8
  %13 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load %struct.ocfs2_local_alloc*, %struct.ocfs2_local_alloc** %3, align 8
  %17 = getelementptr inbounds %struct.ocfs2_local_alloc, %struct.ocfs2_local_alloc* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %32, %1
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.ocfs2_local_alloc*, %struct.ocfs2_local_alloc** %3, align 8
  %21 = getelementptr inbounds %struct.ocfs2_local_alloc, %struct.ocfs2_local_alloc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @le16_to_cpu(i32 %22)
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %18
  %26 = load %struct.ocfs2_local_alloc*, %struct.ocfs2_local_alloc** %3, align 8
  %27 = getelementptr inbounds %struct.ocfs2_local_alloc, %struct.ocfs2_local_alloc* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %18

35:                                               ; preds = %18
  %36 = call i32 (...) @mlog_exit_void()
  ret void
}

declare dso_local %struct.ocfs2_local_alloc* @OCFS2_LOCAL_ALLOC(%struct.ocfs2_dinode*) #1

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mlog_exit_void(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
