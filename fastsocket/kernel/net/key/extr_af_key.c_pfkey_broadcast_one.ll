; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_broadcast_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_broadcast_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.sock = type { i64, i32 (%struct.sock*, i32)*, i32, i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.sk_buff**, i32, %struct.sock*)* @pfkey_broadcast_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_broadcast_one(%struct.sk_buff* %0, %struct.sk_buff** %1, i32 %2, %struct.sock* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.sk_buff** %1, %struct.sk_buff*** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sock* %3, %struct.sock** %8, align 8
  %10 = load i32, i32* @ENOBUFS, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load %struct.sock*, %struct.sock** %8, align 8
  %13 = call i32 @sock_hold(%struct.sock* %12)
  %14 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %16 = icmp eq %struct.sk_buff* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = call i64 @atomic_read(i32* %19)
  %21 = icmp ne i64 %20, 1
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %23, i32 %24)
  %26 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  store %struct.sk_buff* %25, %struct.sk_buff** %26, align 8
  br label %33

27:                                               ; preds = %17
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  store %struct.sk_buff* %28, %struct.sk_buff** %29, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 1
  %32 = call i32 @atomic_inc(i32* %31)
  br label %33

33:                                               ; preds = %27, %22
  br label %34

34:                                               ; preds = %33, %4
  %35 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %35, align 8
  %37 = icmp ne %struct.sk_buff* %36, null
  br i1 %37, label %38, label %70

38:                                               ; preds = %34
  %39 = load %struct.sock*, %struct.sock** %8, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 3
  %41 = call i64 @atomic_read(i32* %40)
  %42 = load %struct.sock*, %struct.sock** %8, align 8
  %43 = getelementptr inbounds %struct.sock, %struct.sock* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sle i64 %41, %44
  br i1 %45, label %46, label %69

46:                                               ; preds = %38
  %47 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %47, align 8
  %49 = call i32 @skb_orphan(%struct.sk_buff* %48)
  %50 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %50, align 8
  %52 = load %struct.sock*, %struct.sock** %8, align 8
  %53 = call i32 @skb_set_owner_r(%struct.sk_buff* %51, %struct.sock* %52)
  %54 = load %struct.sock*, %struct.sock** %8, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 2
  %56 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %56, align 8
  %58 = call i32 @skb_queue_tail(i32* %55, %struct.sk_buff* %57)
  %59 = load %struct.sock*, %struct.sock** %8, align 8
  %60 = getelementptr inbounds %struct.sock, %struct.sock* %59, i32 0, i32 1
  %61 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %60, align 8
  %62 = load %struct.sock*, %struct.sock** %8, align 8
  %63 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %63, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 %61(%struct.sock* %62, i32 %66)
  %68 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %68, align 8
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %46, %38
  br label %70

70:                                               ; preds = %69, %34
  %71 = load %struct.sock*, %struct.sock** %8, align 8
  %72 = call i32 @sock_put(%struct.sock* %71)
  %73 = load i32, i32* %9, align 4
  ret i32 %73
}

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_owner_r(%struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
