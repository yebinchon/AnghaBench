; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/unix/extr_af_unix.c_unix_accept.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/unix/extr_af_unix.c_unix_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, i32, %struct.sock* }
%struct.sock = type { i64 }
%struct.sk_buff = type { %struct.sock* }
%struct.TYPE_2__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i64 0, align 8
@O_NONBLOCK = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.socket*, i32)* @unix_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unix_accept(%struct.socket* %0, %struct.socket* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.socket*, %struct.socket** %5, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 2
  %14 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %14, %struct.sock** %8, align 8
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %11, align 4
  %17 = load %struct.socket*, %struct.socket** %5, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SOCK_STREAM, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load %struct.socket*, %struct.socket** %5, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SOCK_SEQPACKET, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %74

29:                                               ; preds = %22, %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %11, align 4
  %32 = load %struct.sock*, %struct.sock** %8, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TCP_LISTEN, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %74

38:                                               ; preds = %29
  %39 = load %struct.sock*, %struct.sock** %8, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @O_NONBLOCK, align 4
  %42 = and i32 %40, %41
  %43 = call %struct.sk_buff* @skb_recv_datagram(%struct.sock* %39, i32 0, i32 %42, i32* %11)
  store %struct.sk_buff* %43, %struct.sk_buff** %10, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %45 = icmp ne %struct.sk_buff* %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %11, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %49, %46
  br label %74

53:                                               ; preds = %38
  %54 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load %struct.sock*, %struct.sock** %55, align 8
  store %struct.sock* %56, %struct.sock** %9, align 8
  %57 = load %struct.sock*, %struct.sock** %8, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %59 = call i32 @skb_free_datagram(%struct.sock* %57, %struct.sk_buff* %58)
  %60 = load %struct.sock*, %struct.sock** %8, align 8
  %61 = call %struct.TYPE_2__* @unix_sk(%struct.sock* %60)
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = call i32 @wake_up_interruptible(i32* %62)
  %64 = load %struct.sock*, %struct.sock** %9, align 8
  %65 = call i32 @unix_state_lock(%struct.sock* %64)
  %66 = load i32, i32* @SS_CONNECTED, align 4
  %67 = load %struct.socket*, %struct.socket** %6, align 8
  %68 = getelementptr inbounds %struct.socket, %struct.socket* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load %struct.sock*, %struct.sock** %9, align 8
  %70 = load %struct.socket*, %struct.socket** %6, align 8
  %71 = call i32 @sock_graft(%struct.sock* %69, %struct.socket* %70)
  %72 = load %struct.sock*, %struct.sock** %9, align 8
  %73 = call i32 @unix_state_unlock(%struct.sock* %72)
  store i32 0, i32* %4, align 4
  br label %76

74:                                               ; preds = %52, %37, %28
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %53
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.sk_buff* @skb_recv_datagram(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @skb_free_datagram(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local %struct.TYPE_2__* @unix_sk(%struct.sock*) #1

declare dso_local i32 @unix_state_lock(%struct.sock*) #1

declare dso_local i32 @sock_graft(%struct.sock*, %struct.socket*) #1

declare dso_local i32 @unix_state_unlock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
