; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_state.c_dst_state_socket_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_state.c_dst_state_socket_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { %struct.socket*, %struct.socket*, %struct.dst_network_ctl }
%struct.socket = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.dst_network_ctl = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@DST_DEFAULT_TIMEO = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dst_state_socket_create(%struct.dst_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dst_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.dst_network_ctl*, align 8
  store %struct.dst_state* %0, %struct.dst_state** %3, align 8
  %7 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %8 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %7, i32 0, i32 2
  store %struct.dst_network_ctl* %8, %struct.dst_network_ctl** %6, align 8
  %9 = load %struct.dst_network_ctl*, %struct.dst_network_ctl** %6, align 8
  %10 = getelementptr inbounds %struct.dst_network_ctl, %struct.dst_network_ctl* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.dst_network_ctl*, %struct.dst_network_ctl** %6, align 8
  %14 = getelementptr inbounds %struct.dst_network_ctl, %struct.dst_network_ctl* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.dst_network_ctl*, %struct.dst_network_ctl** %6, align 8
  %17 = getelementptr inbounds %struct.dst_network_ctl, %struct.dst_network_ctl* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @sock_create(i32 %12, i32 %15, i32 %18, %struct.socket** %5)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %45

24:                                               ; preds = %1
  %25 = load i32, i32* @DST_DEFAULT_TIMEO, align 4
  %26 = call i32 @msecs_to_jiffies(i32 %25)
  %27 = load %struct.socket*, %struct.socket** %5, align 8
  %28 = getelementptr inbounds %struct.socket, %struct.socket* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32 %26, i32* %30, align 4
  %31 = load %struct.socket*, %struct.socket** %5, align 8
  %32 = getelementptr inbounds %struct.socket, %struct.socket* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  store i32 %26, i32* %34, align 4
  %35 = load i32, i32* @GFP_NOIO, align 4
  %36 = load %struct.socket*, %struct.socket** %5, align 8
  %37 = getelementptr inbounds %struct.socket, %struct.socket* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 4
  %40 = load %struct.socket*, %struct.socket** %5, align 8
  %41 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %42 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %41, i32 0, i32 0
  store %struct.socket* %40, %struct.socket** %42, align 8
  %43 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %44 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %43, i32 0, i32 1
  store %struct.socket* %40, %struct.socket** %44, align 8
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %24, %22
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @sock_create(i32, i32, i32, %struct.socket**) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
