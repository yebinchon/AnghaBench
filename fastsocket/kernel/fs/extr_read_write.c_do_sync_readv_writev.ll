; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_read_write.c_do_sync_readv_writev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_read_write.c_do_sync_readv_writev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.iovec = type { i32 }
%struct.kiocb = type { i64, i64, i32 }

@EIOCBRETRY = common dso_local global i32 0, align 4
@EIOCBQUEUED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_sync_readv_writev(%struct.file* %0, %struct.iovec* %1, i64 %2, i64 %3, i32* %4, i32 (%struct.kiocb*, %struct.iovec*, i64, i32)* %5) #0 {
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.iovec*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32 (%struct.kiocb*, %struct.iovec*, i64, i32)*, align 8
  %13 = alloca %struct.kiocb, align 8
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store %struct.iovec* %1, %struct.iovec** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 (%struct.kiocb*, %struct.iovec*, i64, i32)* %5, i32 (%struct.kiocb*, %struct.iovec*, i64, i32)** %12, align 8
  %15 = load %struct.file*, %struct.file** %7, align 8
  %16 = call i32 @init_sync_kiocb(%struct.kiocb* %13, %struct.file* %15)
  %17 = load i32*, i32** %11, align 8
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %13, i32 0, i32 2
  store i32 %18, i32* %19, align 8
  %20 = load i64, i64* %10, align 8
  %21 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %13, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  %22 = load i64, i64* %10, align 8
  %23 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %13, i32 0, i32 1
  store i64 %22, i64* %23, align 8
  br label %24

24:                                               ; preds = %36, %6
  %25 = load i32 (%struct.kiocb*, %struct.iovec*, i64, i32)*, i32 (%struct.kiocb*, %struct.iovec*, i64, i32)** %12, align 8
  %26 = load %struct.iovec*, %struct.iovec** %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %13, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 %25(%struct.kiocb* %13, %struct.iovec* %26, i64 %27, i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* @EIOCBRETRY, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp ne i32 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %38

36:                                               ; preds = %24
  %37 = call i32 @wait_on_retry_sync_kiocb(%struct.kiocb* %13)
  br label %24

38:                                               ; preds = %35
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* @EIOCBQUEUED, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 @wait_on_sync_kiocb(%struct.kiocb* %13)
  store i32 %44, i32* %14, align 4
  br label %45

45:                                               ; preds = %43, %38
  %46 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %13, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %11, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %14, align 4
  ret i32 %49
}

declare dso_local i32 @init_sync_kiocb(%struct.kiocb*, %struct.file*) #1

declare dso_local i32 @wait_on_retry_sync_kiocb(%struct.kiocb*) #1

declare dso_local i32 @wait_on_sync_kiocb(%struct.kiocb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
