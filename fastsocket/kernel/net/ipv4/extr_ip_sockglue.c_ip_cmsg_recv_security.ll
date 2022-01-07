; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_sockglue.c_ip_cmsg_recv_security.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_sockglue.c_ip_cmsg_recv_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32 }
%struct.sk_buff = type { i32 }

@SOL_IP = common dso_local global i32 0, align 4
@SCM_SECURITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msghdr*, %struct.sk_buff*)* @ip_cmsg_recv_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_cmsg_recv_security(%struct.msghdr* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.msghdr*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.msghdr* %0, %struct.msghdr** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call i32 @security_socket_getpeersec_dgram(i32* null, %struct.sk_buff* %9, i32* %7)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %30

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @security_secid_to_secctx(i32 %15, i8** %5, i32* %6)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %30

20:                                               ; preds = %14
  %21 = load %struct.msghdr*, %struct.msghdr** %3, align 8
  %22 = load i32, i32* @SOL_IP, align 4
  %23 = load i32, i32* @SCM_SECURITY, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @put_cmsg(%struct.msghdr* %21, i32 %22, i32 %23, i32 %24, i8* %25)
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @security_release_secctx(i8* %27, i32 %28)
  br label %30

30:                                               ; preds = %20, %19, %13
  ret void
}

declare dso_local i32 @security_socket_getpeersec_dgram(i32*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @security_secid_to_secctx(i32, i8**, i32*) #1

declare dso_local i32 @put_cmsg(%struct.msghdr*, i32, i32, i32, i8*) #1

declare dso_local i32 @security_release_secctx(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
