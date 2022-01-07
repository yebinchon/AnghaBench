; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_start_mpc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_start_mpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpoa_client = type { %struct.TYPE_4__, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { %struct.TYPE_4__*, i32 }

@.str = private unnamed_addr constant [23 x i8] c"mpoa: (%s) start_mpc:\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"mpoa: (%s) start_mpc  not starting\0A\00", align 1
@mpc_send_packet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpoa_client*, %struct.net_device*)* @start_mpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_mpc(%struct.mpoa_client* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.mpoa_client*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.mpoa_client* %0, %struct.mpoa_client** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %5 = load %struct.mpoa_client*, %struct.mpoa_client** %3, align 8
  %6 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %5, i32 0, i32 2
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  br label %41

20:                                               ; preds = %2
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load %struct.mpoa_client*, %struct.mpoa_client** %3, align 8
  %25 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %24, i32 0, i32 1
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %25, align 8
  %26 = load %struct.mpoa_client*, %struct.mpoa_client** %3, align 8
  %27 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %26, i32 0, i32 0
  %28 = load %struct.mpoa_client*, %struct.mpoa_client** %3, align 8
  %29 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = bitcast %struct.TYPE_4__* %27 to i8*
  %32 = bitcast %struct.TYPE_4__* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 4 %32, i64 4, i1 false)
  %33 = load i32, i32* @mpc_send_packet, align 4
  %34 = load %struct.mpoa_client*, %struct.mpoa_client** %3, align 8
  %35 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load %struct.mpoa_client*, %struct.mpoa_client** %3, align 8
  %38 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %37, i32 0, i32 0
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %40, align 8
  br label %41

41:                                               ; preds = %20, %15
  ret void
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
