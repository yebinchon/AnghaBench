; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_is_ancestor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_is_ancestor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_ancestor(%struct.type* %0, %struct.type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.type*, align 8
  %5 = alloca %struct.type*, align 8
  %6 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %4, align 8
  store %struct.type* %1, %struct.type** %5, align 8
  %7 = load %struct.type*, %struct.type** %4, align 8
  %8 = call i32 @CHECK_TYPEDEF(%struct.type* %7)
  %9 = load %struct.type*, %struct.type** %5, align 8
  %10 = call i32 @CHECK_TYPEDEF(%struct.type* %9)
  %11 = load %struct.type*, %struct.type** %4, align 8
  %12 = load %struct.type*, %struct.type** %5, align 8
  %13 = icmp eq %struct.type* %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %50

15:                                               ; preds = %2
  %16 = load %struct.type*, %struct.type** %4, align 8
  %17 = call i64 @TYPE_NAME(%struct.type* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load %struct.type*, %struct.type** %5, align 8
  %21 = call i64 @TYPE_NAME(%struct.type* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load %struct.type*, %struct.type** %4, align 8
  %25 = call i64 @TYPE_NAME(%struct.type* %24)
  %26 = load %struct.type*, %struct.type** %5, align 8
  %27 = call i64 @TYPE_NAME(%struct.type* %26)
  %28 = call i32 @strcmp(i64 %25, i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %50

31:                                               ; preds = %23, %19, %15
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %46, %31
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.type*, %struct.type** %5, align 8
  %35 = call i32 @TYPE_N_BASECLASSES(%struct.type* %34)
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %32
  %38 = load %struct.type*, %struct.type** %4, align 8
  %39 = load %struct.type*, %struct.type** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call %struct.type* @TYPE_BASECLASS(%struct.type* %39, i32 %40)
  %42 = call i32 @is_ancestor(%struct.type* %38, %struct.type* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %50

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %32

49:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %44, %30, %14
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i64 @TYPE_NAME(%struct.type*) #1

declare dso_local i32 @strcmp(i64, i64) #1

declare dso_local i32 @TYPE_N_BASECLASSES(%struct.type*) #1

declare dso_local %struct.type* @TYPE_BASECLASS(%struct.type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
