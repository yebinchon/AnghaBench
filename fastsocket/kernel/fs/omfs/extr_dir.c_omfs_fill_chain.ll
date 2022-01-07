; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/omfs/extr_dir.c_omfs_fill_chain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/omfs/extr_dir.c_omfs_fill_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.omfs_inode = type { i64, i32, i32, i32 }

@OMFS_DIR = common dso_local global i64 0, align 8
@DT_DIR = common dso_local global i8 0, align 1
@DT_REG = common dso_local global i8 0, align 1
@OMFS_NAMELEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32 (i8*, i32, i32, i32, i32, i8)*, i32, i32)* @omfs_fill_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omfs_fill_chain(%struct.file* %0, i8* %1, i32 (i8*, i32, i32, i32, i32, i8)* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32 (i8*, i32, i32, i32, i32, i8)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.omfs_inode*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  store %struct.file* %0, %struct.file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 (i8*, i32, i32, i32, i32, i8)* %2, i32 (i8*, i32, i32, i32, i32, i8)** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.file*, %struct.file** %6, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %11, align 8
  store i32 0, i32* %15, align 4
  br label %22

22:                                               ; preds = %107, %64, %5
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %110

25:                                               ; preds = %22
  %26 = load %struct.inode*, %struct.inode** %11, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.inode*, %struct.inode** %11, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @OMFS_SB(i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @clus_to_blk(i32 %32, i32 %33)
  %35 = call %struct.buffer_head* @sb_bread(i32 %28, i32 %34)
  store %struct.buffer_head* %35, %struct.buffer_head** %12, align 8
  %36 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %37 = icmp ne %struct.buffer_head* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %25
  br label %111

39:                                               ; preds = %25
  %40 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %41 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.omfs_inode*
  store %struct.omfs_inode* %43, %struct.omfs_inode** %13, align 8
  %44 = load %struct.inode*, %struct.inode** %11, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @OMFS_SB(i32 %46)
  %48 = load %struct.omfs_inode*, %struct.omfs_inode** %13, align 8
  %49 = getelementptr inbounds %struct.omfs_inode, %struct.omfs_inode* %48, i32 0, i32 3
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @omfs_is_bad(i32 %47, i32* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %39
  %54 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %55 = call i32 @brelse(%struct.buffer_head* %54)
  br label %111

56:                                               ; preds = %39
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %14, align 4
  %58 = load %struct.omfs_inode*, %struct.omfs_inode** %13, align 8
  %59 = getelementptr inbounds %struct.omfs_inode, %struct.omfs_inode* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @be64_to_cpu(i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %10, align 4
  %67 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %68 = call i32 @brelse(%struct.buffer_head* %67)
  br label %22

69:                                               ; preds = %56
  %70 = load %struct.omfs_inode*, %struct.omfs_inode** %13, align 8
  %71 = getelementptr inbounds %struct.omfs_inode, %struct.omfs_inode* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @OMFS_DIR, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i8, i8* @DT_DIR, align 1
  %77 = zext i8 %76 to i32
  br label %81

78:                                               ; preds = %69
  %79 = load i8, i8* @DT_REG, align 1
  %80 = zext i8 %79 to i32
  br label %81

81:                                               ; preds = %78, %75
  %82 = phi i32 [ %77, %75 ], [ %80, %78 ]
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %16, align 1
  %84 = load i32 (i8*, i32, i32, i32, i32, i8)*, i32 (i8*, i32, i32, i32, i32, i8)** %8, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = load %struct.omfs_inode*, %struct.omfs_inode** %13, align 8
  %87 = getelementptr inbounds %struct.omfs_inode, %struct.omfs_inode* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.omfs_inode*, %struct.omfs_inode** %13, align 8
  %90 = getelementptr inbounds %struct.omfs_inode, %struct.omfs_inode* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @OMFS_NAMELEN, align 4
  %93 = call i32 @strnlen(i32 %91, i32 %92)
  %94 = load %struct.file*, %struct.file** %6, align 8
  %95 = getelementptr inbounds %struct.file, %struct.file* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %14, align 4
  %98 = load i8, i8* %16, align 1
  %99 = call i32 %84(i8* %85, i32 %88, i32 %93, i32 %96, i32 %97, i8 zeroext %98)
  store i32 %99, i32* %15, align 4
  %100 = load i32, i32* %15, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %81
  %103 = load %struct.file*, %struct.file** %6, align 8
  %104 = getelementptr inbounds %struct.file, %struct.file* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %102, %81
  %108 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %109 = call i32 @brelse(%struct.buffer_head* %108)
  br label %22

110:                                              ; preds = %22
  br label %111

111:                                              ; preds = %110, %53, %38
  %112 = load i32, i32* %15, align 4
  ret i32 %112
}

declare dso_local %struct.buffer_head* @sb_bread(i32, i32) #1

declare dso_local i32 @clus_to_blk(i32, i32) #1

declare dso_local i32 @OMFS_SB(i32) #1

declare dso_local i64 @omfs_is_bad(i32, i32*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @strnlen(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
