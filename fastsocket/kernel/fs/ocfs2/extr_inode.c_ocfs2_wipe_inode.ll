; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_inode.c_ocfs2_wipe_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_inode.c_ocfs2_wipe_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_dinode = type { i32 }

@ORPHAN_DIR_SYSTEM_INODE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*)* @ocfs2_wipe_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_wipe_inode(%struct.inode* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.ocfs2_super*, align 8
  %11 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  store %struct.inode* null, %struct.inode** %8, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.ocfs2_super* @OCFS2_SB(i32 %14)
  store %struct.ocfs2_super* %15, %struct.ocfs2_super** %10, align 8
  %16 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %17 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %19, %struct.ocfs2_dinode** %11, align 8
  %20 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %21 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le16_to_cpu(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @ocfs2_check_orphan_recovery_state(%struct.ocfs2_super* %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %128

31:                                               ; preds = %2
  %32 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %33 = load i32, i32* @ORPHAN_DIR_SYSTEM_INODE, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %32, i32 %33, i32 %34)
  store %struct.inode* %35, %struct.inode** %8, align 8
  %36 = load %struct.inode*, %struct.inode** %8, align 8
  %37 = icmp ne %struct.inode* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @EEXIST, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @mlog_errno(i32 %41)
  br label %121

43:                                               ; preds = %31
  %44 = load %struct.inode*, %struct.inode** %8, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load %struct.inode*, %struct.inode** %8, align 8
  %48 = call i32 @ocfs2_inode_lock(%struct.inode* %47, %struct.buffer_head** %9, i32 1)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load %struct.inode*, %struct.inode** %8, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @mlog_errno(i32 %55)
  br label %121

57:                                               ; preds = %43
  %58 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %59 = load %struct.inode*, %struct.inode** %4, align 8
  %60 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %61 = call i32 @ocfs2_truncate_for_delete(%struct.ocfs2_super* %58, %struct.inode* %59, %struct.buffer_head* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @mlog_errno(i32 %65)
  br label %113

67:                                               ; preds = %57
  %68 = load %struct.inode*, %struct.inode** %4, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @S_ISDIR(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %67
  %74 = load %struct.inode*, %struct.inode** %4, align 8
  %75 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %76 = call i32 @ocfs2_dx_dir_truncate(%struct.inode* %74, %struct.buffer_head* %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @mlog_errno(i32 %80)
  br label %113

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82, %67
  %84 = load %struct.inode*, %struct.inode** %4, align 8
  %85 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %86 = call i32 @ocfs2_xattr_remove(%struct.inode* %84, %struct.buffer_head* %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @mlog_errno(i32 %90)
  br label %113

92:                                               ; preds = %83
  %93 = load %struct.inode*, %struct.inode** %4, align 8
  %94 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %95 = call i32 @ocfs2_remove_refcount_tree(%struct.inode* %93, %struct.buffer_head* %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @mlog_errno(i32 %99)
  br label %113

101:                                              ; preds = %92
  %102 = load %struct.inode*, %struct.inode** %4, align 8
  %103 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %104 = load %struct.inode*, %struct.inode** %8, align 8
  %105 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %106 = call i32 @ocfs2_remove_inode(%struct.inode* %102, %struct.buffer_head* %103, %struct.inode* %104, %struct.buffer_head* %105)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @mlog_errno(i32 %110)
  br label %112

112:                                              ; preds = %109, %101
  br label %113

113:                                              ; preds = %112, %98, %89, %79, %64
  %114 = load %struct.inode*, %struct.inode** %8, align 8
  %115 = call i32 @ocfs2_inode_unlock(%struct.inode* %114, i32 1)
  %116 = load %struct.inode*, %struct.inode** %8, align 8
  %117 = getelementptr inbounds %struct.inode, %struct.inode* %116, i32 0, i32 0
  %118 = call i32 @mutex_unlock(i32* %117)
  %119 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %120 = call i32 @brelse(%struct.buffer_head* %119)
  br label %121

121:                                              ; preds = %113, %51, %38
  %122 = load %struct.inode*, %struct.inode** %8, align 8
  %123 = call i32 @iput(%struct.inode* %122)
  %124 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @ocfs2_signal_wipe_completion(%struct.ocfs2_super* %124, i32 %125)
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %121, %29
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_check_orphan_recovery_state(%struct.ocfs2_super*, i32) #1

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ocfs2_truncate_for_delete(%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @ocfs2_dx_dir_truncate(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_xattr_remove(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_remove_refcount_tree(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_remove_inode(%struct.inode*, %struct.buffer_head*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @ocfs2_signal_wipe_completion(%struct.ocfs2_super*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
