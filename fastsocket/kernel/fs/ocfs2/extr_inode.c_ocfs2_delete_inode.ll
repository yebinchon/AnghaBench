; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_inode.c_ocfs2_delete_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_inode.c_ocfs2_delete_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"(inode->i_ino = %lu)\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Skipping delete of bad inode\0A\00", align 1
@SIG_BLOCK = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"getting nfs sync lock(PR) failed %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@EDEADLK = common dso_local global i32 0, align 4
@OCFS2_INODE_DELETED = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_delete_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %7, align 8
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @mlog_entry(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = call i64 @is_bad_inode(%struct.inode* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.inode*, %struct.inode** %2, align 8
  %17 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %15, %1
  %22 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %133

23:                                               ; preds = %15
  %24 = load %struct.inode*, %struct.inode** %2, align 8
  %25 = call i32 @ocfs2_inode_is_valid_to_delete(%struct.inode* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load %struct.inode*, %struct.inode** %2, align 8
  %29 = call i32 @ocfs2_cleanup_delete_inode(%struct.inode* %28, i32 0)
  br label %133

30:                                               ; preds = %23
  %31 = call i32 @sigfillset(i32* %5)
  %32 = load i32, i32* @SIG_BLOCK, align 4
  %33 = call i32 @sigprocmask(i32 %32, i32* %5, i32* %6)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @mlog_errno(i32 %37)
  %39 = load %struct.inode*, %struct.inode** %2, align 8
  %40 = call i32 @ocfs2_cleanup_delete_inode(%struct.inode* %39, i32 1)
  br label %133

41:                                               ; preds = %30
  %42 = load %struct.inode*, %struct.inode** %2, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @OCFS2_SB(i32 %44)
  %46 = call i32 @ocfs2_nfs_sync_lock(i32 %45, i32 0)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load i32, i32* @ML_ERROR, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 (i32, i8*, ...) @mlog(i32 %50, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load %struct.inode*, %struct.inode** %2, align 8
  %54 = call i32 @ocfs2_cleanup_delete_inode(%struct.inode* %53, i32 0)
  br label %124

55:                                               ; preds = %41
  %56 = load %struct.inode*, %struct.inode** %2, align 8
  %57 = call i32 @ocfs2_inode_lock(%struct.inode* %56, %struct.buffer_head** %7, i32 1)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @ENOENT, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp ne i32 %61, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @mlog_errno(i32 %66)
  br label %68

68:                                               ; preds = %65, %60
  %69 = load %struct.inode*, %struct.inode** %2, align 8
  %70 = call i32 @ocfs2_cleanup_delete_inode(%struct.inode* %69, i32 0)
  br label %118

71:                                               ; preds = %55
  %72 = load %struct.inode*, %struct.inode** %2, align 8
  %73 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %74 = call i32 @ocfs2_query_inode_wipe(%struct.inode* %72, %struct.buffer_head* %73, i32* %3)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %3, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* %4, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %77, %71
  %81 = load i32, i32* %4, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @mlog_errno(i32 %84)
  br label %86

86:                                               ; preds = %83, %80
  %87 = load %struct.inode*, %struct.inode** %2, align 8
  %88 = call i32 @ocfs2_cleanup_delete_inode(%struct.inode* %87, i32 1)
  br label %113

89:                                               ; preds = %77
  %90 = load %struct.inode*, %struct.inode** %2, align 8
  %91 = call i32 @ocfs2_cleanup_delete_inode(%struct.inode* %90, i32 0)
  %92 = load %struct.inode*, %struct.inode** %2, align 8
  %93 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %94 = call i32 @ocfs2_wipe_inode(%struct.inode* %92, %struct.buffer_head* %93)
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* %4, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %89
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @EDEADLK, align 4
  %100 = sub nsw i32 0, %99
  %101 = icmp ne i32 %98, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @mlog_errno(i32 %103)
  br label %105

105:                                              ; preds = %102, %97
  br label %113

106:                                              ; preds = %89
  %107 = load i32, i32* @OCFS2_INODE_DELETED, align 4
  %108 = load %struct.inode*, %struct.inode** %2, align 8
  %109 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %108)
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %107
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %106, %105, %86
  %114 = load %struct.inode*, %struct.inode** %2, align 8
  %115 = call i32 @ocfs2_inode_unlock(%struct.inode* %114, i32 1)
  %116 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %117 = call i32 @brelse(%struct.buffer_head* %116)
  br label %118

118:                                              ; preds = %113, %68
  %119 = load %struct.inode*, %struct.inode** %2, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @OCFS2_SB(i32 %121)
  %123 = call i32 @ocfs2_nfs_sync_unlock(i32 %122, i32 0)
  br label %124

124:                                              ; preds = %118, %49
  %125 = load i32, i32* @SIG_SETMASK, align 4
  %126 = call i32 @sigprocmask(i32 %125, i32* %6, i32* null)
  store i32 %126, i32* %4, align 4
  %127 = load i32, i32* %4, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i32, i32* %4, align 4
  %131 = call i32 @mlog_errno(i32 %130)
  br label %132

132:                                              ; preds = %129, %124
  br label %133

133:                                              ; preds = %132, %36, %27, %21
  %134 = load %struct.inode*, %struct.inode** %2, align 8
  %135 = call i32 @clear_inode(%struct.inode* %134)
  %136 = call i32 (...) @mlog_exit_void()
  ret void
}

declare dso_local i32 @mlog_entry(i8*, i32) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @ocfs2_inode_is_valid_to_delete(%struct.inode*) #1

declare dso_local i32 @ocfs2_cleanup_delete_inode(%struct.inode*, i32) #1

declare dso_local i32 @sigfillset(i32*) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_nfs_sync_lock(i32, i32) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @ocfs2_query_inode_wipe(%struct.inode*, %struct.buffer_head*, i32*) #1

declare dso_local i32 @ocfs2_wipe_inode(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_nfs_sync_unlock(i32, i32) #1

declare dso_local i32 @clear_inode(%struct.inode*) #1

declare dso_local i32 @mlog_exit_void(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
