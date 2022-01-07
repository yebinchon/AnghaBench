; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_export.c_ocfs2_get_dentry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_export.c_ocfs2_get_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i64, i32* }
%struct.super_block = type { i32 }
%struct.ocfs2_inode_handle = type { i64, i64 }
%struct.inode = type { i64, i32* }
%struct.ocfs2_super = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"(0x%p, 0x%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"nfs wants inode with blkno: 0\0A\00", align 1
@ESTALE = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"getting nfs sync lock(EX) failed %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"test inode bit failed %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"inode %llu suballoc bit is clear\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"stale inode ino: %llu generation: %u\0A\00", align 1
@ocfs2_dentry_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, %struct.ocfs2_inode_handle*)* @ocfs2_get_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @ocfs2_get_dentry(%struct.super_block* %0, %struct.ocfs2_inode_handle* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.ocfs2_inode_handle*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ocfs2_super*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dentry*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.ocfs2_inode_handle* %1, %struct.ocfs2_inode_handle** %4, align 8
  %11 = load %struct.super_block*, %struct.super_block** %3, align 8
  %12 = call %struct.ocfs2_super* @OCFS2_SB(%struct.super_block* %11)
  store %struct.ocfs2_super* %12, %struct.ocfs2_super** %6, align 8
  %13 = load %struct.ocfs2_inode_handle*, %struct.ocfs2_inode_handle** %4, align 8
  %14 = getelementptr inbounds %struct.ocfs2_inode_handle, %struct.ocfs2_inode_handle* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load %struct.super_block*, %struct.super_block** %3, align 8
  %17 = load %struct.ocfs2_inode_handle*, %struct.ocfs2_inode_handle** %4, align 8
  %18 = call i32 @mlog_entry(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.super_block* %16, %struct.ocfs2_inode_handle* %17)
  %19 = load i64, i64* %7, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @ESTALE, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.inode* @ERR_PTR(i32 %24)
  %26 = bitcast %struct.inode* %25 to %struct.dentry*
  store %struct.dentry* %26, %struct.dentry** %10, align 8
  br label %146

27:                                               ; preds = %2
  %28 = load %struct.super_block*, %struct.super_block** %3, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call %struct.inode* @ocfs2_ilookup(%struct.super_block* %28, i64 %29)
  store %struct.inode* %30, %struct.inode** %5, align 8
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = icmp ne %struct.inode* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %109

34:                                               ; preds = %27
  %35 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %36 = call i32 @ocfs2_nfs_sync_lock(%struct.ocfs2_super* %35, i32 1)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @ML_ERROR, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 (i32, i8*, ...) @mlog(i32 %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %79

43:                                               ; preds = %34
  %44 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @ocfs2_test_inode_bit(%struct.ocfs2_super* %44, i64 %45, i32* %9)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %43
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32, i32* %8, align 4
  %56 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @ESTALE, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %8, align 4
  br label %63

59:                                               ; preds = %49
  %60 = load i32, i32* @ML_ERROR, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 (i32, i8*, ...) @mlog(i32 %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %59, %54
  br label %76

64:                                               ; preds = %43
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %64
  %68 = load i64, i64* %7, align 8
  %69 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i64 %68)
  %70 = load i32, i32* @ESTALE, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %8, align 4
  br label %76

72:                                               ; preds = %64
  %73 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %74 = load i64, i64* %7, align 8
  %75 = call %struct.inode* @ocfs2_iget(%struct.ocfs2_super* %73, i64 %74, i32 0, i32 0)
  store %struct.inode* %75, %struct.inode** %5, align 8
  br label %76

76:                                               ; preds = %72, %67, %63
  %77 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %78 = call i32 @ocfs2_nfs_sync_unlock(%struct.ocfs2_super* %77, i32 1)
  br label %79

79:                                               ; preds = %76, %39
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %79
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @ESTALE, align 4
  %85 = sub nsw i32 0, %84
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load i64, i64* %7, align 8
  %89 = load %struct.ocfs2_inode_handle*, %struct.ocfs2_inode_handle** %4, align 8
  %90 = getelementptr inbounds %struct.ocfs2_inode_handle, %struct.ocfs2_inode_handle* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i64 %88, i64 %91)
  br label %93

93:                                               ; preds = %87, %82
  %94 = load i32, i32* %8, align 4
  %95 = call %struct.inode* @ERR_PTR(i32 %94)
  %96 = bitcast %struct.inode* %95 to %struct.dentry*
  store %struct.dentry* %96, %struct.dentry** %10, align 8
  br label %146

97:                                               ; preds = %79
  %98 = load %struct.inode*, %struct.inode** %5, align 8
  %99 = call i64 @IS_ERR(%struct.inode* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %97
  %102 = load %struct.inode*, %struct.inode** %5, align 8
  %103 = call i32 @PTR_ERR(%struct.inode* %102)
  %104 = call i32 @mlog_errno(i32 %103)
  %105 = load %struct.inode*, %struct.inode** %5, align 8
  %106 = bitcast %struct.inode* %105 to i8*
  %107 = bitcast i8* %106 to %struct.dentry*
  store %struct.dentry* %107, %struct.dentry** %10, align 8
  br label %146

108:                                              ; preds = %97
  br label %109

109:                                              ; preds = %108, %33
  %110 = load %struct.ocfs2_inode_handle*, %struct.ocfs2_inode_handle** %4, align 8
  %111 = getelementptr inbounds %struct.ocfs2_inode_handle, %struct.ocfs2_inode_handle* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.inode*, %struct.inode** %5, align 8
  %114 = getelementptr inbounds %struct.inode, %struct.inode* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %112, %115
  br i1 %116, label %117, label %129

117:                                              ; preds = %109
  %118 = load %struct.inode*, %struct.inode** %5, align 8
  %119 = call i32 @iput(%struct.inode* %118)
  %120 = load i64, i64* %7, align 8
  %121 = load %struct.ocfs2_inode_handle*, %struct.ocfs2_inode_handle** %4, align 8
  %122 = getelementptr inbounds %struct.ocfs2_inode_handle, %struct.ocfs2_inode_handle* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i64 %120, i64 %123)
  %125 = load i32, i32* @ESTALE, align 4
  %126 = sub nsw i32 0, %125
  %127 = call %struct.inode* @ERR_PTR(i32 %126)
  %128 = bitcast %struct.inode* %127 to %struct.dentry*
  store %struct.dentry* %128, %struct.dentry** %10, align 8
  br label %146

129:                                              ; preds = %109
  %130 = load %struct.inode*, %struct.inode** %5, align 8
  %131 = call %struct.inode* @d_obtain_alias(%struct.inode* %130)
  %132 = bitcast %struct.inode* %131 to %struct.dentry*
  store %struct.dentry* %132, %struct.dentry** %10, align 8
  %133 = load %struct.dentry*, %struct.dentry** %10, align 8
  %134 = bitcast %struct.dentry* %133 to %struct.inode*
  %135 = call i64 @IS_ERR(%struct.inode* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %129
  %138 = load %struct.dentry*, %struct.dentry** %10, align 8
  %139 = getelementptr inbounds %struct.dentry, %struct.dentry* %138, i32 0, i32 1
  store i32* @ocfs2_dentry_ops, i32** %139, align 8
  br label %145

140:                                              ; preds = %129
  %141 = load %struct.dentry*, %struct.dentry** %10, align 8
  %142 = bitcast %struct.dentry* %141 to %struct.inode*
  %143 = call i32 @PTR_ERR(%struct.inode* %142)
  %144 = call i32 @mlog_errno(i32 %143)
  br label %145

145:                                              ; preds = %140, %137
  br label %146

146:                                              ; preds = %145, %117, %101, %93, %21
  %147 = load %struct.dentry*, %struct.dentry** %10, align 8
  %148 = bitcast %struct.dentry* %147 to %struct.inode*
  %149 = call i32 @mlog_exit_ptr(%struct.inode* %148)
  %150 = load %struct.dentry*, %struct.dentry** %10, align 8
  ret %struct.dentry* %150
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.super_block*) #1

declare dso_local i32 @mlog_entry(i8*, %struct.super_block*, %struct.ocfs2_inode_handle*) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local %struct.inode* @ocfs2_ilookup(%struct.super_block*, i64) #1

declare dso_local i32 @ocfs2_nfs_sync_lock(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_test_inode_bit(%struct.ocfs2_super*, i64, i32*) #1

declare dso_local %struct.inode* @ocfs2_iget(%struct.ocfs2_super*, i64, i32, i32) #1

declare dso_local i32 @ocfs2_nfs_sync_unlock(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.inode* @d_obtain_alias(%struct.inode*) #1

declare dso_local i32 @mlog_exit_ptr(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
