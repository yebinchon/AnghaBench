; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_flow.c_flow_key_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_flow.c_flow_key_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32)* @flow_key_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_key_get(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %58 [
    i32 129, label %7
    i32 144, label %10
    i32 135, label %13
    i32 133, label %16
    i32 134, label %19
    i32 143, label %22
    i32 136, label %25
    i32 142, label %28
    i32 141, label %31
    i32 137, label %34
    i32 140, label %37
    i32 138, label %40
    i32 139, label %43
    i32 132, label %46
    i32 130, label %49
    i32 131, label %52
    i32 128, label %55
  ]

7:                                                ; preds = %2
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call i32 @flow_get_src(%struct.sk_buff* %8)
  store i32 %9, i32* %3, align 4
  br label %60

10:                                               ; preds = %2
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call i32 @flow_get_dst(%struct.sk_buff* %11)
  store i32 %12, i32* %3, align 4
  br label %60

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call i32 @flow_get_proto(%struct.sk_buff* %14)
  store i32 %15, i32* %3, align 4
  br label %60

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call i32 @flow_get_proto_src(%struct.sk_buff* %17)
  store i32 %18, i32* %3, align 4
  br label %60

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i32 @flow_get_proto_dst(%struct.sk_buff* %20)
  store i32 %21, i32* %3, align 4
  br label %60

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = call i32 @flow_get_iif(%struct.sk_buff* %23)
  store i32 %24, i32* %3, align 4
  br label %60

25:                                               ; preds = %2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i32 @flow_get_priority(%struct.sk_buff* %26)
  store i32 %27, i32* %3, align 4
  br label %60

28:                                               ; preds = %2
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call i32 @flow_get_mark(%struct.sk_buff* %29)
  store i32 %30, i32* %3, align 4
  br label %60

31:                                               ; preds = %2
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call i32 @flow_get_nfct(%struct.sk_buff* %32)
  store i32 %33, i32* %3, align 4
  br label %60

34:                                               ; preds = %2
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = call i32 @flow_get_nfct_src(%struct.sk_buff* %35)
  store i32 %36, i32* %3, align 4
  br label %60

37:                                               ; preds = %2
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = call i32 @flow_get_nfct_dst(%struct.sk_buff* %38)
  store i32 %39, i32* %3, align 4
  br label %60

40:                                               ; preds = %2
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = call i32 @flow_get_nfct_proto_src(%struct.sk_buff* %41)
  store i32 %42, i32* %3, align 4
  br label %60

43:                                               ; preds = %2
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = call i32 @flow_get_nfct_proto_dst(%struct.sk_buff* %44)
  store i32 %45, i32* %3, align 4
  br label %60

46:                                               ; preds = %2
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = call i32 @flow_get_rtclassid(%struct.sk_buff* %47)
  store i32 %48, i32* %3, align 4
  br label %60

49:                                               ; preds = %2
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = call i32 @flow_get_skuid(%struct.sk_buff* %50)
  store i32 %51, i32* %3, align 4
  br label %60

52:                                               ; preds = %2
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = call i32 @flow_get_skgid(%struct.sk_buff* %53)
  store i32 %54, i32* %3, align 4
  br label %60

55:                                               ; preds = %2
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = call i32 @flow_get_vlan_tag(%struct.sk_buff* %56)
  store i32 %57, i32* %3, align 4
  br label %60

58:                                               ; preds = %2
  %59 = call i32 @WARN_ON(i32 1)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %55, %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %16, %13, %10, %7
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @flow_get_src(%struct.sk_buff*) #1

declare dso_local i32 @flow_get_dst(%struct.sk_buff*) #1

declare dso_local i32 @flow_get_proto(%struct.sk_buff*) #1

declare dso_local i32 @flow_get_proto_src(%struct.sk_buff*) #1

declare dso_local i32 @flow_get_proto_dst(%struct.sk_buff*) #1

declare dso_local i32 @flow_get_iif(%struct.sk_buff*) #1

declare dso_local i32 @flow_get_priority(%struct.sk_buff*) #1

declare dso_local i32 @flow_get_mark(%struct.sk_buff*) #1

declare dso_local i32 @flow_get_nfct(%struct.sk_buff*) #1

declare dso_local i32 @flow_get_nfct_src(%struct.sk_buff*) #1

declare dso_local i32 @flow_get_nfct_dst(%struct.sk_buff*) #1

declare dso_local i32 @flow_get_nfct_proto_src(%struct.sk_buff*) #1

declare dso_local i32 @flow_get_nfct_proto_dst(%struct.sk_buff*) #1

declare dso_local i32 @flow_get_rtclassid(%struct.sk_buff*) #1

declare dso_local i32 @flow_get_skuid(%struct.sk_buff*) #1

declare dso_local i32 @flow_get_skgid(%struct.sk_buff*) #1

declare dso_local i32 @flow_get_vlan_tag(%struct.sk_buff*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
