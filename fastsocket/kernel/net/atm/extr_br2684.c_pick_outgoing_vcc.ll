; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_br2684.c_pick_outgoing_vcc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_br2684.c_pick_outgoing_vcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.br2684_vcc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.br2684_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.br2684_vcc* (%struct.sk_buff*, %struct.br2684_dev*)* @pick_outgoing_vcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.br2684_vcc* @pick_outgoing_vcc(%struct.sk_buff* %0, %struct.br2684_dev* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.br2684_dev*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.br2684_dev* %1, %struct.br2684_dev** %4, align 8
  %5 = load %struct.br2684_dev*, %struct.br2684_dev** %4, align 8
  %6 = getelementptr inbounds %struct.br2684_dev, %struct.br2684_dev* %5, i32 0, i32 0
  %7 = call i64 @list_empty(%struct.TYPE_2__* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %16

10:                                               ; preds = %2
  %11 = load %struct.br2684_dev*, %struct.br2684_dev** %4, align 8
  %12 = getelementptr inbounds %struct.br2684_dev, %struct.br2684_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.br2684_vcc* @list_entry_brvcc(i32 %14)
  br label %16

16:                                               ; preds = %10, %9
  %17 = phi %struct.br2684_vcc* [ null, %9 ], [ %15, %10 ]
  ret %struct.br2684_vcc* %17
}

declare dso_local i64 @list_empty(%struct.TYPE_2__*) #1

declare dso_local %struct.br2684_vcc* @list_entry_brvcc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
