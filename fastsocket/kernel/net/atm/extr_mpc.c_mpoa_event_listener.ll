; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_mpoa_event_listener.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_mpoa_event_listener.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i32* }
%struct.mpoa_client = type { i32*, %struct.net_device*, i32 }
%struct.lec_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@init_net = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"lec\00", align 1
@lane2_assoc_ind = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"mpoa: mpoa_event_listener: allocating new mpc for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"mpoa: mpoa_event_listener: no new mpc\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"mpoa: (%s) was initialized\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"mpoa: device (%s) was deallocated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @mpoa_event_listener to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpoa_event_listener(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.mpoa_client*, align 8
  %10 = alloca %struct.lec_priv*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.net_device*
  store %struct.net_device* %12, %struct.net_device** %8, align 8
  %13 = load %struct.net_device*, %struct.net_device** %8, align 8
  %14 = call i32 @dev_net(%struct.net_device* %13)
  %15 = call i32 @net_eq(i32 %14, i32* @init_net)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %18, i32* %4, align 4
  br label %134

19:                                               ; preds = %3
  %20 = load %struct.net_device*, %struct.net_device** %8, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = load %struct.net_device*, %struct.net_device** %8, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i64 @strncmp(i32* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24, %19
  %31 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %31, i32* %4, align 4
  br label %134

32:                                               ; preds = %24
  %33 = load i64, i64* %6, align 8
  switch i64 %33, label %131 [
    i64 130, label %34
    i64 129, label %80
    i64 128, label %99
    i64 133, label %115
    i64 131, label %130
    i64 136, label %130
    i64 134, label %130
    i64 135, label %130
    i64 132, label %130
  ]

34:                                               ; preds = %32
  %35 = load %struct.net_device*, %struct.net_device** %8, align 8
  %36 = call %struct.lec_priv* @netdev_priv(%struct.net_device* %35)
  store %struct.lec_priv* %36, %struct.lec_priv** %10, align 8
  %37 = load %struct.lec_priv*, %struct.lec_priv** %10, align 8
  %38 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %132

42:                                               ; preds = %34
  %43 = load i32, i32* @lane2_assoc_ind, align 4
  %44 = load %struct.lec_priv*, %struct.lec_priv** %10, align 8
  %45 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 4
  %48 = load %struct.lec_priv*, %struct.lec_priv** %10, align 8
  %49 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.mpoa_client* @find_mpc_by_itfnum(i32 %50)
  store %struct.mpoa_client* %51, %struct.mpoa_client** %9, align 8
  %52 = load %struct.mpoa_client*, %struct.mpoa_client** %9, align 8
  %53 = icmp eq %struct.mpoa_client* %52, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %42
  %55 = load %struct.net_device*, %struct.net_device** %8, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @dprintk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32* %57)
  %59 = call %struct.mpoa_client* (...) @alloc_mpc()
  store %struct.mpoa_client* %59, %struct.mpoa_client** %9, align 8
  %60 = load %struct.mpoa_client*, %struct.mpoa_client** %9, align 8
  %61 = icmp eq %struct.mpoa_client* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = call i32 @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %132

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %42
  %66 = load %struct.lec_priv*, %struct.lec_priv** %10, align 8
  %67 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.mpoa_client*, %struct.mpoa_client** %9, align 8
  %70 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.net_device*, %struct.net_device** %8, align 8
  %72 = load %struct.mpoa_client*, %struct.mpoa_client** %9, align 8
  %73 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %72, i32 0, i32 1
  store %struct.net_device* %71, %struct.net_device** %73, align 8
  %74 = load %struct.net_device*, %struct.net_device** %8, align 8
  %75 = call i32 @dev_hold(%struct.net_device* %74)
  %76 = load %struct.net_device*, %struct.net_device** %8, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32* %78)
  br label %132

80:                                               ; preds = %32
  %81 = load %struct.net_device*, %struct.net_device** %8, align 8
  %82 = call %struct.mpoa_client* @find_mpc_by_lec(%struct.net_device* %81)
  store %struct.mpoa_client* %82, %struct.mpoa_client** %9, align 8
  %83 = load %struct.mpoa_client*, %struct.mpoa_client** %9, align 8
  %84 = icmp eq %struct.mpoa_client* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %132

86:                                               ; preds = %80
  %87 = load %struct.net_device*, %struct.net_device** %8, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32* %89)
  %91 = load %struct.mpoa_client*, %struct.mpoa_client** %9, align 8
  %92 = call i32 @stop_mpc(%struct.mpoa_client* %91)
  %93 = load %struct.mpoa_client*, %struct.mpoa_client** %9, align 8
  %94 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %93, i32 0, i32 1
  %95 = load %struct.net_device*, %struct.net_device** %94, align 8
  %96 = call i32 @dev_put(%struct.net_device* %95)
  %97 = load %struct.mpoa_client*, %struct.mpoa_client** %9, align 8
  %98 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %97, i32 0, i32 1
  store %struct.net_device* null, %struct.net_device** %98, align 8
  br label %132

99:                                               ; preds = %32
  %100 = load %struct.net_device*, %struct.net_device** %8, align 8
  %101 = call %struct.mpoa_client* @find_mpc_by_lec(%struct.net_device* %100)
  store %struct.mpoa_client* %101, %struct.mpoa_client** %9, align 8
  %102 = load %struct.mpoa_client*, %struct.mpoa_client** %9, align 8
  %103 = icmp eq %struct.mpoa_client* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %132

105:                                              ; preds = %99
  %106 = load %struct.mpoa_client*, %struct.mpoa_client** %9, align 8
  %107 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load %struct.mpoa_client*, %struct.mpoa_client** %9, align 8
  %112 = load %struct.net_device*, %struct.net_device** %8, align 8
  %113 = call i32 @start_mpc(%struct.mpoa_client* %111, %struct.net_device* %112)
  br label %114

114:                                              ; preds = %110, %105
  br label %132

115:                                              ; preds = %32
  %116 = load %struct.net_device*, %struct.net_device** %8, align 8
  %117 = call %struct.mpoa_client* @find_mpc_by_lec(%struct.net_device* %116)
  store %struct.mpoa_client* %117, %struct.mpoa_client** %9, align 8
  %118 = load %struct.mpoa_client*, %struct.mpoa_client** %9, align 8
  %119 = icmp eq %struct.mpoa_client* %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %132

121:                                              ; preds = %115
  %122 = load %struct.mpoa_client*, %struct.mpoa_client** %9, align 8
  %123 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load %struct.mpoa_client*, %struct.mpoa_client** %9, align 8
  %128 = call i32 @stop_mpc(%struct.mpoa_client* %127)
  br label %129

129:                                              ; preds = %126, %121
  br label %132

130:                                              ; preds = %32, %32, %32, %32, %32
  br label %132

131:                                              ; preds = %32
  br label %132

132:                                              ; preds = %131, %130, %129, %120, %114, %104, %86, %85, %65, %62, %41
  %133 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %132, %30, %17
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @net_eq(i32, i32*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i64 @strncmp(i32*, i8*, i32) #1

declare dso_local %struct.lec_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mpoa_client* @find_mpc_by_itfnum(i32) #1

declare dso_local i32 @dprintk(i8*, i32*) #1

declare dso_local %struct.mpoa_client* @alloc_mpc(...) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local %struct.mpoa_client* @find_mpc_by_lec(%struct.net_device*) #1

declare dso_local i32 @stop_mpc(%struct.mpoa_client*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @start_mpc(%struct.mpoa_client*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
