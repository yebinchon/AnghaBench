; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_cgroup.c_cls_cgroup_classify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_cgroup.c_cls_cgroup_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.tcf_proto = type { %struct.cls_cgroup_head* }
%struct.cls_cgroup_head = type { i32, i32 }
%struct.tcf_result = type { i64, i64 }
%struct.TYPE_4__ = type { i64 }

@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_result*)* @cls_cgroup_classify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cls_cgroup_classify(%struct.sk_buff* %0, %struct.tcf_proto* %1, %struct.tcf_result* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tcf_proto*, align 8
  %7 = alloca %struct.tcf_result*, align 8
  %8 = alloca %struct.cls_cgroup_head*, align 8
  %9 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tcf_proto* %1, %struct.tcf_proto** %6, align 8
  store %struct.tcf_result* %2, %struct.tcf_result** %7, align 8
  %10 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %11 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %10, i32 0, i32 0
  %12 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %11, align 8
  store %struct.cls_cgroup_head* %12, %struct.cls_cgroup_head** %8, align 8
  %13 = call i32 (...) @rcu_read_lock()
  %14 = load i32, i32* @current, align 4
  %15 = call %struct.TYPE_4__* @task_cls_state(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  %18 = call i32 (...) @rcu_read_unlock()
  %19 = call i64 (...) @in_serving_softirq()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %3
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 -1, i32* %4, align 4
  br label %55

27:                                               ; preds = %21
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %9, align 8
  br label %33

33:                                               ; preds = %27, %3
  %34 = load i64, i64* %9, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store i32 -1, i32* %4, align 4
  br label %55

37:                                               ; preds = %33
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %8, align 8
  %40 = getelementptr inbounds %struct.cls_cgroup_head, %struct.cls_cgroup_head* %39, i32 0, i32 1
  %41 = call i32 @tcf_em_tree_match(%struct.sk_buff* %38, i32* %40, i32* null)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  store i32 -1, i32* %4, align 4
  br label %55

44:                                               ; preds = %37
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %47 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %49 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %8, align 8
  %52 = getelementptr inbounds %struct.cls_cgroup_head, %struct.cls_cgroup_head* %51, i32 0, i32 0
  %53 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %54 = call i32 @tcf_exts_exec(%struct.sk_buff* %50, i32* %52, %struct.tcf_result* %53)
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %44, %43, %36, %26
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.TYPE_4__* @task_cls_state(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @in_serving_softirq(...) #1

declare dso_local i32 @tcf_em_tree_match(%struct.sk_buff*, i32*, i32*) #1

declare dso_local i32 @tcf_exts_exec(%struct.sk_buff*, i32*, %struct.tcf_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
