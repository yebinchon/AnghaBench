; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.c_find_bucket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.c_find_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlist_head = type { i32 }
%struct.flow_table = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hlist_head* (%struct.flow_table*, i32)* @find_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hlist_head* @find_bucket(%struct.flow_table* %0, i32 %1) #0 {
  %3 = alloca %struct.flow_table*, align 8
  %4 = alloca i32, align 4
  store %struct.flow_table* %0, %struct.flow_table** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.flow_table*, %struct.flow_table** %3, align 8
  %7 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @jhash_1word(i32 %5, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.flow_table*, %struct.flow_table** %3, align 8
  %11 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.flow_table*, %struct.flow_table** %3, align 8
  %15 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %16, 1
  %18 = and i32 %13, %17
  %19 = call %struct.hlist_head* @flex_array_get(i32 %12, i32 %18)
  ret %struct.hlist_head* %19
}

declare dso_local i32 @jhash_1word(i32, i32) #1

declare dso_local %struct.hlist_head* @flex_array_get(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
