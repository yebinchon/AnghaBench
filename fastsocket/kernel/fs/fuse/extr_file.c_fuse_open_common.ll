; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_open_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_open_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.fuse_conn = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_open_common(%struct.inode* %0, %struct.file* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fuse_conn*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %10)
  store %struct.fuse_conn* %11, %struct.fuse_conn** %8, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = load %struct.file*, %struct.file** %6, align 8
  %14 = call i32 @generic_file_open(%struct.inode* %12, %struct.file* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %4, align 4
  br label %34

19:                                               ; preds = %3
  %20 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = call i32 @get_node_id(%struct.inode* %21)
  %23 = load %struct.file*, %struct.file** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @fuse_do_open(%struct.fuse_conn* %20, i32 %22, %struct.file* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %4, align 4
  br label %34

30:                                               ; preds = %19
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = load %struct.file*, %struct.file** %6, align 8
  %33 = call i32 @fuse_finish_open(%struct.inode* %31, %struct.file* %32)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %30, %28, %17
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i32 @generic_file_open(%struct.inode*, %struct.file*) #1

declare dso_local i32 @fuse_do_open(%struct.fuse_conn*, i32, %struct.file*, i32) #1

declare dso_local i32 @get_node_id(%struct.inode*) #1

declare dso_local i32 @fuse_finish_open(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
