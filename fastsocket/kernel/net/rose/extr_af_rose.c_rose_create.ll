; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_af_rose.c_rose_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_af_rose.c_rose_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { i64, i32* }
%struct.sock = type { i32 }
%struct.rose_sock = type { i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i64, i32, i32 }

@init_net = common dso_local global %struct.net zeroinitializer, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@ESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@PF_ROSE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@rose_proto = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rose_proto_ops = common dso_local global i32 0, align 4
@sysctl_rose_call_request_timeout = common dso_local global i32 0, align 4
@sysctl_rose_reset_request_timeout = common dso_local global i32 0, align 4
@sysctl_rose_clear_request_timeout = common dso_local global i32 0, align 4
@sysctl_rose_ack_hold_back_timeout = common dso_local global i32 0, align 4
@sysctl_rose_no_activity_timeout = common dso_local global i32 0, align 4
@ROSE_STATE_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, i32, i32)* @rose_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rose_create(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.rose_sock*, align 8
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
  br label %82

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
  br label %82

29:                                               ; preds = %23
  %30 = load %struct.net*, %struct.net** %6, align 8
  %31 = load i32, i32* @PF_ROSE, align 4
  %32 = load i32, i32* @GFP_ATOMIC, align 4
  %33 = call %struct.sock* @sk_alloc(%struct.net* %30, i32 %31, i32 %32, i32* @rose_proto)
  store %struct.sock* %33, %struct.sock** %10, align 8
  %34 = load %struct.sock*, %struct.sock** %10, align 8
  %35 = icmp eq %struct.sock* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %82

39:                                               ; preds = %29
  %40 = load %struct.sock*, %struct.sock** %10, align 8
  %41 = call %struct.rose_sock* @rose_sk(%struct.sock* %40)
  store %struct.rose_sock* %41, %struct.rose_sock** %11, align 8
  %42 = load %struct.socket*, %struct.socket** %7, align 8
  %43 = load %struct.sock*, %struct.sock** %10, align 8
  %44 = call i32 @sock_init_data(%struct.socket* %42, %struct.sock* %43)
  %45 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %46 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %45, i32 0, i32 10
  %47 = call i32 @skb_queue_head_init(i32* %46)
  %48 = load %struct.socket*, %struct.socket** %7, align 8
  %49 = getelementptr inbounds %struct.socket, %struct.socket* %48, i32 0, i32 1
  store i32* @rose_proto_ops, i32** %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.sock*, %struct.sock** %10, align 8
  %52 = getelementptr inbounds %struct.sock, %struct.sock* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %54 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %53, i32 0, i32 7
  %55 = call i32 @init_timer(i32* %54)
  %56 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %57 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %56, i32 0, i32 6
  %58 = call i32 @init_timer(i32* %57)
  %59 = load i32, i32* @sysctl_rose_call_request_timeout, align 4
  %60 = call i8* @msecs_to_jiffies(i32 %59)
  %61 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %62 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %61, i32 0, i32 5
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* @sysctl_rose_reset_request_timeout, align 4
  %64 = call i8* @msecs_to_jiffies(i32 %63)
  %65 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %66 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %65, i32 0, i32 4
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* @sysctl_rose_clear_request_timeout, align 4
  %68 = call i8* @msecs_to_jiffies(i32 %67)
  %69 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %70 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* @sysctl_rose_ack_hold_back_timeout, align 4
  %72 = call i8* @msecs_to_jiffies(i32 %71)
  %73 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %74 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* @sysctl_rose_no_activity_timeout, align 4
  %76 = call i8* @msecs_to_jiffies(i32 %75)
  %77 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %78 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* @ROSE_STATE_0, align 4
  %80 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %81 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %39, %36, %26, %14
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32*) #1

declare dso_local %struct.rose_sock* @rose_sk(%struct.sock*) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @init_timer(i32*) #1

declare dso_local i8* @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
