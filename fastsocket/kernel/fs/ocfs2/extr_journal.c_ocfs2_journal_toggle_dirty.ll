; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_journal_toggle_dirty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_journal_toggle_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, %struct.ocfs2_journal* }
%struct.ocfs2_journal = type { i32, %struct.buffer_head* }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@OCFS2_JOURNAL_DIRTY_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, i32, i32)* @ocfs2_journal_toggle_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_journal_toggle_dirty(%struct.ocfs2_super* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocfs2_journal*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %13 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %12, i32 0, i32 1
  %14 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %13, align 8
  store %struct.ocfs2_journal* %14, %struct.ocfs2_journal** %9, align 8
  %15 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %9, align 8
  %16 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %15, i32 0, i32 1
  %17 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  store %struct.buffer_head* %17, %struct.buffer_head** %10, align 8
  %18 = call i32 (...) @mlog_entry_void()
  %19 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %20 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %22, %struct.ocfs2_dinode** %11, align 8
  %23 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %24 = call i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %30 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le32_to_cpu(i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %3
  %38 = load i32, i32* @OCFS2_JOURNAL_DIRTY_FL, align 4
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  br label %46

41:                                               ; preds = %3
  %42 = load i32, i32* @OCFS2_JOURNAL_DIRTY_FL, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %41, %37
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @cpu_to_le32(i32 %47)
  %49 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %50 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %57 = call i32 @ocfs2_bump_recovery_generation(%struct.ocfs2_dinode* %56)
  br label %58

58:                                               ; preds = %55, %46
  %59 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %60 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %63 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %66 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %65, i32 0, i32 0
  %67 = call i32 @ocfs2_compute_meta_ecc(i32 %61, i64 %64, i32* %66)
  %68 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %69 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %70 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %9, align 8
  %71 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @INODE_CACHE(i32 %72)
  %74 = call i32 @ocfs2_write_block(%struct.ocfs2_super* %68, %struct.buffer_head* %69, i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %58
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @mlog_errno(i32 %78)
  br label %80

80:                                               ; preds = %77, %58
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @mlog_exit(i32 %81)
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ocfs2_bump_recovery_generation(%struct.ocfs2_dinode*) #1

declare dso_local i32 @ocfs2_compute_meta_ecc(i32, i64, i32*) #1

declare dso_local i32 @ocfs2_write_block(%struct.ocfs2_super*, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
