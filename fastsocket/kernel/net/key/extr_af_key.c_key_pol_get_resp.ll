; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_key_pol_get_resp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_key_pol_get_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.xfrm_policy = type { i32 }
%struct.sadb_msg = type { i32, i32, i64, i64, i32, i32 }
%struct.sk_buff = type { i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@BROADCAST_ONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.xfrm_policy*, %struct.sadb_msg*, i32)* @key_pol_get_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_pol_get_resp(%struct.sock* %0, %struct.xfrm_policy* %1, %struct.sadb_msg* %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.xfrm_policy*, align 8
  %7 = alloca %struct.sadb_msg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.sadb_msg*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.xfrm_policy* %1, %struct.xfrm_policy** %6, align 8
  store %struct.sadb_msg* %2, %struct.sadb_msg** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %13 = call %struct.sk_buff* @pfkey_xfrm_policy2msg_prep(%struct.xfrm_policy* %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %10, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %15 = call i64 @IS_ERR(%struct.sk_buff* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %19 = call i32 @PTR_ERR(%struct.sk_buff* %18)
  store i32 %19, i32* %9, align 4
  br label %64

20:                                               ; preds = %4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %22 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @pfkey_xfrm_policy2msg(%struct.sk_buff* %21, %struct.xfrm_policy* %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %64

28:                                               ; preds = %20
  %29 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.sadb_msg*
  store %struct.sadb_msg* %32, %struct.sadb_msg** %11, align 8
  %33 = load %struct.sadb_msg*, %struct.sadb_msg** %7, align 8
  %34 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sadb_msg*, %struct.sadb_msg** %11, align 8
  %37 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = load %struct.sadb_msg*, %struct.sadb_msg** %7, align 8
  %39 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.sadb_msg*, %struct.sadb_msg** %11, align 8
  %42 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load %struct.sadb_msg*, %struct.sadb_msg** %11, align 8
  %44 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load %struct.sadb_msg*, %struct.sadb_msg** %11, align 8
  %46 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load %struct.sadb_msg*, %struct.sadb_msg** %7, align 8
  %48 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sadb_msg*, %struct.sadb_msg** %11, align 8
  %51 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.sadb_msg*, %struct.sadb_msg** %7, align 8
  %53 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.sadb_msg*, %struct.sadb_msg** %11, align 8
  %56 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %58 = load i32, i32* @GFP_ATOMIC, align 4
  %59 = load i32, i32* @BROADCAST_ONE, align 4
  %60 = load %struct.sock*, %struct.sock** %5, align 8
  %61 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %62 = call i32 @xp_net(%struct.xfrm_policy* %61)
  %63 = call i32 @pfkey_broadcast(%struct.sk_buff* %57, i32 %58, i32 %59, %struct.sock* %60, i32 %62)
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %28, %27, %17
  %65 = load i32, i32* %9, align 4
  ret i32 %65
}

declare dso_local %struct.sk_buff* @pfkey_xfrm_policy2msg_prep(%struct.xfrm_policy*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @pfkey_xfrm_policy2msg(%struct.sk_buff*, %struct.xfrm_policy*, i32) #1

declare dso_local i32 @pfkey_broadcast(%struct.sk_buff*, i32, i32, %struct.sock*, i32) #1

declare dso_local i32 @xp_net(%struct.xfrm_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
