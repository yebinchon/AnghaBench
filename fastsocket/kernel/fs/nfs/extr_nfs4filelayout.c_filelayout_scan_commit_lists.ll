; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4filelayout.c_filelayout_scan_commit_lists.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4filelayout.c_filelayout_scan_commit_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_commit_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_commit_info*, i32)* @filelayout_scan_commit_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filelayout_scan_commit_lists(%struct.nfs_commit_info* %0, i32 %1) #0 {
  %3 = alloca %struct.nfs_commit_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nfs_commit_info* %0, %struct.nfs_commit_info** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %39, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %3, align 8
  %11 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %9, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %16, %8
  %20 = phi i1 [ false, %8 ], [ %18, %16 ]
  br i1 %20, label %21, label %42

21:                                               ; preds = %19
  %22 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %3, align 8
  %23 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @filelayout_scan_ds_commit_list(i32* %29, %struct.nfs_commit_info* %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %4, align 4
  %35 = sub nsw i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %21
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %8

42:                                               ; preds = %19
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @filelayout_scan_ds_commit_list(i32*, %struct.nfs_commit_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
