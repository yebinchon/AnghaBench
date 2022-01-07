; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.c___flow_tbl_rehash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.c___flow_tbl_rehash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_table = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.flow_table* (%struct.flow_table*, i32)* @__flow_tbl_rehash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.flow_table* @__flow_tbl_rehash(%struct.flow_table* %0, i32 %1) #0 {
  %3 = alloca %struct.flow_table*, align 8
  %4 = alloca %struct.flow_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.flow_table*, align 8
  store %struct.flow_table* %0, %struct.flow_table** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call %struct.flow_table* @ovs_flow_tbl_alloc(i32 %7)
  store %struct.flow_table* %8, %struct.flow_table** %6, align 8
  %9 = load %struct.flow_table*, %struct.flow_table** %6, align 8
  %10 = icmp ne %struct.flow_table* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.flow_table* @ERR_PTR(i32 %13)
  store %struct.flow_table* %14, %struct.flow_table** %3, align 8
  br label %20

15:                                               ; preds = %2
  %16 = load %struct.flow_table*, %struct.flow_table** %4, align 8
  %17 = load %struct.flow_table*, %struct.flow_table** %6, align 8
  %18 = call i32 @flow_table_copy_flows(%struct.flow_table* %16, %struct.flow_table* %17)
  %19 = load %struct.flow_table*, %struct.flow_table** %6, align 8
  store %struct.flow_table* %19, %struct.flow_table** %3, align 8
  br label %20

20:                                               ; preds = %15, %11
  %21 = load %struct.flow_table*, %struct.flow_table** %3, align 8
  ret %struct.flow_table* %21
}

declare dso_local %struct.flow_table* @ovs_flow_tbl_alloc(i32) #1

declare dso_local %struct.flow_table* @ERR_PTR(i32) #1

declare dso_local i32 @flow_table_copy_flows(%struct.flow_table*, %struct.flow_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
