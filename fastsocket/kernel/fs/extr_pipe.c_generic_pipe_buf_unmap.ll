; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_pipe.c_generic_pipe_buf_unmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_pipe.c_generic_pipe_buf_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i32 }
%struct.pipe_buffer = type { i32, i32 }

@PIPE_BUF_FLAG_ATOMIC = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generic_pipe_buf_unmap(%struct.pipe_inode_info* %0, %struct.pipe_buffer* %1, i8* %2) #0 {
  %4 = alloca %struct.pipe_inode_info*, align 8
  %5 = alloca %struct.pipe_buffer*, align 8
  %6 = alloca i8*, align 8
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %4, align 8
  store %struct.pipe_buffer* %1, %struct.pipe_buffer** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.pipe_buffer*, %struct.pipe_buffer** %5, align 8
  %8 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @PIPE_BUF_FLAG_ATOMIC, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load i32, i32* @PIPE_BUF_FLAG_ATOMIC, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.pipe_buffer*, %struct.pipe_buffer** %5, align 8
  %17 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* @KM_USER0, align 4
  %22 = call i32 @kunmap_atomic(i8* %20, i32 %21)
  br label %28

23:                                               ; preds = %3
  %24 = load %struct.pipe_buffer*, %struct.pipe_buffer** %5, align 8
  %25 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @kunmap(i32 %26)
  br label %28

28:                                               ; preds = %23, %13
  ret void
}

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @kunmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
