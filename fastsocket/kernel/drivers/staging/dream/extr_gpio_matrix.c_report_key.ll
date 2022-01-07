; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/extr_gpio_matrix.c_report_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/extr_gpio_matrix.c_report_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_kp = type { %struct.TYPE_2__*, i32, %struct.gpio_event_matrix_info* }
%struct.TYPE_2__ = type { i32 }
%struct.gpio_event_matrix_info = type { i16*, i32, i32*, i32* }

@KEY_RESERVED = common dso_local global i16 0, align 2
@GPIOKPF_PRINT_UNMAPPED_KEYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"gpiomatrix: unmapped key, %d-%d (%d-%d) changed to %d\0A\00", align 1
@GPIOKPF_PRINT_MAPPED_KEYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"gpiomatrix: key %x, %d-%d (%d-%d) changed to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_kp*, i32, i32, i32)* @report_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_key(%struct.gpio_kp* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.gpio_kp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gpio_event_matrix_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  store %struct.gpio_kp* %0, %struct.gpio_kp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.gpio_kp*, %struct.gpio_kp** %5, align 8
  %13 = getelementptr inbounds %struct.gpio_kp, %struct.gpio_kp* %12, i32 0, i32 2
  %14 = load %struct.gpio_event_matrix_info*, %struct.gpio_event_matrix_info** %13, align 8
  store %struct.gpio_event_matrix_info* %14, %struct.gpio_event_matrix_info** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = trunc i32 %15 to i16
  %17 = load %struct.gpio_kp*, %struct.gpio_kp** %5, align 8
  %18 = getelementptr inbounds %struct.gpio_kp, %struct.gpio_kp* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @test_bit(i16 zeroext %16, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.gpio_event_matrix_info*, %struct.gpio_event_matrix_info** %9, align 8
  %22 = getelementptr inbounds %struct.gpio_event_matrix_info, %struct.gpio_event_matrix_info* %21, i32 0, i32 0
  %23 = load i16*, i16** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i16, i16* %23, i64 %25
  %27 = load i16, i16* %26, align 2
  store i16 %27, i16* %11, align 2
  %28 = load i32, i32* %10, align 4
  %29 = load i16, i16* %11, align 2
  %30 = load %struct.gpio_kp*, %struct.gpio_kp** %5, align 8
  %31 = getelementptr inbounds %struct.gpio_kp, %struct.gpio_kp* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @test_bit(i16 zeroext %29, i32 %34)
  %36 = icmp ne i32 %28, %35
  br i1 %36, label %37, label %106

37:                                               ; preds = %4
  %38 = load i16, i16* %11, align 2
  %39 = zext i16 %38 to i32
  %40 = load i16, i16* @KEY_RESERVED, align 2
  %41 = zext i16 %40 to i32
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %71

43:                                               ; preds = %37
  %44 = load %struct.gpio_event_matrix_info*, %struct.gpio_event_matrix_info** %9, align 8
  %45 = getelementptr inbounds %struct.gpio_event_matrix_info, %struct.gpio_event_matrix_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @GPIOKPF_PRINT_UNMAPPED_KEYS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %43
  %51 = load i32, i32* %7, align 4
  %52 = trunc i32 %51 to i16
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.gpio_event_matrix_info*, %struct.gpio_event_matrix_info** %9, align 8
  %55 = getelementptr inbounds %struct.gpio_event_matrix_info, %struct.gpio_event_matrix_info* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.gpio_event_matrix_info*, %struct.gpio_event_matrix_info** %9, align 8
  %62 = getelementptr inbounds %struct.gpio_event_matrix_info, %struct.gpio_event_matrix_info* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 (i8*, i16, i32, i32, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i16 zeroext %52, i32 %53, i32 %60, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %50, %43
  br label %105

71:                                               ; preds = %37
  %72 = load %struct.gpio_event_matrix_info*, %struct.gpio_event_matrix_info** %9, align 8
  %73 = getelementptr inbounds %struct.gpio_event_matrix_info, %struct.gpio_event_matrix_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @GPIOKPF_PRINT_MAPPED_KEYS, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %98

78:                                               ; preds = %71
  %79 = load i16, i16* %11, align 2
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.gpio_event_matrix_info*, %struct.gpio_event_matrix_info** %9, align 8
  %83 = getelementptr inbounds %struct.gpio_event_matrix_info, %struct.gpio_event_matrix_info* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.gpio_event_matrix_info*, %struct.gpio_event_matrix_info** %9, align 8
  %90 = getelementptr inbounds %struct.gpio_event_matrix_info, %struct.gpio_event_matrix_info* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 (i8*, i16, i32, i32, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %79, i32 %80, i32 %81, i32 %88, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %78, %71
  %99 = load %struct.gpio_kp*, %struct.gpio_kp** %5, align 8
  %100 = getelementptr inbounds %struct.gpio_kp, %struct.gpio_kp* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load i16, i16* %11, align 2
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @input_report_key(%struct.TYPE_2__* %101, i16 zeroext %102, i32 %103)
  br label %105

105:                                              ; preds = %98, %70
  br label %106

106:                                              ; preds = %105, %4
  ret void
}

declare dso_local i32 @test_bit(i16 zeroext, i32) #1

declare dso_local i32 @pr_info(i8*, i16 zeroext, i32, i32, i32, i32, ...) #1

declare dso_local i32 @input_report_key(%struct.TYPE_2__*, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
