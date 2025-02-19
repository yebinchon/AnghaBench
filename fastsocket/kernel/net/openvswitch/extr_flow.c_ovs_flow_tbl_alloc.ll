; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.c_ovs_flow_tbl_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.c_ovs_flow_tbl_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_table = type { i32, i32, i32, i64, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.flow_table* @ovs_flow_tbl_alloc(i32 %0) #0 {
  %2 = alloca %struct.flow_table*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.flow_table*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.flow_table* @kmalloc(i32 40, i32 %5)
  store %struct.flow_table* %6, %struct.flow_table** %4, align 8
  %7 = load %struct.flow_table*, %struct.flow_table** %4, align 8
  %8 = icmp ne %struct.flow_table* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.flow_table* null, %struct.flow_table** %2, align 8
  br label %36

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @alloc_buckets(i32 %11)
  %13 = load %struct.flow_table*, %struct.flow_table** %4, align 8
  %14 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 8
  %15 = load %struct.flow_table*, %struct.flow_table** %4, align 8
  %16 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %10
  %20 = load %struct.flow_table*, %struct.flow_table** %4, align 8
  %21 = call i32 @kfree(%struct.flow_table* %20)
  store %struct.flow_table* null, %struct.flow_table** %2, align 8
  br label %36

22:                                               ; preds = %10
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.flow_table*, %struct.flow_table** %4, align 8
  %25 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.flow_table*, %struct.flow_table** %4, align 8
  %27 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %26, i32 0, i32 4
  store i64 0, i64* %27, align 8
  %28 = load %struct.flow_table*, %struct.flow_table** %4, align 8
  %29 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load %struct.flow_table*, %struct.flow_table** %4, align 8
  %31 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  %32 = load %struct.flow_table*, %struct.flow_table** %4, align 8
  %33 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %32, i32 0, i32 2
  %34 = call i32 @get_random_bytes(i32* %33, i32 4)
  %35 = load %struct.flow_table*, %struct.flow_table** %4, align 8
  store %struct.flow_table* %35, %struct.flow_table** %2, align 8
  br label %36

36:                                               ; preds = %22, %19, %9
  %37 = load %struct.flow_table*, %struct.flow_table** %2, align 8
  ret %struct.flow_table* %37
}

declare dso_local %struct.flow_table* @kmalloc(i32, i32) #1

declare dso_local i32 @alloc_buckets(i32) #1

declare dso_local i32 @kfree(%struct.flow_table*) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
