; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/extr_gpio_matrix.c_remove_phantom_keys.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/extr_gpio_matrix.c_remove_phantom_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_kp = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_kp*)* @remove_phantom_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_phantom_keys(%struct.gpio_kp* %0) #0 {
  %2 = alloca %struct.gpio_kp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gpio_kp* %0, %struct.gpio_kp** %2, align 8
  %7 = load %struct.gpio_kp*, %struct.gpio_kp** %2, align 8
  %8 = getelementptr inbounds %struct.gpio_kp, %struct.gpio_kp* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %9, 3
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %80

12:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %77, %12
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.gpio_kp*, %struct.gpio_kp** %2, align 8
  %16 = getelementptr inbounds %struct.gpio_kp, %struct.gpio_kp* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %14, %19
  br i1 %20, label %21, label %80

21:                                               ; preds = %13
  store i32 -1, i32* %5, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.gpio_kp*, %struct.gpio_kp** %2, align 8
  %24 = getelementptr inbounds %struct.gpio_kp, %struct.gpio_kp* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %22, %27
  store i32 %28, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %71, %21
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.gpio_kp*, %struct.gpio_kp** %2, align 8
  %32 = getelementptr inbounds %struct.gpio_kp, %struct.gpio_kp* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %30, %35
  br i1 %36, label %37, label %76

37:                                               ; preds = %29
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.gpio_kp*, %struct.gpio_kp** %2, align 8
  %40 = getelementptr inbounds %struct.gpio_kp, %struct.gpio_kp* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @test_bit(i32 %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %70

44:                                               ; preds = %37
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %5, align 4
  br label %71

49:                                               ; preds = %44
  %50 = load i32, i32* %5, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %49
  %53 = load %struct.gpio_kp*, %struct.gpio_kp** %2, align 8
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @restore_keys_for_input(%struct.gpio_kp* %53, i32 %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %52
  br label %76

60:                                               ; preds = %52
  %61 = load %struct.gpio_kp*, %struct.gpio_kp** %2, align 8
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @clear_phantom_key(%struct.gpio_kp* %61, i32 %62, i32 %63)
  store i32 -2, i32* %5, align 4
  br label %65

65:                                               ; preds = %60, %49
  %66 = load %struct.gpio_kp*, %struct.gpio_kp** %2, align 8
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @restore_keys_for_input(%struct.gpio_kp* %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %37
  br label %71

71:                                               ; preds = %70, %47
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %29

76:                                               ; preds = %59, %29
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %13

80:                                               ; preds = %11, %13
  ret void
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @restore_keys_for_input(%struct.gpio_kp*, i32, i32) #1

declare dso_local i32 @clear_phantom_key(%struct.gpio_kp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
