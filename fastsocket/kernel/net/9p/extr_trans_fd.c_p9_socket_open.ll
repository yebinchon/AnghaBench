; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_fd.c_p9_socket_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_fd.c_p9_socket_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { i64 }
%struct.socket = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.p9_trans_fd = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"p9_socket_open: failed to map fd\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"p9_socket_open: failed to open fd\0A\00", align 1
@O_NONBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p9_client*, %struct.socket*)* @p9_socket_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p9_socket_open(%struct.p9_client* %0, %struct.socket* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.p9_client*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.p9_client* %0, %struct.p9_client** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  %8 = load i32, i32* @GFP_NOIO, align 4
  %9 = load %struct.socket*, %struct.socket** %5, align 8
  %10 = getelementptr inbounds %struct.socket, %struct.socket* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 %8, i32* %12, align 4
  %13 = load %struct.socket*, %struct.socket** %5, align 8
  %14 = call i32 @sock_map_fd(%struct.socket* %13, i32 0)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @KERN_ERR, align 4
  %19 = call i32 @P9_EPRINTK(i32 %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %45

21:                                               ; preds = %2
  %22 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @p9_fd_open(%struct.p9_client* %22, i32 %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load i32, i32* @KERN_ERR, align 4
  %30 = call i32 @P9_EPRINTK(i32 %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.socket*, %struct.socket** %5, align 8
  %32 = call i32 @sockfd_put(%struct.socket* %31)
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %45

34:                                               ; preds = %21
  %35 = load i32, i32* @O_NONBLOCK, align 4
  %36 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %37 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.p9_trans_fd*
  %40 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %35
  store i32 %44, i32* %42, align 4
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %34, %28, %17
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @sock_map_fd(%struct.socket*, i32) #1

declare dso_local i32 @P9_EPRINTK(i32, i8*) #1

declare dso_local i32 @p9_fd_open(%struct.p9_client*, i32, i32) #1

declare dso_local i32 @sockfd_put(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
