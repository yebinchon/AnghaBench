; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_bucket_value_truncate_xs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_bucket_value_truncate_xs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_xattr_search = type { %struct.TYPE_2__*, i64, %struct.ocfs2_xattr_entry* }
%struct.TYPE_2__ = type { i32* }
%struct.ocfs2_xattr_entry = type { i32 }
%struct.ocfs2_xattr_set_ctxt = type { i32 }
%struct.ocfs2_xattr_header = type { %struct.ocfs2_xattr_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_xattr_search*, i32, %struct.ocfs2_xattr_set_ctxt*)* @ocfs2_xattr_bucket_value_truncate_xs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_bucket_value_truncate_xs(%struct.inode* %0, %struct.ocfs2_xattr_search* %1, i32 %2, %struct.ocfs2_xattr_set_ctxt* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ocfs2_xattr_search*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_xattr_set_ctxt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocfs2_xattr_entry*, align 8
  %12 = alloca %struct.ocfs2_xattr_header*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ocfs2_xattr_search* %1, %struct.ocfs2_xattr_search** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ocfs2_xattr_set_ctxt* %3, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %13 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %6, align 8
  %14 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %13, i32 0, i32 2
  %15 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %14, align 8
  store %struct.ocfs2_xattr_entry* %15, %struct.ocfs2_xattr_entry** %11, align 8
  %16 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %6, align 8
  %17 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ocfs2_xattr_header*
  store %struct.ocfs2_xattr_header* %19, %struct.ocfs2_xattr_header** %12, align 8
  %20 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %6, align 8
  %21 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %4
  %29 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %11, align 8
  %30 = icmp ne %struct.ocfs2_xattr_entry* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %11, align 8
  %33 = call i64 @ocfs2_xattr_is_local(%struct.ocfs2_xattr_entry* %32)
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %31, %28, %4
  %36 = phi i1 [ true, %28 ], [ true, %4 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %11, align 8
  %40 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %12, align 8
  %41 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %40, i32 0, i32 0
  %42 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %41, align 8
  %43 = ptrtoint %struct.ocfs2_xattr_entry* %39 to i64
  %44 = ptrtoint %struct.ocfs2_xattr_entry* %42 to i64
  %45 = sub i64 %43, %44
  %46 = sdiv exact i64 %45, 4
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %10, align 4
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %6, align 8
  %50 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %55 = call i32 @ocfs2_xattr_bucket_value_truncate(%struct.inode* %48, %struct.TYPE_2__* %51, i32 %52, i32 %53, %struct.ocfs2_xattr_set_ctxt* %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %35
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @mlog_errno(i32 %59)
  br label %61

61:                                               ; preds = %58, %35
  %62 = load i32, i32* %9, align 4
  ret i32 %62
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @ocfs2_xattr_is_local(%struct.ocfs2_xattr_entry*) #1

declare dso_local i32 @ocfs2_xattr_bucket_value_truncate(%struct.inode*, %struct.TYPE_2__*, i32, i32, %struct.ocfs2_xattr_set_ctxt*) #1

declare dso_local i32 @mlog_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
