; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_raw.c_raw_hash_sk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_raw.c_raw_hash_sk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.raw_hashinfo* }
%struct.raw_hashinfo = type { i32, %struct.hlist_head* }
%struct.hlist_head = type { i32 }
%struct.TYPE_6__ = type { i32 }

@RAW_HTABLE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @raw_hash_sk(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.raw_hashinfo*, align 8
  %4 = alloca %struct.hlist_head*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = getelementptr inbounds %struct.sock, %struct.sock* %5, i32 0, i32 0
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.raw_hashinfo*, %struct.raw_hashinfo** %9, align 8
  store %struct.raw_hashinfo* %10, %struct.raw_hashinfo** %3, align 8
  %11 = load %struct.raw_hashinfo*, %struct.raw_hashinfo** %3, align 8
  %12 = getelementptr inbounds %struct.raw_hashinfo, %struct.raw_hashinfo* %11, i32 0, i32 1
  %13 = load %struct.hlist_head*, %struct.hlist_head** %12, align 8
  %14 = load %struct.sock*, %struct.sock** %2, align 8
  %15 = call %struct.TYPE_6__* @inet_sk(%struct.sock* %14)
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RAW_HTABLE_SIZE, align 4
  %19 = sub nsw i32 %18, 1
  %20 = and i32 %17, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %13, i64 %21
  store %struct.hlist_head* %22, %struct.hlist_head** %4, align 8
  %23 = load %struct.raw_hashinfo*, %struct.raw_hashinfo** %3, align 8
  %24 = getelementptr inbounds %struct.raw_hashinfo, %struct.raw_hashinfo* %23, i32 0, i32 0
  %25 = call i32 @write_lock_bh(i32* %24)
  %26 = load %struct.sock*, %struct.sock** %2, align 8
  %27 = load %struct.hlist_head*, %struct.hlist_head** %4, align 8
  %28 = call i32 @sk_add_node(%struct.sock* %26, %struct.hlist_head* %27)
  %29 = load %struct.sock*, %struct.sock** %2, align 8
  %30 = call i32 @sock_net(%struct.sock* %29)
  %31 = load %struct.sock*, %struct.sock** %2, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = call i32 @sock_prot_inuse_add(i32 %30, %struct.TYPE_5__* %33, i32 1)
  %35 = load %struct.raw_hashinfo*, %struct.raw_hashinfo** %3, align 8
  %36 = getelementptr inbounds %struct.raw_hashinfo, %struct.raw_hashinfo* %35, i32 0, i32 0
  %37 = call i32 @write_unlock_bh(i32* %36)
  ret void
}

declare dso_local %struct.TYPE_6__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @sk_add_node(%struct.sock*, %struct.hlist_head*) #1

declare dso_local i32 @sock_prot_inuse_add(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
