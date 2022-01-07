; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_namei.c_ocfs2_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_namei.c_ocfs2_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.nameidata = type { i32 }
%struct.ocfs2_inode_info = type { i64, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"(0x%p, 0x%p, '%.*s')\0A\00", align 1
@OCFS2_MAX_FILENAME_LEN = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"find name %.*s in directory %llu\0A\00", align 1
@OI_LS_PARENT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@OCFS2_INODE_MAYBE_ORPHANED = common dso_local global i32 0, align 4
@ocfs2_dentry_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.nameidata*)* @ocfs2_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @ocfs2_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.nameidata* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.nameidata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.ocfs2_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.nameidata* %2, %struct.nameidata** %6, align 8
  store %struct.inode* null, %struct.inode** %9, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.dentry*, %struct.dentry** %5, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @mlog_entry(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.inode* %12, %struct.dentry* %13, i64 %17, i32 %21)
  %23 = load %struct.dentry*, %struct.dentry** %5, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @OCFS2_MAX_FILENAME_LEN, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = load i32, i32* @ENAMETOOLONG, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.dentry* @ERR_PTR(i32 %31)
  store %struct.dentry* %32, %struct.dentry** %10, align 8
  br label %139

33:                                               ; preds = %3
  %34 = load %struct.dentry*, %struct.dentry** %5, align 8
  %35 = getelementptr inbounds %struct.dentry, %struct.dentry* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.dentry*, %struct.dentry** %5, align 8
  %39 = getelementptr inbounds %struct.dentry, %struct.dentry* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.inode*, %struct.inode** %4, align 8
  %43 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %42)
  %44 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %37, i32 %41, i64 %45)
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = load i32, i32* @OI_LS_PARENT, align 4
  %49 = call i32 @ocfs2_inode_lock_nested(%struct.inode* %47, i32* null, i32 0, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %33
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @ENOENT, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp ne i32 %53, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @mlog_errno(i32 %58)
  br label %60

60:                                               ; preds = %57, %52
  %61 = load i32, i32* %7, align 4
  %62 = call %struct.dentry* @ERR_PTR(i32 %61)
  store %struct.dentry* %62, %struct.dentry** %10, align 8
  br label %139

63:                                               ; preds = %33
  %64 = load %struct.inode*, %struct.inode** %4, align 8
  %65 = load %struct.dentry*, %struct.dentry** %5, align 8
  %66 = getelementptr inbounds %struct.dentry, %struct.dentry* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.dentry*, %struct.dentry** %5, align 8
  %70 = getelementptr inbounds %struct.dentry, %struct.dentry* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @ocfs2_lookup_ino_from_name(%struct.inode* %64, i32 %68, i64 %72, i32* %8)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %63
  br label %106

77:                                               ; preds = %63
  %78 = load %struct.inode*, %struct.inode** %4, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @OCFS2_SB(i32 %80)
  %82 = load i32, i32* %8, align 4
  %83 = call %struct.inode* @ocfs2_iget(i32 %81, i32 %82, i32 0, i32 0)
  store %struct.inode* %83, %struct.inode** %9, align 8
  %84 = load %struct.inode*, %struct.inode** %9, align 8
  %85 = call i64 @IS_ERR(%struct.inode* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %77
  %88 = load i32, i32* @EACCES, align 4
  %89 = sub nsw i32 0, %88
  %90 = call %struct.dentry* @ERR_PTR(i32 %89)
  store %struct.dentry* %90, %struct.dentry** %10, align 8
  br label %136

91:                                               ; preds = %77
  %92 = load %struct.inode*, %struct.inode** %9, align 8
  %93 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %92)
  store %struct.ocfs2_inode_info* %93, %struct.ocfs2_inode_info** %11, align 8
  %94 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %11, align 8
  %95 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %94, i32 0, i32 1
  %96 = call i32 @spin_lock(i32* %95)
  %97 = load i32, i32* @OCFS2_INODE_MAYBE_ORPHANED, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %11, align 8
  %100 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, %98
  store i32 %102, i32* %100, align 4
  %103 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %11, align 8
  %104 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %103, i32 0, i32 1
  %105 = call i32 @spin_unlock(i32* %104)
  br label %106

106:                                              ; preds = %91, %76
  %107 = load %struct.dentry*, %struct.dentry** %5, align 8
  %108 = getelementptr inbounds %struct.dentry, %struct.dentry* %107, i32 0, i32 0
  store i32* @ocfs2_dentry_ops, i32** %108, align 8
  %109 = load %struct.inode*, %struct.inode** %9, align 8
  %110 = load %struct.dentry*, %struct.dentry** %5, align 8
  %111 = call %struct.dentry* @d_splice_alias(%struct.inode* %109, %struct.dentry* %110)
  store %struct.dentry* %111, %struct.dentry** %10, align 8
  %112 = load %struct.inode*, %struct.inode** %9, align 8
  %113 = icmp ne %struct.inode* %112, null
  br i1 %113, label %114, label %135

114:                                              ; preds = %106
  %115 = load %struct.dentry*, %struct.dentry** %10, align 8
  %116 = icmp ne %struct.dentry* %115, null
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %118, %struct.dentry** %5, align 8
  br label %119

119:                                              ; preds = %117, %114
  %120 = load %struct.dentry*, %struct.dentry** %5, align 8
  %121 = load %struct.inode*, %struct.inode** %9, align 8
  %122 = load %struct.inode*, %struct.inode** %4, align 8
  %123 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %122)
  %124 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @ocfs2_dentry_attach_lock(%struct.dentry* %120, %struct.inode* %121, i64 %125)
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %119
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @mlog_errno(i32 %130)
  %132 = load i32, i32* %7, align 4
  %133 = call %struct.dentry* @ERR_PTR(i32 %132)
  store %struct.dentry* %133, %struct.dentry** %10, align 8
  br label %136

134:                                              ; preds = %119
  br label %135

135:                                              ; preds = %134, %106
  br label %136

136:                                              ; preds = %135, %129, %87
  %137 = load %struct.inode*, %struct.inode** %4, align 8
  %138 = call i32 @ocfs2_inode_unlock(%struct.inode* %137, i32 0)
  br label %139

139:                                              ; preds = %136, %60, %29
  %140 = load %struct.dentry*, %struct.dentry** %10, align 8
  %141 = call i32 @mlog_exit_ptr(%struct.dentry* %140)
  %142 = load %struct.dentry*, %struct.dentry** %10, align 8
  ret %struct.dentry* %142
}

declare dso_local i32 @mlog_entry(i8*, %struct.inode*, %struct.dentry*, i64, i32) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @mlog(i32, i8*, i64, i32, i64) #1

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_lock_nested(%struct.inode*, i32*, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_lookup_ino_from_name(%struct.inode*, i32, i64, i32*) #1

declare dso_local %struct.inode* @ocfs2_iget(i32, i32, i32, i32) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.dentry* @d_splice_alias(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @ocfs2_dentry_attach_lock(%struct.dentry*, %struct.inode*, i64) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @mlog_exit_ptr(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
