; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_nf_conntrack_proto_icmpv6.c_icmpv6_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_nf_conntrack_proto_icmpv6.c_icmpv6_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i32 }

@icmpv6_new.valid_new = internal constant [2 x i32] [i32 1, i32 1], align 4
@.str = private unnamed_addr constant [44 x i8] c"icmpv6: can't create new conn with type %u\0A\00", align 1
@IPPROTO_ICMPV6 = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"nf_ct_icmpv6: invalid new with type %d \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, %struct.sk_buff*, i32)* @icmpv6_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icmpv6_new(%struct.nf_conn* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nf_conn*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %10 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %9, i32 0, i32 0
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 128
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp uge i64 %24, 8
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* @icmpv6_new.valid_new, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %54, label %32

32:                                               ; preds = %26, %22, %3
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 128
  %35 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %37 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = call i32 @nf_ct_dump_tuple_ipv6(%struct.TYPE_10__* %40)
  %42 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %43 = call i32 @nf_ct_net(%struct.nf_conn* %42)
  %44 = load i32, i32* @IPPROTO_ICMPV6, align 4
  %45 = call i64 @LOG_INVALID(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %32
  %48 = load i32, i32* @PF_INET6, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 128
  %52 = call i32 @nf_log_packet(i32 %48, i32 0, %struct.sk_buff* %49, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %47, %32
  store i32 0, i32* %4, align 4
  br label %55

54:                                               ; preds = %26
  store i32 1, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %53
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @nf_ct_dump_tuple_ipv6(%struct.TYPE_10__*) #1

declare dso_local i64 @LOG_INVALID(i32, i32) #1

declare dso_local i32 @nf_ct_net(%struct.nf_conn*) #1

declare dso_local i32 @nf_log_packet(i32, i32, %struct.sk_buff*, i32*, i32*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
