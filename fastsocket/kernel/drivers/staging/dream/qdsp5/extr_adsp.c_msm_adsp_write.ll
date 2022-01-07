; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp.c_msm_adsp_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp.c_msm_adsp_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_adsp_module = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"adsp: %s command took %d attempts: rc %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_adsp_write(%struct.msm_adsp_module* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.msm_adsp_module*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.msm_adsp_module* %0, %struct.msm_adsp_module** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %33, %4
  %12 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @__msm_adsp_write(%struct.msm_adsp_module* %12, i32 %13, i8* %14, i64 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @EAGAIN, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %11
  %22 = call i32 @udelay(i32 10)
  br label %23

23:                                               ; preds = %21, %11
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @EAGAIN, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %10, align 4
  %32 = icmp slt i32 %30, 100
  br label %33

33:                                               ; preds = %29, %24
  %34 = phi i1 [ false, %24 ], [ %32, %29 ]
  br i1 %34, label %11, label %35

35:                                               ; preds = %33
  %36 = load i32, i32* %10, align 4
  %37 = icmp sgt i32 %36, 50
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %5, align 8
  %40 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @pr_warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %38, %35
  %46 = load i32, i32* %9, align 4
  ret i32 %46
}

declare dso_local i32 @__msm_adsp_write(%struct.msm_adsp_module*, i32, i8*, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pr_warning(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
