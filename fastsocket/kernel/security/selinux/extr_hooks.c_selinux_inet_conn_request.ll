; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_inet_conn_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_inet_conn_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, %struct.sk_security_struct* }
%struct.sk_security_struct = type { i32 }
%struct.sk_buff = type { i64 }
%struct.request_sock = type { i8*, i8* }

@PF_INET6 = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.request_sock*)* @selinux_inet_conn_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_inet_conn_request(%struct.sock* %0, %struct.sk_buff* %1, %struct.request_sock* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.request_sock*, align 8
  %8 = alloca %struct.sk_security_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.request_sock* %2, %struct.request_sock** %7, align 8
  %13 = load %struct.sock*, %struct.sock** %5, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 1
  %15 = load %struct.sk_security_struct*, %struct.sk_security_struct** %14, align 8
  store %struct.sk_security_struct* %15, %struct.sk_security_struct** %8, align 8
  %16 = load %struct.sock*, %struct.sock** %5, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* @PF_INET6, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %3
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @ETH_P_IP, align 4
  %27 = call i64 @htons(i32 %26)
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i64, i64* @PF_INET, align 8
  store i64 %30, i64* %10, align 8
  br label %31

31:                                               ; preds = %29, %22, %3
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @selinux_skb_peerlbl_sid(%struct.sk_buff* %32, i64 %33, i8** %12)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %59

39:                                               ; preds = %31
  %40 = load %struct.sk_security_struct*, %struct.sk_security_struct** %8, align 8
  %41 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %12, align 8
  %44 = call i32 @selinux_conn_sid(i32 %42, i8* %43, i8** %11)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %59

49:                                               ; preds = %39
  %50 = load i8*, i8** %11, align 8
  %51 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %52 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %55 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  %56 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @selinux_netlbl_inet_conn_request(%struct.request_sock* %56, i64 %57)
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %49, %47, %37
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @selinux_skb_peerlbl_sid(%struct.sk_buff*, i64, i8**) #1

declare dso_local i32 @selinux_conn_sid(i32, i8*, i8**) #1

declare dso_local i32 @selinux_netlbl_inet_conn_request(%struct.request_sock*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
