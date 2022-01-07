; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_af_rds.c___rds_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_af_rds.c___rds_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32* }
%struct.sock = type { i32 }
%struct.rds_sock = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@rds_proto_ops = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@rds_sock_lock = common dso_local global i32 0, align 4
@rds_sock_list = common dso_local global i32 0, align 4
@rds_sock_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sock*, i32)* @__rds_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rds_create(%struct.socket* %0, %struct.sock* %1, i32 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rds_sock*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.socket*, %struct.socket** %4, align 8
  %9 = load %struct.sock*, %struct.sock** %5, align 8
  %10 = call i32 @sock_init_data(%struct.socket* %8, %struct.sock* %9)
  %11 = load %struct.socket*, %struct.socket** %4, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 0
  store i32* @rds_proto_ops, i32** %12, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.sock*, %struct.sock** %5, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.sock*, %struct.sock** %5, align 8
  %17 = call %struct.rds_sock* @rds_sk_to_rs(%struct.sock* %16)
  store %struct.rds_sock* %17, %struct.rds_sock** %7, align 8
  %18 = load %struct.rds_sock*, %struct.rds_sock** %7, align 8
  %19 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %18, i32 0, i32 8
  %20 = call i32 @spin_lock_init(i32* %19)
  %21 = load %struct.rds_sock*, %struct.rds_sock** %7, align 8
  %22 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %21, i32 0, i32 7
  %23 = call i32 @rwlock_init(i32* %22)
  %24 = load %struct.rds_sock*, %struct.rds_sock** %7, align 8
  %25 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %24, i32 0, i32 6
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.rds_sock*, %struct.rds_sock** %7, align 8
  %28 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %27, i32 0, i32 5
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.rds_sock*, %struct.rds_sock** %7, align 8
  %31 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %30, i32 0, i32 4
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.rds_sock*, %struct.rds_sock** %7, align 8
  %34 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %33, i32 0, i32 3
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.rds_sock*, %struct.rds_sock** %7, align 8
  %37 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %36, i32 0, i32 2
  %38 = call i32 @spin_lock_init(i32* %37)
  %39 = load i32, i32* @RB_ROOT, align 4
  %40 = load %struct.rds_sock*, %struct.rds_sock** %7, align 8
  %41 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = call i32 @spin_lock_bh(i32* @rds_sock_lock)
  %43 = load %struct.rds_sock*, %struct.rds_sock** %7, align 8
  %44 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %43, i32 0, i32 0
  %45 = call i32 @list_add_tail(i32* %44, i32* @rds_sock_list)
  %46 = load i32, i32* @rds_sock_count, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* @rds_sock_count, align 4
  %48 = call i32 @spin_unlock_bh(i32* @rds_sock_lock)
  ret i32 0
}

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local %struct.rds_sock* @rds_sk_to_rs(%struct.sock*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
