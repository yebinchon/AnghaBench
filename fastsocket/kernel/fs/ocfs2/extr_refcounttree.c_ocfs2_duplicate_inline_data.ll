; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_duplicate_inline_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_duplicate_inline_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_dinode = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@OCFS2_INODE_UPDATE_CREDITS = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, %struct.inode*, %struct.buffer_head*)* @ocfs2_duplicate_inline_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_duplicate_inline_data(%struct.inode* %0, %struct.buffer_head* %1, %struct.inode* %2, %struct.buffer_head* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ocfs2_super*, align 8
  %12 = alloca %struct.ocfs2_dinode*, align 8
  %13 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %8, align 8
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.ocfs2_super* @OCFS2_SB(i32 %16)
  store %struct.ocfs2_super* %17, %struct.ocfs2_super** %11, align 8
  %18 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %19 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %21, %struct.ocfs2_dinode** %12, align 8
  %22 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %23 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %25, %struct.ocfs2_dinode** %13, align 8
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %26)
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %37 = load i32, i32* @OCFS2_INODE_UPDATE_CREDITS, align 4
  %38 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %36, i32 %37)
  store i32* %38, i32** %10, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = call i64 @IS_ERR(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %4
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @PTR_ERR(i32* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @mlog_errno(i32 %45)
  br label %114

47:                                               ; preds = %4
  %48 = load i32*, i32** %10, align 8
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = call i32 @INODE_CACHE(%struct.inode* %49)
  %51 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %52 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %53 = call i32 @ocfs2_journal_access_di(i32* %48, i32 %50, %struct.buffer_head* %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @mlog_errno(i32 %57)
  br label %110

59:                                               ; preds = %47
  %60 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %12, align 8
  %61 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %13, align 8
  %66 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i32 %64, i32* %68, align 4
  %69 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %13, align 8
  %70 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %12, align 8
  %75 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %12, align 8
  %80 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @le16_to_cpu(i32 %83)
  %85 = call i32 @memcpy(i32 %73, i32 %78, i32 %84)
  %86 = load %struct.inode*, %struct.inode** %7, align 8
  %87 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %86)
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = call i32 @spin_lock(i32* %88)
  %90 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %91 = load %struct.inode*, %struct.inode** %7, align 8
  %92 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %91)
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %90
  store i32 %95, i32* %93, align 4
  %96 = load %struct.inode*, %struct.inode** %7, align 8
  %97 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %96)
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @cpu_to_le16(i32 %99)
  %101 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %13, align 8
  %102 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load %struct.inode*, %struct.inode** %7, align 8
  %104 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %103)
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = call i32 @spin_unlock(i32* %105)
  %107 = load i32*, i32** %10, align 8
  %108 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %109 = call i32 @ocfs2_journal_dirty(i32* %107, %struct.buffer_head* %108)
  br label %110

110:                                              ; preds = %59, %56
  %111 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %112 = load i32*, i32** %10, align 8
  %113 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %111, i32* %112)
  br label %114

114:                                              ; preds = %110, %42
  %115 = load i32, i32* %9, align 4
  ret i32 %115
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.TYPE_6__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
