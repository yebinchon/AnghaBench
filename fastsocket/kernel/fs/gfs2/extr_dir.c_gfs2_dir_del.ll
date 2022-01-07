; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_gfs2_dir_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_gfs2_dir_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.qstr = type { i32 }
%struct.gfs2_dirent = type { i32 }
%struct.buffer_head = type { i64 }
%struct.gfs2_leaf = type { i32 }

@gfs2_dirent_prev = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFS2_DIF_EXHASH = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_dir_del(%struct.gfs2_inode* %0, %struct.qstr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca %struct.qstr*, align 8
  %6 = alloca %struct.gfs2_dirent*, align 8
  %7 = alloca %struct.gfs2_dirent*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.gfs2_leaf*, align 8
  %10 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %4, align 8
  store %struct.qstr* %1, %struct.qstr** %5, align 8
  store %struct.gfs2_dirent* null, %struct.gfs2_dirent** %7, align 8
  %11 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %12 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %11, i32 0, i32 1
  %13 = load %struct.qstr*, %struct.qstr** %5, align 8
  %14 = load i32, i32* @gfs2_dirent_prev, align 4
  %15 = call %struct.gfs2_dirent* @gfs2_dirent_search(%struct.TYPE_3__* %12, %struct.qstr* %13, i32 %14, %struct.buffer_head** %8)
  store %struct.gfs2_dirent* %15, %struct.gfs2_dirent** %6, align 8
  %16 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %17 = icmp ne %struct.gfs2_dirent* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %20 = call i32 @gfs2_consist_inode(%struct.gfs2_inode* %19)
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %105

23:                                               ; preds = %2
  %24 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %25 = call i64 @IS_ERR(%struct.gfs2_dirent* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %29 = call i32 @gfs2_consist_inode(%struct.gfs2_inode* %28)
  %30 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %31 = call i32 @PTR_ERR(%struct.gfs2_dirent* %30)
  store i32 %31, i32* %3, align 4
  br label %105

32:                                               ; preds = %23
  %33 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %34 = load %struct.qstr*, %struct.qstr** %5, align 8
  %35 = call i64 @gfs2_dirent_find(%struct.gfs2_dirent* %33, %struct.qstr* %34, i32* null)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  store %struct.gfs2_dirent* %38, %struct.gfs2_dirent** %7, align 8
  %39 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %40 = bitcast %struct.gfs2_dirent* %39 to i8*
  %41 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %7, align 8
  %42 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @be16_to_cpu(i32 %43)
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %40, i64 %45
  %47 = bitcast i8* %46 to %struct.gfs2_dirent*
  store %struct.gfs2_dirent* %47, %struct.gfs2_dirent** %6, align 8
  br label %48

48:                                               ; preds = %37, %32
  %49 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %50 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %51 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %7, align 8
  %52 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %53 = call i32 @dirent_del(%struct.gfs2_inode* %49, %struct.buffer_head* %50, %struct.gfs2_dirent* %51, %struct.gfs2_dirent* %52)
  %54 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %55 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @GFS2_DIF_EXHASH, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %80

60:                                               ; preds = %48
  %61 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %62 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to %struct.gfs2_leaf*
  store %struct.gfs2_leaf* %64, %struct.gfs2_leaf** %9, align 8
  %65 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %9, align 8
  %66 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @be16_to_cpu(i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %60
  %72 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %73 = call i32 @gfs2_consist_inode(%struct.gfs2_inode* %72)
  br label %74

74:                                               ; preds = %71, %60
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %10, align 4
  %77 = call i32 @cpu_to_be16(i32 %76)
  %78 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %9, align 8
  %79 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %74, %48
  %81 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %82 = call i32 @brelse(%struct.buffer_head* %81)
  %83 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %84 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %80
  %88 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %89 = call i32 @gfs2_consist_inode(%struct.gfs2_inode* %88)
  br label %90

90:                                               ; preds = %87, %80
  %91 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %92 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* @CURRENT_TIME, align 4
  %96 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %97 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 4
  %99 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %100 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  store i32 %95, i32* %101, align 4
  %102 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %103 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %102, i32 0, i32 1
  %104 = call i32 @mark_inode_dirty(%struct.TYPE_3__* %103)
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %90, %27, %18
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.gfs2_dirent* @gfs2_dirent_search(%struct.TYPE_3__*, %struct.qstr*, i32, %struct.buffer_head**) #1

declare dso_local i32 @gfs2_consist_inode(%struct.gfs2_inode*) #1

declare dso_local i64 @IS_ERR(%struct.gfs2_dirent*) #1

declare dso_local i32 @PTR_ERR(%struct.gfs2_dirent*) #1

declare dso_local i64 @gfs2_dirent_find(%struct.gfs2_dirent*, %struct.qstr*, i32*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @dirent_del(%struct.gfs2_inode*, %struct.buffer_head*, %struct.gfs2_dirent*, %struct.gfs2_dirent*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @mark_inode_dirty(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
