; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_flow.c_flow_get_nfct_proto_src.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_flow.c_flow_get_nfct_proto_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }

@src = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @flow_get_nfct_proto_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_get_nfct_proto_src(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %4 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @src, i32 0, i32 0, i32 0), align 4
  %6 = call i32 @CTTUPLE(%struct.sk_buff* %4, i32 %5)
  %7 = call i32 @ntohs(i32 %6)
  store i32 %7, i32* %2, align 4
  br label %11

8:                                                ; No predecessors!
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = call i32 @flow_get_proto_src(%struct.sk_buff* %9)
  store i32 %10, i32* %2, align 4
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i32, i32* %2, align 4
  ret i32 %12
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @CTTUPLE(%struct.sk_buff*, i32) #1

declare dso_local i32 @flow_get_proto_src(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
