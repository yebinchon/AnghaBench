; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_atm_mpoa_mpoad_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_atm_mpoa_mpoad_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32, i32* }
%struct.mpoa_client = type { i32, i32, i32*, %struct.atm_vcc* }
%struct.lec_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@mpcs = common dso_local global i32* null, align 8
@mpc_timer = common dso_local global i32 0, align 4
@mpoa_notifier = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"mpoa: mpoad_attach: allocating new mpc for itf %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"mpoa: mpoad_attach: mpoad is already present for itf %d\0A\00", align 1
@EADDRINUSE = common dso_local global i32 0, align 4
@lane2_assoc_ind = common dso_local global i32 0, align 4
@mpc_dev = common dso_local global i32 0, align 4
@ATM_VF_META = common dso_local global i32 0, align 4
@ATM_VF_READY = common dso_local global i32 0, align 4
@ATM_ESA_LEN = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*, i32)* @atm_mpoa_mpoad_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atm_mpoa_mpoad_attach(%struct.atm_vcc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atm_vcc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mpoa_client*, align 8
  %7 = alloca %struct.lec_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32*, i32** @mpcs, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = call i32 @init_timer(i32* @mpc_timer)
  %15 = call i32 (...) @mpc_timer_refresh()
  %16 = call i32 @register_netdevice_notifier(i32* @mpoa_notifier)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = call i32 @del_timer(i32* @mpc_timer)
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %134

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22, %2
  %24 = load i32, i32* %5, align 4
  %25 = call %struct.mpoa_client* @find_mpc_by_itfnum(i32 %24)
  store %struct.mpoa_client* %25, %struct.mpoa_client** %6, align 8
  %26 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %27 = icmp eq %struct.mpoa_client* %26, null
  br i1 %27, label %28, label %45

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @dprintk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = call %struct.mpoa_client* (...) @alloc_mpc()
  store %struct.mpoa_client* %31, %struct.mpoa_client** %6, align 8
  %32 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %33 = icmp eq %struct.mpoa_client* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %134

37:                                               ; preds = %28
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %40 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32* @find_lec_by_itfnum(i32 %41)
  %43 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %44 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %43, i32 0, i32 2
  store i32* %42, i32** %44, align 8
  br label %45

45:                                               ; preds = %37, %23
  %46 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %47 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %46, i32 0, i32 3
  %48 = load %struct.atm_vcc*, %struct.atm_vcc** %47, align 8
  %49 = icmp ne %struct.atm_vcc* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EADDRINUSE, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %134

55:                                               ; preds = %45
  %56 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %57 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %83

60:                                               ; preds = %55
  %61 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %62 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = call %struct.lec_priv* @netdev_priv(i32* %63)
  store %struct.lec_priv* %64, %struct.lec_priv** %7, align 8
  %65 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %66 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %67, 2
  br i1 %68, label %69, label %76

69:                                               ; preds = %60
  %70 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %71 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @dev_put(i32* %72)
  %74 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %75 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %74, i32 0, i32 2
  store i32* null, i32** %75, align 8
  br label %82

76:                                               ; preds = %60
  %77 = load i32, i32* @lane2_assoc_ind, align 4
  %78 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %79 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32 %77, i32* %81, align 4
  br label %82

82:                                               ; preds = %76, %69
  br label %83

83:                                               ; preds = %82, %55
  %84 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %85 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %86 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %85, i32 0, i32 3
  store %struct.atm_vcc* %84, %struct.atm_vcc** %86, align 8
  %87 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %88 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %87, i32 0, i32 1
  store i32* @mpc_dev, i32** %88, align 8
  %89 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %90 = call i32 @sk_atm(%struct.atm_vcc* %89)
  %91 = call i32 @vcc_insert_socket(i32 %90)
  %92 = load i32, i32* @ATM_VF_META, align 4
  %93 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %94 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %93, i32 0, i32 0
  %95 = call i32 @set_bit(i32 %92, i32* %94)
  %96 = load i32, i32* @ATM_VF_READY, align 4
  %97 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %98 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %97, i32 0, i32 0
  %99 = call i32 @set_bit(i32 %96, i32* %98)
  %100 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %101 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %130

104:                                              ; preds = %83
  %105 = load i32, i32* @ATM_ESA_LEN, align 4
  %106 = zext i32 %105 to i64
  %107 = call i8* @llvm.stacksave()
  store i8* %107, i8** %9, align 8
  %108 = alloca i8, i64 %106, align 16
  store i64 %106, i64* %10, align 8
  %109 = load i32, i32* @ATM_ESA_LEN, align 4
  %110 = call i32 @memset(i8* %108, i32 0, i32 %109)
  %111 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %112 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %113 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @start_mpc(%struct.mpoa_client* %111, i32* %114)
  %116 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %117 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @ATM_ESA_LEN, align 4
  %120 = call i64 @memcmp(i32 %118, i8* %108, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %104
  %123 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %124 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %127 = call i32 @send_set_mps_ctrl_addr(i32 %125, %struct.mpoa_client* %126)
  br label %128

128:                                              ; preds = %122, %104
  %129 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %129)
  br label %130

130:                                              ; preds = %128, %83
  %131 = load i32, i32* @THIS_MODULE, align 4
  %132 = call i32 @__module_get(i32 %131)
  %133 = load i32, i32* %5, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %130, %50, %34, %19
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @init_timer(i32*) #1

declare dso_local i32 @mpc_timer_refresh(...) #1

declare dso_local i32 @register_netdevice_notifier(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local %struct.mpoa_client* @find_mpc_by_itfnum(i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local %struct.mpoa_client* @alloc_mpc(...) #1

declare dso_local i32* @find_lec_by_itfnum(i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local %struct.lec_priv* @netdev_priv(i32*) #1

declare dso_local i32 @dev_put(i32*) #1

declare dso_local i32 @vcc_insert_socket(i32) #1

declare dso_local i32 @sk_atm(%struct.atm_vcc*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @start_mpc(%struct.mpoa_client*, i32*) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @send_set_mps_ctrl_addr(i32, %struct.mpoa_client*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @__module_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
