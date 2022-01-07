; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_core.c_nf_ct_get_tuplepr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_core.c_nf_ct_get_tuplepr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conntrack_tuple = type { i32 }
%struct.nf_conntrack_l3proto = type { i32 (%struct.sk_buff*, i32, i32*, i32*)* }
%struct.nf_conntrack_l4proto = type { i32 }

@NF_ACCEPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_ct_get_tuplepr(%struct.sk_buff* %0, i32 %1, i32 %2, %struct.nf_conntrack_tuple* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nf_conntrack_tuple*, align 8
  %10 = alloca %struct.nf_conntrack_l3proto*, align 8
  %11 = alloca %struct.nf_conntrack_l4proto*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.nf_conntrack_tuple* %3, %struct.nf_conntrack_tuple** %9, align 8
  %15 = call i32 (...) @rcu_read_lock()
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.nf_conntrack_l3proto* @__nf_ct_l3proto_find(i32 %16)
  store %struct.nf_conntrack_l3proto* %17, %struct.nf_conntrack_l3proto** %10, align 8
  %18 = load %struct.nf_conntrack_l3proto*, %struct.nf_conntrack_l3proto** %10, align 8
  %19 = getelementptr inbounds %struct.nf_conntrack_l3proto, %struct.nf_conntrack_l3proto* %18, i32 0, i32 0
  %20 = load i32 (%struct.sk_buff*, i32, i32*, i32*)*, i32 (%struct.sk_buff*, i32, i32*, i32*)** %19, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 %20(%struct.sk_buff* %21, i32 %22, i32* %12, i32* %13)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* @NF_ACCEPT, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %5, align 4
  br label %44

29:                                               ; preds = %4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %13, align 4
  %32 = call %struct.nf_conntrack_l4proto* @__nf_ct_l4proto_find(i32 %30, i32 %31)
  store %struct.nf_conntrack_l4proto* %32, %struct.nf_conntrack_l4proto** %11, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %9, align 8
  %39 = load %struct.nf_conntrack_l3proto*, %struct.nf_conntrack_l3proto** %10, align 8
  %40 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %11, align 8
  %41 = call i32 @nf_ct_get_tuple(%struct.sk_buff* %33, i32 %34, i32 %35, i32 %36, i32 %37, %struct.nf_conntrack_tuple* %38, %struct.nf_conntrack_l3proto* %39, %struct.nf_conntrack_l4proto* %40)
  store i32 %41, i32* %14, align 4
  %42 = call i32 (...) @rcu_read_unlock()
  %43 = load i32, i32* %14, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %29, %27
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nf_conntrack_l3proto* @__nf_ct_l3proto_find(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.nf_conntrack_l4proto* @__nf_ct_l4proto_find(i32, i32) #1

declare dso_local i32 @nf_ct_get_tuple(%struct.sk_buff*, i32, i32, i32, i32, %struct.nf_conntrack_tuple*, %struct.nf_conntrack_l3proto*, %struct.nf_conntrack_l4proto*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
