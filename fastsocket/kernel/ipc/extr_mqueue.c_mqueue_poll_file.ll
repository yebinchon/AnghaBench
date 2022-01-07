; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_mqueue.c_mqueue_poll_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_mqueue.c_mqueue_poll_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.poll_table_struct = type { i32 }
%struct.mqueue_inode_info = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i64 }

@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.poll_table_struct*)* @mqueue_poll_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mqueue_poll_file(%struct.file* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.poll_table_struct*, align 8
  %5 = alloca %struct.mqueue_inode_info*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %4, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.mqueue_inode_info* @MQUEUE_I(i32 %12)
  store %struct.mqueue_inode_info* %13, %struct.mqueue_inode_info** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.file*, %struct.file** %3, align 8
  %15 = load %struct.mqueue_inode_info*, %struct.mqueue_inode_info** %5, align 8
  %16 = getelementptr inbounds %struct.mqueue_inode_info, %struct.mqueue_inode_info* %15, i32 0, i32 2
  %17 = load %struct.poll_table_struct*, %struct.poll_table_struct** %4, align 8
  %18 = call i32 @poll_wait(%struct.file* %14, i32* %16, %struct.poll_table_struct* %17)
  %19 = load %struct.mqueue_inode_info*, %struct.mqueue_inode_info** %5, align 8
  %20 = getelementptr inbounds %struct.mqueue_inode_info, %struct.mqueue_inode_info* %19, i32 0, i32 0
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.mqueue_inode_info*, %struct.mqueue_inode_info** %5, align 8
  %23 = getelementptr inbounds %struct.mqueue_inode_info, %struct.mqueue_inode_info* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i32, i32* @POLLIN, align 4
  %29 = load i32, i32* @POLLRDNORM, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %27, %2
  %32 = load %struct.mqueue_inode_info*, %struct.mqueue_inode_info** %5, align 8
  %33 = getelementptr inbounds %struct.mqueue_inode_info, %struct.mqueue_inode_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.mqueue_inode_info*, %struct.mqueue_inode_info** %5, align 8
  %37 = getelementptr inbounds %struct.mqueue_inode_info, %struct.mqueue_inode_info* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %35, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %31
  %42 = load i32, i32* @POLLOUT, align 4
  %43 = load i32, i32* @POLLWRNORM, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %41, %31
  %48 = load %struct.mqueue_inode_info*, %struct.mqueue_inode_info** %5, align 8
  %49 = getelementptr inbounds %struct.mqueue_inode_info, %struct.mqueue_inode_info* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock(i32* %49)
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local %struct.mqueue_inode_info* @MQUEUE_I(i32) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, %struct.poll_table_struct*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
