; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_truncate.c_extent_trunc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_truncate.c_extent_trunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.extent_position = type { i32 }
%struct.kernel_lb_addr = type { i32 }

@EXT_NOT_RECORDED_ALLOCATED = common dso_local global i32 0, align 4
@EXT_NOT_RECORDED_NOT_ALLOCATED = common dso_local global i32 0, align 4
@EXT_RECORDED_ALLOCATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32, i32, i32)* @extent_trunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extent_trunc(%struct.inode* %0, %struct.extent_position* %1, %struct.kernel_lb_addr* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.extent_position*, align 8
  %9 = alloca %struct.kernel_lb_addr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.kernel_lb_addr, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.extent_position* %1, %struct.extent_position** %8, align 8
  store %struct.kernel_lb_addr* %2, %struct.kernel_lb_addr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = bitcast %struct.kernel_lb_addr* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 4, i1 false)
  %17 = load i32, i32* %11, align 4
  %18 = load %struct.inode*, %struct.inode** %7, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %17, %22
  %24 = sub nsw i32 %23, 1
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %24, %29
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.inode*, %struct.inode** %7, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %31, %36
  %38 = sub nsw i32 %37, 1
  %39 = load %struct.inode*, %struct.inode** %7, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %38, %43
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %71

47:                                               ; preds = %6
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @EXT_NOT_RECORDED_ALLOCATED, align 4
  %50 = ashr i32 %49, 30
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = load %struct.inode*, %struct.inode** %7, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load %struct.inode*, %struct.inode** %7, align 8
  %57 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %9, align 8
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @udf_free_blocks(%struct.TYPE_2__* %55, %struct.inode* %56, %struct.kernel_lb_addr* %57, i32 0, i32 %58)
  %60 = load i32, i32* @EXT_NOT_RECORDED_NOT_ALLOCATED, align 4
  %61 = ashr i32 %60, 30
  store i32 %61, i32* %10, align 4
  br label %66

62:                                               ; preds = %47
  %63 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %9, align 8
  %64 = bitcast %struct.kernel_lb_addr* %13 to i8*
  %65 = bitcast %struct.kernel_lb_addr* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %64, i8* align 4 %65, i64 4, i1 false)
  br label %66

66:                                               ; preds = %62, %52
  %67 = load i32, i32* %10, align 4
  %68 = shl i32 %67, 30
  %69 = load i32, i32* %12, align 4
  %70 = or i32 %68, %69
  store i32 %70, i32* %12, align 4
  br label %71

71:                                               ; preds = %66, %6
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %110

75:                                               ; preds = %71
  %76 = load %struct.inode*, %struct.inode** %7, align 8
  %77 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @udf_write_aext(%struct.inode* %76, %struct.extent_position* %77, %struct.kernel_lb_addr* %13, i32 %78, i32 0)
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %15, align 4
  %82 = sub nsw i32 %80, %81
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %109

84:                                               ; preds = %75
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @EXT_RECORDED_ALLOCATED, align 4
  %87 = ashr i32 %86, 30
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.inode*, %struct.inode** %7, align 8
  %91 = call i32 @mark_inode_dirty(%struct.inode* %90)
  br label %92

92:                                               ; preds = %89, %84
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @EXT_NOT_RECORDED_NOT_ALLOCATED, align 4
  %95 = ashr i32 %94, 30
  %96 = icmp ne i32 %93, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %92
  %98 = load %struct.inode*, %struct.inode** %7, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load %struct.inode*, %struct.inode** %7, align 8
  %102 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %9, align 8
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %15, align 4
  %106 = sub nsw i32 %104, %105
  %107 = call i32 @udf_free_blocks(%struct.TYPE_2__* %100, %struct.inode* %101, %struct.kernel_lb_addr* %102, i32 %103, i32 %106)
  br label %108

108:                                              ; preds = %97, %92
  br label %109

109:                                              ; preds = %108, %75
  br label %110

110:                                              ; preds = %109, %71
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @udf_free_blocks(%struct.TYPE_2__*, %struct.inode*, %struct.kernel_lb_addr*, i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @udf_write_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32, i32) #2

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
