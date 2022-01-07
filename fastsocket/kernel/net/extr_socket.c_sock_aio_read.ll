; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/extr_socket.c_sock_aio_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/extr_socket.c_sock_aio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i64, i32 }
%struct.iovec = type { i32 }
%struct.sock_iocb = type { i32 }

@ESPIPE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sock_aio_read(%struct.kiocb* %0, %struct.iovec* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sock_iocb, align 4
  %11 = alloca %struct.sock_iocb*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.iovec* %1, %struct.iovec** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32, i32* @ESPIPE, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %41

17:                                               ; preds = %4
  %18 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %19 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %41

23:                                               ; preds = %17
  %24 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %25 = call %struct.sock_iocb* @alloc_sock_iocb(%struct.kiocb* %24, %struct.sock_iocb* %10)
  store %struct.sock_iocb* %25, %struct.sock_iocb** %11, align 8
  %26 = load %struct.sock_iocb*, %struct.sock_iocb** %11, align 8
  %27 = icmp ne %struct.sock_iocb* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %41

31:                                               ; preds = %23
  %32 = load %struct.sock_iocb*, %struct.sock_iocb** %11, align 8
  %33 = getelementptr inbounds %struct.sock_iocb, %struct.sock_iocb* %32, i32 0, i32 0
  %34 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %35 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %36 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.iovec*, %struct.iovec** %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @do_sock_read(i32* %33, %struct.kiocb* %34, i32 %37, %struct.iovec* %38, i64 %39)
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %31, %28, %22, %14
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local %struct.sock_iocb* @alloc_sock_iocb(%struct.kiocb*, %struct.sock_iocb*) #1

declare dso_local i32 @do_sock_read(i32*, %struct.kiocb*, i32, %struct.iovec*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
