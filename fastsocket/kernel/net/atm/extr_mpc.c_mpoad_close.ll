; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_mpoad_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_mpoad_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32 }
%struct.mpoa_client = type { %struct.TYPE_11__*, %struct.TYPE_9__*, %struct.TYPE_8__*, i32* }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_9__ = type { i32 (%struct.mpoa_client*)* }
%struct.TYPE_8__ = type { i32 (%struct.mpoa_client*)* }
%struct.sk_buff = type { i32 }
%struct.lec_priv = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"mpoa: mpoad_close: did not find MPC\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"mpoa: mpoad_close: close for non-present mpoad\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"mpoa: (%s) going down\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atm_vcc*)* @mpoad_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpoad_close(%struct.atm_vcc* %0) #0 {
  %2 = alloca %struct.atm_vcc*, align 8
  %3 = alloca %struct.mpoa_client*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.lec_priv*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %2, align 8
  %6 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %7 = call %struct.mpoa_client* @find_mpc_by_vcc(%struct.atm_vcc* %6)
  store %struct.mpoa_client* %7, %struct.mpoa_client** %3, align 8
  %8 = load %struct.mpoa_client*, %struct.mpoa_client** %3, align 8
  %9 = icmp eq %struct.mpoa_client* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %87

12:                                               ; preds = %1
  %13 = load %struct.mpoa_client*, %struct.mpoa_client** %3, align 8
  %14 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %87

19:                                               ; preds = %12
  %20 = load %struct.mpoa_client*, %struct.mpoa_client** %3, align 8
  %21 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %20, i32 0, i32 3
  store i32* null, i32** %21, align 8
  %22 = load %struct.mpoa_client*, %struct.mpoa_client** %3, align 8
  %23 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %22, i32 0, i32 0
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = icmp ne %struct.TYPE_11__* %24, null
  br i1 %25, label %26, label %41

26:                                               ; preds = %19
  %27 = load %struct.mpoa_client*, %struct.mpoa_client** %3, align 8
  %28 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %27, i32 0, i32 0
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = call %struct.lec_priv* @netdev_priv(%struct.TYPE_11__* %29)
  store %struct.lec_priv* %30, %struct.lec_priv** %5, align 8
  %31 = load %struct.lec_priv*, %struct.lec_priv** %5, align 8
  %32 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  %35 = load %struct.mpoa_client*, %struct.mpoa_client** %3, align 8
  %36 = call i32 @stop_mpc(%struct.mpoa_client* %35)
  %37 = load %struct.mpoa_client*, %struct.mpoa_client** %3, align 8
  %38 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %37, i32 0, i32 0
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = call i32 @dev_put(%struct.TYPE_11__* %39)
  br label %41

41:                                               ; preds = %26, %19
  %42 = load %struct.mpoa_client*, %struct.mpoa_client** %3, align 8
  %43 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %42, i32 0, i32 2
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32 (%struct.mpoa_client*)*, i32 (%struct.mpoa_client*)** %45, align 8
  %47 = load %struct.mpoa_client*, %struct.mpoa_client** %3, align 8
  %48 = call i32 %46(%struct.mpoa_client* %47)
  %49 = load %struct.mpoa_client*, %struct.mpoa_client** %3, align 8
  %50 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %49, i32 0, i32 1
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32 (%struct.mpoa_client*)*, i32 (%struct.mpoa_client*)** %52, align 8
  %54 = load %struct.mpoa_client*, %struct.mpoa_client** %3, align 8
  %55 = call i32 %53(%struct.mpoa_client* %54)
  br label %56

56:                                               ; preds = %62, %41
  %57 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %58 = call %struct.TYPE_10__* @sk_atm(%struct.atm_vcc* %57)
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = call %struct.sk_buff* @skb_dequeue(i32* %59)
  store %struct.sk_buff* %60, %struct.sk_buff** %4, align 8
  %61 = icmp ne %struct.sk_buff* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @atm_return(%struct.atm_vcc* %63, i32 %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = call i32 @kfree_skb(%struct.sk_buff* %68)
  br label %56

70:                                               ; preds = %56
  %71 = load %struct.mpoa_client*, %struct.mpoa_client** %3, align 8
  %72 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %71, i32 0, i32 0
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = icmp ne %struct.TYPE_11__* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.mpoa_client*, %struct.mpoa_client** %3, align 8
  %77 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %76, i32 0, i32 0
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  br label %82

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %81, %75
  %83 = phi i8* [ %80, %75 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %81 ]
  %84 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %83)
  %85 = load i32, i32* @THIS_MODULE, align 4
  %86 = call i32 @module_put(i32 %85)
  br label %87

87:                                               ; preds = %82, %17, %10
  ret void
}

declare dso_local %struct.mpoa_client* @find_mpc_by_vcc(%struct.atm_vcc*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local %struct.lec_priv* @netdev_priv(%struct.TYPE_11__*) #1

declare dso_local i32 @stop_mpc(%struct.mpoa_client*) #1

declare dso_local i32 @dev_put(%struct.TYPE_11__*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local %struct.TYPE_10__* @sk_atm(%struct.atm_vcc*) #1

declare dso_local i32 @atm_return(%struct.atm_vcc*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
