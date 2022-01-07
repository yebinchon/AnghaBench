; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cramfs/extr_inode.c_cramfs_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cramfs/extr_inode.c_cramfs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.cramfs_inode = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CRAMFS_MAXPATHLEN = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@read_mutex = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32 (i8*, i8*, i32, i32, i32, i32)*)* @cramfs_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cramfs_readdir(%struct.file* %0, i8* %1, i32 (i8*, i8*, i32, i32, i32, i32)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32 (i8*, i8*, i32, i32, i32, i32)*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cramfs_inode*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 (i8*, i8*, i32, i32, i32, i32)* %2, i32 (i8*, i8*, i32, i32, i32, i32)** %7, align 8
  %20 = load %struct.file*, %struct.file** %5, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.inode*, %struct.inode** %24, align 8
  store %struct.inode* %25, %struct.inode** %8, align 8
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 1
  %28 = load %struct.super_block*, %struct.super_block** %27, align 8
  store %struct.super_block* %28, %struct.super_block** %9, align 8
  %29 = load %struct.file*, %struct.file** %5, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.inode*, %struct.inode** %8, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp uge i32 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %139

38:                                               ; preds = %3
  %39 = load i32, i32* %11, align 4
  %40 = and i32 %39, 3
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %139

45:                                               ; preds = %38
  %46 = load i64, i64* @CRAMFS_MAXPATHLEN, align 8
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i8* @kmalloc(i64 %46, i32 %47)
  store i8* %48, i8** %10, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %139

54:                                               ; preds = %45
  store i32 0, i32* %12, align 4
  br label %55

55:                                               ; preds = %128, %54
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.inode*, %struct.inode** %8, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ult i32 %56, %59
  br i1 %60, label %61, label %136

61:                                               ; preds = %55
  %62 = call i32 @mutex_lock(i32* @read_mutex)
  %63 = load %struct.super_block*, %struct.super_block** %9, align 8
  %64 = load %struct.inode*, %struct.inode** %8, align 8
  %65 = call i64 @OFFSET(%struct.inode* %64)
  %66 = load i32, i32* %11, align 4
  %67 = zext i32 %66 to i64
  %68 = add nsw i64 %65, %67
  %69 = load i64, i64* @CRAMFS_MAXPATHLEN, align 8
  %70 = add i64 8, %69
  %71 = call %struct.cramfs_inode* @cramfs_read(%struct.super_block* %63, i64 %68, i64 %70)
  store %struct.cramfs_inode* %71, %struct.cramfs_inode** %13, align 8
  %72 = load %struct.cramfs_inode*, %struct.cramfs_inode** %13, align 8
  %73 = getelementptr inbounds %struct.cramfs_inode, %struct.cramfs_inode* %72, i64 1
  %74 = bitcast %struct.cramfs_inode* %73 to i8*
  store i8* %74, i8** %15, align 8
  %75 = load %struct.cramfs_inode*, %struct.cramfs_inode** %13, align 8
  %76 = getelementptr inbounds %struct.cramfs_inode, %struct.cramfs_inode* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 2
  store i32 %78, i32* %18, align 4
  %79 = load i8*, i8** %10, align 8
  %80 = load i8*, i8** %15, align 8
  %81 = load i32, i32* %18, align 4
  %82 = call i32 @memcpy(i8* %79, i8* %80, i32 %81)
  %83 = load %struct.cramfs_inode*, %struct.cramfs_inode** %13, align 8
  %84 = call i32 @CRAMINO(%struct.cramfs_inode* %83)
  store i32 %84, i32* %16, align 4
  %85 = load %struct.cramfs_inode*, %struct.cramfs_inode** %13, align 8
  %86 = getelementptr inbounds %struct.cramfs_inode, %struct.cramfs_inode* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %17, align 4
  %88 = call i32 @mutex_unlock(i32* @read_mutex)
  %89 = load i32, i32* %11, align 4
  %90 = zext i32 %89 to i64
  %91 = add i64 %90, 8
  %92 = load i32, i32* %18, align 4
  %93 = sext i32 %92 to i64
  %94 = add i64 %91, %93
  store i64 %94, i64* %14, align 8
  br label %95

95:                                               ; preds = %112, %61
  %96 = load i32, i32* %18, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %95
  %99 = load i8*, i8** %10, align 8
  %100 = call i32 @kfree(i8* %99)
  %101 = load i32, i32* @EIO, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %139

103:                                              ; preds = %95
  %104 = load i8*, i8** %10, align 8
  %105 = load i32, i32* %18, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = icmp ne i8 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  br label %115

112:                                              ; preds = %103
  %113 = load i32, i32* %18, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %18, align 4
  br label %95

115:                                              ; preds = %111
  %116 = load i32 (i8*, i8*, i32, i32, i32, i32)*, i32 (i8*, i8*, i32, i32, i32, i32)** %7, align 8
  %117 = load i8*, i8** %6, align 8
  %118 = load i8*, i8** %10, align 8
  %119 = load i32, i32* %18, align 4
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %16, align 4
  %122 = load i32, i32* %17, align 4
  %123 = ashr i32 %122, 12
  %124 = call i32 %116(i8* %117, i8* %118, i32 %119, i32 %120, i32 %121, i32 %123)
  store i32 %124, i32* %19, align 4
  %125 = load i32, i32* %19, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %115
  br label %136

128:                                              ; preds = %115
  %129 = load i64, i64* %14, align 8
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load %struct.file*, %struct.file** %5, align 8
  %133 = getelementptr inbounds %struct.file, %struct.file* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %12, align 4
  br label %55

136:                                              ; preds = %127, %55
  %137 = load i8*, i8** %10, align 8
  %138 = call i32 @kfree(i8* %137)
  store i32 0, i32* %4, align 4
  br label %139

139:                                              ; preds = %136, %98, %51, %42, %37
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.cramfs_inode* @cramfs_read(%struct.super_block*, i64, i64) #1

declare dso_local i64 @OFFSET(%struct.inode*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @CRAMINO(%struct.cramfs_inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
