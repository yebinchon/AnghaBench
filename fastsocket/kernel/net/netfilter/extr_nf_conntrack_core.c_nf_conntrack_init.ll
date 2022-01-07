; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_core.c_nf_conntrack_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_core.c_nf_conntrack_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }

@init_net = common dso_local global i32 0, align 4
@ip_ct_attach = common dso_local global i32 0, align 4
@nf_conntrack_attach = common dso_local global i32* null, align 8
@nf_ct_destroy = common dso_local global i32 0, align 4
@destroy_conntrack = common dso_local global i32* null, align 8
@nf_ct_nat_offset = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_conntrack_init(%struct.net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %3, align 8
  %5 = load %struct.net*, %struct.net** %3, align 8
  %6 = call i64 @net_eq(%struct.net* %5, i32* @init_net)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = call i32 (...) @nf_conntrack_init_init_net()
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %41

13:                                               ; preds = %8
  br label %14

14:                                               ; preds = %13, %1
  %15 = load %struct.net*, %struct.net** %3, align 8
  %16 = call i32 @nf_conntrack_init_net(%struct.net* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %34

20:                                               ; preds = %14
  %21 = load %struct.net*, %struct.net** %3, align 8
  %22 = call i64 @net_eq(%struct.net* %21, i32* @init_net)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load i32, i32* @ip_ct_attach, align 4
  %26 = load i32*, i32** @nf_conntrack_attach, align 8
  %27 = call i32 @rcu_assign_pointer(i32 %25, i32* %26)
  %28 = load i32, i32* @nf_ct_destroy, align 4
  %29 = load i32*, i32** @destroy_conntrack, align 8
  %30 = call i32 @rcu_assign_pointer(i32 %28, i32* %29)
  %31 = load i32, i32* @nf_ct_nat_offset, align 4
  %32 = call i32 @rcu_assign_pointer(i32 %31, i32* null)
  br label %33

33:                                               ; preds = %24, %20
  store i32 0, i32* %2, align 4
  br label %43

34:                                               ; preds = %19
  %35 = load %struct.net*, %struct.net** %3, align 8
  %36 = call i64 @net_eq(%struct.net* %35, i32* @init_net)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 (...) @nf_conntrack_cleanup_init_net()
  br label %40

40:                                               ; preds = %38, %34
  br label %41

41:                                               ; preds = %40, %12
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %33
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @net_eq(%struct.net*, i32*) #1

declare dso_local i32 @nf_conntrack_init_init_net(...) #1

declare dso_local i32 @nf_conntrack_init_net(%struct.net*) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @nf_conntrack_cleanup_init_net(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
