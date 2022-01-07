; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_finish_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_finish_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.file = type { i32, i32*, %struct.fuse_file* }
%struct.fuse_file = type { i32, i32 }
%struct.fuse_conn = type { i32 }
%struct.fuse_inode = type { i32 }

@FOPEN_DIRECT_IO = common dso_local global i32 0, align 4
@fuse_direct_io_file_operations = common dso_local global i32 0, align 4
@FOPEN_KEEP_CACHE = common dso_local global i32 0, align 4
@FOPEN_NONSEEKABLE = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fuse_finish_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.fuse_file*, align 8
  %6 = alloca %struct.fuse_conn*, align 8
  %7 = alloca %struct.fuse_inode*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 2
  %10 = load %struct.fuse_file*, %struct.fuse_file** %9, align 8
  store %struct.fuse_file* %10, %struct.fuse_file** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %11)
  store %struct.fuse_conn* %12, %struct.fuse_conn** %6, align 8
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = call %struct.fuse_inode* @get_fuse_inode(%struct.inode* %13)
  store %struct.fuse_inode* %14, %struct.fuse_inode** %7, align 8
  %15 = load %struct.fuse_file*, %struct.fuse_file** %5, align 8
  %16 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @FOPEN_DIRECT_IO, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.file*, %struct.file** %4, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 1
  store i32* @fuse_direct_io_file_operations, i32** %23, align 8
  br label %24

24:                                               ; preds = %21, %2
  %25 = load %struct.fuse_file*, %struct.fuse_file** %5, align 8
  %26 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @FOPEN_KEEP_CACHE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %24
  %32 = load %struct.inode*, %struct.inode** %3, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @invalidate_inode_pages2(i32 %34)
  br label %36

36:                                               ; preds = %31, %24
  %37 = load %struct.fuse_file*, %struct.fuse_file** %5, align 8
  %38 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @FOPEN_NONSEEKABLE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load %struct.inode*, %struct.inode** %3, align 8
  %45 = load %struct.file*, %struct.file** %4, align 8
  %46 = call i32 @nonseekable_open(%struct.inode* %44, %struct.file* %45)
  br label %47

47:                                               ; preds = %43, %36
  %48 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %49 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %48, i32 0, i32 0
  %50 = call i32 @spin_lock(i32* %49)
  %51 = load %struct.inode*, %struct.inode** %3, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @S_ISREG(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %47
  %57 = load %struct.file*, %struct.file** %4, align 8
  %58 = getelementptr inbounds %struct.file, %struct.file* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @FMODE_WRITE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load %struct.fuse_file*, %struct.fuse_file** %5, align 8
  %65 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %64, i32 0, i32 1
  %66 = load %struct.fuse_inode*, %struct.fuse_inode** %7, align 8
  %67 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %66, i32 0, i32 0
  %68 = call i32 @list_add(i32* %65, i32* %67)
  br label %69

69:                                               ; preds = %63, %56, %47
  %70 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %71 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %70, i32 0, i32 0
  %72 = call i32 @spin_unlock(i32* %71)
  ret void
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local %struct.fuse_inode* @get_fuse_inode(%struct.inode*) #1

declare dso_local i32 @invalidate_inode_pages2(i32) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
