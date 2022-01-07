; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_deactivate_class.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_deactivate_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbq_class = type { i32, %struct.cbq_class*, i32 }
%struct.cbq_sched_data = type { i32, %struct.cbq_class** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cbq_class*)* @cbq_deactivate_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cbq_deactivate_class(%struct.cbq_class* %0) #0 {
  %2 = alloca %struct.cbq_class*, align 8
  %3 = alloca %struct.cbq_sched_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cbq_class*, align 8
  %6 = alloca %struct.cbq_class*, align 8
  store %struct.cbq_class* %0, %struct.cbq_class** %2, align 8
  %7 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %8 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.cbq_sched_data* @qdisc_priv(i32 %9)
  store %struct.cbq_sched_data* %10, %struct.cbq_sched_data** %3, align 8
  %11 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %12 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  %14 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %3, align 8
  %15 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %14, i32 0, i32 1
  %16 = load %struct.cbq_class**, %struct.cbq_class*** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.cbq_class*, %struct.cbq_class** %16, i64 %18
  %20 = load %struct.cbq_class*, %struct.cbq_class** %19, align 8
  store %struct.cbq_class* %20, %struct.cbq_class** %6, align 8
  br label %21

21:                                               ; preds = %79, %1
  %22 = load %struct.cbq_class*, %struct.cbq_class** %6, align 8
  %23 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %22, i32 0, i32 1
  %24 = load %struct.cbq_class*, %struct.cbq_class** %23, align 8
  store %struct.cbq_class* %24, %struct.cbq_class** %5, align 8
  %25 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %26 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %27 = icmp eq %struct.cbq_class* %25, %26
  br i1 %27, label %28, label %78

28:                                               ; preds = %21
  %29 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %30 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %29, i32 0, i32 1
  %31 = load %struct.cbq_class*, %struct.cbq_class** %30, align 8
  %32 = load %struct.cbq_class*, %struct.cbq_class** %6, align 8
  %33 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %32, i32 0, i32 1
  store %struct.cbq_class* %31, %struct.cbq_class** %33, align 8
  %34 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %35 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %34, i32 0, i32 1
  store %struct.cbq_class* null, %struct.cbq_class** %35, align 8
  %36 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %37 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %3, align 8
  %38 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %37, i32 0, i32 1
  %39 = load %struct.cbq_class**, %struct.cbq_class*** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.cbq_class*, %struct.cbq_class** %39, i64 %41
  %43 = load %struct.cbq_class*, %struct.cbq_class** %42, align 8
  %44 = icmp eq %struct.cbq_class* %36, %43
  br i1 %44, label %45, label %77

45:                                               ; preds = %28
  %46 = load %struct.cbq_class*, %struct.cbq_class** %6, align 8
  %47 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %3, align 8
  %48 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %47, i32 0, i32 1
  %49 = load %struct.cbq_class**, %struct.cbq_class*** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.cbq_class*, %struct.cbq_class** %49, i64 %51
  store %struct.cbq_class* %46, %struct.cbq_class** %52, align 8
  %53 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %54 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %3, align 8
  %55 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %54, i32 0, i32 1
  %56 = load %struct.cbq_class**, %struct.cbq_class*** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.cbq_class*, %struct.cbq_class** %56, i64 %58
  %60 = load %struct.cbq_class*, %struct.cbq_class** %59, align 8
  %61 = icmp eq %struct.cbq_class* %53, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %45
  %63 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %3, align 8
  %64 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %63, i32 0, i32 1
  %65 = load %struct.cbq_class**, %struct.cbq_class*** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.cbq_class*, %struct.cbq_class** %65, i64 %67
  store %struct.cbq_class* null, %struct.cbq_class** %68, align 8
  %69 = load i32, i32* %4, align 4
  %70 = shl i32 1, %69
  %71 = xor i32 %70, -1
  %72 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %3, align 8
  %73 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %89

76:                                               ; preds = %45
  br label %77

77:                                               ; preds = %76, %28
  br label %89

78:                                               ; preds = %21
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  store %struct.cbq_class* %80, %struct.cbq_class** %6, align 8
  %81 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %3, align 8
  %82 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %81, i32 0, i32 1
  %83 = load %struct.cbq_class**, %struct.cbq_class*** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.cbq_class*, %struct.cbq_class** %83, i64 %85
  %87 = load %struct.cbq_class*, %struct.cbq_class** %86, align 8
  %88 = icmp ne %struct.cbq_class* %80, %87
  br i1 %88, label %21, label %89

89:                                               ; preds = %62, %77, %79
  ret void
}

declare dso_local %struct.cbq_sched_data* @qdisc_priv(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
