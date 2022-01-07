; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_quota_tree.c_put_free_dqblk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_quota_tree.c_put_free_dqblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtree_mem_dqinfo = type { i32, i32, i32 }
%struct.qt_disk_dqdbheader = type { i32, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtree_mem_dqinfo*, i8*, i32)* @put_free_dqblk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @put_free_dqblk(%struct.qtree_mem_dqinfo* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qtree_mem_dqinfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qt_disk_dqdbheader*, align 8
  %9 = alloca i32, align 4
  store %struct.qtree_mem_dqinfo* %0, %struct.qtree_mem_dqinfo** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.qt_disk_dqdbheader*
  store %struct.qt_disk_dqdbheader* %11, %struct.qt_disk_dqdbheader** %8, align 8
  %12 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %13 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @cpu_to_le32(i32 %14)
  %16 = load %struct.qt_disk_dqdbheader*, %struct.qt_disk_dqdbheader** %8, align 8
  %17 = getelementptr inbounds %struct.qt_disk_dqdbheader, %struct.qt_disk_dqdbheader* %16, i32 0, i32 2
  store i8* %15, i8** %17, align 8
  %18 = call i8* @cpu_to_le32(i32 0)
  %19 = load %struct.qt_disk_dqdbheader*, %struct.qt_disk_dqdbheader** %8, align 8
  %20 = getelementptr inbounds %struct.qt_disk_dqdbheader, %struct.qt_disk_dqdbheader* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = call i32 @cpu_to_le16(i32 0)
  %22 = load %struct.qt_disk_dqdbheader*, %struct.qt_disk_dqdbheader** %8, align 8
  %23 = getelementptr inbounds %struct.qt_disk_dqdbheader, %struct.qt_disk_dqdbheader* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @write_blk(%struct.qtree_mem_dqinfo* %24, i32 %25, i8* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  br label %43

32:                                               ; preds = %3
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %35 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %37 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %40 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @mark_info_dirty(i32 %38, i32 %41)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %32, %30
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @write_blk(%struct.qtree_mem_dqinfo*, i32, i8*) #1

declare dso_local i32 @mark_info_dirty(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
