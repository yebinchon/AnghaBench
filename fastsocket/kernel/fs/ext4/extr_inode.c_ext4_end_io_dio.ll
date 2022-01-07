; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_end_io_dio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_end_io_dio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32, i32, %struct.TYPE_8__*, i32, %struct.kiocb*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.ext4_inode_info = type { i32, i32 }
%struct.workqueue_struct = type { i32 }
%struct.TYPE_7__ = type { %struct.workqueue_struct* }

@.str = private unnamed_addr constant [80 x i8] c"ext4_end_io_dio(): io_end 0x%pfor inode %lu, iocb 0x%p, offset %llu, size %llu\0A\00", align 1
@DIO_AIO_UNWRITTEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kiocb*, i32, i32, i8*, i32, i32)* @ext4_end_io_dio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_end_io_dio(%struct.kiocb* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.kiocb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca %struct.ext4_inode_info*, align 8
  %15 = alloca %struct.workqueue_struct*, align 8
  %16 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load %struct.kiocb*, %struct.kiocb** %7, align 8
  %18 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %13, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %6
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22, %6
  br label %53

26:                                               ; preds = %22
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = call %struct.ext4_inode_info* @EXT4_I(%struct.TYPE_8__* %29)
  store %struct.ext4_inode_info* %30, %struct.ext4_inode_info** %14, align 8
  %31 = load %struct.kiocb*, %struct.kiocb** %7, align 8
  %32 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.kiocb*, %struct.kiocb** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @ext_debug(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %33, i32 %38, %struct.kiocb* %39, i32 %40, i32 %41)
  %43 = load %struct.kiocb*, %struct.kiocb** %7, align 8
  %44 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %43, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %44, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @DIO_AIO_UNWRITTEN, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %26
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %52 = call i32 @ext4_free_io_end(%struct.TYPE_6__* %51)
  br label %53

53:                                               ; preds = %50, %25
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.kiocb*, %struct.kiocb** %7, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @aio_complete(%struct.kiocb* %57, i32 %58, i32 0)
  br label %60

60:                                               ; preds = %56, %53
  br label %106

61:                                               ; preds = %26
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 7
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 6
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %61
  %71 = load %struct.kiocb*, %struct.kiocb** %7, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 5
  store %struct.kiocb* %71, %struct.kiocb** %73, align 8
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %70, %61
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call %struct.TYPE_7__* @EXT4_SB(i32 %82)
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load %struct.workqueue_struct*, %struct.workqueue_struct** %84, align 8
  store %struct.workqueue_struct* %85, %struct.workqueue_struct** %15, align 8
  %86 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %14, align 8
  %87 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %86, i32 0, i32 0
  %88 = load i64, i64* %16, align 8
  %89 = call i32 @spin_lock_irqsave(i32* %87, i64 %88)
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = call %struct.ext4_inode_info* @EXT4_I(%struct.TYPE_8__* %94)
  %96 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %95, i32 0, i32 1
  %97 = call i32 @list_add_tail(i32* %91, i32* %96)
  %98 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %14, align 8
  %99 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %98, i32 0, i32 0
  %100 = load i64, i64* %16, align 8
  %101 = call i32 @spin_unlock_irqrestore(i32* %99, i64 %100)
  %102 = load %struct.workqueue_struct*, %struct.workqueue_struct** %15, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  %105 = call i32 @queue_work(%struct.workqueue_struct* %102, i32* %104)
  br label %106

106:                                              ; preds = %77, %60
  ret void
}

declare dso_local %struct.ext4_inode_info* @EXT4_I(%struct.TYPE_8__*) #1

declare dso_local i32 @ext_debug(i8*, %struct.TYPE_6__*, i32, %struct.kiocb*, i32, i32) #1

declare dso_local i32 @ext4_free_io_end(%struct.TYPE_6__*) #1

declare dso_local i32 @aio_complete(%struct.kiocb*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @EXT4_SB(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @queue_work(%struct.workqueue_struct*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
