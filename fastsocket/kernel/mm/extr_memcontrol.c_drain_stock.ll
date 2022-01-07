; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_drain_stock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_drain_stock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memcg_stock_pcp = type { i32, %struct.mem_cgroup* }
%struct.mem_cgroup = type { i32, i32 }

@do_swap_account = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.memcg_stock_pcp*)* @drain_stock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drain_stock(%struct.memcg_stock_pcp* %0) #0 {
  %2 = alloca %struct.memcg_stock_pcp*, align 8
  %3 = alloca %struct.mem_cgroup*, align 8
  store %struct.memcg_stock_pcp* %0, %struct.memcg_stock_pcp** %2, align 8
  %4 = load %struct.memcg_stock_pcp*, %struct.memcg_stock_pcp** %2, align 8
  %5 = getelementptr inbounds %struct.memcg_stock_pcp, %struct.memcg_stock_pcp* %4, i32 0, i32 1
  %6 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  store %struct.mem_cgroup* %6, %struct.mem_cgroup** %3, align 8
  %7 = load %struct.memcg_stock_pcp*, %struct.memcg_stock_pcp** %2, align 8
  %8 = getelementptr inbounds %struct.memcg_stock_pcp, %struct.memcg_stock_pcp* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %13 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %12, i32 0, i32 1
  %14 = load %struct.memcg_stock_pcp*, %struct.memcg_stock_pcp** %2, align 8
  %15 = getelementptr inbounds %struct.memcg_stock_pcp, %struct.memcg_stock_pcp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @res_counter_uncharge(i32* %13, i32 %16)
  %18 = load i64, i64* @do_swap_account, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %11
  %21 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %22 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %21, i32 0, i32 0
  %23 = load %struct.memcg_stock_pcp*, %struct.memcg_stock_pcp** %2, align 8
  %24 = getelementptr inbounds %struct.memcg_stock_pcp, %struct.memcg_stock_pcp* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @res_counter_uncharge(i32* %22, i32 %25)
  br label %27

27:                                               ; preds = %20, %11
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.memcg_stock_pcp*, %struct.memcg_stock_pcp** %2, align 8
  %30 = getelementptr inbounds %struct.memcg_stock_pcp, %struct.memcg_stock_pcp* %29, i32 0, i32 1
  store %struct.mem_cgroup* null, %struct.mem_cgroup** %30, align 8
  %31 = load %struct.memcg_stock_pcp*, %struct.memcg_stock_pcp** %2, align 8
  %32 = getelementptr inbounds %struct.memcg_stock_pcp, %struct.memcg_stock_pcp* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  ret void
}

declare dso_local i32 @res_counter_uncharge(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
