; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_end_finfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_end_finfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { i64, i64, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_4__*, %struct.nilfs_segment_buffer* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.nilfs_segment_buffer = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.inode = type { i32 }
%struct.nilfs_finfo = type { i8*, i8*, i8*, i8* }
%struct.nilfs_inode_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_sc_info*, %struct.inode*)* @nilfs_segctor_end_finfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_segctor_end_finfo(%struct.nilfs_sc_info* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.nilfs_sc_info*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.nilfs_finfo*, align 8
  %6 = alloca %struct.nilfs_inode_info*, align 8
  %7 = alloca %struct.nilfs_segment_buffer*, align 8
  store %struct.nilfs_sc_info* %0, %struct.nilfs_sc_info** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %8 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %9 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %77

13:                                               ; preds = %2
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call %struct.nilfs_inode_info* @NILFS_I(%struct.inode* %14)
  store %struct.nilfs_inode_info* %15, %struct.nilfs_inode_info** %6, align 8
  %16 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %17 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %18 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %17, i32 0, i32 3
  %19 = call %struct.nilfs_finfo* @nilfs_segctor_map_segsum_entry(%struct.nilfs_sc_info* %16, %struct.TYPE_6__* %18, i32 32)
  store %struct.nilfs_finfo* %19, %struct.nilfs_finfo** %5, align 8
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @cpu_to_le64(i32 %22)
  %24 = load %struct.nilfs_finfo*, %struct.nilfs_finfo** %5, align 8
  %25 = getelementptr inbounds %struct.nilfs_finfo, %struct.nilfs_finfo* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  %26 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %27 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i8* @cpu_to_le32(i64 %28)
  %30 = load %struct.nilfs_finfo*, %struct.nilfs_finfo** %5, align 8
  %31 = getelementptr inbounds %struct.nilfs_finfo, %struct.nilfs_finfo* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %33 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i8* @cpu_to_le32(i64 %34)
  %36 = load %struct.nilfs_finfo*, %struct.nilfs_finfo** %5, align 8
  %37 = getelementptr inbounds %struct.nilfs_finfo, %struct.nilfs_finfo* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %6, align 8
  %39 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @cpu_to_le64(i32 %40)
  %42 = load %struct.nilfs_finfo*, %struct.nilfs_finfo** %5, align 8
  %43 = getelementptr inbounds %struct.nilfs_finfo, %struct.nilfs_finfo* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %45 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %44, i32 0, i32 5
  %46 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %45, align 8
  store %struct.nilfs_segment_buffer* %46, %struct.nilfs_segment_buffer** %7, align 8
  %47 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %48 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %52 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %51, i32 0, i32 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %7, align 8
  %57 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  %61 = mul nsw i32 %55, %60
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %50, %62
  %64 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %7, align 8
  %65 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i64 %63, i64* %66, align 8
  %67 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %68 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %67, i32 0, i32 3
  %69 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %70 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %69, i32 0, i32 2
  %71 = bitcast %struct.TYPE_6__* %68 to i8*
  %72 = bitcast %struct.TYPE_6__* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %71, i8* align 8 %72, i64 8, i1 false)
  %73 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %74 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %76 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.nilfs_inode_info* @NILFS_I(%struct.inode*) #1

declare dso_local %struct.nilfs_finfo* @nilfs_segctor_map_segsum_entry(%struct.nilfs_sc_info*, %struct.TYPE_6__*, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
