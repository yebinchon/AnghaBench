; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_dsmark.c_dsmark_walk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_dsmark.c_dsmark_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.qdisc_walker = type { i32, i64, i64, i64 (%struct.Qdisc.0*, i32, %struct.qdisc_walker*)* }
%struct.Qdisc.0 = type opaque
%struct.dsmark_qdisc_data = type { i32, i32*, i32* }

@.str = private unnamed_addr constant [42 x i8] c"dsmark_walk(sch %p,[qdisc %p],walker %p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*, %struct.qdisc_walker*)* @dsmark_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsmark_walk(%struct.Qdisc* %0, %struct.qdisc_walker* %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.qdisc_walker*, align 8
  %5 = alloca %struct.dsmark_qdisc_data*, align 8
  %6 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  store %struct.qdisc_walker* %1, %struct.qdisc_walker** %4, align 8
  %7 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %8 = call %struct.dsmark_qdisc_data* @qdisc_priv(%struct.Qdisc* %7)
  store %struct.dsmark_qdisc_data* %8, %struct.dsmark_qdisc_data** %5, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %10 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %5, align 8
  %11 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.Qdisc* %9, %struct.dsmark_qdisc_data* %10, %struct.qdisc_walker* %11)
  %13 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %14 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %76

18:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %73, %18
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %5, align 8
  %22 = getelementptr inbounds %struct.dsmark_qdisc_data, %struct.dsmark_qdisc_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %76

25:                                               ; preds = %19
  %26 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %5, align 8
  %27 = getelementptr inbounds %struct.dsmark_qdisc_data, %struct.dsmark_qdisc_data* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 255
  br i1 %33, label %34, label %44

34:                                               ; preds = %25
  %35 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %5, align 8
  %36 = getelementptr inbounds %struct.dsmark_qdisc_data, %struct.dsmark_qdisc_data* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %34
  br label %68

44:                                               ; preds = %34, %25
  %45 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %46 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %49 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp sge i64 %47, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %44
  %53 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %54 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %53, i32 0, i32 3
  %55 = load i64 (%struct.Qdisc.0*, i32, %struct.qdisc_walker*)*, i64 (%struct.Qdisc.0*, i32, %struct.qdisc_walker*)** %54, align 8
  %56 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %57 = bitcast %struct.Qdisc* %56 to %struct.Qdisc.0*
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  %60 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %61 = call i64 %55(%struct.Qdisc.0* %57, i32 %59, %struct.qdisc_walker* %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %52
  %64 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %65 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  br label %76

66:                                               ; preds = %52
  br label %67

67:                                               ; preds = %66, %44
  br label %68

68:                                               ; preds = %67, %43
  %69 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %70 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %70, align 8
  br label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %19

76:                                               ; preds = %17, %63, %19
  ret void
}

declare dso_local %struct.dsmark_qdisc_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @pr_debug(i8*, %struct.Qdisc*, %struct.dsmark_qdisc_data*, %struct.qdisc_walker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
