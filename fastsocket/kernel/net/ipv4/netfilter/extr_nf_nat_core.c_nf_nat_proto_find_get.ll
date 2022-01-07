; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_core.c_nf_nat_proto_find_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_core.c_nf_nat_proto_find_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_nat_protocol = type { i32 }

@nf_nat_unknown_protocol = common dso_local global %struct.nf_nat_protocol zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nf_nat_protocol* @nf_nat_proto_find_get(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nf_nat_protocol*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 (...) @rcu_read_lock()
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.nf_nat_protocol* @__nf_nat_proto_find(i32 %5)
  store %struct.nf_nat_protocol* %6, %struct.nf_nat_protocol** %3, align 8
  %7 = load %struct.nf_nat_protocol*, %struct.nf_nat_protocol** %3, align 8
  %8 = getelementptr inbounds %struct.nf_nat_protocol, %struct.nf_nat_protocol* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @try_module_get(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.nf_nat_protocol* @nf_nat_unknown_protocol, %struct.nf_nat_protocol** %3, align 8
  br label %13

13:                                               ; preds = %12, %1
  %14 = call i32 (...) @rcu_read_unlock()
  %15 = load %struct.nf_nat_protocol*, %struct.nf_nat_protocol** %3, align 8
  ret %struct.nf_nat_protocol* %15
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nf_nat_protocol* @__nf_nat_proto_find(i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
