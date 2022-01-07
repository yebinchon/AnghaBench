; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_qfq.c_qfq_update_class.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_qfq.c_qfq_update_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_group = type { i64, i32 }
%struct.qfq_class = type { i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qfq_group*, %struct.qfq_class*)* @qfq_update_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qfq_update_class(%struct.qfq_group* %0, %struct.qfq_class* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qfq_group*, align 8
  %5 = alloca %struct.qfq_class*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.qfq_group* %0, %struct.qfq_group** %4, align 8
  store %struct.qfq_class* %1, %struct.qfq_class** %5, align 8
  %8 = load %struct.qfq_class*, %struct.qfq_class** %5, align 8
  %9 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @qdisc_peek_len(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.qfq_class*, %struct.qfq_class** %5, align 8
  %13 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.qfq_class*, %struct.qfq_class** %5, align 8
  %16 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %15, i32 0, i32 1
  store i64 %14, i64* %16, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load %struct.qfq_group*, %struct.qfq_group** %4, align 8
  %21 = call i32 @qfq_front_slot_remove(%struct.qfq_group* %20)
  br label %55

22:                                               ; preds = %2
  %23 = load %struct.qfq_class*, %struct.qfq_class** %5, align 8
  %24 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = load %struct.qfq_class*, %struct.qfq_class** %5, align 8
  %29 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = mul nsw i64 %27, %30
  %32 = add nsw i64 %25, %31
  %33 = load %struct.qfq_class*, %struct.qfq_class** %5, align 8
  %34 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %33, i32 0, i32 2
  store i64 %32, i64* %34, align 8
  %35 = load %struct.qfq_class*, %struct.qfq_class** %5, align 8
  %36 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.qfq_group*, %struct.qfq_group** %4, align 8
  %39 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @qfq_round_down(i64 %37, i32 %40)
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.qfq_group*, %struct.qfq_group** %4, align 8
  %44 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %56

48:                                               ; preds = %22
  %49 = load %struct.qfq_group*, %struct.qfq_group** %4, align 8
  %50 = call i32 @qfq_front_slot_remove(%struct.qfq_group* %49)
  %51 = load %struct.qfq_group*, %struct.qfq_group** %4, align 8
  %52 = load %struct.qfq_class*, %struct.qfq_class** %5, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @qfq_slot_insert(%struct.qfq_group* %51, %struct.qfq_class* %52, i64 %53)
  br label %55

55:                                               ; preds = %48, %19
  store i32 1, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %47
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @qdisc_peek_len(i32) #1

declare dso_local i32 @qfq_front_slot_remove(%struct.qfq_group*) #1

declare dso_local i64 @qfq_round_down(i64, i32) #1

declare dso_local i32 @qfq_slot_insert(%struct.qfq_group*, %struct.qfq_class*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
