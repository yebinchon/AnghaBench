; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_splice.c_splice_from_pipe_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_splice.c_splice_from_pipe_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i32, i32, i32 }
%struct.splice_desc = type { i32, i32, i64 }

@SPLICE_F_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @splice_from_pipe_next(%struct.pipe_inode_info* %0, %struct.splice_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pipe_inode_info*, align 8
  %5 = alloca %struct.splice_desc*, align 8
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %4, align 8
  store %struct.splice_desc* %1, %struct.splice_desc** %5, align 8
  br label %6

6:                                                ; preds = %56, %2
  %7 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %8 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %59

12:                                               ; preds = %6
  %13 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %14 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %60

18:                                               ; preds = %12
  %19 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %20 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load %struct.splice_desc*, %struct.splice_desc** %5, align 8
  %25 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %60

29:                                               ; preds = %23, %18
  %30 = load %struct.splice_desc*, %struct.splice_desc** %5, align 8
  %31 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SPLICE_F_NONBLOCK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @EAGAIN, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %60

39:                                               ; preds = %29
  %40 = load i32, i32* @current, align 4
  %41 = call i64 @signal_pending(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @ERESTARTSYS, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %60

46:                                               ; preds = %39
  %47 = load %struct.splice_desc*, %struct.splice_desc** %5, align 8
  %48 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %53 = call i32 @wakeup_pipe_writers(%struct.pipe_inode_info* %52)
  %54 = load %struct.splice_desc*, %struct.splice_desc** %5, align 8
  %55 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %54, i32 0, i32 1
  store i32 0, i32* %55, align 4
  br label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %58 = call i32 @pipe_wait(%struct.pipe_inode_info* %57)
  br label %6

59:                                               ; preds = %6
  store i32 1, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %43, %36, %28, %17
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @wakeup_pipe_writers(%struct.pipe_inode_info*) #1

declare dso_local i32 @pipe_wait(%struct.pipe_inode_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
