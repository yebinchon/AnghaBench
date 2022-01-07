; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/packet/extr_af_packet.c_packet_sock_destruct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/packet/extr_af_packet.c_packet_sock_destruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32 }

@SOCK_DEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Attempt to release alive packet socket: %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @packet_sock_destruct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @packet_sock_destruct(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %3 = load %struct.sock*, %struct.sock** %2, align 8
  %4 = getelementptr inbounds %struct.sock, %struct.sock* %3, i32 0, i32 2
  %5 = call i32 @skb_queue_purge(i32* %4)
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 1
  %8 = call i32 @atomic_read(i32* %7)
  %9 = call i32 @WARN_ON(i32 %8)
  %10 = load %struct.sock*, %struct.sock** %2, align 8
  %11 = getelementptr inbounds %struct.sock, %struct.sock* %10, i32 0, i32 0
  %12 = call i32 @atomic_read(i32* %11)
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.sock*, %struct.sock** %2, align 8
  %15 = load i32, i32* @SOCK_DEAD, align 4
  %16 = call i32 @sock_flag(%struct.sock* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load %struct.sock*, %struct.sock** %2, align 8
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), %struct.sock* %19)
  br label %24

21:                                               ; preds = %1
  %22 = load %struct.sock*, %struct.sock** %2, align 8
  %23 = call i32 @sk_refcnt_debug_dec(%struct.sock* %22)
  br label %24

24:                                               ; preds = %21, %18
  ret void
}

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @pr_err(i8*, %struct.sock*) #1

declare dso_local i32 @sk_refcnt_debug_dec(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
