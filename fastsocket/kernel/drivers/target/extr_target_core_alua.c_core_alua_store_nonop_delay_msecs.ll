; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_alua.c_core_alua_store_nonop_delay_msecs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_alua.c_core_alua_store_nonop_delay_msecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t10_alua_tg_pt_gp = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Unable to extract nonop_delay_msecs\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@ALUA_MAX_NONOP_DELAY_MSECS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [71 x i8] c"Passed nonop_delay_msecs: %lu, exceeds ALUA_MAX_NONOP_DELAY_MSECS: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @core_alua_store_nonop_delay_msecs(%struct.t10_alua_tg_pt_gp* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.t10_alua_tg_pt_gp*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.t10_alua_tg_pt_gp* %0, %struct.t10_alua_tg_pt_gp** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @strict_strtoul(i8* %10, i32 0, i64* %8)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %16 = load i64, i64* @EINVAL, align 8
  %17 = sub i64 0, %16
  store i64 %17, i64* %4, align 8
  br label %34

18:                                               ; preds = %3
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @ALUA_MAX_NONOP_DELAY_MSECS, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @ALUA_MAX_NONOP_DELAY_MSECS, align 8
  %25 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i64 %23, i64 %24)
  %26 = load i64, i64* @EINVAL, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %4, align 8
  br label %34

28:                                               ; preds = %18
  %29 = load i64, i64* %8, align 8
  %30 = trunc i64 %29 to i32
  %31 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %5, align 8
  %32 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i64, i64* %7, align 8
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %28, %22, %14
  %35 = load i64, i64* %4, align 8
  ret i64 %35
}

declare dso_local i32 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
