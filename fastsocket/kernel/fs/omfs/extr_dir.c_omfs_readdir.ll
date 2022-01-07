; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/omfs/extr_dir.c_omfs_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/omfs/extr_dir.c_omfs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32, i32, i32 }
%struct.buffer_head = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@DT_DIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@OMFS_DIR_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32 (i8*, i8*, i32, i32, i32, i32)*)* @omfs_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omfs_readdir(%struct.file* %0, i8* %1, i32 (i8*, i8*, i32, i32, i32, i32)* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32 (i8*, i8*, i32, i32, i32, i32)*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 (i8*, i8*, i32, i32, i32, i32)* %2, i32 (i8*, i8*, i32, i32, i32, i32)** %6, align 8
  %16 = load %struct.file*, %struct.file** %4, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %7, align 8
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %15, align 4
  %23 = load %struct.file*, %struct.file** %4, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = ashr i32 %25, 32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  br label %135

29:                                               ; preds = %3
  %30 = load %struct.file*, %struct.file** %4, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  switch i64 %33, label %63 [
    i64 0, label %34
    i64 1, label %49
  ]

34:                                               ; preds = %29
  %35 = load i32 (i8*, i8*, i32, i32, i32, i32)*, i32 (i8*, i8*, i32, i32, i32, i32)** %6, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load %struct.inode*, %struct.inode** %7, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @DT_DIR, align 4
  %41 = call i32 %35(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i32 0, i32 %39, i32 %40)
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %135

44:                                               ; preds = %34
  %45 = load %struct.file*, %struct.file** %4, align 8
  %46 = getelementptr inbounds %struct.file, %struct.file* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %29, %44
  %50 = load i32 (i8*, i8*, i32, i32, i32, i32)*, i32 (i8*, i8*, i32, i32, i32, i32)** %6, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = load %struct.file*, %struct.file** %4, align 8
  %53 = getelementptr inbounds %struct.file, %struct.file* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = call i32 @parent_ino(%struct.TYPE_2__* %54)
  %56 = load i32, i32* @DT_DIR, align 4
  %57 = call i32 %50(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2, i32 1, i32 %55, i32 %56)
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %135

60:                                               ; preds = %49
  %61 = load %struct.file*, %struct.file** %4, align 8
  %62 = getelementptr inbounds %struct.file, %struct.file* %61, i32 0, i32 0
  store i32 1048576, i32* %62, align 8
  br label %63

63:                                               ; preds = %60, %29
  %64 = load %struct.inode*, %struct.inode** %7, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @OMFS_DIR_START, align 4
  %68 = sub nsw i32 %66, %67
  %69 = sdiv i32 %68, 8
  store i32 %69, i32* %13, align 4
  %70 = load %struct.file*, %struct.file** %4, align 8
  %71 = getelementptr inbounds %struct.file, %struct.file* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = ashr i32 %72, 20
  %74 = sub nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  %75 = load %struct.file*, %struct.file** %4, align 8
  %76 = getelementptr inbounds %struct.file, %struct.file* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, 1048575
  store i32 %78, i32* %12, align 4
  %79 = load %struct.inode*, %struct.inode** %7, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.inode*, %struct.inode** %7, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @OMFS_SB(i32 %84)
  %86 = load %struct.inode*, %struct.inode** %7, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @clus_to_blk(i32 %85, i32 %88)
  %90 = call %struct.buffer_head* @sb_bread(i32 %81, i32 %89)
  store %struct.buffer_head* %90, %struct.buffer_head** %8, align 8
  %91 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %92 = icmp ne %struct.buffer_head* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %63
  br label %136

94:                                               ; preds = %63
  %95 = load i32, i32* @OMFS_DIR_START, align 4
  %96 = load i32, i32* %11, align 4
  %97 = mul i32 %96, 8
  %98 = add i32 %95, %97
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %127, %94
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %13, align 4
  %102 = icmp ult i32 %100, %101
  br i1 %102, label %103, label %132

103:                                              ; preds = %99
  %104 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %105 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @be64_to_cpu(i32 %110)
  store i32 %111, i32* %14, align 4
  %112 = load %struct.file*, %struct.file** %4, align 8
  %113 = load i8*, i8** %5, align 8
  %114 = load i32 (i8*, i8*, i32, i32, i32, i32)*, i32 (i8*, i8*, i32, i32, i32, i32)** %6, align 8
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @omfs_fill_chain(%struct.file* %112, i8* %113, i32 (i8*, i8*, i32, i32, i32, i32)* %114, i32 %115, i32 %116)
  store i32 %117, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %103
  br label %132

121:                                              ; preds = %103
  %122 = load i32, i32* %11, align 4
  %123 = add i32 %122, 2
  %124 = shl i32 %123, 20
  %125 = load %struct.file*, %struct.file** %4, align 8
  %126 = getelementptr inbounds %struct.file, %struct.file* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %121
  %128 = load i32, i32* %11, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 8
  store i32 %131, i32* %9, align 4
  br label %99

132:                                              ; preds = %120, %99
  %133 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %134 = call i32 @brelse(%struct.buffer_head* %133)
  br label %135

135:                                              ; preds = %132, %59, %43, %28
  store i32 0, i32* %15, align 4
  br label %136

136:                                              ; preds = %135, %93
  %137 = load i32, i32* %15, align 4
  ret i32 %137
}

declare dso_local i32 @parent_ino(%struct.TYPE_2__*) #1

declare dso_local %struct.buffer_head* @sb_bread(i32, i32) #1

declare dso_local i32 @clus_to_blk(i32, i32) #1

declare dso_local i32 @OMFS_SB(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @omfs_fill_chain(%struct.file*, i8*, i32 (i8*, i8*, i32, i32, i32, i32)*, i32, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
