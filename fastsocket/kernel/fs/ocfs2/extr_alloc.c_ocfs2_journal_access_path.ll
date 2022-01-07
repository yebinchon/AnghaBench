; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_journal_access_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_journal_access_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { i32 }
%struct.ocfs2_path = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_journal_access_path(%struct.ocfs2_caching_info* %0, i32* %1, %struct.ocfs2_path* %2) #0 {
  %4 = alloca %struct.ocfs2_caching_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ocfs2_path*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ocfs2_caching_info* %0, %struct.ocfs2_caching_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ocfs2_path* %2, %struct.ocfs2_path** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %10 = icmp ne %struct.ocfs2_path* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %34

12:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %30, %12
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %16 = call i32 @path_num_items(%struct.ocfs2_path* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %13
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %4, align 8
  %21 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @ocfs2_path_bh_journal_access(i32* %19, %struct.ocfs2_caching_info* %20, %struct.ocfs2_path* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @mlog_errno(i32 %27)
  br label %34

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %13

33:                                               ; preds = %13
  br label %34

34:                                               ; preds = %33, %26, %11
  %35 = load i32, i32* %8, align 4
  ret i32 %35
}

declare dso_local i32 @path_num_items(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_path_bh_journal_access(i32*, %struct.ocfs2_caching_info*, %struct.ocfs2_path*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
