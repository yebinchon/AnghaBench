; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_qfq.c_qfq_front_slot_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_qfq.c_qfq_front_slot_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_group = type { i64, i32, i32* }
%struct.qfq_class = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qfq_group*)* @qfq_front_slot_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qfq_front_slot_remove(%struct.qfq_group* %0) #0 {
  %2 = alloca %struct.qfq_group*, align 8
  %3 = alloca %struct.qfq_class*, align 8
  store %struct.qfq_group* %0, %struct.qfq_group** %2, align 8
  %4 = load %struct.qfq_group*, %struct.qfq_group** %2, align 8
  %5 = call %struct.qfq_class* @qfq_slot_head(%struct.qfq_group* %4)
  store %struct.qfq_class* %5, %struct.qfq_class** %3, align 8
  %6 = load %struct.qfq_class*, %struct.qfq_class** %3, align 8
  %7 = icmp ne %struct.qfq_class* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.qfq_class*, %struct.qfq_class** %3, align 8
  %12 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %11, i32 0, i32 0
  %13 = call i32 @hlist_del(i32* %12)
  %14 = load %struct.qfq_group*, %struct.qfq_group** %2, align 8
  %15 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.qfq_group*, %struct.qfq_group** %2, align 8
  %18 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = call i64 @hlist_empty(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.qfq_group*, %struct.qfq_group** %2, align 8
  %25 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %24, i32 0, i32 1
  %26 = call i32 @__clear_bit(i32 0, i32* %25)
  br label %27

27:                                               ; preds = %23, %1
  ret void
}

declare dso_local %struct.qfq_class* @qfq_slot_head(%struct.qfq_group*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i64 @hlist_empty(i32*) #1

declare dso_local i32 @__clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
