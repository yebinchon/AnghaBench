; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ip_queue.c_ipq_receive_peer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ip_queue.c_ipq_receive_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipq_peer_msg = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@NF_MAX_VERDICT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipq_peer_msg*, i8, i32)* @ipq_receive_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipq_receive_peer(%struct.ipq_peer_msg* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipq_peer_msg*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ipq_peer_msg* %0, %struct.ipq_peer_msg** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = zext i32 %9 to i64
  %11 = icmp ult i64 %10, 12
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %56

15:                                               ; preds = %3
  %16 = load i8, i8* %6, align 1
  %17 = zext i8 %16 to i32
  switch i32 %17, label %51 [
    i32 129, label %18
    i32 128, label %30
  ]

18:                                               ; preds = %15
  %19 = load %struct.ipq_peer_msg*, %struct.ipq_peer_msg** %5, align 8
  %20 = getelementptr inbounds %struct.ipq_peer_msg, %struct.ipq_peer_msg* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ipq_peer_msg*, %struct.ipq_peer_msg** %5, align 8
  %25 = getelementptr inbounds %struct.ipq_peer_msg, %struct.ipq_peer_msg* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ipq_set_mode(i32 %23, i32 %28)
  store i32 %29, i32* %8, align 4
  br label %54

30:                                               ; preds = %15
  %31 = load %struct.ipq_peer_msg*, %struct.ipq_peer_msg** %5, align 8
  %32 = getelementptr inbounds %struct.ipq_peer_msg, %struct.ipq_peer_msg* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @NF_MAX_VERDICT, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %8, align 4
  br label %50

41:                                               ; preds = %30
  %42 = load %struct.ipq_peer_msg*, %struct.ipq_peer_msg** %5, align 8
  %43 = getelementptr inbounds %struct.ipq_peer_msg, %struct.ipq_peer_msg* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = sub i64 %46, 12
  %48 = trunc i64 %47 to i32
  %49 = call i32 @ipq_set_verdict(%struct.TYPE_6__* %44, i32 %48)
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %41, %38
  br label %54

51:                                               ; preds = %15
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %51, %50, %18
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %12
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @ipq_set_mode(i32, i32) #1

declare dso_local i32 @ipq_set_verdict(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
