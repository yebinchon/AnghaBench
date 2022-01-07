; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_primary_base_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_primary_base_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_CLASS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.type* @primary_base_class(%struct.type* %0) #0 {
  %2 = alloca %struct.type*, align 8
  %3 = alloca %struct.type*, align 8
  %4 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %3, align 8
  %5 = load %struct.type*, %struct.type** %3, align 8
  %6 = call i64 @TYPE_CODE(%struct.type* %5)
  %7 = load i64, i64* @TYPE_CODE_CLASS, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.type* null, %struct.type** %2, align 8
  br label %36

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %32, %10
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.type*, %struct.type** %3, align 8
  %14 = call i32 @TYPE_N_BASECLASSES(%struct.type* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %11
  %17 = load %struct.type*, %struct.type** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @TYPE_FIELD_VIRTUAL(%struct.type* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = load %struct.type*, %struct.type** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %22, i32 %23)
  %25 = call i64 @has_vtable(%struct.type* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.type*, %struct.type** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %28, i32 %29)
  store %struct.type* %30, %struct.type** %2, align 8
  br label %36

31:                                               ; preds = %21, %16
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %11

35:                                               ; preds = %11
  store %struct.type* null, %struct.type** %2, align 8
  br label %36

36:                                               ; preds = %35, %27, %9
  %37 = load %struct.type*, %struct.type** %2, align 8
  ret %struct.type* %37
}

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @TYPE_N_BASECLASSES(%struct.type*) #1

declare dso_local i32 @TYPE_FIELD_VIRTUAL(%struct.type*, i32) #1

declare dso_local i64 @has_vtable(%struct.type*) #1

declare dso_local %struct.type* @TYPE_FIELD_TYPE(%struct.type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
