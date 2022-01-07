; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/extr_socket.c_do_sock_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/extr_socket.c_do_sock_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i64, i32, %struct.iovec*, i64, i32*, i64, i32* }
%struct.kiocb = type { i32 }
%struct.file = type { i32, %struct.socket* }
%struct.socket = type { i32 }
%struct.iovec = type { i64 }

@O_NONBLOCK = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msghdr*, %struct.kiocb*, %struct.file*, %struct.iovec*, i64)* @do_sock_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_sock_read(%struct.msghdr* %0, %struct.kiocb* %1, %struct.file* %2, %struct.iovec* %3, i64 %4) #0 {
  %6 = alloca %struct.msghdr*, align 8
  %7 = alloca %struct.kiocb*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.iovec*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.socket*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.msghdr* %0, %struct.msghdr** %6, align 8
  store %struct.kiocb* %1, %struct.kiocb** %7, align 8
  store %struct.file* %2, %struct.file** %8, align 8
  store %struct.iovec* %3, %struct.iovec** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load %struct.file*, %struct.file** %8, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 1
  %16 = load %struct.socket*, %struct.socket** %15, align 8
  store %struct.socket* %16, %struct.socket** %11, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  br label %17

17:                                               ; preds = %31, %5
  %18 = load i32, i32* %13, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %10, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = load %struct.iovec*, %struct.iovec** %9, align 8
  %24 = load i32, i32* %13, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.iovec, %struct.iovec* %23, i64 %25
  %27 = getelementptr inbounds %struct.iovec, %struct.iovec* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %12, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %12, align 8
  br label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %13, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %13, align 4
  br label %17

34:                                               ; preds = %17
  %35 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %36 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %35, i32 0, i32 6
  store i32* null, i32** %36, align 8
  %37 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %38 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %37, i32 0, i32 5
  store i64 0, i64* %38, align 8
  %39 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %40 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %39, i32 0, i32 4
  store i32* null, i32** %40, align 8
  %41 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %42 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = load %struct.iovec*, %struct.iovec** %9, align 8
  %44 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %45 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %44, i32 0, i32 2
  store %struct.iovec* %43, %struct.iovec** %45, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %48 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.file*, %struct.file** %8, align 8
  %50 = getelementptr inbounds %struct.file, %struct.file* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @O_NONBLOCK, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %34
  %56 = load i32, i32* @MSG_DONTWAIT, align 4
  br label %58

57:                                               ; preds = %34
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ 0, %57 ]
  %60 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %61 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.kiocb*, %struct.kiocb** %7, align 8
  %63 = load %struct.socket*, %struct.socket** %11, align 8
  %64 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %67 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @__sock_recvmsg(%struct.kiocb* %62, %struct.socket* %63, %struct.msghdr* %64, i64 %65, i32 %68)
  ret i32 %69
}

declare dso_local i32 @__sock_recvmsg(%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
