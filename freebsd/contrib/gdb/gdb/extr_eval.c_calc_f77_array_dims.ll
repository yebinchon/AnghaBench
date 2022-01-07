; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_eval.c_calc_f77_array_dims.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_eval.c_calc_f77_array_dims.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_ARRAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Can't get dimensions for a non-array type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @calc_f77_array_dims(%struct.type* %0) #0 {
  %2 = alloca %struct.type*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %2, align 8
  store i32 1, i32* %3, align 4
  %5 = load %struct.type*, %struct.type** %2, align 8
  %6 = call i64 @TYPE_CODE(%struct.type* %5)
  %7 = load i64, i64* @TYPE_CODE_ARRAY, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %1
  %12 = load %struct.type*, %struct.type** %2, align 8
  store %struct.type* %12, %struct.type** %4, align 8
  br label %13

13:                                               ; preds = %25, %11
  %14 = load %struct.type*, %struct.type** %4, align 8
  %15 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %14)
  store %struct.type* %15, %struct.type** %4, align 8
  %16 = icmp ne %struct.type* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = load %struct.type*, %struct.type** %4, align 8
  %19 = call i64 @TYPE_CODE(%struct.type* %18)
  %20 = load i64, i64* @TYPE_CODE_ARRAY, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %22, %17
  br label %13

26:                                               ; preds = %13
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
