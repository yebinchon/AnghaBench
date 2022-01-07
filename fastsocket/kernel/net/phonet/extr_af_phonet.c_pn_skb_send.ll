; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_af_phonet.c_pn_skb_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_af_phonet.c_pn_skb_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.sk_buff = type { i32 }
%struct.sockaddr_pn = type { i32 }
%struct.net_device = type { i32 }
%struct.pn_sock = type { i32 }

@PN_NO_ADDR = common dso_local global i64 0, align 8
@EHOSTUNREACH = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pn_skb_send(%struct.sock* %0, %struct.sk_buff* %1, %struct.sockaddr_pn* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sockaddr_pn*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.pn_sock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.sockaddr_pn* %2, %struct.sockaddr_pn** %7, align 8
  %14 = load %struct.sock*, %struct.sock** %5, align 8
  %15 = call %struct.pn_sock* @pn_sk(%struct.sock* %14)
  store %struct.pn_sock* %15, %struct.pn_sock** %9, align 8
  %16 = load %struct.sockaddr_pn*, %struct.sockaddr_pn** %7, align 8
  %17 = call i64 @pn_sockaddr_get_addr(%struct.sockaddr_pn* %16)
  store i64 %17, i64* %12, align 8
  %18 = load i64, i64* @PN_NO_ADDR, align 8
  store i64 %18, i64* %13, align 8
  %19 = load i32, i32* @EHOSTUNREACH, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %10, align 4
  %21 = load %struct.sock*, %struct.sock** %5, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %3
  %26 = load %struct.sock*, %struct.sock** %5, align 8
  %27 = call i32 @sock_net(%struct.sock* %26)
  %28 = load %struct.sock*, %struct.sock** %5, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call %struct.net_device* @dev_get_by_index(i32 %27, i64 %30)
  store %struct.net_device* %31, %struct.net_device** %8, align 8
  br label %36

32:                                               ; preds = %3
  %33 = load %struct.sock*, %struct.sock** %5, align 8
  %34 = call i32 @sock_net(%struct.sock* %33)
  %35 = call %struct.net_device* @phonet_device_get(i32 %34)
  store %struct.net_device* %35, %struct.net_device** %8, align 8
  br label %36

36:                                               ; preds = %32, %25
  %37 = load %struct.net_device*, %struct.net_device** %8, align 8
  %38 = icmp ne %struct.net_device* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load %struct.net_device*, %struct.net_device** %8, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IFF_UP, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %39, %36
  br label %79

47:                                               ; preds = %39
  %48 = load %struct.net_device*, %struct.net_device** %8, align 8
  %49 = load i64, i64* %12, align 8
  %50 = call i64 @phonet_address_get(%struct.net_device* %48, i64 %49)
  store i64 %50, i64* %13, align 8
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* @PN_NO_ADDR, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %79

55:                                               ; preds = %47
  %56 = load %struct.pn_sock*, %struct.pn_sock** %9, align 8
  %57 = getelementptr inbounds %struct.pn_sock, %struct.pn_sock* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @pn_addr(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %55
  %63 = load i64, i64* %13, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @pn_obj(i32 %64)
  %66 = call i32 @pn_object(i64 %63, i32 %65)
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %62, %55
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = load %struct.net_device*, %struct.net_device** %8, align 8
  %70 = load %struct.sockaddr_pn*, %struct.sockaddr_pn** %7, align 8
  %71 = call i32 @pn_sockaddr_get_object(%struct.sockaddr_pn* %70)
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.sockaddr_pn*, %struct.sockaddr_pn** %7, align 8
  %74 = call i32 @pn_sockaddr_get_resource(%struct.sockaddr_pn* %73)
  %75 = call i32 @pn_send(%struct.sk_buff* %68, %struct.net_device* %69, i32 %71, i32 %72, i32 %74, i32 0)
  store i32 %75, i32* %10, align 4
  %76 = load %struct.net_device*, %struct.net_device** %8, align 8
  %77 = call i32 @dev_put(%struct.net_device* %76)
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %4, align 4
  br label %89

79:                                               ; preds = %54, %46
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = call i32 @kfree_skb(%struct.sk_buff* %80)
  %82 = load %struct.net_device*, %struct.net_device** %8, align 8
  %83 = icmp ne %struct.net_device* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.net_device*, %struct.net_device** %8, align 8
  %86 = call i32 @dev_put(%struct.net_device* %85)
  br label %87

87:                                               ; preds = %84, %79
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %87, %67
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.pn_sock* @pn_sk(%struct.sock*) #1

declare dso_local i64 @pn_sockaddr_get_addr(%struct.sockaddr_pn*) #1

declare dso_local %struct.net_device* @dev_get_by_index(i32, i64) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.net_device* @phonet_device_get(i32) #1

declare dso_local i64 @phonet_address_get(%struct.net_device*, i64) #1

declare dso_local i32 @pn_addr(i32) #1

declare dso_local i32 @pn_object(i64, i32) #1

declare dso_local i32 @pn_obj(i32) #1

declare dso_local i32 @pn_send(%struct.sk_buff*, %struct.net_device*, i32, i32, i32, i32) #1

declare dso_local i32 @pn_sockaddr_get_object(%struct.sockaddr_pn*) #1

declare dso_local i32 @pn_sockaddr_get_resource(%struct.sockaddr_pn*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
