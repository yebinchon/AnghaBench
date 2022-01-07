; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_socket_sock_rcv_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_socket_sock_rcv_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, %struct.sk_security_struct* }
%struct.sk_security_struct = type { i32 }
%struct.sk_buff = type { i64, i32, i32 }
%struct.common_audit_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@PF_INET = common dso_local global i64 0, align 8
@PF_INET6 = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i32 0, align 4
@selinux_policycap_netpeer = common dso_local global i32 0, align 4
@NET = common dso_local global i32 0, align 4
@SECCLASS_PEER = common dso_local global i32 0, align 4
@PEER__RECV = common dso_local global i32 0, align 4
@SECCLASS_PACKET = common dso_local global i32 0, align 4
@PACKET__RECV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @selinux_socket_sock_rcv_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_socket_sock_rcv_skb(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_security_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.common_audit_data, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %15 = load %struct.sock*, %struct.sock** %4, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 1
  %17 = load %struct.sk_security_struct*, %struct.sk_security_struct** %16, align 8
  store %struct.sk_security_struct* %17, %struct.sk_security_struct** %7, align 8
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  %21 = load %struct.sk_security_struct*, %struct.sk_security_struct** %7, align 8
  %22 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @PF_INET, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @PF_INET6, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %146

32:                                               ; preds = %27, %2
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @PF_INET6, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @ETH_P_IP, align 4
  %41 = call i64 @htons(i32 %40)
  %42 = icmp eq i64 %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i64, i64* @PF_INET, align 8
  store i64 %44, i64* %8, align 8
  br label %45

45:                                               ; preds = %43, %36, %32
  %46 = load i32, i32* @selinux_policycap_netpeer, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = load %struct.sock*, %struct.sock** %4, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @selinux_sock_rcv_skb_compat(%struct.sock* %49, %struct.sk_buff* %50, i64 %51)
  store i32 %52, i32* %3, align 4
  br label %146

53:                                               ; preds = %45
  %54 = call i32 (...) @selinux_secmark_enabled()
  store i32 %54, i32* %12, align 4
  %55 = call i64 (...) @netlbl_enabled()
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = call i64 (...) @selinux_xfrm_enabled()
  %59 = icmp ne i64 %58, 0
  br label %60

60:                                               ; preds = %57, %53
  %61 = phi i1 [ true, %53 ], [ %59, %57 ]
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %146

69:                                               ; preds = %65, %60
  %70 = load i32, i32* @NET, align 4
  %71 = call i32 @COMMON_AUDIT_DATA_INIT(%struct.common_audit_data* %10, i32 %70)
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %10, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 8
  %78 = load i64, i64* %8, align 8
  %79 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %10, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i64 %78, i64* %81, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %83 = call i32 @selinux_parse_skb(%struct.sk_buff* %82, %struct.common_audit_data* %10, i8** %11, i32 1, i32* null)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %69
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %3, align 4
  br label %146

88:                                               ; preds = %69
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %128

91:                                               ; preds = %88
  %92 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %93 = load i64, i64* %8, align 8
  %94 = call i32 @selinux_skb_peerlbl_sid(%struct.sk_buff* %92, i64 %93, i32* %14)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %3, align 4
  br label %146

99:                                               ; preds = %91
  %100 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i8*, i8** %11, align 8
  %104 = load i64, i64* %8, align 8
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @selinux_inet_sys_rcv_skb(i32 %102, i8* %103, i64 %104, i32 %105, %struct.common_audit_data* %10)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %99
  %110 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @selinux_netlbl_err(%struct.sk_buff* %110, i32 %111, i32 0)
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %3, align 4
  br label %146

114:                                              ; preds = %99
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* @SECCLASS_PEER, align 4
  %118 = load i32, i32* @PEER__RECV, align 4
  %119 = call i32 @avc_has_perm(i32 %115, i32 %116, i32 %117, i32 %118, %struct.common_audit_data* %10)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %114
  %123 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @selinux_netlbl_err(%struct.sk_buff* %123, i32 %124, i32 0)
  %126 = load i32, i32* %6, align 4
  store i32 %126, i32* %3, align 4
  br label %146

127:                                              ; preds = %114
  br label %128

128:                                              ; preds = %127, %88
  %129 = load i32, i32* %12, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %128
  %132 = load i32, i32* %9, align 4
  %133 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %134 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @SECCLASS_PACKET, align 4
  %137 = load i32, i32* @PACKET__RECV, align 4
  %138 = call i32 @avc_has_perm(i32 %132, i32 %135, i32 %136, i32 %137, %struct.common_audit_data* %10)
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %131
  %142 = load i32, i32* %6, align 4
  store i32 %142, i32* %3, align 4
  br label %146

143:                                              ; preds = %131
  br label %144

144:                                              ; preds = %143, %128
  %145 = load i32, i32* %6, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %144, %141, %122, %109, %97, %86, %68, %48, %31
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @selinux_sock_rcv_skb_compat(%struct.sock*, %struct.sk_buff*, i64) #1

declare dso_local i32 @selinux_secmark_enabled(...) #1

declare dso_local i64 @netlbl_enabled(...) #1

declare dso_local i64 @selinux_xfrm_enabled(...) #1

declare dso_local i32 @COMMON_AUDIT_DATA_INIT(%struct.common_audit_data*, i32) #1

declare dso_local i32 @selinux_parse_skb(%struct.sk_buff*, %struct.common_audit_data*, i8**, i32, i32*) #1

declare dso_local i32 @selinux_skb_peerlbl_sid(%struct.sk_buff*, i64, i32*) #1

declare dso_local i32 @selinux_inet_sys_rcv_skb(i32, i8*, i64, i32, %struct.common_audit_data*) #1

declare dso_local i32 @selinux_netlbl_err(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @avc_has_perm(i32, i32, i32, i32, %struct.common_audit_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
