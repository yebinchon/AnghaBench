; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_namei.c_jfs_rmdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_namei.c_jfs_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32 }
%struct.dentry = type { %struct.TYPE_5__, %struct.inode* }
%struct.TYPE_5__ = type { i32 }
%struct.component_name = type { i32 }
%struct.tblock = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.inode* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"jfs_rmdir: dip:0x%p name:%s\00", align 1
@ENOTEMPTY = common dso_local global i32 0, align 4
@COMMIT_MUTEX_PARENT = common dso_local global i32 0, align 4
@COMMIT_MUTEX_CHILD = common dso_local global i32 0, align 4
@COMMIT_DELETE = common dso_local global i32 0, align 4
@JFS_REMOVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"jfs_rmdir: dtDelete returned %d\00", align 1
@EIO = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@DXD_EXTENT = common dso_local global i32 0, align 4
@COMMIT_Stale = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"jfs_rmdir: rc:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @jfs_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jfs_rmdir(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.component_name, align 4
  %10 = alloca [2 x %struct.inode*], align 16
  %11 = alloca %struct.tblock*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %12 = load %struct.dentry*, %struct.dentry** %4, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 1
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %7, align 8
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = load %struct.dentry*, %struct.dentry** %4, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i8*, ...) @jfs_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.inode* %15, i32 %19)
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = call i32 @vfs_dq_init(%struct.inode* %21)
  %23 = load %struct.inode*, %struct.inode** %7, align 8
  %24 = call i32 @dtEmpty(%struct.inode* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOTEMPTY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %177

29:                                               ; preds = %2
  %30 = load %struct.dentry*, %struct.dentry** %4, align 8
  %31 = call i32 @get_UCSname(%struct.component_name* %9, %struct.dentry* %30)
  store i32 %31, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %177

34:                                               ; preds = %29
  %35 = load %struct.inode*, %struct.inode** %3, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @txBegin(i32 %37, i32 0)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.inode*, %struct.inode** %3, align 8
  %40 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %39)
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* @COMMIT_MUTEX_PARENT, align 4
  %43 = call i32 @mutex_lock_nested(i32* %41, i32 %42)
  %44 = load %struct.inode*, %struct.inode** %7, align 8
  %45 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %44)
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* @COMMIT_MUTEX_CHILD, align 4
  %48 = call i32 @mutex_lock_nested(i32* %46, i32 %47)
  %49 = load %struct.inode*, %struct.inode** %3, align 8
  %50 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %10, i64 0, i64 0
  store %struct.inode* %49, %struct.inode** %50, align 16
  %51 = load %struct.inode*, %struct.inode** %7, align 8
  %52 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %10, i64 0, i64 1
  store %struct.inode* %51, %struct.inode** %52, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call %struct.tblock* @tid_to_tblock(i32 %53)
  store %struct.tblock* %54, %struct.tblock** %11, align 8
  %55 = load i32, i32* @COMMIT_DELETE, align 4
  %56 = load %struct.tblock*, %struct.tblock** %11, align 8
  %57 = getelementptr inbounds %struct.tblock, %struct.tblock* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load %struct.inode*, %struct.inode** %7, align 8
  %61 = load %struct.tblock*, %struct.tblock** %11, align 8
  %62 = getelementptr inbounds %struct.tblock, %struct.tblock* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store %struct.inode* %60, %struct.inode** %63, align 8
  %64 = load %struct.inode*, %struct.inode** %7, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.inode*, %struct.inode** %3, align 8
  %69 = load i32, i32* @JFS_REMOVE, align 4
  %70 = call i32 @dtDelete(i32 %67, %struct.inode* %68, %struct.component_name* %9, i32* %8, i32 %69)
  store i32 %70, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %93

72:                                               ; preds = %34
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @jfs_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @txAbort(i32 %80, i32 1)
  br label %82

82:                                               ; preds = %79, %72
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @txEnd(i32 %83)
  %85 = load %struct.inode*, %struct.inode** %7, align 8
  %86 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %85)
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load %struct.inode*, %struct.inode** %3, align 8
  %90 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %89)
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = call i32 @mutex_unlock(i32* %91)
  br label %175

93:                                               ; preds = %34
  %94 = load i32, i32* @CURRENT_TIME, align 4
  %95 = load %struct.inode*, %struct.inode** %3, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.inode*, %struct.inode** %3, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 2
  store i32 %94, i32* %98, align 4
  %99 = load %struct.inode*, %struct.inode** %3, align 8
  %100 = call i32 @inode_dec_link_count(%struct.inode* %99)
  %101 = load %struct.inode*, %struct.inode** %7, align 8
  %102 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %101)
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @DXD_EXTENT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %93
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.inode*, %struct.inode** %7, align 8
  %112 = load %struct.inode*, %struct.inode** %7, align 8
  %113 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %112)
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 2
  %115 = call i32 @txEA(i32 %110, %struct.inode* %111, %struct.TYPE_7__* %114, i32* null)
  br label %116

116:                                              ; preds = %109, %93
  %117 = load %struct.inode*, %struct.inode** %7, align 8
  %118 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %117)
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  store i32 0, i32* %120, align 4
  %121 = load %struct.inode*, %struct.inode** %7, align 8
  %122 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %121)
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @DXD_EXTENT, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %116
  %130 = load i32, i32* %6, align 4
  %131 = load %struct.inode*, %struct.inode** %7, align 8
  %132 = load %struct.inode*, %struct.inode** %7, align 8
  %133 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %132)
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = call i32 @txEA(i32 %130, %struct.inode* %131, %struct.TYPE_7__* %134, i32* null)
  br label %136

136:                                              ; preds = %129, %116
  %137 = load %struct.inode*, %struct.inode** %7, align 8
  %138 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %137)
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  store i32 0, i32* %140, align 4
  %141 = load %struct.inode*, %struct.inode** %7, align 8
  %142 = call i32 @clear_nlink(%struct.inode* %141)
  %143 = load %struct.inode*, %struct.inode** %7, align 8
  %144 = call i32 @mark_inode_dirty(%struct.inode* %143)
  %145 = load i32, i32* %6, align 4
  %146 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %10, i64 0, i64 0
  %147 = call i32 @txCommit(i32 %145, i32 2, %struct.inode** %146, i32 0)
  store i32 %147, i32* %5, align 4
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @txEnd(i32 %148)
  %150 = load %struct.inode*, %struct.inode** %7, align 8
  %151 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %150)
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = call i32 @mutex_unlock(i32* %152)
  %154 = load %struct.inode*, %struct.inode** %3, align 8
  %155 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %154)
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = call i32 @mutex_unlock(i32* %156)
  %158 = load i32, i32* @COMMIT_Stale, align 4
  %159 = load %struct.inode*, %struct.inode** %3, align 8
  %160 = call i64 @test_cflag(i32 %158, %struct.inode* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %174

162:                                              ; preds = %136
  %163 = load %struct.inode*, %struct.inode** %3, align 8
  %164 = getelementptr inbounds %struct.inode, %struct.inode* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = icmp sgt i32 %165, 1
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = load %struct.inode*, %struct.inode** %3, align 8
  %169 = call i32 @jfs_truncate_nolock(%struct.inode* %168, i32 0)
  br label %170

170:                                              ; preds = %167, %162
  %171 = load i32, i32* @COMMIT_Stale, align 4
  %172 = load %struct.inode*, %struct.inode** %3, align 8
  %173 = call i32 @clear_cflag(i32 %171, %struct.inode* %172)
  br label %174

174:                                              ; preds = %170, %136
  br label %175

175:                                              ; preds = %174, %82
  %176 = call i32 @free_UCSname(%struct.component_name* %9)
  br label %177

177:                                              ; preds = %175, %33, %26
  %178 = load i32, i32* %5, align 4
  %179 = call i32 (i8*, ...) @jfs_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %178)
  %180 = load i32, i32* %5, align 4
  ret i32 %180
}

declare dso_local i32 @jfs_info(i8*, ...) #1

declare dso_local i32 @vfs_dq_init(%struct.inode*) #1

declare dso_local i32 @dtEmpty(%struct.inode*) #1

declare dso_local i32 @get_UCSname(%struct.component_name*, %struct.dentry*) #1

declare dso_local i32 @txBegin(i32, i32) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local %struct.TYPE_8__* @JFS_IP(%struct.inode*) #1

declare dso_local %struct.tblock* @tid_to_tblock(i32) #1

declare dso_local i32 @dtDelete(i32, %struct.inode*, %struct.component_name*, i32*, i32) #1

declare dso_local i32 @jfs_err(i8*, i32) #1

declare dso_local i32 @txAbort(i32, i32) #1

declare dso_local i32 @txEnd(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @txEA(i32, %struct.inode*, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @txCommit(i32, i32, %struct.inode**, i32) #1

declare dso_local i64 @test_cflag(i32, %struct.inode*) #1

declare dso_local i32 @jfs_truncate_nolock(%struct.inode*, i32) #1

declare dso_local i32 @clear_cflag(i32, %struct.inode*) #1

declare dso_local i32 @free_UCSname(%struct.component_name*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
