; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_splice.c_pipe_to_sendpage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_splice.c_pipe_to_sendpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i32 }
%struct.pipe_buffer = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* }
%struct.splice_desc = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.file* }
%struct.file = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.file*, i32, i32, i32, i32*, i32)* }

@SPLICE_F_MORE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*, %struct.splice_desc*)* @pipe_to_sendpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_to_sendpage(%struct.pipe_inode_info* %0, %struct.pipe_buffer* %1, %struct.splice_desc* %2) #0 {
  %4 = alloca %struct.pipe_inode_info*, align 8
  %5 = alloca %struct.pipe_buffer*, align 8
  %6 = alloca %struct.splice_desc*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %4, align 8
  store %struct.pipe_buffer* %1, %struct.pipe_buffer** %5, align 8
  store %struct.splice_desc* %2, %struct.splice_desc** %6, align 8
  %11 = load %struct.splice_desc*, %struct.splice_desc** %6, align 8
  %12 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.file*, %struct.file** %13, align 8
  store %struct.file* %14, %struct.file** %7, align 8
  %15 = load %struct.splice_desc*, %struct.splice_desc** %6, align 8
  %16 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.pipe_buffer*, %struct.pipe_buffer** %5, align 8
  %19 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %18, i32 0, i32 2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)** %21, align 8
  %23 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %24 = load %struct.pipe_buffer*, %struct.pipe_buffer** %5, align 8
  %25 = call i32 %22(%struct.pipe_inode_info* %23, %struct.pipe_buffer* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %79, label %28

28:                                               ; preds = %3
  %29 = load %struct.splice_desc*, %struct.splice_desc** %6, align 8
  %30 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SPLICE_F_MORE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %28
  %36 = load %struct.splice_desc*, %struct.splice_desc** %6, align 8
  %37 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.splice_desc*, %struct.splice_desc** %6, align 8
  %40 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br label %43

43:                                               ; preds = %35, %28
  %44 = phi i1 [ true, %28 ], [ %42, %35 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %10, align 4
  %46 = load %struct.file*, %struct.file** %7, align 8
  %47 = getelementptr inbounds %struct.file, %struct.file* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = icmp ne %struct.TYPE_6__* %48, null
  br i1 %49, label %50, label %75

50:                                               ; preds = %43
  %51 = load %struct.file*, %struct.file** %7, align 8
  %52 = getelementptr inbounds %struct.file, %struct.file* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32 (%struct.file*, i32, i32, i32, i32*, i32)*, i32 (%struct.file*, i32, i32, i32, i32*, i32)** %54, align 8
  %56 = icmp ne i32 (%struct.file*, i32, i32, i32, i32*, i32)* %55, null
  br i1 %56, label %57, label %75

57:                                               ; preds = %50
  %58 = load %struct.file*, %struct.file** %7, align 8
  %59 = getelementptr inbounds %struct.file, %struct.file* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32 (%struct.file*, i32, i32, i32, i32*, i32)*, i32 (%struct.file*, i32, i32, i32, i32*, i32)** %61, align 8
  %63 = load %struct.file*, %struct.file** %7, align 8
  %64 = load %struct.pipe_buffer*, %struct.pipe_buffer** %5, align 8
  %65 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.pipe_buffer*, %struct.pipe_buffer** %5, align 8
  %68 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.splice_desc*, %struct.splice_desc** %6, align 8
  %71 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 %62(%struct.file* %63, i32 %66, i32 %69, i32 %72, i32* %8, i32 %73)
  store i32 %74, i32* %9, align 4
  br label %78

75:                                               ; preds = %50, %43
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %75, %57
  br label %79

79:                                               ; preds = %78, %3
  %80 = load i32, i32* %9, align 4
  ret i32 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
