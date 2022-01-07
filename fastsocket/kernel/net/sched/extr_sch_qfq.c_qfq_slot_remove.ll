; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_qfq.c_qfq_slot_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_qfq.c_qfq_slot_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_sched = type { i32 }
%struct.qfq_group = type { i32, i32, i32, i32, i32* }
%struct.qfq_class = type { i32, i32 }

@QFQ_MAX_SLOTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qfq_sched*, %struct.qfq_group*, %struct.qfq_class*)* @qfq_slot_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qfq_slot_remove(%struct.qfq_sched* %0, %struct.qfq_group* %1, %struct.qfq_class* %2) #0 {
  %4 = alloca %struct.qfq_sched*, align 8
  %5 = alloca %struct.qfq_group*, align 8
  %6 = alloca %struct.qfq_class*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qfq_sched* %0, %struct.qfq_sched** %4, align 8
  store %struct.qfq_group* %1, %struct.qfq_group** %5, align 8
  store %struct.qfq_class* %2, %struct.qfq_class** %6, align 8
  %10 = load %struct.qfq_class*, %struct.qfq_class** %6, align 8
  %11 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %14 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @qfq_round_down(i32 %12, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %19 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sub i32 %17, %20
  %22 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %23 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = lshr i32 %21, %24
  store i32 %25, i32* %8, align 4
  %26 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %27 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = add i32 %28, %29
  %31 = load i32, i32* @QFQ_MAX_SLOTS, align 4
  %32 = urem i32 %30, %31
  store i32 %32, i32* %7, align 4
  %33 = load %struct.qfq_class*, %struct.qfq_class** %6, align 8
  %34 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %33, i32 0, i32 0
  %35 = call i32 @hlist_del(i32* %34)
  %36 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %37 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = call i64 @hlist_empty(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %3
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %47 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %46, i32 0, i32 3
  %48 = call i32 @__clear_bit(i32 %45, i32* %47)
  br label %49

49:                                               ; preds = %44, %3
  ret void
}

declare dso_local i32 @qfq_round_down(i32, i32) #1

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i64 @hlist_empty(i32*) #1

declare dso_local i32 @__clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
