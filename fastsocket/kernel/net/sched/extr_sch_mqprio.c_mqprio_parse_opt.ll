; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_mqprio.c_mqprio_parse_opt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_mqprio.c_mqprio_parse_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tc_mqprio_qopt = type { i32, i32*, i32*, i32*, i64 }

@TC_MAX_QUEUE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TC_BITMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.tc_mqprio_qopt*)* @mqprio_parse_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mqprio_parse_opt(%struct.net_device* %0, %struct.tc_mqprio_qopt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.tc_mqprio_qopt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.tc_mqprio_qopt* %1, %struct.tc_mqprio_qopt** %5, align 8
  %9 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %5, align 8
  %10 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @TC_MAX_QUEUE, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %133

17:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %39, %17
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @TC_BITMASK, align 4
  %21 = add nsw i32 %20, 1
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %18
  %24 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %5, align 8
  %25 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %5, align 8
  %32 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sge i32 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %23
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %133

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %18

42:                                               ; preds = %18
  %43 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %5, align 8
  %44 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %133

50:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %129, %50
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %5, align 8
  %54 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %132

57:                                               ; preds = %51
  %58 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %5, align 8
  %59 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %5, align 8
  %66 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = add i32 %64, %71
  store i32 %72, i32* %8, align 4
  %73 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %5, align 8
  %74 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.net_device*, %struct.net_device** %4, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp uge i32 %79, %82
  br i1 %83, label %99, label %84

84:                                               ; preds = %57
  %85 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %5, align 8
  %86 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %84
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.net_device*, %struct.net_device** %4, align 8
  %96 = getelementptr inbounds %struct.net_device, %struct.net_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ugt i32 %94, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %93, %84, %57
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %133

102:                                              ; preds = %93
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %125, %102
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %5, align 8
  %108 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %128

111:                                              ; preds = %105
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %5, align 8
  %114 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = icmp ugt i32 %112, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %111
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %3, align 4
  br label %133

124:                                              ; preds = %111
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %7, align 4
  br label %105

128:                                              ; preds = %105
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %6, align 4
  br label %51

132:                                              ; preds = %51
  store i32 0, i32* %3, align 4
  br label %133

133:                                              ; preds = %132, %121, %99, %47, %35, %14
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
