; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netrom/extr_af_netrom.c_nr_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netrom/extr_af_netrom.c_nr_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { i64, i32* }
%struct.sock = type { i32 }
%struct.nr_sock = type { i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i32 }

@init_net = common dso_local global %struct.net zeroinitializer, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@ESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@PF_NETROM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@nr_proto = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nr_proto_ops = common dso_local global i32 0, align 4
@sysctl_netrom_transport_timeout = common dso_local global i32 0, align 4
@sysctl_netrom_transport_acknowledge_delay = common dso_local global i32 0, align 4
@sysctl_netrom_transport_maximum_tries = common dso_local global i32 0, align 4
@sysctl_netrom_transport_busy_delay = common dso_local global i32 0, align 4
@sysctl_netrom_transport_no_activity_timeout = common dso_local global i32 0, align 4
@sysctl_netrom_transport_requested_window_size = common dso_local global i32 0, align 4
@NR_STATE_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, i32, i32)* @nr_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nr_create(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.nr_sock*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.net*, %struct.net** %6, align 8
  %13 = icmp ne %struct.net* %12, @init_net
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32, i32* @EAFNOSUPPORT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %89

17:                                               ; preds = %4
  %18 = load %struct.socket*, %struct.socket** %7, align 8
  %19 = getelementptr inbounds %struct.socket, %struct.socket* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SOCK_SEQPACKET, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23, %17
  %27 = load i32, i32* @ESOCKTNOSUPPORT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %89

29:                                               ; preds = %23
  %30 = load %struct.net*, %struct.net** %6, align 8
  %31 = load i32, i32* @PF_NETROM, align 4
  %32 = load i32, i32* @GFP_ATOMIC, align 4
  %33 = call %struct.sock* @sk_alloc(%struct.net* %30, i32 %31, i32 %32, i32* @nr_proto)
  store %struct.sock* %33, %struct.sock** %10, align 8
  %34 = load %struct.sock*, %struct.sock** %10, align 8
  %35 = icmp eq %struct.sock* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %89

39:                                               ; preds = %29
  %40 = load %struct.sock*, %struct.sock** %10, align 8
  %41 = call %struct.nr_sock* @nr_sk(%struct.sock* %40)
  store %struct.nr_sock* %41, %struct.nr_sock** %11, align 8
  %42 = load %struct.socket*, %struct.socket** %7, align 8
  %43 = load %struct.sock*, %struct.sock** %10, align 8
  %44 = call i32 @sock_init_data(%struct.socket* %42, %struct.sock* %43)
  %45 = load %struct.socket*, %struct.socket** %7, align 8
  %46 = getelementptr inbounds %struct.socket, %struct.socket* %45, i32 0, i32 1
  store i32* @nr_proto_ops, i32** %46, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.sock*, %struct.sock** %10, align 8
  %49 = getelementptr inbounds %struct.sock, %struct.sock* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.nr_sock*, %struct.nr_sock** %11, align 8
  %51 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %50, i32 0, i32 10
  %52 = call i32 @skb_queue_head_init(i32* %51)
  %53 = load %struct.nr_sock*, %struct.nr_sock** %11, align 8
  %54 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %53, i32 0, i32 9
  %55 = call i32 @skb_queue_head_init(i32* %54)
  %56 = load %struct.nr_sock*, %struct.nr_sock** %11, align 8
  %57 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %56, i32 0, i32 8
  %58 = call i32 @skb_queue_head_init(i32* %57)
  %59 = load %struct.sock*, %struct.sock** %10, align 8
  %60 = call i32 @nr_init_timers(%struct.sock* %59)
  %61 = load i32, i32* @sysctl_netrom_transport_timeout, align 4
  %62 = call i8* @msecs_to_jiffies(i32 %61)
  %63 = load %struct.nr_sock*, %struct.nr_sock** %11, align 8
  %64 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %63, i32 0, i32 7
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* @sysctl_netrom_transport_acknowledge_delay, align 4
  %66 = call i8* @msecs_to_jiffies(i32 %65)
  %67 = load %struct.nr_sock*, %struct.nr_sock** %11, align 8
  %68 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %67, i32 0, i32 6
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* @sysctl_netrom_transport_maximum_tries, align 4
  %70 = call i8* @msecs_to_jiffies(i32 %69)
  %71 = load %struct.nr_sock*, %struct.nr_sock** %11, align 8
  %72 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %71, i32 0, i32 5
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* @sysctl_netrom_transport_busy_delay, align 4
  %74 = call i8* @msecs_to_jiffies(i32 %73)
  %75 = load %struct.nr_sock*, %struct.nr_sock** %11, align 8
  %76 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %75, i32 0, i32 4
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* @sysctl_netrom_transport_no_activity_timeout, align 4
  %78 = call i8* @msecs_to_jiffies(i32 %77)
  %79 = load %struct.nr_sock*, %struct.nr_sock** %11, align 8
  %80 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %79, i32 0, i32 3
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* @sysctl_netrom_transport_requested_window_size, align 4
  %82 = load %struct.nr_sock*, %struct.nr_sock** %11, align 8
  %83 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load %struct.nr_sock*, %struct.nr_sock** %11, align 8
  %85 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  %86 = load i32, i32* @NR_STATE_0, align 4
  %87 = load %struct.nr_sock*, %struct.nr_sock** %11, align 8
  %88 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %39, %36, %26, %14
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32*) #1

declare dso_local %struct.nr_sock* @nr_sk(%struct.sock*) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @nr_init_timers(%struct.sock*) #1

declare dso_local i8* @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
