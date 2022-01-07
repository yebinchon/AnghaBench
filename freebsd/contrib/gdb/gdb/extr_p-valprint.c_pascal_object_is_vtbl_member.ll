; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_p-valprint.c_pascal_object_is_vtbl_member.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_p-valprint.c_pascal_object_is_vtbl_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_PTR = common dso_local global i64 0, align 8
@TYPE_CODE_ARRAY = common dso_local global i64 0, align 8
@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pascal_object_is_vtbl_member(%struct.type* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %3, align 8
  %4 = load %struct.type*, %struct.type** %3, align 8
  %5 = call i64 @TYPE_CODE(%struct.type* %4)
  %6 = load i64, i64* @TYPE_CODE_PTR, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %32

8:                                                ; preds = %1
  %9 = load %struct.type*, %struct.type** %3, align 8
  %10 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %9)
  store %struct.type* %10, %struct.type** %3, align 8
  %11 = load %struct.type*, %struct.type** %3, align 8
  %12 = call i64 @TYPE_CODE(%struct.type* %11)
  %13 = load i64, i64* @TYPE_CODE_ARRAY, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %8
  %16 = load %struct.type*, %struct.type** %3, align 8
  %17 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %16)
  store %struct.type* %17, %struct.type** %3, align 8
  %18 = load %struct.type*, %struct.type** %3, align 8
  %19 = call i64 @TYPE_CODE(%struct.type* %18)
  %20 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %15
  %23 = load %struct.type*, %struct.type** %3, align 8
  %24 = call i64 @TYPE_CODE(%struct.type* %23)
  %25 = load i64, i64* @TYPE_CODE_PTR, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %15
  %28 = load %struct.type*, %struct.type** %3, align 8
  %29 = call i32 @pascal_object_is_vtbl_ptr_type(%struct.type* %28)
  store i32 %29, i32* %2, align 4
  br label %33

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %8
  br label %32

32:                                               ; preds = %31, %1
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %27
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i32 @pascal_object_is_vtbl_ptr_type(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
