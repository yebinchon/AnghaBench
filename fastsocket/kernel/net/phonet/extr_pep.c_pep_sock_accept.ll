; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_pep.c_pep_sock_accept.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_pep.c_pep_sock_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.pep_sock = type { i32, %struct.sock*, i32 }
%struct.sk_buff = type { i32 }

@O_NONBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.sock*, i32, i32*)* @pep_sock_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @pep_sock_accept(%struct.sock* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.pep_sock*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call %struct.pep_sock* @pep_sk(%struct.sock* %11)
  store %struct.pep_sock* %12, %struct.pep_sock** %7, align 8
  store %struct.sock* null, %struct.sock** %8, align 8
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call i32 @lock_sock(%struct.sock* %13)
  %15 = load %struct.sock*, %struct.sock** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @O_NONBLOCK, align 4
  %18 = and i32 %16, %17
  %19 = call i32 @pep_wait_connreq(%struct.sock* %15, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %59

23:                                               ; preds = %3
  %24 = load %struct.pep_sock*, %struct.pep_sock** %7, align 8
  %25 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %24, i32 0, i32 2
  %26 = call %struct.sock* @__sk_head(i32* %25)
  store %struct.sock* %26, %struct.sock** %8, align 8
  %27 = load %struct.sock*, %struct.sock** %8, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 0
  %29 = call %struct.sk_buff* @skb_dequeue(i32* %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %9, align 8
  %30 = load %struct.sock*, %struct.sock** %8, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %32 = call i32 @pep_accept_conn(%struct.sock* %30, %struct.sk_buff* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %23
  %36 = load %struct.sock*, %struct.sock** %8, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 0
  %38 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %39 = call i32 @skb_queue_head(i32* %37, %struct.sk_buff* %38)
  store %struct.sock* null, %struct.sock** %8, align 8
  br label %59

40:                                               ; preds = %23
  %41 = load %struct.sock*, %struct.sock** %4, align 8
  %42 = call i32 @sock_hold(%struct.sock* %41)
  %43 = load %struct.sock*, %struct.sock** %4, align 8
  %44 = load %struct.sock*, %struct.sock** %8, align 8
  %45 = call %struct.pep_sock* @pep_sk(%struct.sock* %44)
  %46 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %45, i32 0, i32 1
  store %struct.sock* %43, %struct.sock** %46, align 8
  %47 = load %struct.sock*, %struct.sock** %8, align 8
  %48 = call i32 @sock_hold(%struct.sock* %47)
  %49 = load %struct.sock*, %struct.sock** %8, align 8
  %50 = call i32 @sk_del_node_init(%struct.sock* %49)
  %51 = load %struct.sock*, %struct.sock** %4, align 8
  %52 = call i32 @sk_acceptq_removed(%struct.sock* %51)
  %53 = load %struct.sock*, %struct.sock** %8, align 8
  %54 = load %struct.pep_sock*, %struct.pep_sock** %7, align 8
  %55 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %54, i32 0, i32 0
  %56 = call i32 @sk_add_node(%struct.sock* %53, i32* %55)
  %57 = load %struct.sock*, %struct.sock** %8, align 8
  %58 = call i32 @__sock_put(%struct.sock* %57)
  br label %59

59:                                               ; preds = %40, %35, %22
  %60 = load %struct.sock*, %struct.sock** %4, align 8
  %61 = call i32 @release_sock(%struct.sock* %60)
  %62 = load i32, i32* %10, align 4
  %63 = load i32*, i32** %6, align 8
  store i32 %62, i32* %63, align 4
  %64 = load %struct.sock*, %struct.sock** %8, align 8
  ret %struct.sock* %64
}

declare dso_local %struct.pep_sock* @pep_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @pep_wait_connreq(%struct.sock*, i32) #1

declare dso_local %struct.sock* @__sk_head(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @pep_accept_conn(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @sk_del_node_init(%struct.sock*) #1

declare dso_local i32 @sk_acceptq_removed(%struct.sock*) #1

declare dso_local i32 @sk_add_node(%struct.sock*, i32*) #1

declare dso_local i32 @__sock_put(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
