; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_splice.c_ipipe_prep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_splice.c_ipipe_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i32, i32, i64 }

@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@SPLICE_F_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_inode_info*, i32)* @ipipe_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipipe_prep(%struct.pipe_inode_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pipe_inode_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %8 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %55

12:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %13 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %14 = call i32 @pipe_lock(%struct.pipe_inode_info* %13)
  br label %15

15:                                               ; preds = %48, %12
  %16 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %17 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %51

21:                                               ; preds = %15
  %22 = load i32, i32* @current, align 4
  %23 = call i64 @signal_pending(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @ERESTARTSYS, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %51

28:                                               ; preds = %21
  %29 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %30 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %51

34:                                               ; preds = %28
  %35 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %36 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @SPLICE_F_NONBLOCK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EAGAIN, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %51

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %34
  %49 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %50 = call i32 @pipe_wait(%struct.pipe_inode_info* %49)
  br label %15

51:                                               ; preds = %44, %33, %25, %15
  %52 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %53 = call i32 @pipe_unlock(%struct.pipe_inode_info* %52)
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %11
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @pipe_lock(%struct.pipe_inode_info*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @pipe_wait(%struct.pipe_inode_info*) #1

declare dso_local i32 @pipe_unlock(%struct.pipe_inode_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
