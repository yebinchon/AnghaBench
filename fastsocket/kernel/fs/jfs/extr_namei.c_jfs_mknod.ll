; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_namei.c_jfs_mknod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_namei.c_jfs_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, i32, i32*, i32, i32 }
%struct.dentry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.jfs_inode_info = type { i32, i32, i32 }
%struct.btstack = type { i32 }
%struct.component_name = type { i32 }
%struct.tblock = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"jfs_mknod: %s\00", align 1
@COMMIT_MUTEX_PARENT = common dso_local global i32 0, align 4
@COMMIT_MUTEX_CHILD = common dso_local global i32 0, align 4
@JFS_CREATE = common dso_local global i32 0, align 4
@COMMIT_CREATE = common dso_local global i32 0, align 4
@jfs_file_inode_operations = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"jfs_mknod: returning %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @jfs_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jfs_mknod(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.jfs_inode_info*, align 8
  %11 = alloca %struct.btstack, align 4
  %12 = alloca %struct.component_name, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.inode*, align 8
  %15 = alloca [2 x %struct.inode*], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.tblock*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @new_valid_dev(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %181

25:                                               ; preds = %4
  %26 = load %struct.dentry*, %struct.dentry** %7, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @jfs_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.dentry*, %struct.dentry** %7, align 8
  %32 = call i32 @get_UCSname(%struct.component_name* %12, %struct.dentry* %31)
  store i32 %32, i32* %16, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %177

35:                                               ; preds = %25
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call %struct.inode* @ialloc(%struct.inode* %36, i32 %37)
  store %struct.inode* %38, %struct.inode** %14, align 8
  %39 = load %struct.inode*, %struct.inode** %14, align 8
  %40 = call i64 @IS_ERR(%struct.inode* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load %struct.inode*, %struct.inode** %14, align 8
  %44 = call i32 @PTR_ERR(%struct.inode* %43)
  store i32 %44, i32* %16, align 4
  br label %175

45:                                               ; preds = %35
  %46 = load %struct.inode*, %struct.inode** %14, align 8
  %47 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %46)
  store %struct.jfs_inode_info* %47, %struct.jfs_inode_info** %10, align 8
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @txBegin(i32 %50, i32 0)
  store i32 %51, i32* %17, align 4
  %52 = load %struct.inode*, %struct.inode** %6, align 8
  %53 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %52)
  %54 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %53, i32 0, i32 0
  %55 = load i32, i32* @COMMIT_MUTEX_PARENT, align 4
  %56 = call i32 @mutex_lock_nested(i32* %54, i32 %55)
  %57 = load %struct.inode*, %struct.inode** %14, align 8
  %58 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %57)
  %59 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %58, i32 0, i32 0
  %60 = load i32, i32* @COMMIT_MUTEX_CHILD, align 4
  %61 = call i32 @mutex_lock_nested(i32* %59, i32 %60)
  %62 = load i32, i32* %17, align 4
  %63 = load %struct.inode*, %struct.inode** %14, align 8
  %64 = load %struct.inode*, %struct.inode** %6, align 8
  %65 = call i32 @jfs_init_acl(i32 %62, %struct.inode* %63, %struct.inode* %64)
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %16, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %45
  br label %146

69:                                               ; preds = %45
  %70 = load i32, i32* %17, align 4
  %71 = load %struct.inode*, %struct.inode** %14, align 8
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = call i32 @jfs_init_security(i32 %70, %struct.inode* %71, %struct.inode* %72)
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %16, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32, i32* %17, align 4
  %78 = call i32 @txAbort(i32 %77, i32 0)
  br label %146

79:                                               ; preds = %69
  %80 = load %struct.inode*, %struct.inode** %6, align 8
  %81 = load i32, i32* @JFS_CREATE, align 4
  %82 = call i32 @dtSearch(%struct.inode* %80, %struct.component_name* %12, i32* %13, %struct.btstack* %11, i32 %81)
  store i32 %82, i32* %16, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32, i32* %17, align 4
  %86 = call i32 @txAbort(i32 %85, i32 0)
  br label %146

87:                                               ; preds = %79
  %88 = load i32, i32* %17, align 4
  %89 = call %struct.tblock* @tid_to_tblock(i32 %88)
  store %struct.tblock* %89, %struct.tblock** %18, align 8
  %90 = load i32, i32* @COMMIT_CREATE, align 4
  %91 = load %struct.tblock*, %struct.tblock** %18, align 8
  %92 = getelementptr inbounds %struct.tblock, %struct.tblock* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load %struct.inode*, %struct.inode** %14, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.tblock*, %struct.tblock** %18, align 8
  %99 = getelementptr inbounds %struct.tblock, %struct.tblock* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.inode*, %struct.inode** %14, align 8
  %101 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %100)
  %102 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.tblock*, %struct.tblock** %18, align 8
  %105 = getelementptr inbounds %struct.tblock, %struct.tblock* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 4
  %107 = load %struct.inode*, %struct.inode** %14, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %17, align 4
  %111 = load %struct.inode*, %struct.inode** %6, align 8
  %112 = call i32 @dtInsert(i32 %110, %struct.inode* %111, %struct.component_name* %12, i32* %13, %struct.btstack* %11)
  store i32 %112, i32* %16, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %87
  %115 = load i32, i32* %17, align 4
  %116 = call i32 @txAbort(i32 %115, i32 0)
  br label %146

117:                                              ; preds = %87
  %118 = load %struct.inode*, %struct.inode** %14, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 4
  store i32* @jfs_file_inode_operations, i32** %119, align 8
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @new_encode_dev(i32 %120)
  %122 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %10, align 8
  %123 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load %struct.inode*, %struct.inode** %14, align 8
  %125 = load %struct.inode*, %struct.inode** %14, align 8
  %126 = getelementptr inbounds %struct.inode, %struct.inode* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @init_special_inode(%struct.inode* %124, i32 %127, i32 %128)
  %130 = load %struct.inode*, %struct.inode** %14, align 8
  %131 = call i32 @mark_inode_dirty(%struct.inode* %130)
  %132 = load i32, i32* @CURRENT_TIME, align 4
  %133 = load %struct.inode*, %struct.inode** %6, align 8
  %134 = getelementptr inbounds %struct.inode, %struct.inode* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 8
  %135 = load %struct.inode*, %struct.inode** %6, align 8
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %135, i32 0, i32 2
  store i32 %132, i32* %136, align 4
  %137 = load %struct.inode*, %struct.inode** %6, align 8
  %138 = call i32 @mark_inode_dirty(%struct.inode* %137)
  %139 = load %struct.inode*, %struct.inode** %6, align 8
  %140 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %15, i64 0, i64 0
  store %struct.inode* %139, %struct.inode** %140, align 16
  %141 = load %struct.inode*, %struct.inode** %14, align 8
  %142 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %15, i64 0, i64 1
  store %struct.inode* %141, %struct.inode** %142, align 8
  %143 = load i32, i32* %17, align 4
  %144 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %15, i64 0, i64 0
  %145 = call i32 @txCommit(i32 %143, i32 2, %struct.inode** %144, i32 0)
  store i32 %145, i32* %16, align 4
  br label %146

146:                                              ; preds = %117, %114, %84, %76, %68
  %147 = load i32, i32* %17, align 4
  %148 = call i32 @txEnd(i32 %147)
  %149 = load %struct.inode*, %struct.inode** %14, align 8
  %150 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %149)
  %151 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %150, i32 0, i32 0
  %152 = call i32 @mutex_unlock(i32* %151)
  %153 = load %struct.inode*, %struct.inode** %6, align 8
  %154 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %153)
  %155 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %154, i32 0, i32 0
  %156 = call i32 @mutex_unlock(i32* %155)
  %157 = load i32, i32* %16, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %168

159:                                              ; preds = %146
  %160 = load %struct.inode*, %struct.inode** %14, align 8
  %161 = call i32 @free_ea_wmap(%struct.inode* %160)
  %162 = load %struct.inode*, %struct.inode** %14, align 8
  %163 = getelementptr inbounds %struct.inode, %struct.inode* %162, i32 0, i32 0
  store i64 0, i64* %163, align 8
  %164 = load %struct.inode*, %struct.inode** %14, align 8
  %165 = call i32 @unlock_new_inode(%struct.inode* %164)
  %166 = load %struct.inode*, %struct.inode** %14, align 8
  %167 = call i32 @iput(%struct.inode* %166)
  br label %174

168:                                              ; preds = %146
  %169 = load %struct.dentry*, %struct.dentry** %7, align 8
  %170 = load %struct.inode*, %struct.inode** %14, align 8
  %171 = call i32 @d_instantiate(%struct.dentry* %169, %struct.inode* %170)
  %172 = load %struct.inode*, %struct.inode** %14, align 8
  %173 = call i32 @unlock_new_inode(%struct.inode* %172)
  br label %174

174:                                              ; preds = %168, %159
  br label %175

175:                                              ; preds = %174, %42
  %176 = call i32 @free_UCSname(%struct.component_name* %12)
  br label %177

177:                                              ; preds = %175, %34
  %178 = load i32, i32* %16, align 4
  %179 = call i32 @jfs_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %178)
  %180 = load i32, i32* %16, align 4
  store i32 %180, i32* %5, align 4
  br label %181

181:                                              ; preds = %177, %22
  %182 = load i32, i32* %5, align 4
  ret i32 %182
}

declare dso_local i32 @new_valid_dev(i32) #1

declare dso_local i32 @jfs_info(i8*, i32) #1

declare dso_local i32 @get_UCSname(%struct.component_name*, %struct.dentry*) #1

declare dso_local %struct.inode* @ialloc(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local %struct.jfs_inode_info* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @txBegin(i32, i32) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @jfs_init_acl(i32, %struct.inode*, %struct.inode*) #1

declare dso_local i32 @jfs_init_security(i32, %struct.inode*, %struct.inode*) #1

declare dso_local i32 @txAbort(i32, i32) #1

declare dso_local i32 @dtSearch(%struct.inode*, %struct.component_name*, i32*, %struct.btstack*, i32) #1

declare dso_local %struct.tblock* @tid_to_tblock(i32) #1

declare dso_local i32 @dtInsert(i32, %struct.inode*, %struct.component_name*, i32*, %struct.btstack*) #1

declare dso_local i32 @new_encode_dev(i32) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @txCommit(i32, i32, %struct.inode**, i32) #1

declare dso_local i32 @txEnd(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @free_ea_wmap(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @free_UCSname(%struct.component_name*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
