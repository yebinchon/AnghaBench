; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i32 }
%struct.port = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@tipc_own_addr = common dso_local global i64 0, align 8
@ELINKCONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_send(i64 %0, i32 %1, %struct.iovec* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca %struct.port*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.iovec* %2, %struct.iovec** %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call %struct.port* @tipc_port_deref(i64 %11)
  store %struct.port* %12, %struct.port** %8, align 8
  %13 = load %struct.port*, %struct.port** %8, align 8
  %14 = icmp ne %struct.port* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.port*, %struct.port** %8, align 8
  %17 = getelementptr inbounds %struct.port, %struct.port* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15, %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %85

24:                                               ; preds = %15
  %25 = load %struct.port*, %struct.port** %8, align 8
  %26 = getelementptr inbounds %struct.port, %struct.port* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = load %struct.port*, %struct.port** %8, align 8
  %29 = call i32 @tipc_port_congested(%struct.port* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %71, label %31

31:                                               ; preds = %24
  %32 = load %struct.port*, %struct.port** %8, align 8
  %33 = call i64 @port_peernode(%struct.port* %32)
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @tipc_own_addr, align 8
  %36 = icmp ne i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @likely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = load %struct.port*, %struct.port** %8, align 8
  %42 = load %struct.iovec*, %struct.iovec** %7, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @tipc_link_send_sections_fast(%struct.port* %41, %struct.iovec* %42, i32 %43, i64 %44)
  store i32 %45, i32* %10, align 4
  br label %51

46:                                               ; preds = %31
  %47 = load %struct.port*, %struct.port** %8, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.iovec*, %struct.iovec** %7, align 8
  %50 = call i32 @tipc_port_recv_sections(%struct.port* %47, i32 %48, %struct.iovec* %49)
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %46, %40
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @ELINKCONG, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp ne i32 %52, %54
  %56 = zext i1 %55 to i32
  %57 = call i64 @likely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %51
  %60 = load %struct.port*, %struct.port** %8, align 8
  %61 = call i32 @port_incr_out_seqno(%struct.port* %60)
  %62 = load %struct.port*, %struct.port** %8, align 8
  %63 = getelementptr inbounds %struct.port, %struct.port* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32 0, i32* %64, align 4
  %65 = load %struct.port*, %struct.port** %8, align 8
  %66 = getelementptr inbounds %struct.port, %struct.port* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %4, align 4
  br label %85

70:                                               ; preds = %51
  br label %71

71:                                               ; preds = %70, %24
  %72 = load %struct.port*, %struct.port** %8, align 8
  %73 = call i64 @port_unreliable(%struct.port* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load %struct.port*, %struct.port** %8, align 8
  %77 = getelementptr inbounds %struct.port, %struct.port* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i32 0, i32* %78, align 4
  %79 = load %struct.iovec*, %struct.iovec** %7, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @msg_calc_data_size(%struct.iovec* %79, i32 %80)
  store i32 %81, i32* %4, align 4
  br label %85

82:                                               ; preds = %71
  %83 = load i32, i32* @ELINKCONG, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %82, %75, %59, %21
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.port* @tipc_port_deref(i64) #1

declare dso_local i32 @tipc_port_congested(%struct.port*) #1

declare dso_local i64 @port_peernode(%struct.port*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @tipc_link_send_sections_fast(%struct.port*, %struct.iovec*, i32, i64) #1

declare dso_local i32 @tipc_port_recv_sections(%struct.port*, i32, %struct.iovec*) #1

declare dso_local i32 @port_incr_out_seqno(%struct.port*) #1

declare dso_local i64 @port_unreliable(%struct.port*) #1

declare dso_local i32 @msg_calc_data_size(%struct.iovec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
