; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_protocol.c_inet_del_protocol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_protocol.c_inet_del_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_protocol = type { i32 }

@MAX_INET_PROTOS = common dso_local global i32 0, align 4
@inet_proto_lock = common dso_local global i32 0, align 4
@inet_protos = common dso_local global %struct.net_protocol** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_del_protocol(%struct.net_protocol* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.net_protocol*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_protocol* %0, %struct.net_protocol** %3, align 8
  store i8 %1, i8* %4, align 1
  %7 = load i8, i8* %4, align 1
  %8 = zext i8 %7 to i32
  %9 = load i32, i32* @MAX_INET_PROTOS, align 4
  %10 = sub nsw i32 %9, 1
  %11 = and i32 %8, %10
  store i32 %11, i32* %5, align 4
  %12 = call i32 @spin_lock_bh(i32* @inet_proto_lock)
  %13 = load %struct.net_protocol**, %struct.net_protocol*** @inet_protos, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.net_protocol*, %struct.net_protocol** %13, i64 %15
  %17 = load %struct.net_protocol*, %struct.net_protocol** %16, align 8
  %18 = load %struct.net_protocol*, %struct.net_protocol** %3, align 8
  %19 = icmp eq %struct.net_protocol* %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.net_protocol**, %struct.net_protocol*** @inet_protos, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.net_protocol*, %struct.net_protocol** %21, i64 %23
  store %struct.net_protocol* null, %struct.net_protocol** %24, align 8
  store i32 0, i32* %6, align 4
  br label %26

25:                                               ; preds = %2
  store i32 -1, i32* %6, align 4
  br label %26

26:                                               ; preds = %25, %20
  %27 = call i32 @spin_unlock_bh(i32* @inet_proto_lock)
  %28 = call i32 (...) @synchronize_net()
  %29 = load i32, i32* %6, align 4
  ret i32 %29
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @synchronize_net(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
