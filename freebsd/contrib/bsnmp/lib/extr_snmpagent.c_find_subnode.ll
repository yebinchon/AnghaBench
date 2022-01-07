; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpagent.c_find_subnode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpagent.c_find_subnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_node = type { i32 }
%struct.snmp_value = type { i32 }

@tree = common dso_local global %struct.snmp_node* null, align 8
@tree_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snmp_node* (%struct.snmp_value*)* @find_subnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snmp_node* @find_subnode(%struct.snmp_value* %0) #0 {
  %2 = alloca %struct.snmp_node*, align 8
  %3 = alloca %struct.snmp_value*, align 8
  %4 = alloca %struct.snmp_node*, align 8
  store %struct.snmp_value* %0, %struct.snmp_value** %3, align 8
  %5 = load %struct.snmp_node*, %struct.snmp_node** @tree, align 8
  store %struct.snmp_node* %5, %struct.snmp_node** %4, align 8
  br label %6

6:                                                ; preds = %23, %1
  %7 = load %struct.snmp_node*, %struct.snmp_node** %4, align 8
  %8 = load %struct.snmp_node*, %struct.snmp_node** @tree, align 8
  %9 = load i32, i32* @tree_size, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %8, i64 %10
  %12 = icmp ult %struct.snmp_node* %7, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %6
  %14 = load %struct.snmp_value*, %struct.snmp_value** %3, align 8
  %15 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %14, i32 0, i32 0
  %16 = load %struct.snmp_node*, %struct.snmp_node** %4, align 8
  %17 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %16, i32 0, i32 0
  %18 = call i64 @asn_is_suboid(i32* %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load %struct.snmp_node*, %struct.snmp_node** %4, align 8
  store %struct.snmp_node* %21, %struct.snmp_node** %2, align 8
  br label %27

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.snmp_node*, %struct.snmp_node** %4, align 8
  %25 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %24, i32 1
  store %struct.snmp_node* %25, %struct.snmp_node** %4, align 8
  br label %6

26:                                               ; preds = %6
  store %struct.snmp_node* null, %struct.snmp_node** %2, align 8
  br label %27

27:                                               ; preds = %26, %20
  %28 = load %struct.snmp_node*, %struct.snmp_node** %2, align 8
  ret %struct.snmp_node* %28
}

declare dso_local i64 @asn_is_suboid(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
