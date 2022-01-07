; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_splice.c_write_pipe_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_splice.c_write_pipe_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i32 }
%struct.pipe_buffer = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*, i8*)*, i8* (%struct.pipe_inode_info*, %struct.pipe_buffer*, i32)* }
%struct.splice_desc = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*, %struct.splice_desc*)* @write_pipe_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_pipe_buf(%struct.pipe_inode_info* %0, %struct.pipe_buffer* %1, %struct.splice_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pipe_inode_info*, align 8
  %6 = alloca %struct.pipe_buffer*, align 8
  %7 = alloca %struct.splice_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %5, align 8
  store %struct.pipe_buffer* %1, %struct.pipe_buffer** %6, align 8
  store %struct.splice_desc* %2, %struct.splice_desc** %7, align 8
  %10 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %11 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)** %13, align 8
  %15 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %16 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %17 = call i32 %14(%struct.pipe_inode_info* %15, %struct.pipe_buffer* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %58

22:                                               ; preds = %3
  %23 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %24 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i8* (%struct.pipe_inode_info*, %struct.pipe_buffer*, i32)*, i8* (%struct.pipe_inode_info*, %struct.pipe_buffer*, i32)** %26, align 8
  %28 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %29 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %30 = call i8* %27(%struct.pipe_inode_info* %28, %struct.pipe_buffer* %29, i32 0)
  store i8* %30, i8** %9, align 8
  %31 = load %struct.splice_desc*, %struct.splice_desc** %7, align 8
  %32 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %37 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr i8, i8* %35, i64 %39
  %41 = load %struct.splice_desc*, %struct.splice_desc** %7, align 8
  %42 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.splice_desc*, %struct.splice_desc** %7, align 8
  %45 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @kernel_write(i32 %34, i8* %40, i32 %43, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %49 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*, i8*)*, i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*, i8*)** %51, align 8
  %53 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %54 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 %52(%struct.pipe_inode_info* %53, %struct.pipe_buffer* %54, i8* %55)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %22, %20
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @kernel_write(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
