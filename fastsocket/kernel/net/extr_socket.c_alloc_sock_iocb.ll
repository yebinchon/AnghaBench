; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/extr_socket.c_alloc_sock_iocb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/extr_socket.c_alloc_sock_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.sock_iocb*, i32 }
%struct.sock_iocb = type { %struct.kiocb* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@sock_aio_dtor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock_iocb* (%struct.kiocb*, %struct.sock_iocb*)* @alloc_sock_iocb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock_iocb* @alloc_sock_iocb(%struct.kiocb* %0, %struct.sock_iocb* %1) #0 {
  %3 = alloca %struct.sock_iocb*, align 8
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.sock_iocb*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.sock_iocb* %1, %struct.sock_iocb** %5, align 8
  %6 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %7 = call i32 @is_sync_kiocb(%struct.kiocb* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.sock_iocb* @kmalloc(i32 8, i32 %10)
  store %struct.sock_iocb* %11, %struct.sock_iocb** %5, align 8
  %12 = load %struct.sock_iocb*, %struct.sock_iocb** %5, align 8
  %13 = icmp ne %struct.sock_iocb* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  store %struct.sock_iocb* null, %struct.sock_iocb** %3, align 8
  br label %27

15:                                               ; preds = %9
  %16 = load i32, i32* @sock_aio_dtor, align 4
  %17 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %18 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  br label %19

19:                                               ; preds = %15, %2
  %20 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %21 = load %struct.sock_iocb*, %struct.sock_iocb** %5, align 8
  %22 = getelementptr inbounds %struct.sock_iocb, %struct.sock_iocb* %21, i32 0, i32 0
  store %struct.kiocb* %20, %struct.kiocb** %22, align 8
  %23 = load %struct.sock_iocb*, %struct.sock_iocb** %5, align 8
  %24 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %25 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %24, i32 0, i32 0
  store %struct.sock_iocb* %23, %struct.sock_iocb** %25, align 8
  %26 = load %struct.sock_iocb*, %struct.sock_iocb** %5, align 8
  store %struct.sock_iocb* %26, %struct.sock_iocb** %3, align 8
  br label %27

27:                                               ; preds = %19, %14
  %28 = load %struct.sock_iocb*, %struct.sock_iocb** %3, align 8
  ret %struct.sock_iocb* %28
}

declare dso_local i32 @is_sync_kiocb(%struct.kiocb*) #1

declare dso_local %struct.sock_iocb* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
