; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_splice.c_opipe_prep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_splice.c_opipe_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i64, i32, i32 }

@PIPE_BUFFERS = common dso_local global i64 0, align 8
@SIGPIPE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@SPLICE_F_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_inode_info*, i32)* @opipe_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opipe_prep(%struct.pipe_inode_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pipe_inode_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %8 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PIPE_BUFFERS, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

13:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %14 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %15 = call i32 @pipe_lock(%struct.pipe_inode_info* %14)
  br label %16

16:                                               ; preds = %48, %13
  %17 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %18 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PIPE_BUFFERS, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %59

22:                                               ; preds = %16
  %23 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %24 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @SIGPIPE, align 4
  %29 = load i32, i32* @current, align 4
  %30 = call i32 @send_sig(i32 %28, i32 %29, i32 0)
  %31 = load i32, i32* @EPIPE, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %59

33:                                               ; preds = %22
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @SPLICE_F_NONBLOCK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @EAGAIN, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %59

41:                                               ; preds = %33
  %42 = load i32, i32* @current, align 4
  %43 = call i64 @signal_pending(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* @ERESTARTSYS, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %59

48:                                               ; preds = %41
  %49 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %50 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %54 = call i32 @pipe_wait(%struct.pipe_inode_info* %53)
  %55 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %56 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %56, align 8
  br label %16

59:                                               ; preds = %45, %38, %27, %16
  %60 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %61 = call i32 @pipe_unlock(%struct.pipe_inode_info* %60)
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %59, %12
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @pipe_lock(%struct.pipe_inode_info*) #1

declare dso_local i32 @send_sig(i32, i32, i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @pipe_wait(%struct.pipe_inode_info*) #1

declare dso_local i32 @pipe_unlock(%struct.pipe_inode_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
