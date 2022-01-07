; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_super.c_gfs2_dirty_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_super.c_gfs2_dirty_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.inode = type { i32 }
%struct.gfs2_inode = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.gfs2_sbd = type { i32 }
%struct.buffer_head = type { i32 }
%struct.gfs2_holder = type { i32 }

@LM_ST_EXCLUSIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"dirty_inode: glock %d\0A\00", align 1
@current = common dso_local global %struct.TYPE_6__* null, align 8
@RES_DINODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"dirty_inode: gfs2_trans_begin %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @gfs2_dirty_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_dirty_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.gfs2_inode*, align 8
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.gfs2_holder, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %10 = load %struct.inode*, %struct.inode** %2, align 8
  %11 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %10)
  store %struct.gfs2_inode* %11, %struct.gfs2_inode** %3, align 8
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %12)
  store %struct.gfs2_sbd* %13, %struct.gfs2_sbd** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %15 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = call i32 @gfs2_glock_is_locked_by_me(%struct.TYPE_5__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %1
  %20 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %21 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = load i64, i64* @LM_ST_EXCLUSIVE, align 8
  %24 = call i32 @gfs2_glock_nq_init(%struct.TYPE_5__* %22, i64 %23, i32 0, %struct.gfs2_holder* %6)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @fs_err(%struct.gfs2_sbd* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %91

31:                                               ; preds = %19
  store i32 1, i32* %7, align 4
  br label %45

32:                                               ; preds = %1
  %33 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %34 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @LM_ST_EXCLUSIVE, align 8
  %39 = icmp ne i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i64 @WARN_ON_ONCE(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %91

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %31
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %52 = load i32, i32* @RES_DINODE, align 4
  %53 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %51, i32 %52, i32 0)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @fs_err(%struct.gfs2_sbd* %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %86

60:                                               ; preds = %50
  store i32 1, i32* %8, align 4
  br label %61

61:                                               ; preds = %60, %45
  %62 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %63 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %62, %struct.buffer_head** %5)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %61
  %67 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %68 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %71 = call i32 @gfs2_trans_add_meta(%struct.TYPE_5__* %69, %struct.buffer_head* %70)
  %72 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %73 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %74 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @gfs2_dinode_out(%struct.gfs2_inode* %72, i32 %75)
  %77 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %78 = call i32 @brelse(%struct.buffer_head* %77)
  br label %79

79:                                               ; preds = %66, %61
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %84 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %83)
  br label %85

85:                                               ; preds = %82, %79
  br label %86

86:                                               ; preds = %85, %56
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %6)
  br label %91

91:                                               ; preds = %27, %43, %89, %86
  ret void
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @gfs2_glock_is_locked_by_me(%struct.TYPE_5__*) #1

declare dso_local i32 @gfs2_glock_nq_init(%struct.TYPE_5__*, i64, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @fs_err(%struct.gfs2_sbd*, i8*, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i32 @gfs2_trans_add_meta(%struct.TYPE_5__*, %struct.buffer_head*) #1

declare dso_local i32 @gfs2_dinode_out(%struct.gfs2_inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
