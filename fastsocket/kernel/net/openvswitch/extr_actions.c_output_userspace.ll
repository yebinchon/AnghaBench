; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_actions.c_output_userspace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_actions.c_output_userspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datapath = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }
%struct.dp_upcall_info = type { i64, %struct.nlattr*, i32*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@OVS_PACKET_CMD_ACTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.datapath*, %struct.sk_buff*, %struct.nlattr*)* @output_userspace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @output_userspace(%struct.datapath* %0, %struct.sk_buff* %1, %struct.nlattr* %2) #0 {
  %4 = alloca %struct.datapath*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.dp_upcall_info, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca i32, align 4
  store %struct.datapath* %0, %struct.datapath** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.nlattr* %2, %struct.nlattr** %6, align 8
  %10 = load i32, i32* @OVS_PACKET_CMD_ACTION, align 4
  %11 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %7, i32 0, i32 3
  store i32 %10, i32* %11, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call %struct.TYPE_4__* @OVS_CB(%struct.sk_buff* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %7, i32 0, i32 2
  store i32* %16, i32** %17, align 8
  %18 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %7, i32 0, i32 1
  store %struct.nlattr* null, %struct.nlattr** %18, align 8
  %19 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %7, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %21 = call %struct.nlattr* @nla_data(%struct.nlattr* %20)
  store %struct.nlattr* %21, %struct.nlattr** %8, align 8
  %22 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %23 = call i32 @nla_len(%struct.nlattr* %22)
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %38, %3
  %25 = load i32, i32* %9, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %29 = call i32 @nla_type(%struct.nlattr* %28)
  switch i32 %29, label %37 [
    i32 128, label %30
    i32 129, label %33
  ]

30:                                               ; preds = %27
  %31 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %32 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %7, i32 0, i32 1
  store %struct.nlattr* %31, %struct.nlattr** %32, align 8
  br label %37

33:                                               ; preds = %27
  %34 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %35 = call i64 @nla_get_u32(%struct.nlattr* %34)
  %36 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %7, i32 0, i32 0
  store i64 %35, i64* %36, align 8
  br label %37

37:                                               ; preds = %27, %33, %30
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %40 = call %struct.nlattr* @nla_next(%struct.nlattr* %39, i32* %9)
  store %struct.nlattr* %40, %struct.nlattr** %8, align 8
  br label %24

41:                                               ; preds = %24
  %42 = load %struct.datapath*, %struct.datapath** %4, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = call i32 @ovs_dp_upcall(%struct.datapath* %42, %struct.sk_buff* %43, %struct.dp_upcall_info* %7)
  ret i32 %44
}

declare dso_local %struct.TYPE_4__* @OVS_CB(%struct.sk_buff*) #1

declare dso_local %struct.nlattr* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @nla_type(%struct.nlattr*) #1

declare dso_local i64 @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.nlattr* @nla_next(%struct.nlattr*, i32*) #1

declare dso_local i32 @ovs_dp_upcall(%struct.datapath*, %struct.sk_buff*, %struct.dp_upcall_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
