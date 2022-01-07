; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_syncookies.c_get_cookie_sock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_syncookies.c_get_cookie_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.request_sock = type { i32 }
%struct.dst_entry = type { i32 }
%struct.inet_connection_sock = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sock* (%struct.sock*, %struct.sk_buff*, %struct.request_sock*, %struct.dst_entry*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.sock*, %struct.sk_buff*, %struct.request_sock*, %struct.dst_entry*)* @get_cookie_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @get_cookie_sock(%struct.sock* %0, %struct.sk_buff* %1, %struct.request_sock* %2, %struct.dst_entry* %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.request_sock*, align 8
  %8 = alloca %struct.dst_entry*, align 8
  %9 = alloca %struct.inet_connection_sock*, align 8
  %10 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.request_sock* %2, %struct.request_sock** %7, align 8
  store %struct.dst_entry* %3, %struct.dst_entry** %8, align 8
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %11)
  store %struct.inet_connection_sock* %12, %struct.inet_connection_sock** %9, align 8
  %13 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %9, align 8
  %14 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.sock* (%struct.sock*, %struct.sk_buff*, %struct.request_sock*, %struct.dst_entry*)*, %struct.sock* (%struct.sock*, %struct.sk_buff*, %struct.request_sock*, %struct.dst_entry*)** %16, align 8
  %18 = load %struct.sock*, %struct.sock** %5, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %21 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %22 = call %struct.sock* %17(%struct.sock* %18, %struct.sk_buff* %19, %struct.request_sock* %20, %struct.dst_entry* %21)
  store %struct.sock* %22, %struct.sock** %10, align 8
  %23 = load %struct.sock*, %struct.sock** %10, align 8
  %24 = icmp ne %struct.sock* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %4
  %26 = load %struct.sock*, %struct.sock** %5, align 8
  %27 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %28 = load %struct.sock*, %struct.sock** %10, align 8
  %29 = call i32 @inet_csk_reqsk_queue_add(%struct.sock* %26, %struct.request_sock* %27, %struct.sock* %28)
  br label %33

30:                                               ; preds = %4
  %31 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %32 = call i32 @reqsk_free(%struct.request_sock* %31)
  br label %33

33:                                               ; preds = %30, %25
  %34 = load %struct.sock*, %struct.sock** %10, align 8
  ret %struct.sock* %34
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i32 @inet_csk_reqsk_queue_add(%struct.sock*, %struct.request_sock*, %struct.sock*) #1

declare dso_local i32 @reqsk_free(%struct.request_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
