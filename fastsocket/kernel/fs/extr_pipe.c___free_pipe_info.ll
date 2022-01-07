; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_pipe.c___free_pipe_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_pipe.c___free_pipe_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i64, %struct.pipe_buffer* }
%struct.pipe_buffer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* }

@PIPE_BUFFERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__free_pipe_info(%struct.pipe_inode_info* %0) #0 {
  %2 = alloca %struct.pipe_inode_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pipe_buffer*, align 8
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %30, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @PIPE_BUFFERS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %33

9:                                                ; preds = %5
  %10 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %2, align 8
  %11 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %10, i32 0, i32 1
  %12 = load %struct.pipe_buffer*, %struct.pipe_buffer** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %12, i64 %14
  store %struct.pipe_buffer* %15, %struct.pipe_buffer** %4, align 8
  %16 = load %struct.pipe_buffer*, %struct.pipe_buffer** %4, align 8
  %17 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %9
  %21 = load %struct.pipe_buffer*, %struct.pipe_buffer** %4, align 8
  %22 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)** %24, align 8
  %26 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %2, align 8
  %27 = load %struct.pipe_buffer*, %struct.pipe_buffer** %4, align 8
  %28 = call i32 %25(%struct.pipe_inode_info* %26, %struct.pipe_buffer* %27)
  br label %29

29:                                               ; preds = %20, %9
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %5

33:                                               ; preds = %5
  %34 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %2, align 8
  %35 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %2, align 8
  %40 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @__free_page(i64 %41)
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %2, align 8
  %45 = call i32 @kfree(%struct.pipe_inode_info* %44)
  ret void
}

declare dso_local i32 @__free_page(i64) #1

declare dso_local i32 @kfree(%struct.pipe_inode_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
