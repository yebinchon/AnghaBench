; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_bucket_remove_xs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_bucket_remove_xs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_xattr_search = type { i32, i64 }
%struct.ocfs2_xattr_header = type { i32, %struct.ocfs2_xattr_entry* }
%struct.ocfs2_xattr_entry = type { i32 }

@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i32*, %struct.ocfs2_xattr_search*)* @ocfs2_xattr_bucket_remove_xs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_xattr_bucket_remove_xs(%struct.inode* %0, i32* %1, %struct.ocfs2_xattr_search* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ocfs2_xattr_search*, align 8
  %7 = alloca %struct.ocfs2_xattr_header*, align 8
  %8 = alloca %struct.ocfs2_xattr_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ocfs2_xattr_search* %2, %struct.ocfs2_xattr_search** %6, align 8
  %10 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %6, align 8
  %11 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.ocfs2_xattr_header* @bucket_xh(i32 %12)
  store %struct.ocfs2_xattr_header* %13, %struct.ocfs2_xattr_header** %7, align 8
  %14 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %7, align 8
  %15 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %14, i32 0, i32 1
  %16 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %15, align 8
  %17 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %7, align 8
  %18 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @le16_to_cpu(i32 %19)
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %16, i64 %22
  store %struct.ocfs2_xattr_entry* %23, %struct.ocfs2_xattr_entry** %8, align 8
  store i32 0, i32* %9, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %6, align 8
  %26 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %29 = call i32 @ocfs2_xattr_bucket_journal_access(i32* %24, i32 %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %3
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @mlog_errno(i32 %33)
  br label %64

35:                                               ; preds = %3
  %36 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %6, align 8
  %37 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %6, align 8
  %40 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  %43 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %8, align 8
  %44 = bitcast %struct.ocfs2_xattr_entry* %43 to i8*
  %45 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %6, align 8
  %46 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = ptrtoint i8* %44 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = trunc i64 %51 to i32
  %53 = call i32 @memmove(i64 %38, i64 %42, i32 %52)
  %54 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %8, align 8
  %55 = call i32 @memset(%struct.ocfs2_xattr_entry* %54, i32 0, i32 4)
  %56 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %7, align 8
  %57 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %56, i32 0, i32 0
  %58 = call i32 @le16_add_cpu(i32* %57, i32 -1)
  %59 = load i32*, i32** %5, align 8
  %60 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %6, align 8
  %61 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @ocfs2_xattr_bucket_journal_dirty(i32* %59, i32 %62)
  br label %64

64:                                               ; preds = %35, %32
  ret void
}

declare dso_local %struct.ocfs2_xattr_header* @bucket_xh(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_xattr_bucket_journal_access(i32*, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

declare dso_local i32 @memset(%struct.ocfs2_xattr_entry*, i32, i32) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @ocfs2_xattr_bucket_journal_dirty(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
