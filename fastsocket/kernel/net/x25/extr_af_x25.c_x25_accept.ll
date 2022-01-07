; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_af_x25.c_x25_accept.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_af_x25.c_x25_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.sock* }
%struct.sock = type { i64, i64, i32, i32, i32 }
%struct.sk_buff = type { %struct.sock* }

@EINVAL = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@SS_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.socket*, i32)* @x25_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x25_accept(%struct.socket* %0, %struct.socket* %1, i32 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.socket*, %struct.socket** %4, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 1
  %13 = load %struct.sock*, %struct.sock** %12, align 8
  store %struct.sock* %13, %struct.sock** %7, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %10, align 4
  %16 = load %struct.sock*, %struct.sock** %7, align 8
  %17 = icmp ne %struct.sock* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.sock*, %struct.sock** %7, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TCP_LISTEN, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %3
  br label %77

25:                                               ; preds = %18
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %10, align 4
  %28 = load %struct.sock*, %struct.sock** %7, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SOCK_SEQPACKET, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %77

34:                                               ; preds = %25
  %35 = load %struct.sock*, %struct.sock** %7, align 8
  %36 = call i32 @lock_sock(%struct.sock* %35)
  %37 = load %struct.sock*, %struct.sock** %7, align 8
  %38 = load %struct.sock*, %struct.sock** %7, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @x25_wait_for_data(%struct.sock* %37, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %74

45:                                               ; preds = %34
  %46 = load %struct.sock*, %struct.sock** %7, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 3
  %48 = call %struct.sk_buff* @skb_dequeue(i32* %47)
  store %struct.sk_buff* %48, %struct.sk_buff** %9, align 8
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %10, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load %struct.sock*, %struct.sock** %52, align 8
  %54 = icmp ne %struct.sock* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %45
  br label %74

56:                                               ; preds = %45
  %57 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load %struct.sock*, %struct.sock** %58, align 8
  store %struct.sock* %59, %struct.sock** %8, align 8
  %60 = load %struct.sock*, %struct.sock** %8, align 8
  %61 = load %struct.socket*, %struct.socket** %5, align 8
  %62 = call i32 @sock_graft(%struct.sock* %60, %struct.socket* %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  store %struct.sock* null, %struct.sock** %64, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %66 = call i32 @kfree_skb(%struct.sk_buff* %65)
  %67 = load %struct.sock*, %struct.sock** %7, align 8
  %68 = getelementptr inbounds %struct.sock, %struct.sock* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %68, align 8
  %71 = load i32, i32* @SS_CONNECTED, align 4
  %72 = load %struct.socket*, %struct.socket** %5, align 8
  %73 = getelementptr inbounds %struct.socket, %struct.socket* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  store i32 0, i32* %10, align 4
  br label %74

74:                                               ; preds = %56, %55, %44
  %75 = load %struct.sock*, %struct.sock** %7, align 8
  %76 = call i32 @release_sock(%struct.sock* %75)
  br label %77

77:                                               ; preds = %74, %33, %24
  %78 = load i32, i32* %10, align 4
  ret i32 %78
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @x25_wait_for_data(%struct.sock*, i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @sock_graft(%struct.sock*, %struct.socket*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
