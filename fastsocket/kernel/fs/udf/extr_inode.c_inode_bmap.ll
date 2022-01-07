; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_inode.c_inode_bmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_inode.c_inode_bmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8 }
%struct.extent_position = type { i32*, i32, i64 }
%struct.kernel_lb_addr = type { i32 }
%struct.udf_inode_info = type { i8, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inode_bmap(%struct.inode* %0, i8 zeroext %1, %struct.extent_position* %2, %struct.kernel_lb_addr* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.extent_position*, align 8
  %11 = alloca %struct.kernel_lb_addr*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca %struct.udf_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i8 %1, i8* %9, align 1
  store %struct.extent_position* %2, %struct.extent_position** %10, align 8
  store %struct.kernel_lb_addr* %3, %struct.kernel_lb_addr** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %19 = load %struct.inode*, %struct.inode** %8, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i8, i8* %22, align 1
  store i8 %23, i8* %14, align 1
  store i8 0, i8* %15, align 1
  %24 = load i8, i8* %9, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* %14, align 1
  %27 = zext i8 %26 to i32
  %28 = shl i32 %25, %27
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %16, align 1
  %30 = load %struct.inode*, %struct.inode** %8, align 8
  %31 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %30)
  store %struct.udf_inode_info* %31, %struct.udf_inode_info** %18, align 8
  %32 = load %struct.extent_position*, %struct.extent_position** %10, align 8
  %33 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.udf_inode_info*, %struct.udf_inode_info** %18, align 8
  %35 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.extent_position*, %struct.extent_position** %10, align 8
  %38 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.extent_position*, %struct.extent_position** %10, align 8
  %40 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load i8*, i8** %12, align 8
  store i8 0, i8* %41, align 1
  br label %42

42:                                               ; preds = %72, %6
  %43 = load %struct.inode*, %struct.inode** %8, align 8
  %44 = load %struct.extent_position*, %struct.extent_position** %10, align 8
  %45 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %11, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = call i32 @udf_next_aext(%struct.inode* %43, %struct.extent_position* %44, %struct.kernel_lb_addr* %45, i8* %46, i32 1)
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %17, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %64

50:                                               ; preds = %42
  %51 = load i8, i8* %16, align 1
  %52 = zext i8 %51 to i32
  %53 = load i8, i8* %15, align 1
  %54 = zext i8 %53 to i32
  %55 = sub nsw i32 %52, %54
  %56 = load i8, i8* %14, align 1
  %57 = zext i8 %56 to i32
  %58 = ashr i32 %55, %57
  %59 = trunc i32 %58 to i8
  %60 = load i8*, i8** %13, align 8
  store i8 %59, i8* %60, align 1
  %61 = load i8, i8* %15, align 1
  %62 = load %struct.udf_inode_info*, %struct.udf_inode_info** %18, align 8
  %63 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %62, i32 0, i32 0
  store i8 %61, i8* %63, align 4
  store i32 -1, i32* %7, align 4
  br label %94

64:                                               ; preds = %42
  %65 = load i8*, i8** %12, align 8
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = load i8, i8* %15, align 1
  %69 = zext i8 %68 to i32
  %70 = add nsw i32 %69, %67
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %15, align 1
  br label %72

72:                                               ; preds = %64
  %73 = load i8, i8* %15, align 1
  %74 = zext i8 %73 to i32
  %75 = load i8, i8* %16, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp sle i32 %74, %76
  br i1 %77, label %42, label %78

78:                                               ; preds = %72
  %79 = load i8, i8* %16, align 1
  %80 = zext i8 %79 to i32
  %81 = load i8*, i8** %12, align 8
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = add nsw i32 %80, %83
  %85 = load i8, i8* %15, align 1
  %86 = zext i8 %85 to i32
  %87 = sub nsw i32 %84, %86
  %88 = load i8, i8* %14, align 1
  %89 = zext i8 %88 to i32
  %90 = ashr i32 %87, %89
  %91 = trunc i32 %90 to i8
  %92 = load i8*, i8** %13, align 8
  store i8 %91, i8* %92, align 1
  %93 = load i32, i32* %17, align 4
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %78, %50
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local i32 @udf_next_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
