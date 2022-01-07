; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_af_phonet.c_phonet_proto_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_af_phonet.c_phonet_proto_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phonet_protocol = type { i32 }

@proto_tab_lock = common dso_local global i32 0, align 4
@proto_tab = common dso_local global %struct.phonet_protocol** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @phonet_proto_unregister(i32 %0, %struct.phonet_protocol* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phonet_protocol*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.phonet_protocol* %1, %struct.phonet_protocol** %4, align 8
  %5 = call i32 @mutex_lock(i32* @proto_tab_lock)
  %6 = load %struct.phonet_protocol**, %struct.phonet_protocol*** @proto_tab, align 8
  %7 = load i32, i32* %3, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.phonet_protocol*, %struct.phonet_protocol** %6, i64 %8
  %10 = load %struct.phonet_protocol*, %struct.phonet_protocol** %9, align 8
  %11 = load %struct.phonet_protocol*, %struct.phonet_protocol** %4, align 8
  %12 = icmp ne %struct.phonet_protocol* %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.phonet_protocol**, %struct.phonet_protocol*** @proto_tab, align 8
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.phonet_protocol*, %struct.phonet_protocol** %15, i64 %17
  %19 = load %struct.phonet_protocol*, %struct.phonet_protocol** %18, align 8
  %20 = call i32 @rcu_assign_pointer(%struct.phonet_protocol* %19, i32* null)
  %21 = call i32 @mutex_unlock(i32* @proto_tab_lock)
  %22 = call i32 (...) @synchronize_rcu()
  %23 = load %struct.phonet_protocol*, %struct.phonet_protocol** %4, align 8
  %24 = getelementptr inbounds %struct.phonet_protocol, %struct.phonet_protocol* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @proto_unregister(i32 %25)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @rcu_assign_pointer(%struct.phonet_protocol*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @proto_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
