; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_inode.c_gfs2_fiemap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_inode.c_gfs2_fiemap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.fiemap_extent_info = type { i32 }
%struct.gfs2_inode = type { i32, i32 }
%struct.gfs2_holder = type { i32 }

@FIEMAP_FLAG_SYNC = common dso_local global i32 0, align 4
@LM_ST_SHARED = common dso_local global i32 0, align 4
@FIEMAP_EXTENT_LAST = common dso_local global i32 0, align 4
@FIEMAP_EXTENT_NOT_ALIGNED = common dso_local global i32 0, align 4
@FIEMAP_EXTENT_DATA_INLINE = common dso_local global i32 0, align 4
@gfs2_block_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.fiemap_extent_info*, i32, i32)* @gfs2_fiemap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_fiemap(%struct.inode* %0, %struct.fiemap_extent_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.fiemap_extent_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.gfs2_inode*, align 8
  %11 = alloca %struct.gfs2_holder, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.fiemap_extent_info* %1, %struct.fiemap_extent_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %16)
  store %struct.gfs2_inode* %17, %struct.gfs2_inode** %10, align 8
  %18 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %7, align 8
  %19 = load i32, i32* @FIEMAP_FLAG_SYNC, align 4
  %20 = call i32 @fiemap_check_flags(%struct.fiemap_extent_info* %18, i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %5, align 4
  br label %102

25:                                               ; preds = %4
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 1
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.gfs2_inode*, %struct.gfs2_inode** %10, align 8
  %30 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @LM_ST_SHARED, align 4
  %33 = call i32 @gfs2_glock_nq_init(i32 %31, i32 %32, i32 0, %struct.gfs2_holder* %11)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %97

37:                                               ; preds = %25
  %38 = load %struct.gfs2_inode*, %struct.gfs2_inode** %10, align 8
  %39 = call i64 @gfs2_is_stuffed(%struct.gfs2_inode* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %88

41:                                               ; preds = %37
  %42 = load %struct.gfs2_inode*, %struct.gfs2_inode** %10, align 8
  %43 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.inode*, %struct.inode** %6, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %44, %47
  store i32 %48, i32* %13, align 4
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = call i32 @i_size_read(%struct.inode* %49)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* @FIEMAP_EXTENT_LAST, align 4
  %52 = load i32, i32* @FIEMAP_EXTENT_NOT_ALIGNED, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @FIEMAP_EXTENT_DATA_INLINE, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = add i64 %57, 4
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %63, %64
  %66 = load i32, i32* %14, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %41
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %8, align 4
  %71 = sub nsw i32 %69, %70
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %68, %41
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %7, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %15, align 4
  %82 = call i32 @fiemap_fill_next_extent(%struct.fiemap_extent_info* %77, i32 %78, i32 %79, i32 %80, i32 %81)
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %76, %72
  %84 = load i32, i32* %12, align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 0, i32* %12, align 4
  br label %87

87:                                               ; preds = %86, %83
  br label %95

88:                                               ; preds = %37
  %89 = load %struct.inode*, %struct.inode** %6, align 8
  %90 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %7, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @gfs2_block_map, align 4
  %94 = call i32 @__generic_block_fiemap(%struct.inode* %89, %struct.fiemap_extent_info* %90, i32 %91, i32 %92, i32 %93)
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %88, %87
  %96 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %11)
  br label %97

97:                                               ; preds = %95, %36
  %98 = load %struct.inode*, %struct.inode** %6, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 1
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %97, %23
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i32 @fiemap_check_flags(%struct.fiemap_extent_info*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i64 @gfs2_is_stuffed(%struct.gfs2_inode*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @fiemap_fill_next_extent(%struct.fiemap_extent_info*, i32, i32, i32, i32) #1

declare dso_local i32 @__generic_block_fiemap(%struct.inode*, %struct.fiemap_extent_info*, i32, i32, i32) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
