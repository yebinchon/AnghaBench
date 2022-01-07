; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_link_schedule_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_link_schedule_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.port = type { i32, i32, %struct.TYPE_3__, %struct.link*, i32 }
%struct.TYPE_3__ = type { i32 }

@tipc_port_list_lock = common dso_local global i32 0, align 4
@ELINKCONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.link*, i32, i32)* @link_schedule_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_schedule_port(%struct.link* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.link*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.port*, align 8
  store %struct.link* %0, %struct.link** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = call i32 @spin_lock_bh(i32* @tipc_port_list_lock)
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.port* @tipc_port_lock(i32 %9)
  store %struct.port* %10, %struct.port** %7, align 8
  %11 = load %struct.port*, %struct.port** %7, align 8
  %12 = icmp ne %struct.port* %11, null
  br i1 %12, label %13, label %53

13:                                               ; preds = %3
  %14 = load %struct.port*, %struct.port** %7, align 8
  %15 = getelementptr inbounds %struct.port, %struct.port* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %50

19:                                               ; preds = %13
  %20 = load %struct.port*, %struct.port** %7, align 8
  %21 = getelementptr inbounds %struct.port, %struct.port* %20, i32 0, i32 1
  %22 = call i32 @list_empty(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %50

25:                                               ; preds = %19
  %26 = load %struct.link*, %struct.link** %4, align 8
  %27 = load %struct.port*, %struct.port** %7, align 8
  %28 = getelementptr inbounds %struct.port, %struct.port* %27, i32 0, i32 3
  store %struct.link* %26, %struct.link** %28, align 8
  %29 = load %struct.port*, %struct.port** %7, align 8
  %30 = getelementptr inbounds %struct.port, %struct.port* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %32, 1
  %34 = load %struct.link*, %struct.link** %4, align 8
  %35 = call i32 @link_max_pkt(%struct.link* %34)
  %36 = sdiv i32 %33, %35
  %37 = add nsw i32 1, %36
  %38 = load %struct.port*, %struct.port** %7, align 8
  %39 = getelementptr inbounds %struct.port, %struct.port* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.port*, %struct.port** %7, align 8
  %41 = getelementptr inbounds %struct.port, %struct.port* %40, i32 0, i32 1
  %42 = load %struct.link*, %struct.link** %4, align 8
  %43 = getelementptr inbounds %struct.link, %struct.link* %42, i32 0, i32 1
  %44 = call i32 @list_add_tail(i32* %41, i32* %43)
  %45 = load %struct.link*, %struct.link** %4, align 8
  %46 = getelementptr inbounds %struct.link, %struct.link* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %25, %24, %18
  %51 = load %struct.port*, %struct.port** %7, align 8
  %52 = call i32 @tipc_port_unlock(%struct.port* %51)
  br label %53

53:                                               ; preds = %50, %3
  %54 = call i32 @spin_unlock_bh(i32* @tipc_port_list_lock)
  %55 = load i32, i32* @ELINKCONG, align 4
  %56 = sub nsw i32 0, %55
  ret i32 %56
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.port* @tipc_port_lock(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @link_max_pkt(%struct.link*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @tipc_port_unlock(%struct.port*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
