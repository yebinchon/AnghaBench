; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_dir_new_leaf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_dir_new_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.qstr = type { i32 }
%struct.buffer_head = type { i64, i32 }
%struct.gfs2_inode = type { i32, i32, i32 }
%struct.gfs2_leaf = type { i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.qstr*)* @dir_new_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dir_new_leaf(%struct.inode* %0, %struct.qstr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.qstr*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.gfs2_inode*, align 8
  %9 = alloca %struct.gfs2_leaf*, align 8
  %10 = alloca %struct.gfs2_leaf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.qstr* %1, %struct.qstr** %5, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %14)
  store %struct.gfs2_inode* %15, %struct.gfs2_inode** %8, align 8
  %16 = load %struct.qstr*, %struct.qstr** %5, align 8
  %17 = getelementptr inbounds %struct.qstr, %struct.qstr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %20 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 32, %21
  %23 = ashr i32 %18, %22
  store i32 %23, i32* %12, align 4
  %24 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @get_first_leaf(%struct.gfs2_inode* %24, i32 %25, %struct.buffer_head** %7)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %3, align 4
  br label %108

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %55, %31
  %33 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %34 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.gfs2_leaf*
  store %struct.gfs2_leaf* %36, %struct.gfs2_leaf** %10, align 8
  %37 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %10, align 8
  %38 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @be64_to_cpu(i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %32
  br label %56

44:                                               ; preds = %32
  %45 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %46 = call i32 @brelse(%struct.buffer_head* %45)
  %47 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @get_leaf(%struct.gfs2_inode* %47, i32 %48, %struct.buffer_head** %7)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %3, align 4
  br label %108

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54
  br i1 true, label %32, label %56

56:                                               ; preds = %55, %43
  %57 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %58 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %61 = call i32 @gfs2_trans_add_meta(i32 %59, %struct.buffer_head* %60)
  %62 = load %struct.inode*, %struct.inode** %4, align 8
  %63 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %10, align 8
  %64 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @be16_to_cpu(i32 %65)
  %67 = call %struct.gfs2_leaf* @new_leaf(%struct.inode* %62, %struct.buffer_head** %6, i32 %66)
  store %struct.gfs2_leaf* %67, %struct.gfs2_leaf** %9, align 8
  %68 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %9, align 8
  %69 = icmp ne %struct.gfs2_leaf* %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %56
  %71 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %72 = call i32 @brelse(%struct.buffer_head* %71)
  %73 = load i32, i32* @ENOSPC, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %108

75:                                               ; preds = %56
  %76 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %77 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @cpu_to_be64(i32 %78)
  %80 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %10, align 8
  %81 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %83 = call i32 @brelse(%struct.buffer_head* %82)
  %84 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %85 = call i32 @brelse(%struct.buffer_head* %84)
  %86 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %87 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %86, %struct.buffer_head** %6)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %75
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %3, align 4
  br label %108

92:                                               ; preds = %75
  %93 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %94 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %97 = call i32 @gfs2_trans_add_meta(i32 %95, %struct.buffer_head* %96)
  %98 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %99 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %98, i32 0, i32 1
  %100 = call i32 @gfs2_add_inode_blocks(i32* %99, i32 1)
  %101 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %102 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %103 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @gfs2_dinode_out(%struct.gfs2_inode* %101, i64 %104)
  %106 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %107 = call i32 @brelse(%struct.buffer_head* %106)
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %92, %90, %70, %52, %29
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i32 @get_first_leaf(%struct.gfs2_inode*, i32, %struct.buffer_head**) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @get_leaf(%struct.gfs2_inode*, i32, %struct.buffer_head**) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local %struct.gfs2_leaf* @new_leaf(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i32 @gfs2_add_inode_blocks(i32*, i32) #1

declare dso_local i32 @gfs2_dinode_out(%struct.gfs2_inode*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
