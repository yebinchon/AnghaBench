; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_begin_truncate_log_recovery.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_begin_truncate_log_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_dinode = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ocfs2_truncate_log }
%struct.ocfs2_truncate_log = type { i64 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i64, i32 }

@.str = private unnamed_addr constant [35 x i8] c"recover truncate log from slot %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"We'll have %u logs to recover\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_begin_truncate_log_recovery(%struct.ocfs2_super* %0, i32 %1, %struct.ocfs2_dinode** %2) #0 {
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_dinode**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.ocfs2_dinode*, align 8
  %11 = alloca %struct.ocfs2_truncate_log*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ocfs2_dinode** %2, %struct.ocfs2_dinode*** %6, align 8
  store %struct.inode* null, %struct.inode** %8, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  %12 = load %struct.ocfs2_dinode**, %struct.ocfs2_dinode*** %6, align 8
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %12, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @ocfs2_get_truncate_log_info(%struct.ocfs2_super* %15, i32 %16, %struct.inode** %8, %struct.buffer_head** %9)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @mlog_errno(i32 %21)
  br label %95

23:                                               ; preds = %3
  %24 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %25 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %27, %struct.ocfs2_dinode** %10, align 8
  %28 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %29 = call i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %35 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store %struct.ocfs2_truncate_log* %36, %struct.ocfs2_truncate_log** %11, align 8
  %37 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %11, align 8
  %38 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @le16_to_cpu(i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %94

42:                                               ; preds = %23
  %43 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %11, align 8
  %44 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @le16_to_cpu(i64 %45)
  %47 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %49 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.ocfs2_dinode* @kmalloc(i32 %50, i32 %51)
  %53 = load %struct.ocfs2_dinode**, %struct.ocfs2_dinode*** %6, align 8
  store %struct.ocfs2_dinode* %52, %struct.ocfs2_dinode** %53, align 8
  %54 = load %struct.ocfs2_dinode**, %struct.ocfs2_dinode*** %6, align 8
  %55 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %54, align 8
  %56 = icmp ne %struct.ocfs2_dinode* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %42
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @mlog_errno(i32 %60)
  br label %95

62:                                               ; preds = %42
  %63 = load %struct.ocfs2_dinode**, %struct.ocfs2_dinode*** %6, align 8
  %64 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %63, align 8
  %65 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %66 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %69 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @memcpy(%struct.ocfs2_dinode* %64, i64 %67, i32 %70)
  %72 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %11, align 8
  %73 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  %74 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %75 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %78 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %81 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %80, i32 0, i32 0
  %82 = call i32 @ocfs2_compute_meta_ecc(i32 %76, i64 %79, i32* %81)
  %83 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %84 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %85 = load %struct.inode*, %struct.inode** %8, align 8
  %86 = call i32 @INODE_CACHE(%struct.inode* %85)
  %87 = call i32 @ocfs2_write_block(%struct.ocfs2_super* %83, %struct.buffer_head* %84, i32 %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %62
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @mlog_errno(i32 %91)
  br label %95

93:                                               ; preds = %62
  br label %94

94:                                               ; preds = %93, %23
  br label %95

95:                                               ; preds = %94, %90, %57, %20
  %96 = load %struct.inode*, %struct.inode** %8, align 8
  %97 = icmp ne %struct.inode* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct.inode*, %struct.inode** %8, align 8
  %100 = call i32 @iput(%struct.inode* %99)
  br label %101

101:                                              ; preds = %98, %95
  %102 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %103 = call i32 @brelse(%struct.buffer_head* %102)
  %104 = load i32, i32* %7, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %101
  %107 = load %struct.ocfs2_dinode**, %struct.ocfs2_dinode*** %6, align 8
  %108 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %107, align 8
  %109 = icmp ne %struct.ocfs2_dinode* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %106
  %111 = load %struct.ocfs2_dinode**, %struct.ocfs2_dinode*** %6, align 8
  %112 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %111, align 8
  %113 = call i32 @kfree(%struct.ocfs2_dinode* %112)
  %114 = load %struct.ocfs2_dinode**, %struct.ocfs2_dinode*** %6, align 8
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %114, align 8
  br label %115

115:                                              ; preds = %110, %106, %101
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @mlog_exit(i32 %116)
  %118 = load i32, i32* %7, align 4
  ret i32 %118
}

declare dso_local i32 @mlog(i32, i8*, i32) #1

declare dso_local i32 @ocfs2_get_truncate_log_info(%struct.ocfs2_super*, i32, %struct.inode**, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode*) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local %struct.ocfs2_dinode* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.ocfs2_dinode*, i64, i32) #1

declare dso_local i32 @ocfs2_compute_meta_ecc(i32, i64, i32*) #1

declare dso_local i32 @ocfs2_write_block(%struct.ocfs2_super*, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @kfree(%struct.ocfs2_dinode*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
