; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_udp.c_udp_lib_unhash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_udp.c_udp_lib_unhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.udp_table* }
%struct.udp_table = type { %struct.udp_hslot* }
%struct.udp_hslot = type { i32 }
%struct.TYPE_6__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udp_lib_unhash(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.udp_table*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.udp_hslot*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call i64 @sk_hashed(%struct.sock* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %48

9:                                                ; preds = %1
  %10 = load %struct.sock*, %struct.sock** %2, align 8
  %11 = getelementptr inbounds %struct.sock, %struct.sock* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.udp_table*, %struct.udp_table** %14, align 8
  store %struct.udp_table* %15, %struct.udp_table** %3, align 8
  %16 = load %struct.sock*, %struct.sock** %2, align 8
  %17 = call i32 @sock_net(%struct.sock* %16)
  %18 = load %struct.sock*, %struct.sock** %2, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @udp_hashfn(i32 %17, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.udp_table*, %struct.udp_table** %3, align 8
  %23 = getelementptr inbounds %struct.udp_table, %struct.udp_table* %22, i32 0, i32 0
  %24 = load %struct.udp_hslot*, %struct.udp_hslot** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %24, i64 %26
  store %struct.udp_hslot* %27, %struct.udp_hslot** %5, align 8
  %28 = load %struct.udp_hslot*, %struct.udp_hslot** %5, align 8
  %29 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %28, i32 0, i32 0
  %30 = call i32 @spin_lock_bh(i32* %29)
  %31 = load %struct.sock*, %struct.sock** %2, align 8
  %32 = call i64 @sk_nulls_del_node_init_rcu(%struct.sock* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %9
  %35 = load %struct.sock*, %struct.sock** %2, align 8
  %36 = call %struct.TYPE_6__* @inet_sk(%struct.sock* %35)
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.sock*, %struct.sock** %2, align 8
  %39 = call i32 @sock_net(%struct.sock* %38)
  %40 = load %struct.sock*, %struct.sock** %2, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = call i32 @sock_prot_inuse_add(i32 %39, %struct.TYPE_5__* %42, i32 -1)
  br label %44

44:                                               ; preds = %34, %9
  %45 = load %struct.udp_hslot*, %struct.udp_hslot** %5, align 8
  %46 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock_bh(i32* %46)
  br label %48

48:                                               ; preds = %44, %1
  ret void
}

declare dso_local i64 @sk_hashed(%struct.sock*) #1

declare dso_local i32 @udp_hashfn(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @sk_nulls_del_node_init_rcu(%struct.sock*) #1

declare dso_local %struct.TYPE_6__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @sock_prot_inuse_add(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
