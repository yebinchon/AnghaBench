; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_signaling.c_modify_qos.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_signaling.c_modify_qos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.atm_vcc*, i32*, i32)* }
%struct.atmsvc_msg = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }

@ATM_VF_RELEASED = common dso_local global i32 0, align 4
@ATM_VF_READY = common dso_local global i32 0, align 4
@as_error = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@as_okay = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atm_vcc*, %struct.atmsvc_msg*)* @modify_qos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @modify_qos(%struct.atm_vcc* %0, %struct.atmsvc_msg* %1) #0 {
  %3 = alloca %struct.atm_vcc*, align 8
  %4 = alloca %struct.atmsvc_msg*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %3, align 8
  store %struct.atmsvc_msg* %1, %struct.atmsvc_msg** %4, align 8
  %6 = load i32, i32* @ATM_VF_RELEASED, align 4
  %7 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %8 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %7, i32 0, i32 1
  %9 = call i64 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ATM_VF_READY, align 4
  %13 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %14 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %13, i32 0, i32 1
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11, %2
  br label %78

18:                                               ; preds = %11
  %19 = load i32, i32* @as_error, align 4
  %20 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %4, align 8
  %21 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %23 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (%struct.atm_vcc*, i32*, i32)*, i32 (%struct.atm_vcc*, i32*, i32)** %27, align 8
  %29 = icmp ne i32 (%struct.atm_vcc*, i32*, i32)* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %18
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  %33 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %4, align 8
  %34 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %61

35:                                               ; preds = %18
  %36 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %37 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32 (%struct.atm_vcc*, i32*, i32)*, i32 (%struct.atm_vcc*, i32*, i32)** %41, align 8
  %43 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %44 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %4, align 8
  %45 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %44, i32 0, i32 2
  %46 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %4, align 8
  %47 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 %42(%struct.atm_vcc* %43, i32* %45, i32 %48)
  %50 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %4, align 8
  %51 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %4, align 8
  %53 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %35
  %57 = load i32, i32* @as_okay, align 4
  %58 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %4, align 8
  %59 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %56, %35
  br label %61

61:                                               ; preds = %60, %30
  br label %62

62:                                               ; preds = %67, %61
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call %struct.sk_buff* @alloc_skb(i32 12, i32 %63)
  store %struct.sk_buff* %64, %struct.sk_buff** %5, align 8
  %65 = icmp ne %struct.sk_buff* %64, null
  %66 = xor i1 %65, true
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = call i32 (...) @schedule()
  br label %62

69:                                               ; preds = %62
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = call i64 @skb_put(%struct.sk_buff* %70, i32 12)
  %72 = inttoptr i64 %71 to %struct.atmsvc_msg*
  %73 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %4, align 8
  %74 = bitcast %struct.atmsvc_msg* %72 to i8*
  %75 = bitcast %struct.atmsvc_msg* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %74, i8* align 4 %75, i64 12, i1 false)
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = call i32 @sigd_put_skb(%struct.sk_buff* %76)
  br label %78

78:                                               ; preds = %69, %17
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sigd_put_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
