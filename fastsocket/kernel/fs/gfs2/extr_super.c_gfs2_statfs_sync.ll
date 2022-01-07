; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_super.c_gfs2_statfs_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_super.c_gfs2_statfs_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i64, i32, %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host, i32, i32 }
%struct.gfs2_statfs_change_host = type { i32, i32, i32 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_holder = type { i32 }
%struct.buffer_head = type { i64 }

@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@GL_NOCACHE = common dso_local global i32 0, align 4
@RES_DINODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_statfs_sync(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfs2_sbd*, align 8
  %7 = alloca %struct.gfs2_inode*, align 8
  %8 = alloca %struct.gfs2_inode*, align 8
  %9 = alloca %struct.gfs2_statfs_change_host*, align 8
  %10 = alloca %struct.gfs2_statfs_change_host*, align 8
  %11 = alloca %struct.gfs2_holder, align 4
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.super_block*, %struct.super_block** %4, align 8
  %16 = getelementptr inbounds %struct.super_block, %struct.super_block* %15, i32 0, i32 0
  %17 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %16, align 8
  store %struct.gfs2_sbd* %17, %struct.gfs2_sbd** %6, align 8
  %18 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %19 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.gfs2_inode* @GFS2_I(i32 %20)
  store %struct.gfs2_inode* %21, %struct.gfs2_inode** %7, align 8
  %22 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %23 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.gfs2_inode* @GFS2_I(i32 %24)
  store %struct.gfs2_inode* %25, %struct.gfs2_inode** %8, align 8
  %26 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %27 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %26, i32 0, i32 3
  store %struct.gfs2_statfs_change_host* %27, %struct.gfs2_statfs_change_host** %9, align 8
  %28 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %29 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %28, i32 0, i32 2
  store %struct.gfs2_statfs_change_host* %29, %struct.gfs2_statfs_change_host** %10, align 8
  %30 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %31 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %34 = load i32, i32* @GL_NOCACHE, align 4
  %35 = call i32 @gfs2_glock_nq_init(i32 %32, i32 %33, i32 %34, %struct.gfs2_holder* %11)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %2
  %39 = load i32, i32* %14, align 4
  store i32 %39, i32* %3, align 4
  br label %109

40:                                               ; preds = %2
  %41 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %42 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %41, %struct.buffer_head** %12)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %106

46:                                               ; preds = %40
  %47 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %48 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %47, i32 0, i32 1
  %49 = call i32 @spin_lock(i32* %48)
  %50 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %9, align 8
  %51 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %52 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, 4
  %55 = call i32 @gfs2_statfs_change_in(%struct.gfs2_statfs_change_host* %50, i64 %54)
  %56 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %10, align 8
  %57 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %74, label %60

60:                                               ; preds = %46
  %61 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %10, align 8
  %62 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %60
  %66 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %10, align 8
  %67 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %65
  %71 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %72 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %71, i32 0, i32 1
  %73 = call i32 @spin_unlock(i32* %72)
  br label %103

74:                                               ; preds = %65, %60, %46
  %75 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %76 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %75, i32 0, i32 1
  %77 = call i32 @spin_unlock(i32* %76)
  %78 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %79 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %78, %struct.buffer_head** %13)
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %103

83:                                               ; preds = %74
  %84 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %85 = load i32, i32* @RES_DINODE, align 4
  %86 = mul nsw i32 2, %85
  %87 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %84, i32 %86, i32 0)
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %100

91:                                               ; preds = %83
  %92 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %93 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %94 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %95 = call i32 @update_statfs(%struct.gfs2_sbd* %92, %struct.buffer_head* %93, %struct.buffer_head* %94)
  %96 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %97 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %96, i32 0, i32 0
  store i64 0, i64* %97, align 8
  %98 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %99 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %98)
  br label %100

100:                                              ; preds = %91, %90
  %101 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %102 = call i32 @brelse(%struct.buffer_head* %101)
  br label %103

103:                                              ; preds = %100, %82, %70
  %104 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %105 = call i32 @brelse(%struct.buffer_head* %104)
  br label %106

106:                                              ; preds = %103, %45
  %107 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %11)
  %108 = load i32, i32* %14, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %106, %38
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @gfs2_statfs_change_in(%struct.gfs2_statfs_change_host*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @update_statfs(%struct.gfs2_sbd*, %struct.buffer_head*, %struct.buffer_head*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
