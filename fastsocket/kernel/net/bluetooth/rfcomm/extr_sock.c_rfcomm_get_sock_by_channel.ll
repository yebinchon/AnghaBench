; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_sock.c_rfcomm_get_sock_by_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_sock.c_rfcomm_get_sock_by_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sock = type { i32 }

@rfcomm_sk_list = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (i32, i32, i32*)* @rfcomm_get_sock_by_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @rfcomm_get_sock_by_channel(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sock*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = call i32 @read_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rfcomm_sk_list, i32 0, i32 0))
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = call %struct.sock* @__rfcomm_get_sock_by_channel(i32 %9, i32 %10, i32* %11)
  store %struct.sock* %12, %struct.sock** %7, align 8
  %13 = load %struct.sock*, %struct.sock** %7, align 8
  %14 = icmp ne %struct.sock* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.sock*, %struct.sock** %7, align 8
  %17 = call i32 @bh_lock_sock(%struct.sock* %16)
  br label %18

18:                                               ; preds = %15, %3
  %19 = call i32 @read_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rfcomm_sk_list, i32 0, i32 0))
  %20 = load %struct.sock*, %struct.sock** %7, align 8
  ret %struct.sock* %20
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.sock* @__rfcomm_get_sock_by_channel(i32, i32, i32*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
