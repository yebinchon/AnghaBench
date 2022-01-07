; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_state.c_dst_state_init_connected.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_state.c_dst_state_init_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32, %struct.dst_network_ctl }
%struct.dst_network_ctl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Connected to peer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*)* @dst_state_init_connected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_state_init_connected(%struct.dst_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dst_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dst_network_ctl*, align 8
  store %struct.dst_state* %0, %struct.dst_state** %3, align 8
  %6 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %7 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %6, i32 0, i32 1
  store %struct.dst_network_ctl* %7, %struct.dst_network_ctl** %5, align 8
  %8 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %9 = call i32 @dst_state_socket_create(%struct.dst_state* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %47

13:                                               ; preds = %1
  %14 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %15 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %18 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.dst_network_ctl, %struct.dst_network_ctl* %18, i32 0, i32 0
  %20 = bitcast %struct.TYPE_2__* %19 to %struct.sockaddr*
  %21 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %22 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.dst_network_ctl, %struct.dst_network_ctl* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @kernel_connect(i32 %16, %struct.sockaddr* %20, i32 %25, i32 0)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %13
  br label %44

30:                                               ; preds = %13
  %31 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %32 = call i32 @dst_poll_init(%struct.dst_state* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %44

36:                                               ; preds = %30
  %37 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %38 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.dst_network_ctl*, %struct.dst_network_ctl** %5, align 8
  %41 = getelementptr inbounds %struct.dst_network_ctl, %struct.dst_network_ctl* %40, i32 0, i32 0
  %42 = bitcast %struct.TYPE_2__* %41 to %struct.sockaddr*
  %43 = call i32 @dst_dump_addr(i32 %39, %struct.sockaddr* %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %49

44:                                               ; preds = %35, %29
  %45 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %46 = call i32 @dst_state_socket_release(%struct.dst_state* %45)
  br label %47

47:                                               ; preds = %44, %12
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %36
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @dst_state_socket_create(%struct.dst_state*) #1

declare dso_local i32 @kernel_connect(i32, %struct.sockaddr*, i32, i32) #1

declare dso_local i32 @dst_poll_init(%struct.dst_state*) #1

declare dso_local i32 @dst_dump_addr(i32, %struct.sockaddr*, i8*) #1

declare dso_local i32 @dst_state_socket_release(%struct.dst_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
