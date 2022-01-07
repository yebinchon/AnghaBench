; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_sock_rcv_skb_compat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_sock_rcv_skb_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.sk_security_struct* }
%struct.sk_security_struct = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.common_audit_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@NET = common dso_local global i32 0, align 4
@SECCLASS_PACKET = common dso_local global i32 0, align 4
@PACKET__RECV = common dso_local global i32 0, align 4
@selinux_policycap_netpeer = common dso_local global i64 0, align 8
@SECCLASS_PEER = common dso_local global i32 0, align 4
@PEER__RECV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, i32)* @selinux_sock_rcv_skb_compat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_sock_rcv_skb_compat(%struct.sock* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_security_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.common_audit_data, align 4
  %13 = alloca i8*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.sock*, %struct.sock** %5, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 0
  %16 = load %struct.sk_security_struct*, %struct.sk_security_struct** %15, align 8
  store %struct.sk_security_struct* %16, %struct.sk_security_struct** %9, align 8
  %17 = load %struct.sk_security_struct*, %struct.sk_security_struct** %9, align 8
  %18 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* @NET, align 4
  %21 = call i32 @COMMON_AUDIT_DATA_INIT(%struct.common_audit_data* %12, i32 %20)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %12, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  %29 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %12, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = call i32 @selinux_parse_skb(%struct.sk_buff* %32, %struct.common_audit_data* %12, i8** %13, i32 1, i32* null)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %3
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %95

38:                                               ; preds = %3
  %39 = call i64 (...) @selinux_secmark_enabled()
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SECCLASS_PACKET, align 4
  %47 = load i32, i32* @PACKET__RECV, align 4
  %48 = call i32 @avc_has_perm(i32 %42, i32 %45, i32 %46, i32 %47, %struct.common_audit_data* %12)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %4, align 4
  br label %95

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53, %38
  %55 = load i64, i64* @selinux_policycap_netpeer, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %54
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @selinux_skb_peerlbl_sid(%struct.sk_buff* %58, i32 %59, i32* %10)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %4, align 4
  br label %95

65:                                               ; preds = %57
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @SECCLASS_PEER, align 4
  %69 = load i32, i32* @PEER__RECV, align 4
  %70 = call i32 @avc_has_perm(i32 %66, i32 %67, i32 %68, i32 %69, %struct.common_audit_data* %12)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @selinux_netlbl_err(%struct.sk_buff* %74, i32 %75, i32 0)
  br label %77

77:                                               ; preds = %73, %65
  br label %93

78:                                               ; preds = %54
  %79 = load %struct.sk_security_struct*, %struct.sk_security_struct** %9, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @selinux_netlbl_sock_rcv_skb(%struct.sk_security_struct* %79, %struct.sk_buff* %80, i32 %81, %struct.common_audit_data* %12)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %4, align 4
  br label %95

87:                                               ; preds = %78
  %88 = load %struct.sk_security_struct*, %struct.sk_security_struct** %9, align 8
  %89 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %92 = call i32 @selinux_xfrm_sock_rcv_skb(i32 %90, %struct.sk_buff* %91, %struct.common_audit_data* %12)
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %87, %77
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %93, %85, %63, %51, %36
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @COMMON_AUDIT_DATA_INIT(%struct.common_audit_data*, i32) #1

declare dso_local i32 @selinux_parse_skb(%struct.sk_buff*, %struct.common_audit_data*, i8**, i32, i32*) #1

declare dso_local i64 @selinux_secmark_enabled(...) #1

declare dso_local i32 @avc_has_perm(i32, i32, i32, i32, %struct.common_audit_data*) #1

declare dso_local i32 @selinux_skb_peerlbl_sid(%struct.sk_buff*, i32, i32*) #1

declare dso_local i32 @selinux_netlbl_err(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @selinux_netlbl_sock_rcv_skb(%struct.sk_security_struct*, %struct.sk_buff*, i32, %struct.common_audit_data*) #1

declare dso_local i32 @selinux_xfrm_sock_rcv_skb(i32, %struct.sk_buff*, %struct.common_audit_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
