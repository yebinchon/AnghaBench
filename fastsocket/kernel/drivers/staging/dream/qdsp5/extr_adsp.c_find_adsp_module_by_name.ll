; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp.c_find_adsp_module_by_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp.c_find_adsp_module_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_adsp_module = type { i32 }
%struct.adsp_info = type { i32 }

@adsp_modules = common dso_local global %struct.msm_adsp_module* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.msm_adsp_module* (%struct.adsp_info*, i8*)* @find_adsp_module_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.msm_adsp_module* @find_adsp_module_by_name(%struct.adsp_info* %0, i8* %1) #0 {
  %3 = alloca %struct.msm_adsp_module*, align 8
  %4 = alloca %struct.adsp_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.adsp_info* %0, %struct.adsp_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %29, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.adsp_info*, %struct.adsp_info** %4, align 8
  %10 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %7
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** @adsp_modules, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %15, i64 %17
  %19 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strcmp(i8* %14, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %13
  %24 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** @adsp_modules, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %24, i64 %26
  store %struct.msm_adsp_module* %27, %struct.msm_adsp_module** %3, align 8
  br label %33

28:                                               ; preds = %13
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %6, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %7

32:                                               ; preds = %7
  store %struct.msm_adsp_module* null, %struct.msm_adsp_module** %3, align 8
  br label %33

33:                                               ; preds = %32, %23
  %34 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %3, align 8
  ret %struct.msm_adsp_module* %34
}

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
