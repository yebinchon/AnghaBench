; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_inode.c_udf_block_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_inode.c_udf_block_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.kernel_lb_addr = type { i32 }
%struct.extent_position = type { i32 }

@EXT_RECORDED_ALLOCATED = common dso_local global i32 0, align 4
@UDF_FLAG_VARCONV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @udf_block_map(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kernel_lb_addr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.extent_position, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = bitcast %struct.extent_position* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = call i32 (...) @lock_kernel()
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @inode_bmap(%struct.inode* %13, i32 %14, %struct.extent_position* %9, %struct.kernel_lb_addr* %6, i32* %7, i32* %8)
  %16 = load i32, i32* @EXT_RECORDED_ALLOCATED, align 4
  %17 = ashr i32 %16, 30
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @udf_get_lb_pblock(i32 %22, %struct.kernel_lb_addr* %6, i32 %23)
  store i32 %24, i32* %10, align 4
  br label %26

25:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %25, %19
  %27 = call i32 (...) @unlock_kernel()
  %28 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %9, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @brelse(i32 %29)
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @UDF_FLAG_VARCONV, align 4
  %35 = call i64 @UDF_QUERY_FLAG(i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load i32, i32* %10, align 4
  %39 = call i64 @udf_fixed_to_variable(i32 %38)
  store i64 %39, i64* %3, align 8
  br label %43

40:                                               ; preds = %26
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %3, align 8
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i64, i64* %3, align 8
  ret i64 %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @lock_kernel(...) #2

declare dso_local i32 @inode_bmap(%struct.inode*, i32, %struct.extent_position*, %struct.kernel_lb_addr*, i32*, i32*) #2

declare dso_local i32 @udf_get_lb_pblock(i32, %struct.kernel_lb_addr*, i32) #2

declare dso_local i32 @unlock_kernel(...) #2

declare dso_local i32 @brelse(i32) #2

declare dso_local i64 @UDF_QUERY_FLAG(i32, i32) #2

declare dso_local i64 @udf_fixed_to_variable(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
