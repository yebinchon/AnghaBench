; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audpp.c_audpp_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audpp.c_audpp_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audpp_state = type { i8**, i64, i32, i32*, i32** }

@the_audpp_state = common dso_local global %struct.audpp_state zeroinitializer, align 8
@EV_DISABLE = common dso_local global i32 0, align 4
@AUDPP_MSG_CFG_MSG = common dso_local global i32 0, align 4
@AUDPP_MSG_ENA_DIS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"audpp: disable\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audpp_disable(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.audpp_state*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store %struct.audpp_state* @the_audpp_state, %struct.audpp_state** %5, align 8
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, -1
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = icmp sgt i32 %10, 4
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  br label %92

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 5, i32* %3, align 4
  br label %17

17:                                               ; preds = %16, %13
  %18 = load %struct.audpp_state*, %struct.audpp_state** %5, align 8
  %19 = getelementptr inbounds %struct.audpp_state, %struct.audpp_state* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @mutex_lock(i32 %20)
  %22 = load i32, i32* @EV_DISABLE, align 4
  %23 = call i32 @LOG(i32 %22, i32 1)
  %24 = load %struct.audpp_state*, %struct.audpp_state** %5, align 8
  %25 = getelementptr inbounds %struct.audpp_state, %struct.audpp_state* %24, i32 0, i32 4
  %26 = load i32**, i32*** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %17
  br label %87

33:                                               ; preds = %17
  %34 = load %struct.audpp_state*, %struct.audpp_state** %5, align 8
  %35 = getelementptr inbounds %struct.audpp_state, %struct.audpp_state* %34, i32 0, i32 0
  %36 = load i8**, i8*** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = icmp ne i8* %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %87

44:                                               ; preds = %33
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @local_irq_save(i64 %45)
  %47 = load %struct.audpp_state*, %struct.audpp_state** %5, align 8
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @AUDPP_MSG_CFG_MSG, align 4
  %50 = load i32, i32* @AUDPP_MSG_ENA_DIS, align 4
  %51 = call i32 @audpp_fake_event(%struct.audpp_state* %47, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.audpp_state*, %struct.audpp_state** %5, align 8
  %53 = getelementptr inbounds %struct.audpp_state, %struct.audpp_state* %52, i32 0, i32 4
  %54 = load i32**, i32*** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  store i32* null, i32** %57, align 8
  %58 = load %struct.audpp_state*, %struct.audpp_state** %5, align 8
  %59 = getelementptr inbounds %struct.audpp_state, %struct.audpp_state* %58, i32 0, i32 0
  %60 = load i8**, i8*** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  store i8* null, i8** %63, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @local_irq_restore(i64 %64)
  %66 = load %struct.audpp_state*, %struct.audpp_state** %5, align 8
  %67 = getelementptr inbounds %struct.audpp_state, %struct.audpp_state* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, -1
  store i64 %69, i64* %67, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %44
  %72 = call i32 @pr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @EV_DISABLE, align 4
  %74 = call i32 @LOG(i32 %73, i32 2)
  %75 = call i32 @audpp_dsp_config(i32 0)
  %76 = load %struct.audpp_state*, %struct.audpp_state** %5, align 8
  %77 = getelementptr inbounds %struct.audpp_state, %struct.audpp_state* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @msm_adsp_disable(i32* %78)
  %80 = load %struct.audpp_state*, %struct.audpp_state** %5, align 8
  %81 = getelementptr inbounds %struct.audpp_state, %struct.audpp_state* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @msm_adsp_put(i32* %82)
  %84 = load %struct.audpp_state*, %struct.audpp_state** %5, align 8
  %85 = getelementptr inbounds %struct.audpp_state, %struct.audpp_state* %84, i32 0, i32 3
  store i32* null, i32** %85, align 8
  br label %86

86:                                               ; preds = %71, %44
  br label %87

87:                                               ; preds = %86, %43, %32
  %88 = load %struct.audpp_state*, %struct.audpp_state** %5, align 8
  %89 = getelementptr inbounds %struct.audpp_state, %struct.audpp_state* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @mutex_unlock(i32 %90)
  br label %92

92:                                               ; preds = %87, %12
  ret void
}

declare dso_local i32 @mutex_lock(i32) #1

declare dso_local i32 @LOG(i32, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @audpp_fake_event(%struct.audpp_state*, i32, i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @audpp_dsp_config(i32) #1

declare dso_local i32 @msm_adsp_disable(i32*) #1

declare dso_local i32 @msm_adsp_put(i32*) #1

declare dso_local i32 @mutex_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
