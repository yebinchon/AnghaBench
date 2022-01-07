; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_hfsc.c_hfsc_dump_curves.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_hfsc.c_hfsc_dump_curves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.hfsc_class = type { i32, i32, i32, i32 }

@HFSC_RSC = common dso_local global i32 0, align 4
@TCA_HFSC_RSC = common dso_local global i32 0, align 4
@HFSC_FSC = common dso_local global i32 0, align 4
@TCA_HFSC_FSC = common dso_local global i32 0, align 4
@HFSC_USC = common dso_local global i32 0, align 4
@TCA_HFSC_USC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.hfsc_class*)* @hfsc_dump_curves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfsc_dump_curves(%struct.sk_buff* %0, %struct.hfsc_class* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hfsc_class*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.hfsc_class* %1, %struct.hfsc_class** %5, align 8
  %6 = load %struct.hfsc_class*, %struct.hfsc_class** %5, align 8
  %7 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @HFSC_RSC, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = load i32, i32* @TCA_HFSC_RSC, align 4
  %15 = load %struct.hfsc_class*, %struct.hfsc_class** %5, align 8
  %16 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %15, i32 0, i32 3
  %17 = call i64 @hfsc_dump_sc(%struct.sk_buff* %13, i32 %14, i32* %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %54

20:                                               ; preds = %12, %2
  %21 = load %struct.hfsc_class*, %struct.hfsc_class** %5, align 8
  %22 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @HFSC_FSC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = load i32, i32* @TCA_HFSC_FSC, align 4
  %30 = load %struct.hfsc_class*, %struct.hfsc_class** %5, align 8
  %31 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %30, i32 0, i32 2
  %32 = call i64 @hfsc_dump_sc(%struct.sk_buff* %28, i32 %29, i32* %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %54

35:                                               ; preds = %27, %20
  %36 = load %struct.hfsc_class*, %struct.hfsc_class** %5, align 8
  %37 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @HFSC_USC, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %35
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = load i32, i32* @TCA_HFSC_USC, align 4
  %45 = load %struct.hfsc_class*, %struct.hfsc_class** %5, align 8
  %46 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %45, i32 0, i32 1
  %47 = call i64 @hfsc_dump_sc(%struct.sk_buff* %43, i32 %44, i32* %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %54

50:                                               ; preds = %42, %35
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %3, align 4
  br label %55

54:                                               ; preds = %49, %34, %19
  store i32 -1, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %50
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @hfsc_dump_sc(%struct.sk_buff*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
