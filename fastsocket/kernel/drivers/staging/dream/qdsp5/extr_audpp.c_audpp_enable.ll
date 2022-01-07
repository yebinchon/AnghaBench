; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audpp.c_audpp_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audpp.c_audpp_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audpp_state = type { i32, i64, i32, i32**, i32**, i64 }

@the_audpp_state = common dso_local global %struct.audpp_state zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EV_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"audpp: enable\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"AUDPPTASK\00", align 1
@adsp_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"audpp: cannot open AUDPPTASK\0A\00", align 1
@AUDPP_MSG_CFG_MSG = common dso_local global i32 0, align 4
@AUDPP_MSG_ENA_ENA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @audpp_enable(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.audpp_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.audpp_state* @the_audpp_state, %struct.audpp_state** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, -1
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %14, 4
  br i1 %15, label %16, label %19

16:                                               ; preds = %13, %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %117

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 5, i32* %5, align 4
  br label %23

23:                                               ; preds = %22, %19
  %24 = load %struct.audpp_state*, %struct.audpp_state** %8, align 8
  %25 = getelementptr inbounds %struct.audpp_state, %struct.audpp_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @mutex_lock(i32 %26)
  %28 = load %struct.audpp_state*, %struct.audpp_state** %8, align 8
  %29 = getelementptr inbounds %struct.audpp_state, %struct.audpp_state* %28, i32 0, i32 4
  %30 = load i32**, i32*** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %23
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %9, align 4
  br label %111

39:                                               ; preds = %23
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.audpp_state*, %struct.audpp_state** %8, align 8
  %42 = getelementptr inbounds %struct.audpp_state, %struct.audpp_state* %41, i32 0, i32 4
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  store i32* %40, i32** %46, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = bitcast i8* %47 to i32*
  %49 = load %struct.audpp_state*, %struct.audpp_state** %8, align 8
  %50 = getelementptr inbounds %struct.audpp_state, %struct.audpp_state* %49, i32 0, i32 3
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  store i32* %48, i32** %54, align 8
  %55 = load i32, i32* @EV_ENABLE, align 4
  %56 = call i32 @LOG(i32 %55, i32 1)
  %57 = load %struct.audpp_state*, %struct.audpp_state** %8, align 8
  %58 = getelementptr inbounds %struct.audpp_state, %struct.audpp_state* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %58, align 8
  %61 = icmp eq i64 %59, 0
  br i1 %61, label %62, label %94

62:                                               ; preds = %39
  %63 = call i32 @pr_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.audpp_state*, %struct.audpp_state** %8, align 8
  %65 = getelementptr inbounds %struct.audpp_state, %struct.audpp_state* %64, i32 0, i32 2
  %66 = load %struct.audpp_state*, %struct.audpp_state** %8, align 8
  %67 = call i32 @msm_adsp_get(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %65, i32* @adsp_ops, %struct.audpp_state* %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %62
  %71 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %72 = load %struct.audpp_state*, %struct.audpp_state** %8, align 8
  %73 = getelementptr inbounds %struct.audpp_state, %struct.audpp_state* %72, i32 0, i32 5
  store i64 0, i64* %73, align 8
  %74 = load %struct.audpp_state*, %struct.audpp_state** %8, align 8
  %75 = getelementptr inbounds %struct.audpp_state, %struct.audpp_state* %74, i32 0, i32 4
  %76 = load i32**, i32*** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  store i32* null, i32** %79, align 8
  %80 = load %struct.audpp_state*, %struct.audpp_state** %8, align 8
  %81 = getelementptr inbounds %struct.audpp_state, %struct.audpp_state* %80, i32 0, i32 3
  %82 = load i32**, i32*** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32*, i32** %82, i64 %84
  store i32* null, i32** %85, align 8
  br label %111

86:                                               ; preds = %62
  %87 = load i32, i32* @EV_ENABLE, align 4
  %88 = call i32 @LOG(i32 %87, i32 2)
  %89 = load %struct.audpp_state*, %struct.audpp_state** %8, align 8
  %90 = getelementptr inbounds %struct.audpp_state, %struct.audpp_state* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @msm_adsp_enable(i32 %91)
  %93 = call i32 @audpp_dsp_config(i32 1)
  br label %110

94:                                               ; preds = %39
  %95 = load i64, i64* %10, align 8
  %96 = call i32 @local_irq_save(i64 %95)
  %97 = load %struct.audpp_state*, %struct.audpp_state** %8, align 8
  %98 = getelementptr inbounds %struct.audpp_state, %struct.audpp_state* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %94
  %102 = load %struct.audpp_state*, %struct.audpp_state** %8, align 8
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @AUDPP_MSG_CFG_MSG, align 4
  %105 = load i32, i32* @AUDPP_MSG_ENA_ENA, align 4
  %106 = call i32 @audpp_fake_event(%struct.audpp_state* %102, i32 %103, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %101, %94
  %108 = load i64, i64* %10, align 8
  %109 = call i32 @local_irq_restore(i64 %108)
  br label %110

110:                                              ; preds = %107, %86
  store i32 0, i32* %9, align 4
  br label %111

111:                                              ; preds = %110, %70, %36
  %112 = load %struct.audpp_state*, %struct.audpp_state** %8, align 8
  %113 = getelementptr inbounds %struct.audpp_state, %struct.audpp_state* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @mutex_unlock(i32 %114)
  %116 = load i32, i32* %9, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %111, %16
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @mutex_lock(i32) #1

declare dso_local i32 @LOG(i32, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @msm_adsp_get(i8*, i32*, i32*, %struct.audpp_state*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @msm_adsp_enable(i32) #1

declare dso_local i32 @audpp_dsp_config(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @audpp_fake_event(%struct.audpp_state*, i32, i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @mutex_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
