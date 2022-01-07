; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_mpc_vcc_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_mpc_vcc_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32 }
%struct.net_device = type { i32 }
%struct.mpoa_client = type { %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_16__*)*, %struct.TYPE_16__* (%struct.atm_vcc*, %struct.mpoa_client*)* }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_15__*)*, %struct.TYPE_15__* (%struct.atm_vcc*, %struct.mpoa_client*)* }
%struct.TYPE_15__ = type { i32*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"mpoa: (%s) mpc_vcc_close: close for unknown MPC\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"mpoa: (%s) mpc_vcc_close:\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"mpoa: (%s) mpc_vcc_close: ingress SVC closed ip = %pI4\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"mpoa: (%s) mpc_vcc_close: egress SVC closed\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"mpoa: (%s) mpc_vcc_close:  unused vcc closed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atm_vcc*, %struct.net_device*)* @mpc_vcc_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc_vcc_close(%struct.atm_vcc* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.atm_vcc*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.mpoa_client*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.mpoa_client* @find_mpc_by_lec(%struct.net_device* %8)
  store %struct.mpoa_client* %9, %struct.mpoa_client** %5, align 8
  %10 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %11 = icmp eq %struct.mpoa_client* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %90

17:                                               ; preds = %2
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %23 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %22, i32 0, i32 2
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_15__* (%struct.atm_vcc*, %struct.mpoa_client*)*, %struct.TYPE_15__* (%struct.atm_vcc*, %struct.mpoa_client*)** %25, align 8
  %27 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %28 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %29 = call %struct.TYPE_15__* %26(%struct.atm_vcc* %27, %struct.mpoa_client* %28)
  store %struct.TYPE_15__* %29, %struct.TYPE_15__** %6, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %31 = icmp ne %struct.TYPE_15__* %30, null
  br i1 %31, label %32, label %51

32:                                               ; preds = %17
  %33 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %34 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %33, i32 0, i32 1
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32* %40)
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  %44 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %45 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %44, i32 0, i32 2
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %47, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %50 = call i32 %48(%struct.TYPE_15__* %49)
  br label %51

51:                                               ; preds = %32, %17
  %52 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %53 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %52, i32 0, i32 0
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_16__* (%struct.atm_vcc*, %struct.mpoa_client*)*, %struct.TYPE_16__* (%struct.atm_vcc*, %struct.mpoa_client*)** %55, align 8
  %57 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %58 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %59 = call %struct.TYPE_16__* %56(%struct.atm_vcc* %57, %struct.mpoa_client* %58)
  store %struct.TYPE_16__* %59, %struct.TYPE_16__** %7, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %61 = icmp ne %struct.TYPE_16__* %60, null
  br i1 %61, label %62, label %78

62:                                               ; preds = %51
  %63 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %64 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %63, i32 0, i32 1
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  store i32* null, i32** %70, align 8
  %71 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %72 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %71, i32 0, i32 0
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %74, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %77 = call i32 %75(%struct.TYPE_16__* %76)
  br label %78

78:                                               ; preds = %62, %51
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %80 = icmp eq %struct.TYPE_15__* %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %83 = icmp eq %struct.TYPE_16__* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load %struct.net_device*, %struct.net_device** %4, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %84, %81, %78
  br label %90

90:                                               ; preds = %89, %12
  ret void
}

declare dso_local %struct.mpoa_client* @find_mpc_by_lec(%struct.net_device*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @dprintk(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
