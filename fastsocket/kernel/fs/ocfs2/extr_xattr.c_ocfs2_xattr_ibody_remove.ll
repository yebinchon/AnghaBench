; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_ibody_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_ibody_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i32 }
%struct.ocfs2_xattr_header = type { i32 }
%struct.ocfs2_xattr_value_buf = type { i32, %struct.buffer_head* }

@ocfs2_journal_access_di = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, %struct.ocfs2_caching_info*, %struct.buffer_head*)* @ocfs2_xattr_ibody_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_ibody_remove(%struct.inode* %0, %struct.buffer_head* %1, %struct.ocfs2_caching_info* %2, %struct.buffer_head* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.ocfs2_caching_info*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.ocfs2_dinode*, align 8
  %10 = alloca %struct.ocfs2_xattr_header*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_xattr_value_buf, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %6, align 8
  store %struct.ocfs2_caching_info* %2, %struct.ocfs2_caching_info** %7, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %8, align 8
  %13 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %14 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %16, %struct.ocfs2_dinode** %9, align 8
  %17 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %12, i32 0, i32 0
  %18 = load i32, i32* @ocfs2_journal_access_di, align 4
  store i32 %18, i32* %17, align 8
  %19 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %12, i32 0, i32 1
  %20 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  store %struct.buffer_head* %20, %struct.buffer_head** %19, align 8
  %21 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %22 = bitcast %struct.ocfs2_dinode* %21 to i8*
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr i8, i8* %22, i64 %28
  %30 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %31 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @le16_to_cpu(i32 %32)
  %34 = ptrtoint i8* %29 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = inttoptr i64 %36 to %struct.ocfs2_xattr_header*
  store %struct.ocfs2_xattr_header* %37, %struct.ocfs2_xattr_header** %10, align 8
  %38 = load %struct.inode*, %struct.inode** %5, align 8
  %39 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %10, align 8
  %40 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %41 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %42 = call i32 @ocfs2_remove_value_outside(%struct.inode* %38, %struct.ocfs2_xattr_value_buf* %12, %struct.ocfs2_xattr_header* %39, %struct.ocfs2_caching_info* %40, %struct.buffer_head* %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  ret i32 %43
}

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_remove_value_outside(%struct.inode*, %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_header*, %struct.ocfs2_caching_info*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
