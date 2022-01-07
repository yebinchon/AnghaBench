; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_dir.c_adfs_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_dir.c_adfs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.adfs_dir_ops = type { i32 (%struct.super_block*, i32, i32, %struct.adfs_dir*)*, i32 (%struct.adfs_dir.0*, i32)*, i64 (%struct.adfs_dir.1*, %struct.object_info*)*, i32 (%struct.adfs_dir.2*)* }
%struct.adfs_dir = type opaque
%struct.adfs_dir.0 = type opaque
%struct.adfs_dir.1 = type opaque
%struct.object_info = type { i8*, i32, i32 }
%struct.adfs_dir.2 = type opaque
%struct.adfs_dir.3 = type { i32 }
%struct.TYPE_6__ = type { %struct.adfs_dir_ops* }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@DT_DIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@adfs_dir_lock = common dso_local global i32 0, align 4
@DT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i64 (i8*, i8*, i32, i32, i32, i32)*)* @adfs_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adfs_readdir(%struct.file* %0, i8* %1, i64 (i8*, i8*, i32, i32, i32, i32)* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64 (i8*, i8*, i32, i32, i32, i32)*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.adfs_dir_ops*, align 8
  %10 = alloca %struct.object_info, align 8
  %11 = alloca %struct.adfs_dir.3, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 (i8*, i8*, i32, i32, i32, i32)* %2, i64 (i8*, i8*, i32, i32, i32, i32)** %6, align 8
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %7, align 8
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 2
  %21 = load %struct.super_block*, %struct.super_block** %20, align 8
  store %struct.super_block* %21, %struct.super_block** %8, align 8
  %22 = load %struct.super_block*, %struct.super_block** %8, align 8
  %23 = call %struct.TYPE_6__* @ADFS_SB(%struct.super_block* %22)
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.adfs_dir_ops*, %struct.adfs_dir_ops** %24, align 8
  store %struct.adfs_dir_ops* %25, %struct.adfs_dir_ops** %9, align 8
  store i32 0, i32* %12, align 4
  %26 = call i32 (...) @lock_kernel()
  %27 = load %struct.file*, %struct.file** %4, align 8
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = ashr i32 %29, 32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  br label %136

33:                                               ; preds = %3
  %34 = load %struct.adfs_dir_ops*, %struct.adfs_dir_ops** %9, align 8
  %35 = getelementptr inbounds %struct.adfs_dir_ops, %struct.adfs_dir_ops* %34, i32 0, i32 0
  %36 = load i32 (%struct.super_block*, i32, i32, %struct.adfs_dir*)*, i32 (%struct.super_block*, i32, i32, %struct.adfs_dir*)** %35, align 8
  %37 = load %struct.super_block*, %struct.super_block** %8, align 8
  %38 = load %struct.inode*, %struct.inode** %7, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.inode*, %struct.inode** %7, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = bitcast %struct.adfs_dir.3* %11 to %struct.adfs_dir*
  %45 = call i32 %36(%struct.super_block* %37, i32 %40, i32 %43, %struct.adfs_dir* %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %33
  br label %136

49:                                               ; preds = %33
  %50 = load %struct.file*, %struct.file** %4, align 8
  %51 = getelementptr inbounds %struct.file, %struct.file* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  switch i64 %53, label %83 [
    i64 0, label %54
    i64 1, label %69
  ]

54:                                               ; preds = %49
  %55 = load i64 (i8*, i8*, i32, i32, i32, i32)*, i64 (i8*, i8*, i32, i32, i32, i32)** %6, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = load %struct.inode*, %struct.inode** %7, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @DT_DIR, align 4
  %61 = call i64 %55(i8* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i32 0, i32 %59, i32 %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %130

64:                                               ; preds = %54
  %65 = load %struct.file*, %struct.file** %4, align 8
  %66 = getelementptr inbounds %struct.file, %struct.file* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %49, %64
  %70 = load i64 (i8*, i8*, i32, i32, i32, i32)*, i64 (i8*, i8*, i32, i32, i32, i32)** %6, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds %struct.adfs_dir.3, %struct.adfs_dir.3* %11, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @DT_DIR, align 4
  %75 = call i64 %70(i8* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2, i32 1, i32 %73, i32 %74)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %130

78:                                               ; preds = %69
  %79 = load %struct.file*, %struct.file** %4, align 8
  %80 = getelementptr inbounds %struct.file, %struct.file* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %49, %78
  br label %84

84:                                               ; preds = %83
  %85 = call i32 @read_lock(i32* @adfs_dir_lock)
  %86 = load %struct.adfs_dir_ops*, %struct.adfs_dir_ops** %9, align 8
  %87 = getelementptr inbounds %struct.adfs_dir_ops, %struct.adfs_dir_ops* %86, i32 0, i32 1
  %88 = load i32 (%struct.adfs_dir.0*, i32)*, i32 (%struct.adfs_dir.0*, i32)** %87, align 8
  %89 = bitcast %struct.adfs_dir.3* %11 to %struct.adfs_dir.0*
  %90 = load %struct.file*, %struct.file** %4, align 8
  %91 = getelementptr inbounds %struct.file, %struct.file* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sub nsw i32 %92, 2
  %94 = call i32 %88(%struct.adfs_dir.0* %89, i32 %93)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %84
  br label %128

98:                                               ; preds = %84
  br label %99

99:                                               ; preds = %122, %98
  %100 = load %struct.adfs_dir_ops*, %struct.adfs_dir_ops** %9, align 8
  %101 = getelementptr inbounds %struct.adfs_dir_ops, %struct.adfs_dir_ops* %100, i32 0, i32 2
  %102 = load i64 (%struct.adfs_dir.1*, %struct.object_info*)*, i64 (%struct.adfs_dir.1*, %struct.object_info*)** %101, align 8
  %103 = bitcast %struct.adfs_dir.3* %11 to %struct.adfs_dir.1*
  %104 = call i64 %102(%struct.adfs_dir.1* %103, %struct.object_info* %10)
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %127

106:                                              ; preds = %99
  %107 = load i64 (i8*, i8*, i32, i32, i32, i32)*, i64 (i8*, i8*, i32, i32, i32, i32)** %6, align 8
  %108 = load i8*, i8** %5, align 8
  %109 = getelementptr inbounds %struct.object_info, %struct.object_info* %10, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds %struct.object_info, %struct.object_info* %10, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.file*, %struct.file** %4, align 8
  %114 = getelementptr inbounds %struct.file, %struct.file* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = getelementptr inbounds %struct.object_info, %struct.object_info* %10, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @DT_UNKNOWN, align 4
  %119 = call i64 %107(i8* %108, i8* %110, i32 %112, i32 %115, i32 %117, i32 %118)
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %106
  br label %128

122:                                              ; preds = %106
  %123 = load %struct.file*, %struct.file** %4, align 8
  %124 = getelementptr inbounds %struct.file, %struct.file* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 8
  br label %99

127:                                              ; preds = %99
  br label %128

128:                                              ; preds = %127, %121, %97
  %129 = call i32 @read_unlock(i32* @adfs_dir_lock)
  br label %130

130:                                              ; preds = %128, %77, %63
  %131 = load %struct.adfs_dir_ops*, %struct.adfs_dir_ops** %9, align 8
  %132 = getelementptr inbounds %struct.adfs_dir_ops, %struct.adfs_dir_ops* %131, i32 0, i32 3
  %133 = load i32 (%struct.adfs_dir.2*)*, i32 (%struct.adfs_dir.2*)** %132, align 8
  %134 = bitcast %struct.adfs_dir.3* %11 to %struct.adfs_dir.2*
  %135 = call i32 %133(%struct.adfs_dir.2* %134)
  br label %136

136:                                              ; preds = %130, %48, %32
  %137 = call i32 (...) @unlock_kernel()
  %138 = load i32, i32* %12, align 4
  ret i32 %138
}

declare dso_local %struct.TYPE_6__* @ADFS_SB(%struct.super_block*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
