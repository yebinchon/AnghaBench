; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_connection_sock.c_inet_csk_listen_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_connection_sock.c_inet_csk_listen_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (%struct.sock*, i32)* }
%struct.inet_connection_sock = type { i32 }
%struct.request_sock = type { %struct.request_sock*, %struct.sock* }

@O_NONBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inet_csk_listen_stop(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.inet_connection_sock*, align 8
  %4 = alloca %struct.request_sock*, align 8
  %5 = alloca %struct.request_sock*, align 8
  %6 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %7)
  store %struct.inet_connection_sock* %8, %struct.inet_connection_sock** %3, align 8
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = call i32 @inet_csk_delete_keepalive_timer(%struct.sock* %9)
  %11 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %12 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %11, i32 0, i32 0
  %13 = call %struct.request_sock* @reqsk_queue_yank_acceptq(i32* %12)
  store %struct.request_sock* %13, %struct.request_sock** %4, align 8
  %14 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %15 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %14, i32 0, i32 0
  %16 = call i32 @reqsk_queue_destroy(i32* %15)
  br label %17

17:                                               ; preds = %20, %1
  %18 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  store %struct.request_sock* %18, %struct.request_sock** %5, align 8
  %19 = icmp ne %struct.request_sock* %18, null
  br i1 %19, label %20, label %62

20:                                               ; preds = %17
  %21 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %22 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %21, i32 0, i32 1
  %23 = load %struct.sock*, %struct.sock** %22, align 8
  store %struct.sock* %23, %struct.sock** %6, align 8
  %24 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %25 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %24, i32 0, i32 0
  %26 = load %struct.request_sock*, %struct.request_sock** %25, align 8
  store %struct.request_sock* %26, %struct.request_sock** %4, align 8
  %27 = call i32 (...) @local_bh_disable()
  %28 = load %struct.sock*, %struct.sock** %6, align 8
  %29 = call i32 @bh_lock_sock(%struct.sock* %28)
  %30 = load %struct.sock*, %struct.sock** %6, align 8
  %31 = call i32 @sock_owned_by_user(%struct.sock* %30)
  %32 = call i32 @WARN_ON(i32 %31)
  %33 = load %struct.sock*, %struct.sock** %6, align 8
  %34 = call i32 @sock_hold(%struct.sock* %33)
  %35 = load %struct.sock*, %struct.sock** %2, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %38, align 8
  %40 = load %struct.sock*, %struct.sock** %6, align 8
  %41 = load i32, i32* @O_NONBLOCK, align 4
  %42 = call i32 %39(%struct.sock* %40, i32 %41)
  %43 = load %struct.sock*, %struct.sock** %6, align 8
  %44 = call i32 @sock_orphan(%struct.sock* %43)
  %45 = load %struct.sock*, %struct.sock** %2, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @percpu_counter_inc(i32 %49)
  %51 = load %struct.sock*, %struct.sock** %6, align 8
  %52 = call i32 @inet_csk_destroy_sock(%struct.sock* %51)
  %53 = load %struct.sock*, %struct.sock** %6, align 8
  %54 = call i32 @bh_unlock_sock(%struct.sock* %53)
  %55 = call i32 (...) @local_bh_enable()
  %56 = load %struct.sock*, %struct.sock** %6, align 8
  %57 = call i32 @sock_put(%struct.sock* %56)
  %58 = load %struct.sock*, %struct.sock** %2, align 8
  %59 = call i32 @sk_acceptq_removed(%struct.sock* %58)
  %60 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %61 = call i32 @__reqsk_free(%struct.request_sock* %60)
  br label %17

62:                                               ; preds = %17
  %63 = load %struct.sock*, %struct.sock** %2, align 8
  %64 = getelementptr inbounds %struct.sock, %struct.sock* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @WARN_ON(i32 %65)
  ret void
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i32 @inet_csk_delete_keepalive_timer(%struct.sock*) #1

declare dso_local %struct.request_sock* @reqsk_queue_yank_acceptq(i32*) #1

declare dso_local i32 @reqsk_queue_destroy(i32*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @sock_orphan(%struct.sock*) #1

declare dso_local i32 @percpu_counter_inc(i32) #1

declare dso_local i32 @inet_csk_destroy_sock(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @sk_acceptq_removed(%struct.sock*) #1

declare dso_local i32 @__reqsk_free(%struct.request_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
