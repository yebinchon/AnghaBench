; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_af_decnet.c_dn_rehash_sock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_af_decnet.c_dn_rehash_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hlist_head = type { i32 }
%struct.dn_scp = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@SDF_WILD = common dso_local global i32 0, align 4
@dn_hash_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @dn_rehash_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dn_rehash_sock(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.hlist_head*, align 8
  %4 = alloca %struct.dn_scp*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.dn_scp* @DN_SK(%struct.sock* %5)
  store %struct.dn_scp* %6, %struct.dn_scp** %4, align 8
  %7 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %8 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @SDF_WILD, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %30

15:                                               ; preds = %1
  %16 = call i32 @write_lock_bh(i32* @dn_hash_lock)
  %17 = load %struct.sock*, %struct.sock** %2, align 8
  %18 = call i32 @sk_del_node_init(%struct.sock* %17)
  %19 = load %struct.sock*, %struct.sock** %2, align 8
  %20 = call %struct.dn_scp* @DN_SK(%struct.sock* %19)
  %21 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.sock*, %struct.sock** %2, align 8
  %23 = call %struct.dn_scp* @DN_SK(%struct.sock* %22)
  %24 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %23, i32 0, i32 0
  %25 = call %struct.hlist_head* @listen_hash(%struct.TYPE_2__* %24)
  store %struct.hlist_head* %25, %struct.hlist_head** %3, align 8
  %26 = load %struct.sock*, %struct.sock** %2, align 8
  %27 = load %struct.hlist_head*, %struct.hlist_head** %3, align 8
  %28 = call i32 @sk_add_node(%struct.sock* %26, %struct.hlist_head* %27)
  %29 = call i32 @write_unlock_bh(i32* @dn_hash_lock)
  br label %30

30:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @sk_del_node_init(%struct.sock*) #1

declare dso_local %struct.hlist_head* @listen_hash(%struct.TYPE_2__*) #1

declare dso_local i32 @sk_add_node(%struct.sock*, %struct.hlist_head*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
