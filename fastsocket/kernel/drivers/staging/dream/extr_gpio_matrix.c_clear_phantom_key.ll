; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/extr_gpio_matrix.c_clear_phantom_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/extr_gpio_matrix.c_clear_phantom_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_kp = type { i32, %struct.TYPE_2__*, %struct.gpio_event_matrix_info* }
%struct.TYPE_2__ = type { i32 }
%struct.gpio_event_matrix_info = type { i32, i16*, i32, i32*, i32* }

@GPIOKPF_PRINT_PHANTOM_KEYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"gpiomatrix: phantom key %x, %d-%d (%d-%d) cleared\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"gpiomatrix: phantom key %x, %d-%d (%d-%d) not cleared\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_kp*, i32, i32)* @clear_phantom_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_phantom_key(%struct.gpio_kp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_kp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gpio_event_matrix_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  store %struct.gpio_kp* %0, %struct.gpio_kp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.gpio_kp*, %struct.gpio_kp** %4, align 8
  %11 = getelementptr inbounds %struct.gpio_kp, %struct.gpio_kp* %10, i32 0, i32 2
  %12 = load %struct.gpio_event_matrix_info*, %struct.gpio_event_matrix_info** %11, align 8
  store %struct.gpio_event_matrix_info* %12, %struct.gpio_event_matrix_info** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.gpio_event_matrix_info*, %struct.gpio_event_matrix_info** %7, align 8
  %15 = getelementptr inbounds %struct.gpio_event_matrix_info, %struct.gpio_event_matrix_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 %13, %16
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.gpio_event_matrix_info*, %struct.gpio_event_matrix_info** %7, align 8
  %21 = getelementptr inbounds %struct.gpio_event_matrix_info, %struct.gpio_event_matrix_info* %20, i32 0, i32 1
  %22 = load i16*, i16** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i16, i16* %22, i64 %24
  %26 = load i16, i16* %25, align 2
  store i16 %26, i16* %9, align 2
  %27 = load i16, i16* %9, align 2
  %28 = load %struct.gpio_kp*, %struct.gpio_kp** %4, align 8
  %29 = getelementptr inbounds %struct.gpio_kp, %struct.gpio_kp* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @test_bit(i16 zeroext %27, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %67, label %35

35:                                               ; preds = %3
  %36 = load %struct.gpio_event_matrix_info*, %struct.gpio_event_matrix_info** %7, align 8
  %37 = getelementptr inbounds %struct.gpio_event_matrix_info, %struct.gpio_event_matrix_info* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @GPIOKPF_PRINT_PHANTOM_KEYS, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %35
  %43 = load i16, i16* %9, align 2
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.gpio_event_matrix_info*, %struct.gpio_event_matrix_info** %7, align 8
  %47 = getelementptr inbounds %struct.gpio_event_matrix_info, %struct.gpio_event_matrix_info* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.gpio_event_matrix_info*, %struct.gpio_event_matrix_info** %7, align 8
  %54 = getelementptr inbounds %struct.gpio_event_matrix_info, %struct.gpio_event_matrix_info* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @pr_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i16 zeroext %43, i32 %44, i32 %45, i32 %52, i32 %59)
  br label %61

61:                                               ; preds = %42, %35
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.gpio_kp*, %struct.gpio_kp** %4, align 8
  %64 = getelementptr inbounds %struct.gpio_kp, %struct.gpio_kp* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @__clear_bit(i32 %62, i32 %65)
  br label %94

67:                                               ; preds = %3
  %68 = load %struct.gpio_event_matrix_info*, %struct.gpio_event_matrix_info** %7, align 8
  %69 = getelementptr inbounds %struct.gpio_event_matrix_info, %struct.gpio_event_matrix_info* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @GPIOKPF_PRINT_PHANTOM_KEYS, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %67
  %75 = load i16, i16* %9, align 2
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.gpio_event_matrix_info*, %struct.gpio_event_matrix_info** %7, align 8
  %79 = getelementptr inbounds %struct.gpio_event_matrix_info, %struct.gpio_event_matrix_info* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.gpio_event_matrix_info*, %struct.gpio_event_matrix_info** %7, align 8
  %86 = getelementptr inbounds %struct.gpio_event_matrix_info, %struct.gpio_event_matrix_info* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @pr_info(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %75, i32 %76, i32 %77, i32 %84, i32 %91)
  br label %93

93:                                               ; preds = %74, %67
  br label %94

94:                                               ; preds = %93, %61
  ret void
}

declare dso_local i32 @test_bit(i16 zeroext, i32) #1

declare dso_local i32 @pr_info(i8*, i16 zeroext, i32, i32, i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
