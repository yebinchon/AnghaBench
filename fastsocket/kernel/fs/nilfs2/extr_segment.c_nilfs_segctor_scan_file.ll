; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_scan_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_scan_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.inode = type { i32 }
%struct.nilfs_sc_operations = type { i32*, i32*, i32* }
%struct.TYPE_4__ = type { i32 }

@data_buffers = common dso_local global i32 0, align 4
@node_buffers = common dso_local global i32 0, align 4
@NILFS_CF_NODE = common dso_local global i32 0, align 4
@LLONG_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_sc_info*, %struct.inode*, %struct.nilfs_sc_operations*)* @nilfs_segctor_scan_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_segctor_scan_file(%struct.nilfs_sc_info* %0, %struct.inode* %1, %struct.nilfs_sc_operations* %2) #0 {
  %4 = alloca %struct.nilfs_sc_info*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.nilfs_sc_operations*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.nilfs_sc_info* %0, %struct.nilfs_sc_info** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.nilfs_sc_operations* %2, %struct.nilfs_sc_operations** %6, align 8
  %10 = load i32, i32* @data_buffers, align 4
  %11 = call i32 @LIST_HEAD(i32 %10)
  %12 = load i32, i32* @node_buffers, align 4
  %13 = call i32 @LIST_HEAD(i32 %12)
  %14 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %15 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @NILFS_CF_NODE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %45, label %21

21:                                               ; preds = %3
  %22 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %23 = call i64 @nilfs_segctor_buffer_rest(%struct.nilfs_sc_info* %22)
  store i64 %23, i64* %9, align 8
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = load i64, i64* %9, align 8
  %26 = add i64 %25, 1
  %27 = load i32, i32* @LLONG_MAX, align 4
  %28 = call i64 @nilfs_lookup_dirty_data_buffers(%struct.inode* %24, i32* @data_buffers, i64 %26, i32 0, i32 %27)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %21
  %33 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = load %struct.nilfs_sc_operations*, %struct.nilfs_sc_operations** %6, align 8
  %36 = getelementptr inbounds %struct.nilfs_sc_operations, %struct.nilfs_sc_operations* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @nilfs_segctor_apply_buffers(%struct.nilfs_sc_info* %33, %struct.inode* %34, i32* @data_buffers, i32* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUG_ON(i32 %42)
  br label %114

44:                                               ; preds = %21
  br label %45

45:                                               ; preds = %44, %3
  %46 = load %struct.inode*, %struct.inode** %5, align 8
  %47 = call i32 @nilfs_lookup_dirty_node_buffers(%struct.inode* %46, i32* @node_buffers)
  %48 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %49 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @NILFS_CF_NODE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %76, label %55

55:                                               ; preds = %45
  %56 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %57 = load %struct.inode*, %struct.inode** %5, align 8
  %58 = load %struct.nilfs_sc_operations*, %struct.nilfs_sc_operations** %6, align 8
  %59 = getelementptr inbounds %struct.nilfs_sc_operations, %struct.nilfs_sc_operations* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @nilfs_segctor_apply_buffers(%struct.nilfs_sc_info* %56, %struct.inode* %57, i32* @data_buffers, i32* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %55
  %66 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %67 = load %struct.inode*, %struct.inode** %5, align 8
  %68 = call i32 @nilfs_segctor_apply_buffers(%struct.nilfs_sc_info* %66, %struct.inode* %67, i32* @node_buffers, i32* null)
  br label %114

69:                                               ; preds = %55
  %70 = load i32, i32* @NILFS_CF_NODE, align 4
  %71 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %72 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %70
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %69, %45
  %77 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %78 = load %struct.inode*, %struct.inode** %5, align 8
  %79 = load %struct.nilfs_sc_operations*, %struct.nilfs_sc_operations** %6, align 8
  %80 = getelementptr inbounds %struct.nilfs_sc_operations, %struct.nilfs_sc_operations* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @nilfs_segctor_apply_buffers(%struct.nilfs_sc_info* %77, %struct.inode* %78, i32* @node_buffers, i32* %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  br label %114

87:                                               ; preds = %76
  %88 = load %struct.inode*, %struct.inode** %5, align 8
  %89 = call %struct.TYPE_4__* @NILFS_I(%struct.inode* %88)
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @nilfs_bmap_lookup_dirty_buffers(i32 %91, i32* @node_buffers)
  %93 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %94 = load %struct.inode*, %struct.inode** %5, align 8
  %95 = load %struct.nilfs_sc_operations*, %struct.nilfs_sc_operations** %6, align 8
  %96 = getelementptr inbounds %struct.nilfs_sc_operations, %struct.nilfs_sc_operations* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @nilfs_segctor_apply_buffers(%struct.nilfs_sc_info* %93, %struct.inode* %94, i32* @node_buffers, i32* %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i64 @unlikely(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %87
  br label %114

103:                                              ; preds = %87
  %104 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %105 = load %struct.inode*, %struct.inode** %5, align 8
  %106 = call i32 @nilfs_segctor_end_finfo(%struct.nilfs_sc_info* %104, %struct.inode* %105)
  %107 = load i32, i32* @NILFS_CF_NODE, align 4
  %108 = xor i32 %107, -1
  %109 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %110 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, %108
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %103, %102, %86, %65, %32
  %115 = load i32, i32* %7, align 4
  ret i32 %115
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i64 @nilfs_segctor_buffer_rest(%struct.nilfs_sc_info*) #1

declare dso_local i64 @nilfs_lookup_dirty_data_buffers(%struct.inode*, i32*, i64, i32, i32) #1

declare dso_local i32 @nilfs_segctor_apply_buffers(%struct.nilfs_sc_info*, %struct.inode*, i32*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @nilfs_lookup_dirty_node_buffers(%struct.inode*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nilfs_bmap_lookup_dirty_buffers(i32, i32*) #1

declare dso_local %struct.TYPE_4__* @NILFS_I(%struct.inode*) #1

declare dso_local i32 @nilfs_segctor_end_finfo(%struct.nilfs_sc_info*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
