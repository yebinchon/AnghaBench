; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ipv6.c_sctp_v6_create_accept_sk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ipv6.c_sctp_v6_create_accept_sk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 (%struct.sock*)* }
%struct.sctp_association = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ipv6_pinfo = type { i32 }
%struct.sctp6_sock = type { i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32 }

@PF_INET6 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.sock*, %struct.sctp_association*)* @sctp_v6_create_accept_sk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @sctp_v6_create_accept_sk(%struct.sock* %0, %struct.sctp_association* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sctp_association*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.ipv6_pinfo*, align 8
  %7 = alloca %struct.ipv6_pinfo*, align 8
  %8 = alloca %struct.sctp6_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %4, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %9)
  store %struct.ipv6_pinfo* %10, %struct.ipv6_pinfo** %7, align 8
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call i32 @sock_net(%struct.sock* %11)
  %13 = load i32, i32* @PF_INET6, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = call %struct.sock* @sk_alloc(i32 %12, i32 %13, i32 %14, %struct.TYPE_6__* %17)
  store %struct.sock* %18, %struct.sock** %5, align 8
  %19 = load %struct.sock*, %struct.sock** %5, align 8
  %20 = icmp ne %struct.sock* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %70

22:                                               ; preds = %2
  %23 = load %struct.sock*, %struct.sock** %5, align 8
  %24 = call i32 @sock_init_data(i32* null, %struct.sock* %23)
  %25 = load %struct.sock*, %struct.sock** %5, align 8
  %26 = load %struct.sock*, %struct.sock** %3, align 8
  %27 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %28 = call i32 @sctp_copy_sock(%struct.sock* %25, %struct.sock* %26, %struct.sctp_association* %27)
  %29 = load %struct.sock*, %struct.sock** %3, align 8
  %30 = load i32, i32* @SOCK_ZAPPED, align 4
  %31 = call i32 @sock_reset_flag(%struct.sock* %29, i32 %30)
  %32 = load %struct.sock*, %struct.sock** %5, align 8
  %33 = bitcast %struct.sock* %32 to %struct.sctp6_sock*
  store %struct.sctp6_sock* %33, %struct.sctp6_sock** %8, align 8
  %34 = load %struct.sctp6_sock*, %struct.sctp6_sock** %8, align 8
  %35 = getelementptr inbounds %struct.sctp6_sock, %struct.sctp6_sock* %34, i32 0, i32 0
  %36 = load %struct.sock*, %struct.sock** %5, align 8
  %37 = call %struct.TYPE_8__* @inet_sk(%struct.sock* %36)
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store i32* %35, i32** %38, align 8
  %39 = load %struct.sock*, %struct.sock** %3, align 8
  %40 = call %struct.TYPE_7__* @sctp_sk(%struct.sock* %39)
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sock*, %struct.sock** %5, align 8
  %44 = call %struct.TYPE_7__* @sctp_sk(%struct.sock* %43)
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load %struct.sock*, %struct.sock** %5, align 8
  %47 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %46)
  store %struct.ipv6_pinfo* %47, %struct.ipv6_pinfo** %6, align 8
  %48 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %49 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %7, align 8
  %50 = call i32 @memcpy(%struct.ipv6_pinfo* %48, %struct.ipv6_pinfo* %49, i32 4)
  %51 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %52 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.sock*, %struct.sock** %5, align 8
  %55 = call i32 @sctp_v6_to_sk_daddr(i32* %53, %struct.sock* %54)
  %56 = load %struct.sock*, %struct.sock** %5, align 8
  %57 = call i32 @sk_refcnt_debug_inc(%struct.sock* %56)
  %58 = load %struct.sock*, %struct.sock** %5, align 8
  %59 = getelementptr inbounds %struct.sock, %struct.sock* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64 (%struct.sock*)*, i64 (%struct.sock*)** %61, align 8
  %63 = load %struct.sock*, %struct.sock** %5, align 8
  %64 = call i64 %62(%struct.sock* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %22
  %67 = load %struct.sock*, %struct.sock** %5, align 8
  %68 = call i32 @sk_common_release(%struct.sock* %67)
  store %struct.sock* null, %struct.sock** %5, align 8
  br label %69

69:                                               ; preds = %66, %22
  br label %70

70:                                               ; preds = %69, %21
  %71 = load %struct.sock*, %struct.sock** %5, align 8
  ret %struct.sock* %71
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.sock* @sk_alloc(i32, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @sock_init_data(i32*, %struct.sock*) #1

declare dso_local i32 @sctp_copy_sock(%struct.sock*, %struct.sock*, %struct.sctp_association*) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local %struct.TYPE_8__* @inet_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_7__* @sctp_sk(%struct.sock*) #1

declare dso_local i32 @memcpy(%struct.ipv6_pinfo*, %struct.ipv6_pinfo*, i32) #1

declare dso_local i32 @sctp_v6_to_sk_daddr(i32*, %struct.sock*) #1

declare dso_local i32 @sk_refcnt_debug_inc(%struct.sock*) #1

declare dso_local i32 @sk_common_release(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
