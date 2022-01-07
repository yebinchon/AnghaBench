; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_inode.c_udf_next_aext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_inode.c_udf_next_aext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.extent_position = type { i32, i32, %struct.kernel_lb_addr }
%struct.kernel_lb_addr = type { i32 }

@EXT_NEXT_EXTENT_ALLOCDECS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"reading block %d failed!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udf_next_aext(%struct.inode* %0, %struct.extent_position* %1, %struct.kernel_lb_addr* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.extent_position*, align 8
  %9 = alloca %struct.kernel_lb_addr*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.extent_position* %1, %struct.extent_position** %8, align 8
  store %struct.kernel_lb_addr* %2, %struct.kernel_lb_addr** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  br label %14

14:                                               ; preds = %56, %5
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %17 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %9, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @udf_current_aext(%struct.inode* %15, %struct.extent_position* %16, %struct.kernel_lb_addr* %17, i32* %18, i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* @EXT_NEXT_EXTENT_ALLOCDECS, align 4
  %22 = ashr i32 %21, 30
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %57

24:                                               ; preds = %14
  %25 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %26 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %25, i32 0, i32 2
  %27 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %9, align 8
  %28 = bitcast %struct.kernel_lb_addr* %26 to i8*
  %29 = bitcast %struct.kernel_lb_addr* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 4, i1 false)
  %30 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %31 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %30, i32 0, i32 0
  store i32 4, i32* %31, align 4
  %32 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %33 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @brelse(i32 %34)
  %36 = load %struct.inode*, %struct.inode** %7, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %40 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %39, i32 0, i32 2
  %41 = call i32 @udf_get_lb_pblock(i32 %38, %struct.kernel_lb_addr* %40, i32 0)
  store i32 %41, i32* %13, align 4
  %42 = load %struct.inode*, %struct.inode** %7, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @udf_tread(i32 %44, i32 %45)
  %47 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %48 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %50 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %24
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @udf_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %54)
  store i32 -1, i32* %6, align 4
  br label %59

56:                                               ; preds = %24
  br label %14

57:                                               ; preds = %14
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %57, %53
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i32 @udf_current_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @brelse(i32) #1

declare dso_local i32 @udf_get_lb_pblock(i32, %struct.kernel_lb_addr*, i32) #1

declare dso_local i32 @udf_tread(i32, i32) #1

declare dso_local i32 @udf_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
