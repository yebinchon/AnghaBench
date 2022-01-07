; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_qfq.c_qfq_slot_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_qfq.c_qfq_slot_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_class = type { i32 }
%struct.qfq_group = type { i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"qfq slot_scan: grp %u full %#lx\0A\00", align 1
@QFQ_MAX_SLOTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qfq_class* (%struct.qfq_group*)* @qfq_slot_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qfq_class* @qfq_slot_scan(%struct.qfq_group* %0) #0 {
  %2 = alloca %struct.qfq_class*, align 8
  %3 = alloca %struct.qfq_group*, align 8
  %4 = alloca i32, align 4
  store %struct.qfq_group* %0, %struct.qfq_group** %3, align 8
  %5 = load %struct.qfq_group*, %struct.qfq_group** %3, align 8
  %6 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.qfq_group*, %struct.qfq_group** %3, align 8
  %9 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %10)
  %12 = load %struct.qfq_group*, %struct.qfq_group** %3, align 8
  %13 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store %struct.qfq_class* null, %struct.qfq_class** %2, align 8
  br label %42

17:                                               ; preds = %1
  %18 = load %struct.qfq_group*, %struct.qfq_group** %3, align 8
  %19 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @__ffs(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ugt i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %17
  %25 = load %struct.qfq_group*, %struct.qfq_group** %3, align 8
  %26 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %4, align 4
  %29 = add i32 %27, %28
  %30 = load i32, i32* @QFQ_MAX_SLOTS, align 4
  %31 = urem i32 %29, %30
  %32 = load %struct.qfq_group*, %struct.qfq_group** %3, align 8
  %33 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.qfq_group*, %struct.qfq_group** %3, align 8
  %36 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = lshr i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %24, %17
  %40 = load %struct.qfq_group*, %struct.qfq_group** %3, align 8
  %41 = call %struct.qfq_class* @qfq_slot_head(%struct.qfq_group* %40)
  store %struct.qfq_class* %41, %struct.qfq_class** %2, align 8
  br label %42

42:                                               ; preds = %39, %16
  %43 = load %struct.qfq_class*, %struct.qfq_class** %2, align 8
  ret %struct.qfq_class* %43
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local %struct.qfq_class* @qfq_slot_head(%struct.qfq_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
