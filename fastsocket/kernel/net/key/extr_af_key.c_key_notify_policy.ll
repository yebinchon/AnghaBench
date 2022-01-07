; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_key_notify_policy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_key_notify_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i32 }
%struct.km_event = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i64 }
%struct.sadb_msg = type { i32, i32, i64, i32, i32 }

@PF_KEY_V2 = common dso_local global i32 0, align 4
@XFRM_MSG_DELPOLICY = common dso_local global i64 0, align 8
@SADB_X_SPDDELETE2 = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@BROADCAST_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_policy*, i32, %struct.km_event*)* @key_notify_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_notify_policy(%struct.xfrm_policy* %0, i32 %1, %struct.km_event* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_policy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.km_event*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sadb_msg*, align 8
  %10 = alloca i32, align 4
  store %struct.xfrm_policy* %0, %struct.xfrm_policy** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.km_event* %2, %struct.km_event** %7, align 8
  %11 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %12 = call %struct.sk_buff* @pfkey_xfrm_policy2msg_prep(%struct.xfrm_policy* %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %8, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %14 = call i64 @IS_ERR(%struct.sk_buff* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %18 = call i32 @PTR_ERR(%struct.sk_buff* %17)
  store i32 %18, i32* %10, align 4
  br label %77

19:                                               ; preds = %3
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @pfkey_xfrm_policy2msg(%struct.sk_buff* %20, %struct.xfrm_policy* %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %4, align 4
  br label %78

28:                                               ; preds = %19
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.sadb_msg*
  store %struct.sadb_msg* %32, %struct.sadb_msg** %9, align 8
  %33 = load i32, i32* @PF_KEY_V2, align 4
  %34 = load %struct.sadb_msg*, %struct.sadb_msg** %9, align 8
  %35 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load %struct.km_event*, %struct.km_event** %7, align 8
  %37 = getelementptr inbounds %struct.km_event, %struct.km_event* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %28
  %42 = load %struct.km_event*, %struct.km_event** %7, align 8
  %43 = getelementptr inbounds %struct.km_event, %struct.km_event* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @XFRM_MSG_DELPOLICY, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i32, i32* @SADB_X_SPDDELETE2, align 4
  %49 = load %struct.sadb_msg*, %struct.sadb_msg** %9, align 8
  %50 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  br label %58

51:                                               ; preds = %41, %28
  %52 = load %struct.km_event*, %struct.km_event** %7, align 8
  %53 = getelementptr inbounds %struct.km_event, %struct.km_event* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @event2poltype(i64 %54)
  %56 = load %struct.sadb_msg*, %struct.sadb_msg** %9, align 8
  %57 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %51, %47
  %59 = load %struct.sadb_msg*, %struct.sadb_msg** %9, align 8
  %60 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %59, i32 0, i32 2
  store i64 0, i64* %60, align 8
  %61 = load %struct.km_event*, %struct.km_event** %7, align 8
  %62 = getelementptr inbounds %struct.km_event, %struct.km_event* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.sadb_msg*, %struct.sadb_msg** %9, align 8
  %65 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.km_event*, %struct.km_event** %7, align 8
  %67 = getelementptr inbounds %struct.km_event, %struct.km_event* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.sadb_msg*, %struct.sadb_msg** %9, align 8
  %70 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %72 = load i32, i32* @GFP_ATOMIC, align 4
  %73 = load i32, i32* @BROADCAST_ALL, align 4
  %74 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %75 = call i32 @xp_net(%struct.xfrm_policy* %74)
  %76 = call i32 @pfkey_broadcast(%struct.sk_buff* %71, i32 %72, i32 %73, i32* null, i32 %75)
  br label %77

77:                                               ; preds = %58, %16
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %26
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.sk_buff* @pfkey_xfrm_policy2msg_prep(%struct.xfrm_policy*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @pfkey_xfrm_policy2msg(%struct.sk_buff*, %struct.xfrm_policy*, i32) #1

declare dso_local i32 @event2poltype(i64) #1

declare dso_local i32 @pfkey_broadcast(%struct.sk_buff*, i32, i32, i32*, i32) #1

declare dso_local i32 @xp_net(%struct.xfrm_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
