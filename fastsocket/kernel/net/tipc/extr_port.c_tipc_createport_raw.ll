; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_createport_raw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_createport_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_port = type { %struct.tipc_msg, i64, i32, i8*, i32 }
%struct.tipc_msg = type { i32 }
%struct.sk_buff = type opaque
%struct.port = type { i32, i32, void (%struct.tipc_port*)*, %struct.tipc_port, i32, i32, i32, i32*, i64 (%struct.tipc_port*, %struct.sk_buff.0*)*, i32*, %struct.TYPE_2__, i32 }
%struct.sk_buff.0 = type opaque
%struct.TYPE_2__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Port creation failed, no memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Port creation failed, reference table exhausted\0A\00", align 1
@MAX_PKT_DEFAULT = common dso_local global i32 0, align 4
@TIPC_NAMED_MSG = common dso_local global i32 0, align 4
@LONG_H_SIZE = common dso_local global i32 0, align 4
@port_timeout = common dso_local global i64 0, align 8
@tipc_port_list_lock = common dso_local global i32 0, align 4
@ports = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tipc_port* @tipc_createport_raw(i8* %0, i64 (%struct.tipc_port*, %struct.sk_buff*)* %1, void (%struct.tipc_port*)* %2, i64 %3) #0 {
  %5 = alloca %struct.tipc_port*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64 (%struct.tipc_port*, %struct.sk_buff*)*, align 8
  %8 = alloca void (%struct.tipc_port*)*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.port*, align 8
  %11 = alloca %struct.tipc_msg*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 (%struct.tipc_port*, %struct.sk_buff*)* %1, i64 (%struct.tipc_port*, %struct.sk_buff*)** %7, align 8
  store void (%struct.tipc_port*)* %2, void (%struct.tipc_port*)** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call %struct.port* @kzalloc(i32 104, i32 %13)
  store %struct.port* %14, %struct.port** %10, align 8
  %15 = load %struct.port*, %struct.port** %10, align 8
  %16 = icmp ne %struct.port* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = call i32 @warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store %struct.tipc_port* null, %struct.tipc_port** %5, align 8
  br label %96

19:                                               ; preds = %4
  %20 = load %struct.port*, %struct.port** %10, align 8
  %21 = load %struct.port*, %struct.port** %10, align 8
  %22 = getelementptr inbounds %struct.port, %struct.port* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.tipc_port, %struct.tipc_port* %22, i32 0, i32 4
  %24 = call i64 @tipc_ref_acquire(%struct.port* %20, i32* %23)
  store i64 %24, i64* %12, align 8
  %25 = load i64, i64* %12, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %19
  %28 = call i32 @warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.port*, %struct.port** %10, align 8
  %30 = call i32 @kfree(%struct.port* %29)
  store %struct.tipc_port* null, %struct.tipc_port** %5, align 8
  br label %96

31:                                               ; preds = %19
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.port*, %struct.port** %10, align 8
  %34 = getelementptr inbounds %struct.port, %struct.port* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.tipc_port, %struct.tipc_port* %34, i32 0, i32 3
  store i8* %32, i8** %35, align 8
  %36 = load i32, i32* @MAX_PKT_DEFAULT, align 4
  %37 = load %struct.port*, %struct.port** %10, align 8
  %38 = getelementptr inbounds %struct.port, %struct.port* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.tipc_port, %struct.tipc_port* %38, i32 0, i32 2
  store i32 %36, i32* %39, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load %struct.port*, %struct.port** %10, align 8
  %42 = getelementptr inbounds %struct.port, %struct.port* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.tipc_port, %struct.tipc_port* %42, i32 0, i32 1
  store i64 %40, i64* %43, align 8
  %44 = load %struct.port*, %struct.port** %10, align 8
  %45 = getelementptr inbounds %struct.port, %struct.port* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.tipc_port, %struct.tipc_port* %45, i32 0, i32 0
  store %struct.tipc_msg* %46, %struct.tipc_msg** %11, align 8
  %47 = load %struct.tipc_msg*, %struct.tipc_msg** %11, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i32, i32* @TIPC_NAMED_MSG, align 4
  %50 = load i32, i32* @LONG_H_SIZE, align 4
  %51 = call i32 @msg_init(%struct.tipc_msg* %47, i64 %48, i32 %49, i32 %50, i32 0)
  %52 = load %struct.tipc_msg*, %struct.tipc_msg** %11, align 8
  %53 = load i64, i64* %12, align 8
  %54 = call i32 @msg_set_origport(%struct.tipc_msg* %52, i64 %53)
  %55 = load %struct.port*, %struct.port** %10, align 8
  %56 = getelementptr inbounds %struct.port, %struct.port* %55, i32 0, i32 0
  store i32 41, i32* %56, align 8
  %57 = load %struct.port*, %struct.port** %10, align 8
  %58 = getelementptr inbounds %struct.port, %struct.port* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  %59 = load %struct.port*, %struct.port** %10, align 8
  %60 = getelementptr inbounds %struct.port, %struct.port* %59, i32 0, i32 11
  %61 = call i32 @INIT_LIST_HEAD(i32* %60)
  %62 = load %struct.port*, %struct.port** %10, align 8
  %63 = getelementptr inbounds %struct.port, %struct.port* %62, i32 0, i32 10
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call i32 @INIT_LIST_HEAD(i32* %64)
  %66 = load %struct.port*, %struct.port** %10, align 8
  %67 = getelementptr inbounds %struct.port, %struct.port* %66, i32 0, i32 9
  store i32* null, i32** %67, align 8
  %68 = load i64 (%struct.tipc_port*, %struct.sk_buff*)*, i64 (%struct.tipc_port*, %struct.sk_buff*)** %7, align 8
  %69 = bitcast i64 (%struct.tipc_port*, %struct.sk_buff*)* %68 to i64 (%struct.tipc_port*, %struct.sk_buff.0*)*
  %70 = load %struct.port*, %struct.port** %10, align 8
  %71 = getelementptr inbounds %struct.port, %struct.port* %70, i32 0, i32 8
  store i64 (%struct.tipc_port*, %struct.sk_buff.0*)* %69, i64 (%struct.tipc_port*, %struct.sk_buff.0*)** %71, align 8
  %72 = load void (%struct.tipc_port*)*, void (%struct.tipc_port*)** %8, align 8
  %73 = load %struct.port*, %struct.port** %10, align 8
  %74 = getelementptr inbounds %struct.port, %struct.port* %73, i32 0, i32 2
  store void (%struct.tipc_port*)* %72, void (%struct.tipc_port*)** %74, align 8
  %75 = load %struct.port*, %struct.port** %10, align 8
  %76 = getelementptr inbounds %struct.port, %struct.port* %75, i32 0, i32 7
  store i32* null, i32** %76, align 8
  %77 = load %struct.port*, %struct.port** %10, align 8
  %78 = getelementptr inbounds %struct.port, %struct.port* %77, i32 0, i32 6
  %79 = load i64, i64* @port_timeout, align 8
  %80 = trunc i64 %79 to i32
  %81 = load i64, i64* %12, align 8
  %82 = call i32 @k_init_timer(i32* %78, i32 %80, i64 %81)
  %83 = call i32 @spin_lock_bh(i32* @tipc_port_list_lock)
  %84 = load %struct.port*, %struct.port** %10, align 8
  %85 = getelementptr inbounds %struct.port, %struct.port* %84, i32 0, i32 5
  %86 = call i32 @INIT_LIST_HEAD(i32* %85)
  %87 = load %struct.port*, %struct.port** %10, align 8
  %88 = getelementptr inbounds %struct.port, %struct.port* %87, i32 0, i32 4
  %89 = call i32 @INIT_LIST_HEAD(i32* %88)
  %90 = load %struct.port*, %struct.port** %10, align 8
  %91 = getelementptr inbounds %struct.port, %struct.port* %90, i32 0, i32 4
  %92 = call i32 @list_add_tail(i32* %91, i32* @ports)
  %93 = call i32 @spin_unlock_bh(i32* @tipc_port_list_lock)
  %94 = load %struct.port*, %struct.port** %10, align 8
  %95 = getelementptr inbounds %struct.port, %struct.port* %94, i32 0, i32 3
  store %struct.tipc_port* %95, %struct.tipc_port** %5, align 8
  br label %96

96:                                               ; preds = %31, %27, %17
  %97 = load %struct.tipc_port*, %struct.tipc_port** %5, align 8
  ret %struct.tipc_port* %97
}

declare dso_local %struct.port* @kzalloc(i32, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i64 @tipc_ref_acquire(%struct.port*, i32*) #1

declare dso_local i32 @kfree(%struct.port*) #1

declare dso_local i32 @msg_init(%struct.tipc_msg*, i64, i32, i32, i32) #1

declare dso_local i32 @msg_set_origport(%struct.tipc_msg*, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @k_init_timer(i32*, i32, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
