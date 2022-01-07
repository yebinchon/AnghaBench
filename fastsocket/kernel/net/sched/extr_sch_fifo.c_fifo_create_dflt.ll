; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_fifo.c_fifo_create_dflt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_fifo.c_fifo_create_dflt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32, i32 }
%struct.Qdisc_ops = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Qdisc* @fifo_create_dflt(%struct.Qdisc* %0, %struct.Qdisc_ops* %1, i32 %2) #0 {
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.Qdisc_ops*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.Qdisc*, align 8
  %8 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.Qdisc_ops* %1, %struct.Qdisc_ops** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %12 = call i32 @qdisc_dev(%struct.Qdisc* %11)
  %13 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %14 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %5, align 8
  %17 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %18 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @TC_H_MAKE(i32 %19, i32 1)
  %21 = call %struct.Qdisc* @qdisc_create_dflt(i32 %12, i32 %15, %struct.Qdisc_ops* %16, i32 %20)
  store %struct.Qdisc* %21, %struct.Qdisc** %7, align 8
  %22 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %23 = icmp ne %struct.Qdisc* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %3
  %25 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @fifo_set_limit(%struct.Qdisc* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %32 = call i32 @qdisc_destroy(%struct.Qdisc* %31)
  store %struct.Qdisc* null, %struct.Qdisc** %7, align 8
  br label %33

33:                                               ; preds = %30, %24
  br label %34

34:                                               ; preds = %33, %3
  %35 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %36 = icmp ne %struct.Qdisc* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = call %struct.Qdisc* @ERR_PTR(i32 %39)
  br label %41

41:                                               ; preds = %38, %37
  %42 = phi %struct.Qdisc* [ %35, %37 ], [ %40, %38 ]
  ret %struct.Qdisc* %42
}

declare dso_local %struct.Qdisc* @qdisc_create_dflt(i32, i32, %struct.Qdisc_ops*, i32) #1

declare dso_local i32 @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @TC_H_MAKE(i32, i32) #1

declare dso_local i32 @fifo_set_limit(%struct.Qdisc*, i32) #1

declare dso_local i32 @qdisc_destroy(%struct.Qdisc*) #1

declare dso_local %struct.Qdisc* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
