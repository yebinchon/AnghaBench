; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_link_class.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_link_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbq_class = type { %struct.cbq_class*, %struct.cbq_class*, i32, %struct.cbq_class*, i32 }
%struct.cbq_sched_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cbq_class*)* @cbq_link_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cbq_link_class(%struct.cbq_class* %0) #0 {
  %2 = alloca %struct.cbq_class*, align 8
  %3 = alloca %struct.cbq_sched_data*, align 8
  %4 = alloca %struct.cbq_class*, align 8
  store %struct.cbq_class* %0, %struct.cbq_class** %2, align 8
  %5 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %6 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.cbq_sched_data* @qdisc_priv(i32 %7)
  store %struct.cbq_sched_data* %8, %struct.cbq_sched_data** %3, align 8
  %9 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %10 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %9, i32 0, i32 3
  %11 = load %struct.cbq_class*, %struct.cbq_class** %10, align 8
  store %struct.cbq_class* %11, %struct.cbq_class** %4, align 8
  %12 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %13 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %14 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %13, i32 0, i32 0
  store %struct.cbq_class* %12, %struct.cbq_class** %14, align 8
  %15 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %3, align 8
  %16 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %15, i32 0, i32 0
  %17 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %18 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %17, i32 0, i32 2
  %19 = call i32 @qdisc_class_hash_insert(i32* %16, i32* %18)
  %20 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %21 = icmp eq %struct.cbq_class* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %45

23:                                               ; preds = %1
  %24 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %25 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %24, i32 0, i32 1
  %26 = load %struct.cbq_class*, %struct.cbq_class** %25, align 8
  %27 = icmp eq %struct.cbq_class* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %30 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %31 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %30, i32 0, i32 1
  store %struct.cbq_class* %29, %struct.cbq_class** %31, align 8
  br label %45

32:                                               ; preds = %23
  %33 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %34 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %33, i32 0, i32 1
  %35 = load %struct.cbq_class*, %struct.cbq_class** %34, align 8
  %36 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %35, i32 0, i32 0
  %37 = load %struct.cbq_class*, %struct.cbq_class** %36, align 8
  %38 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %39 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %38, i32 0, i32 0
  store %struct.cbq_class* %37, %struct.cbq_class** %39, align 8
  %40 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %41 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %42 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %41, i32 0, i32 1
  %43 = load %struct.cbq_class*, %struct.cbq_class** %42, align 8
  %44 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %43, i32 0, i32 0
  store %struct.cbq_class* %40, %struct.cbq_class** %44, align 8
  br label %45

45:                                               ; preds = %22, %32, %28
  ret void
}

declare dso_local %struct.cbq_sched_data* @qdisc_priv(i32) #1

declare dso_local i32 @qdisc_class_hash_insert(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
