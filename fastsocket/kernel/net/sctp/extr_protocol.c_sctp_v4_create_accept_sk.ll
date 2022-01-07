; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_protocol.c_sctp_v4_create_accept_sk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_protocol.c_sctp_v4_create_accept_sk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 (%struct.sock*)* }
%struct.sctp_association = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.inet_sock = type { i32 }

@PF_INET = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.sock*, %struct.sctp_association*)* @sctp_v4_create_accept_sk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @sctp_v4_create_accept_sk(%struct.sock* %0, %struct.sctp_association* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sctp_association*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.inet_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call i32 @sock_net(%struct.sock* %7)
  %9 = load i32, i32* @PF_INET, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 0
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = call %struct.sock* @sk_alloc(i32 %8, i32 %9, i32 %10, %struct.TYPE_10__* %13)
  store %struct.sock* %14, %struct.sock** %5, align 8
  %15 = load %struct.sock*, %struct.sock** %5, align 8
  %16 = icmp ne %struct.sock* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %53

18:                                               ; preds = %2
  %19 = load %struct.sock*, %struct.sock** %5, align 8
  %20 = call i32 @sock_init_data(i32* null, %struct.sock* %19)
  %21 = load %struct.sock*, %struct.sock** %5, align 8
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  %23 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %24 = call i32 @sctp_copy_sock(%struct.sock* %21, %struct.sock* %22, %struct.sctp_association* %23)
  %25 = load %struct.sock*, %struct.sock** %5, align 8
  %26 = load i32, i32* @SOCK_ZAPPED, align 4
  %27 = call i32 @sock_reset_flag(%struct.sock* %25, i32 %26)
  %28 = load %struct.sock*, %struct.sock** %5, align 8
  %29 = call %struct.inet_sock* @inet_sk(%struct.sock* %28)
  store %struct.inet_sock* %29, %struct.inet_sock** %6, align 8
  %30 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %31 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.inet_sock*, %struct.inet_sock** %6, align 8
  %38 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.sock*, %struct.sock** %5, align 8
  %40 = call i32 @sk_refcnt_debug_inc(%struct.sock* %39)
  %41 = load %struct.sock*, %struct.sock** %5, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 0
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64 (%struct.sock*)*, i64 (%struct.sock*)** %44, align 8
  %46 = load %struct.sock*, %struct.sock** %5, align 8
  %47 = call i64 %45(%struct.sock* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %18
  %50 = load %struct.sock*, %struct.sock** %5, align 8
  %51 = call i32 @sk_common_release(%struct.sock* %50)
  store %struct.sock* null, %struct.sock** %5, align 8
  br label %52

52:                                               ; preds = %49, %18
  br label %53

53:                                               ; preds = %52, %17
  %54 = load %struct.sock*, %struct.sock** %5, align 8
  ret %struct.sock* %54
}

declare dso_local %struct.sock* @sk_alloc(i32, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @sock_init_data(i32*, %struct.sock*) #1

declare dso_local i32 @sctp_copy_sock(%struct.sock*, %struct.sock*, %struct.sctp_association*) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @sk_refcnt_debug_inc(%struct.sock*) #1

declare dso_local i32 @sk_common_release(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
