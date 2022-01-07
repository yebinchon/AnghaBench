; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_conntrack_proto_icmp.c_icmp_error_message.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_conntrack_proto_icmp.c_icmp_error_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32, i32* }
%struct.nf_conntrack_tuple = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nf_conntrack_l4proto = type { i32 }
%struct.nf_conntrack_tuple_hash = type { i32 }
%struct.TYPE_4__ = type { i32 }

@PF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"icmp_error_message: failed to get tuple\0A\00", align 1
@NF_ACCEPT = common dso_local global i32 0, align 4
@nf_conntrack_l3proto_ipv4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"icmp_error_message: no match\0A\00", align 1
@IP_CT_RELATED = common dso_local global i32 0, align 4
@IP_CT_DIR_REPLY = common dso_local global i64 0, align 8
@IP_CT_IS_REPLY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sk_buff*, i32*, i32)* @icmp_error_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icmp_error_message(%struct.net* %0, %struct.sk_buff* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nf_conntrack_tuple, align 4
  %11 = alloca %struct.nf_conntrack_tuple, align 4
  %12 = alloca %struct.nf_conntrack_l4proto*, align 8
  %13 = alloca %struct.nf_conntrack_tuple_hash*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @NF_CT_ASSERT(i32 %18)
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = call i64 @skb_network_offset(%struct.sk_buff* %21)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %24 = call i64 @ip_hdrlen(%struct.sk_buff* %23)
  %25 = add nsw i64 %22, %24
  %26 = add i64 %25, 4
  %27 = load i32, i32* @PF_INET, align 4
  %28 = call i32 @nf_ct_get_tuplepr(%struct.sk_buff* %20, i64 %26, i32 %27, %struct.nf_conntrack_tuple* %11)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %4
  %31 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @NF_ACCEPT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %81

34:                                               ; preds = %4
  %35 = load i32, i32* @PF_INET, align 4
  %36 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %11, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.nf_conntrack_l4proto* @__nf_ct_l4proto_find(i32 %35, i32 %38)
  store %struct.nf_conntrack_l4proto* %39, %struct.nf_conntrack_l4proto** %12, align 8
  %40 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %12, align 8
  %41 = call i32 @nf_ct_invert_tuple(%struct.nf_conntrack_tuple* %10, %struct.nf_conntrack_tuple* %11, i32* @nf_conntrack_l3proto_ipv4, %struct.nf_conntrack_l4proto* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %34
  %44 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @NF_ACCEPT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %81

47:                                               ; preds = %34
  %48 = load i32, i32* @IP_CT_RELATED, align 4
  %49 = load i32*, i32** %8, align 8
  store i32 %48, i32* %49, align 4
  %50 = load %struct.net*, %struct.net** %6, align 8
  %51 = call %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(%struct.net* %50, %struct.nf_conntrack_tuple* %10)
  store %struct.nf_conntrack_tuple_hash* %51, %struct.nf_conntrack_tuple_hash** %13, align 8
  %52 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %13, align 8
  %53 = icmp ne %struct.nf_conntrack_tuple_hash* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %47
  %55 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @NF_ACCEPT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %81

58:                                               ; preds = %47
  %59 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %13, align 8
  %60 = call i64 @NF_CT_DIRECTION(%struct.nf_conntrack_tuple_hash* %59)
  %61 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load i64, i64* @IP_CT_IS_REPLY, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %65, align 4
  %67 = zext i32 %66 to i64
  %68 = add nsw i64 %67, %64
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %65, align 4
  br label %70

70:                                               ; preds = %63, %58
  %71 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %13, align 8
  %72 = call %struct.TYPE_4__* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash* %71)
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 1
  store i32* %73, i32** %75, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %70, %54, %43, %30
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @NF_CT_ASSERT(i32) #1

declare dso_local i32 @nf_ct_get_tuplepr(%struct.sk_buff*, i64, i32, %struct.nf_conntrack_tuple*) #1

declare dso_local i64 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i64 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.nf_conntrack_l4proto* @__nf_ct_l4proto_find(i32, i32) #1

declare dso_local i32 @nf_ct_invert_tuple(%struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple*, i32*, %struct.nf_conntrack_l4proto*) #1

declare dso_local %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(%struct.net*, %struct.nf_conntrack_tuple*) #1

declare dso_local i64 @NF_CT_DIRECTION(%struct.nf_conntrack_tuple_hash*) #1

declare dso_local %struct.TYPE_4__* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
