; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_main.c_carlu_probe_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_main.c_carlu_probe_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlu = type { i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Found %d devices\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @carlu_probe_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carlu_probe_all() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [32 x %struct.carlu*], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = bitcast [32 x %struct.carlu*]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 256, i1 false)
  %6 = call i32 (...) @carlu_init()
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %10, i32* %1, align 4
  br label %52

11:                                               ; preds = %0
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %30, %11
  %13 = load i32, i32* %3, align 4
  %14 = getelementptr inbounds [32 x %struct.carlu*], [32 x %struct.carlu*]* %2, i64 0, i64 0
  %15 = call i32 @ARRAY_SIZE(%struct.carlu** %14)
  %16 = icmp ult i32 %13, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %12
  %18 = call %struct.carlu* (...) @carlusb_probe()
  %19 = load i32, i32* %3, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [32 x %struct.carlu*], [32 x %struct.carlu*]* %2, i64 0, i64 %20
  store %struct.carlu* %18, %struct.carlu** %21, align 8
  %22 = load i32, i32* %3, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [32 x %struct.carlu*], [32 x %struct.carlu*]* %2, i64 0, i64 %23
  %25 = load %struct.carlu*, %struct.carlu** %24, align 8
  %26 = call i64 @IS_ERR_OR_NULL(%struct.carlu* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %33

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %3, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %12

33:                                               ; preds = %28, %12
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %46, %33
  %37 = load i32, i32* %3, align 4
  %38 = icmp ugt i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load i32, i32* %3, align 4
  %41 = sub i32 %40, 1
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [32 x %struct.carlu*], [32 x %struct.carlu*]* %2, i64 0, i64 %42
  %44 = load %struct.carlu*, %struct.carlu** %43, align 8
  %45 = call i32 @carlusb_close(%struct.carlu* %44)
  br label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %3, align 4
  %48 = add i32 %47, -1
  store i32 %48, i32* %3, align 4
  br label %36

49:                                               ; preds = %36
  %50 = call i32 (...) @carlu_exit()
  %51 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %51, i32* %1, align 4
  br label %52

52:                                               ; preds = %49, %9
  %53 = load i32, i32* %1, align 4
  ret i32 %53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @carlu_init(...) #2

declare dso_local i32 @ARRAY_SIZE(%struct.carlu**) #2

declare dso_local %struct.carlu* @carlusb_probe(...) #2

declare dso_local i64 @IS_ERR_OR_NULL(%struct.carlu*) #2

declare dso_local i32 @info(i8*, i32) #2

declare dso_local i32 @carlusb_close(%struct.carlu*) #2

declare dso_local i32 @carlu_exit(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
