; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_proc_ops.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_proc_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.msm_vfe_resp*, i32, i32)*, %struct.msm_vfe_resp* (i32, i32)* }
%struct.msm_vfe_resp = type { i8*, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i64, i8*, i32 }

@.str = private unnamed_addr constant [41 x i8] c"ctrl->vfeOperationMode = %d, msgId = %d\0A\00", align 1
@ctrl = common dso_local global %struct.TYPE_6__* null, align 8
@VFE_START_OPERATION_MODE_SNAPSHOT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"rp: cannot allocate buffer\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"vfe_proc_ops, msgId = %d\0A\00", align 1
@MSM_CAMERA_MSG = common dso_local global i32 0, align 4
@VFE_MSG_SNAPSHOT = common dso_local global i8* null, align 8
@VFE_MSG_OUTPUT1 = common dso_local global i8* null, align 8
@VFE_MSG_OUTPUT2 = common dso_local global i8* null, align 8
@VFE_MSG_STATS_AF = common dso_local global i8* null, align 8
@VFE_MSG_STATS_WE = common dso_local global i8* null, align 8
@VFE_MSG_GENERAL = common dso_local global i8* null, align 8
@MSM_CAM_Q_VFE_MSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i64)* @vfe_proc_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_proc_ops(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.msm_vfe_resp*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 (i8*, ...) @CDBG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %10, i32 %11)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VFE_START_OPERATION_MODE_SNAPSHOT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 132
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 131
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %18
  br label %138

25:                                               ; preds = %21, %3
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load %struct.msm_vfe_resp* (i32, i32)*, %struct.msm_vfe_resp* (i32, i32)** %29, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.msm_vfe_resp* %30(i32 56, i32 %33)
  store %struct.msm_vfe_resp* %34, %struct.msm_vfe_resp** %7, align 8
  %35 = load %struct.msm_vfe_resp*, %struct.msm_vfe_resp** %7, align 8
  %36 = icmp ne %struct.msm_vfe_resp* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %25
  %38 = call i32 (i8*, ...) @CDBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %138

39:                                               ; preds = %25
  %40 = load i32, i32* %4, align 4
  %41 = call i32 (i8*, ...) @CDBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @MSM_CAMERA_MSG, align 4
  %43 = load %struct.msm_vfe_resp*, %struct.msm_vfe_resp** %7, align 8
  %44 = getelementptr inbounds %struct.msm_vfe_resp, %struct.msm_vfe_resp* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  store i32 %42, i32* %45, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.msm_vfe_resp*, %struct.msm_vfe_resp** %7, align 8
  %48 = getelementptr inbounds %struct.msm_vfe_resp, %struct.msm_vfe_resp* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.msm_vfe_resp*, %struct.msm_vfe_resp** %7, align 8
  %52 = getelementptr inbounds %struct.msm_vfe_resp, %struct.msm_vfe_resp* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i64 %50, i64* %53, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = load %struct.msm_vfe_resp*, %struct.msm_vfe_resp** %7, align 8
  %56 = getelementptr inbounds %struct.msm_vfe_resp, %struct.msm_vfe_resp* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  store i8* %54, i8** %57, align 8
  %58 = load %struct.msm_vfe_resp*, %struct.msm_vfe_resp** %7, align 8
  %59 = getelementptr inbounds %struct.msm_vfe_resp, %struct.msm_vfe_resp* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  switch i32 %61, label %122 [
    i32 130, label %62
    i32 132, label %66
    i32 131, label %82
    i32 129, label %98
    i32 128, label %110
  ]

62:                                               ; preds = %39
  %63 = load i8*, i8** @VFE_MSG_SNAPSHOT, align 8
  %64 = load %struct.msm_vfe_resp*, %struct.msm_vfe_resp** %7, align 8
  %65 = getelementptr inbounds %struct.msm_vfe_resp, %struct.msm_vfe_resp* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  br label %126

66:                                               ; preds = %39
  %67 = load i8*, i8** @VFE_MSG_OUTPUT1, align 8
  %68 = load %struct.msm_vfe_resp*, %struct.msm_vfe_resp** %7, align 8
  %69 = getelementptr inbounds %struct.msm_vfe_resp, %struct.msm_vfe_resp* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = load %struct.msm_vfe_resp*, %struct.msm_vfe_resp** %7, align 8
  %71 = getelementptr inbounds %struct.msm_vfe_resp, %struct.msm_vfe_resp* %70, i32 0, i32 2
  %72 = load i8*, i8** @VFE_MSG_OUTPUT1, align 8
  %73 = load %struct.msm_vfe_resp*, %struct.msm_vfe_resp** %7, align 8
  %74 = getelementptr inbounds %struct.msm_vfe_resp, %struct.msm_vfe_resp* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.msm_vfe_resp*, %struct.msm_vfe_resp** %7, align 8
  %78 = getelementptr inbounds %struct.msm_vfe_resp, %struct.msm_vfe_resp* %77, i32 0, i32 4
  %79 = load %struct.msm_vfe_resp*, %struct.msm_vfe_resp** %7, align 8
  %80 = getelementptr inbounds %struct.msm_vfe_resp, %struct.msm_vfe_resp* %79, i32 0, i32 3
  %81 = call i32 @vfe_addr_convert(i32* %71, i8* %72, i8* %76, i32* %78, i32* %80)
  br label %126

82:                                               ; preds = %39
  %83 = load i8*, i8** @VFE_MSG_OUTPUT2, align 8
  %84 = load %struct.msm_vfe_resp*, %struct.msm_vfe_resp** %7, align 8
  %85 = getelementptr inbounds %struct.msm_vfe_resp, %struct.msm_vfe_resp* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  %86 = load %struct.msm_vfe_resp*, %struct.msm_vfe_resp** %7, align 8
  %87 = getelementptr inbounds %struct.msm_vfe_resp, %struct.msm_vfe_resp* %86, i32 0, i32 2
  %88 = load i8*, i8** @VFE_MSG_OUTPUT2, align 8
  %89 = load %struct.msm_vfe_resp*, %struct.msm_vfe_resp** %7, align 8
  %90 = getelementptr inbounds %struct.msm_vfe_resp, %struct.msm_vfe_resp* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.msm_vfe_resp*, %struct.msm_vfe_resp** %7, align 8
  %94 = getelementptr inbounds %struct.msm_vfe_resp, %struct.msm_vfe_resp* %93, i32 0, i32 4
  %95 = load %struct.msm_vfe_resp*, %struct.msm_vfe_resp** %7, align 8
  %96 = getelementptr inbounds %struct.msm_vfe_resp, %struct.msm_vfe_resp* %95, i32 0, i32 3
  %97 = call i32 @vfe_addr_convert(i32* %87, i8* %88, i8* %92, i32* %94, i32* %96)
  br label %126

98:                                               ; preds = %39
  %99 = load i8*, i8** @VFE_MSG_STATS_AF, align 8
  %100 = load %struct.msm_vfe_resp*, %struct.msm_vfe_resp** %7, align 8
  %101 = getelementptr inbounds %struct.msm_vfe_resp, %struct.msm_vfe_resp* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  %102 = load %struct.msm_vfe_resp*, %struct.msm_vfe_resp** %7, align 8
  %103 = getelementptr inbounds %struct.msm_vfe_resp, %struct.msm_vfe_resp* %102, i32 0, i32 2
  %104 = load i8*, i8** @VFE_MSG_STATS_AF, align 8
  %105 = load %struct.msm_vfe_resp*, %struct.msm_vfe_resp** %7, align 8
  %106 = getelementptr inbounds %struct.msm_vfe_resp, %struct.msm_vfe_resp* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @vfe_addr_convert(i32* %103, i8* %104, i8* %108, i32* null, i32* null)
  br label %126

110:                                              ; preds = %39
  %111 = load i8*, i8** @VFE_MSG_STATS_WE, align 8
  %112 = load %struct.msm_vfe_resp*, %struct.msm_vfe_resp** %7, align 8
  %113 = getelementptr inbounds %struct.msm_vfe_resp, %struct.msm_vfe_resp* %112, i32 0, i32 0
  store i8* %111, i8** %113, align 8
  %114 = load %struct.msm_vfe_resp*, %struct.msm_vfe_resp** %7, align 8
  %115 = getelementptr inbounds %struct.msm_vfe_resp, %struct.msm_vfe_resp* %114, i32 0, i32 2
  %116 = load i8*, i8** @VFE_MSG_STATS_WE, align 8
  %117 = load %struct.msm_vfe_resp*, %struct.msm_vfe_resp** %7, align 8
  %118 = getelementptr inbounds %struct.msm_vfe_resp, %struct.msm_vfe_resp* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @vfe_addr_convert(i32* %115, i8* %116, i8* %120, i32* null, i32* null)
  br label %126

122:                                              ; preds = %39
  %123 = load i8*, i8** @VFE_MSG_GENERAL, align 8
  %124 = load %struct.msm_vfe_resp*, %struct.msm_vfe_resp** %7, align 8
  %125 = getelementptr inbounds %struct.msm_vfe_resp, %struct.msm_vfe_resp* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  br label %126

126:                                              ; preds = %122, %110, %98, %82, %66, %62
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32 (%struct.msm_vfe_resp*, i32, i32)*, i32 (%struct.msm_vfe_resp*, i32, i32)** %130, align 8
  %132 = load %struct.msm_vfe_resp*, %struct.msm_vfe_resp** %7, align 8
  %133 = load i32, i32* @MSM_CAM_Q_VFE_MSG, align 4
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i32 %131(%struct.msm_vfe_resp* %132, i32 %133, i32 %136)
  br label %138

138:                                              ; preds = %126, %37, %24
  ret void
}

declare dso_local i32 @CDBG(i8*, ...) #1

declare dso_local i32 @vfe_addr_convert(i32*, i8*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
