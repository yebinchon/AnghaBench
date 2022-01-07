; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_core.c_fsocket_init_socket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_core.c_fsocket_init_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@enable_direct_tcp = common dso_local global i64 0, align 8
@SOCK_DIRECT_TCP = common dso_local global i32 0, align 4
@DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Socket 0x%p is set with DIRECT_TCP\0A\00", align 1
@enable_receive_cpu_selection = common dso_local global i64 0, align 8
@SOCK_AFFINITY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Socket 0x%p is set with RCS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket*)* @fsocket_init_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsocket_init_socket(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %3 = load i64, i64* @enable_direct_tcp, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = load %struct.socket*, %struct.socket** %2, align 8
  %7 = getelementptr inbounds %struct.socket, %struct.socket* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = load i32, i32* @SOCK_DIRECT_TCP, align 4
  %10 = call i32 @sock_set_flag(%struct.TYPE_3__* %8, i32 %9)
  %11 = load i32, i32* @DEBUG, align 4
  %12 = load %struct.socket*, %struct.socket** %2, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = call i32 @DPRINTK(i32 %11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__* %14)
  br label %16

16:                                               ; preds = %5, %1
  %17 = load i64, i64* @enable_receive_cpu_selection, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = load %struct.socket*, %struct.socket** %2, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i32, i32* @SOCK_AFFINITY, align 4
  %24 = call i32 @sock_set_flag(%struct.TYPE_3__* %22, i32 %23)
  %25 = call i32 (...) @smp_processor_id()
  %26 = load %struct.socket*, %struct.socket** %2, align 8
  %27 = getelementptr inbounds %struct.socket, %struct.socket* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 4
  %30 = load i32, i32* @DEBUG, align 4
  %31 = load %struct.socket*, %struct.socket** %2, align 8
  %32 = getelementptr inbounds %struct.socket, %struct.socket* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = call i32 @DPRINTK(i32 %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_3__* %33)
  br label %35

35:                                               ; preds = %19, %16
  ret void
}

declare dso_local i32 @sock_set_flag(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @DPRINTK(i32, i8*, %struct.TYPE_3__*) #1

declare dso_local i32 @smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
