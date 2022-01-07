; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_file.c_ecryptfs_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_file.c_ecryptfs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.ecryptfs_getdents_callback = type { i64, i64, i32, %struct.TYPE_3__*, i8* }

@ecryptfs_filldir = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @ecryptfs_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecryptfs_readdir(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.ecryptfs_getdents_callback, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = call %struct.file* @ecryptfs_file_to_lower(%struct.file* %11)
  store %struct.file* %12, %struct.file** %8, align 8
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.file*, %struct.file** %8, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load %struct.file*, %struct.file** %4, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.inode*, %struct.inode** %22, align 8
  store %struct.inode* %23, %struct.inode** %9, align 8
  %24 = call i32 @memset(%struct.ecryptfs_getdents_callback* %10, i32 0, i32 40)
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds %struct.ecryptfs_getdents_callback, %struct.ecryptfs_getdents_callback* %10, i32 0, i32 4
  store i8* %25, i8** %26, align 8
  %27 = load %struct.file*, %struct.file** %4, align 8
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.ecryptfs_getdents_callback, %struct.ecryptfs_getdents_callback* %10, i32 0, i32 3
  store %struct.TYPE_3__* %30, %struct.TYPE_3__** %31, align 8
  %32 = load i32, i32* %6, align 4
  %33 = getelementptr inbounds %struct.ecryptfs_getdents_callback, %struct.ecryptfs_getdents_callback* %10, i32 0, i32 2
  store i32 %32, i32* %33, align 8
  %34 = getelementptr inbounds %struct.ecryptfs_getdents_callback, %struct.ecryptfs_getdents_callback* %10, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = getelementptr inbounds %struct.ecryptfs_getdents_callback, %struct.ecryptfs_getdents_callback* %10, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.file*, %struct.file** %8, align 8
  %37 = load i32, i32* @ecryptfs_filldir, align 4
  %38 = bitcast %struct.ecryptfs_getdents_callback* %10 to i8*
  %39 = call i32 @vfs_readdir(%struct.file* %36, i32 %37, i8* %38)
  store i32 %39, i32* %7, align 4
  %40 = load %struct.file*, %struct.file** %8, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.file*, %struct.file** %4, align 8
  %44 = getelementptr inbounds %struct.file, %struct.file* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %3
  br label %70

48:                                               ; preds = %3
  %49 = getelementptr inbounds %struct.ecryptfs_getdents_callback, %struct.ecryptfs_getdents_callback* %10, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.ecryptfs_getdents_callback, %struct.ecryptfs_getdents_callback* %10, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  br label %70

57:                                               ; preds = %52, %48
  %58 = load i32, i32* %7, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load %struct.inode*, %struct.inode** %9, align 8
  %62 = load %struct.file*, %struct.file** %8, align 8
  %63 = getelementptr inbounds %struct.file, %struct.file* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load %struct.inode*, %struct.inode** %66, align 8
  %68 = call i32 @fsstack_copy_attr_atime(%struct.inode* %61, %struct.inode* %67)
  br label %69

69:                                               ; preds = %60, %57
  br label %70

70:                                               ; preds = %69, %56, %47
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local %struct.file* @ecryptfs_file_to_lower(%struct.file*) #1

declare dso_local i32 @memset(%struct.ecryptfs_getdents_callback*, i32, i32) #1

declare dso_local i32 @vfs_readdir(%struct.file*, i32, i8*) #1

declare dso_local i32 @fsstack_copy_attr_atime(%struct.inode*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
