; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_set_lss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_set_lss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbq_class = type { i64, i32, i32, i32, i32, i32, i32*, i32*, i32* }
%struct.tc_cbq_lssopt = type { i32, i32, i32, i32, i64, i32, i32 }

@TCF_CBQ_LSS_FLAGS = common dso_local global i32 0, align 4
@TCF_CBQ_LSS_ISOLATED = common dso_local global i32 0, align 4
@TCF_CBQ_LSS_BOUNDED = common dso_local global i32 0, align 4
@TCF_CBQ_LSS_EWMA = common dso_local global i32 0, align 4
@TCF_CBQ_LSS_AVPKT = common dso_local global i32 0, align 4
@TCF_CBQ_LSS_MINIDLE = common dso_local global i32 0, align 4
@TCF_CBQ_LSS_MAXIDLE = common dso_local global i32 0, align 4
@TCF_CBQ_LSS_OFFTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cbq_class*, %struct.tc_cbq_lssopt*)* @cbq_set_lss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbq_set_lss(%struct.cbq_class* %0, %struct.tc_cbq_lssopt* %1) #0 {
  %3 = alloca %struct.cbq_class*, align 8
  %4 = alloca %struct.tc_cbq_lssopt*, align 8
  store %struct.cbq_class* %0, %struct.cbq_class** %3, align 8
  store %struct.tc_cbq_lssopt* %1, %struct.tc_cbq_lssopt** %4, align 8
  %5 = load %struct.tc_cbq_lssopt*, %struct.tc_cbq_lssopt** %4, align 8
  %6 = getelementptr inbounds %struct.tc_cbq_lssopt, %struct.tc_cbq_lssopt* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @TCF_CBQ_LSS_FLAGS, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %42

11:                                               ; preds = %2
  %12 = load %struct.tc_cbq_lssopt*, %struct.tc_cbq_lssopt** %4, align 8
  %13 = getelementptr inbounds %struct.tc_cbq_lssopt, %struct.tc_cbq_lssopt* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @TCF_CBQ_LSS_ISOLATED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %23

19:                                               ; preds = %11
  %20 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %21 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %20, i32 0, i32 6
  %22 = load i32*, i32** %21, align 8
  br label %23

23:                                               ; preds = %19, %18
  %24 = phi i32* [ null, %18 ], [ %22, %19 ]
  %25 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %26 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %25, i32 0, i32 8
  store i32* %24, i32** %26, align 8
  %27 = load %struct.tc_cbq_lssopt*, %struct.tc_cbq_lssopt** %4, align 8
  %28 = getelementptr inbounds %struct.tc_cbq_lssopt, %struct.tc_cbq_lssopt* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @TCF_CBQ_LSS_BOUNDED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %38

34:                                               ; preds = %23
  %35 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %36 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %35, i32 0, i32 6
  %37 = load i32*, i32** %36, align 8
  br label %38

38:                                               ; preds = %34, %33
  %39 = phi i32* [ null, %33 ], [ %37, %34 ]
  %40 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %41 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %40, i32 0, i32 7
  store i32* %39, i32** %41, align 8
  br label %42

42:                                               ; preds = %38, %2
  %43 = load %struct.tc_cbq_lssopt*, %struct.tc_cbq_lssopt** %4, align 8
  %44 = getelementptr inbounds %struct.tc_cbq_lssopt, %struct.tc_cbq_lssopt* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @TCF_CBQ_LSS_EWMA, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load %struct.tc_cbq_lssopt*, %struct.tc_cbq_lssopt** %4, align 8
  %51 = getelementptr inbounds %struct.tc_cbq_lssopt, %struct.tc_cbq_lssopt* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %54 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %49, %42
  %56 = load %struct.tc_cbq_lssopt*, %struct.tc_cbq_lssopt** %4, align 8
  %57 = getelementptr inbounds %struct.tc_cbq_lssopt, %struct.tc_cbq_lssopt* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @TCF_CBQ_LSS_AVPKT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load %struct.tc_cbq_lssopt*, %struct.tc_cbq_lssopt** %4, align 8
  %64 = getelementptr inbounds %struct.tc_cbq_lssopt, %struct.tc_cbq_lssopt* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %67 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %62, %55
  %69 = load %struct.tc_cbq_lssopt*, %struct.tc_cbq_lssopt** %4, align 8
  %70 = getelementptr inbounds %struct.tc_cbq_lssopt, %struct.tc_cbq_lssopt* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @TCF_CBQ_LSS_MINIDLE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %68
  %76 = load %struct.tc_cbq_lssopt*, %struct.tc_cbq_lssopt** %4, align 8
  %77 = getelementptr inbounds %struct.tc_cbq_lssopt, %struct.tc_cbq_lssopt* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 0, %78
  %80 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %81 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %75, %68
  %83 = load %struct.tc_cbq_lssopt*, %struct.tc_cbq_lssopt** %4, align 8
  %84 = getelementptr inbounds %struct.tc_cbq_lssopt, %struct.tc_cbq_lssopt* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @TCF_CBQ_LSS_MAXIDLE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %82
  %90 = load %struct.tc_cbq_lssopt*, %struct.tc_cbq_lssopt** %4, align 8
  %91 = getelementptr inbounds %struct.tc_cbq_lssopt, %struct.tc_cbq_lssopt* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %94 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 8
  %95 = load %struct.tc_cbq_lssopt*, %struct.tc_cbq_lssopt** %4, align 8
  %96 = getelementptr inbounds %struct.tc_cbq_lssopt, %struct.tc_cbq_lssopt* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %99 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %89, %82
  %101 = load %struct.tc_cbq_lssopt*, %struct.tc_cbq_lssopt** %4, align 8
  %102 = getelementptr inbounds %struct.tc_cbq_lssopt, %struct.tc_cbq_lssopt* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @TCF_CBQ_LSS_OFFTIME, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = load %struct.tc_cbq_lssopt*, %struct.tc_cbq_lssopt** %4, align 8
  %109 = getelementptr inbounds %struct.tc_cbq_lssopt, %struct.tc_cbq_lssopt* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %112 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  br label %113

113:                                              ; preds = %107, %100
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
