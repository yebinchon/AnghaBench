; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_block_dev.c_blkdev_aio_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_block_dev.c_blkdev_aio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32, %struct.file* }
%struct.file = type { i32 }
%struct.iovec = type { i32 }

@EIOCBQUEUED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @blkdev_aio_write(%struct.kiocb* %0, %struct.iovec* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.kiocb*, align 8
  %6 = alloca %struct.iovec*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %5, align 8
  store %struct.iovec* %1, %struct.iovec** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %13 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %12, i32 0, i32 1
  %14 = load %struct.file*, %struct.file** %13, align 8
  store %struct.file* %14, %struct.file** %9, align 8
  %15 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %16 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %23 = load %struct.iovec*, %struct.iovec** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %26 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %25, i32 0, i32 0
  %27 = call i64 @__generic_file_aio_write(%struct.kiocb* %22, %struct.iovec* %23, i64 %24, i32* %26)
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %4
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @EIOCBQUEUED, align 8
  %33 = sub nsw i64 0, %32
  %34 = icmp eq i64 %31, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %30, %4
  %36 = load %struct.file*, %struct.file** %9, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i64, i64* %10, align 8
  %39 = call i64 @generic_write_sync(%struct.file* %36, i32 %37, i64 %38)
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %11, align 8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load i64, i64* %10, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i64, i64* %11, align 8
  store i64 %46, i64* %10, align 8
  br label %47

47:                                               ; preds = %45, %42, %35
  br label %48

48:                                               ; preds = %47, %30
  %49 = load i64, i64* %10, align 8
  ret i64 %49
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @__generic_file_aio_write(%struct.kiocb*, %struct.iovec*, i64, i32*) #1

declare dso_local i64 @generic_write_sync(%struct.file*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
