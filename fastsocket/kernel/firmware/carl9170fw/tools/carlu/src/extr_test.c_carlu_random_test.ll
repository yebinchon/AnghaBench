; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_test.c_carlu_random_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_test.c_carlu_random_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlu = type { i32 }

@AR9170_RAND_REG_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%.2x %.2x \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @carlu_random_test(%struct.carlu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.carlu*, align 8
  %4 = alloca [4096 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.carlu* %0, %struct.carlu** %3, align 8
  %7 = load %struct.carlu*, %struct.carlu** %3, align 8
  %8 = load i32, i32* @AR9170_RAND_REG_NUM, align 4
  %9 = getelementptr inbounds [4096 x i32], [4096 x i32]* %4, i64 0, i64 0
  %10 = call i32 @carlu_cmd_mem_watch(%struct.carlu* %7, i32 %8, i32 16384, i32* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %38

15:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %33, %15
  %17 = load i32, i32* %6, align 4
  %18 = getelementptr inbounds [4096 x i32], [4096 x i32]* %4, i64 0, i64 0
  %19 = call i32 @ARRAY_SIZE(i32* %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4096 x i32], [4096 x i32]* %4, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 255
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [4096 x i32], [4096 x i32]* %4, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 8
  %32 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %31)
  br label %33

33:                                               ; preds = %21
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %16

36:                                               ; preds = %16
  %37 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %13
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @carlu_cmd_mem_watch(%struct.carlu*, i32, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @info(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
