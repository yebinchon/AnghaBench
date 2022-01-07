; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-ack.c_rxrpc_extract_ackinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-ack.c_rxrpc_extract_ackinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.rxrpc_peer* }
%struct.rxrpc_peer = type { i32, i64, i32, i64 }
%struct.sk_buff = type { i32 }
%struct.rxrpc_ackinfo = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c" [no ackinfo]\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Rx ACK %%%u Info { rx=%u max=%u rwin=%u jm=%u }\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Net MTU %u (maxdata %u)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_call*, %struct.sk_buff*, i32, i32)* @rxrpc_extract_ackinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_extract_ackinfo(%struct.rxrpc_call* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rxrpc_call*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rxrpc_ackinfo, align 4
  %10 = alloca %struct.rxrpc_peer*, align 8
  %11 = alloca i32, align 4
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = load i32, i32* %8, align 4
  %14 = add nsw i32 %13, 3
  %15 = call i64 @skb_copy_bits(%struct.sk_buff* %12, i32 %14, %struct.rxrpc_ackinfo* %9, i32 16)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = call i32 @_leave(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %78

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = getelementptr inbounds %struct.rxrpc_ackinfo, %struct.rxrpc_ackinfo* %9, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ntohl(i32 %22)
  %24 = getelementptr inbounds %struct.rxrpc_ackinfo, %struct.rxrpc_ackinfo* %9, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ntohl(i32 %25)
  %27 = getelementptr inbounds %struct.rxrpc_ackinfo, %struct.rxrpc_ackinfo* %9, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ntohl(i32 %28)
  %30 = getelementptr inbounds %struct.rxrpc_ackinfo, %struct.rxrpc_ackinfo* %9, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ntohl(i32 %31)
  %33 = call i32 @_proto(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %23, i32 %26, i32 %29, i32 %32)
  %34 = getelementptr inbounds %struct.rxrpc_ackinfo, %struct.rxrpc_ackinfo* %9, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ntohl(i32 %35)
  %37 = getelementptr inbounds %struct.rxrpc_ackinfo, %struct.rxrpc_ackinfo* %9, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ntohl(i32 %38)
  %40 = call i32 @min(i32 %36, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %42 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %46, align 8
  store %struct.rxrpc_peer* %47, %struct.rxrpc_peer** %10, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %10, align 8
  %50 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ult i32 %48, %51
  br i1 %52, label %53, label %78

53:                                               ; preds = %19
  %54 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %10, align 8
  %55 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %54, i32 0, i32 2
  %56 = call i32 @spin_lock_bh(i32* %55)
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %10, align 8
  %59 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %11, align 4
  %61 = zext i32 %60 to i64
  %62 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %10, align 8
  %63 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  %66 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %10, align 8
  %67 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %10, align 8
  %69 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %68, i32 0, i32 2
  %70 = call i32 @spin_unlock_bh(i32* %69)
  %71 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %10, align 8
  %72 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %10, align 8
  %75 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @_net(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %73, i32 %76)
  br label %78

78:                                               ; preds = %17, %53, %19
  ret void
}

declare dso_local i64 @skb_copy_bits(%struct.sk_buff*, i32, %struct.rxrpc_ackinfo*, i32) #1

declare dso_local i32 @_leave(i8*) #1

declare dso_local i32 @_proto(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @_net(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
