; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_value_truncate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_value_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_xattr_value_buf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ocfs2_xattr_set_ctxt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_xattr_value_buf*, i32, %struct.ocfs2_xattr_set_ctxt*)* @ocfs2_xattr_value_truncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_value_truncate(%struct.inode* %0, %struct.ocfs2_xattr_value_buf* %1, i32 %2, %struct.ocfs2_xattr_set_ctxt* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ocfs2_xattr_value_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocfs2_xattr_set_ctxt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.ocfs2_xattr_value_buf* %1, %struct.ocfs2_xattr_value_buf** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ocfs2_xattr_set_ctxt* %3, %struct.ocfs2_xattr_set_ctxt** %9, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i64 @ocfs2_clusters_for_bytes(i32 %15, i32 %16)
  store i64 %17, i64* %11, align 8
  %18 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %7, align 8
  %19 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @le32_to_cpu(i32 %22)
  store i64 %23, i64* %12, align 8
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* %12, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %49

28:                                               ; preds = %4
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* %12, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* %12, align 8
  %36 = sub nsw i64 %34, %35
  %37 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %7, align 8
  %38 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %9, align 8
  %39 = call i32 @ocfs2_xattr_extend_allocation(%struct.inode* %33, i64 %36, %struct.ocfs2_xattr_value_buf* %37, %struct.ocfs2_xattr_set_ctxt* %38)
  store i32 %39, i32* %10, align 4
  br label %47

40:                                               ; preds = %28
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %7, align 8
  %45 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %9, align 8
  %46 = call i32 @ocfs2_xattr_shrink_size(%struct.inode* %41, i64 %42, i64 %43, %struct.ocfs2_xattr_value_buf* %44, %struct.ocfs2_xattr_set_ctxt* %45)
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %40, %32
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %47, %27
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i64 @ocfs2_clusters_for_bytes(i32, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_xattr_extend_allocation(%struct.inode*, i64, %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_set_ctxt*) #1

declare dso_local i32 @ocfs2_xattr_shrink_size(%struct.inode*, i64, i64, %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_set_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
