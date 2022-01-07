; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-valprint.c_cp_is_vtbl_member.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-valprint.c_cp_is_vtbl_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_PTR = common dso_local global i64 0, align 8
@TYPE_CODE_ARRAY = common dso_local global i64 0, align 8
@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cp_is_vtbl_member(%struct.type* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %3, align 8
  %4 = load %struct.type*, %struct.type** %3, align 8
  %5 = call i64 @TYPE_CODE(%struct.type* %4)
  %6 = load i64, i64* @TYPE_CODE_PTR, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %50

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
  %29 = call i32 @cp_is_vtbl_ptr_type(%struct.type* %28)
  store i32 %29, i32* %2, align 4
  br label %51

30:                                               ; preds = %22
  br label %49

31:                                               ; preds = %8
  %32 = load %struct.type*, %struct.type** %3, align 8
  %33 = call i64 @TYPE_CODE(%struct.type* %32)
  %34 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.type*, %struct.type** %3, align 8
  %38 = call i32 @cp_is_vtbl_ptr_type(%struct.type* %37)
  store i32 %38, i32* %2, align 4
  br label %51

39:                                               ; preds = %31
  %40 = load %struct.type*, %struct.type** %3, align 8
  %41 = call i64 @TYPE_CODE(%struct.type* %40)
  %42 = load i64, i64* @TYPE_CODE_PTR, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.type*, %struct.type** %3, align 8
  %46 = call i32 @cp_is_vtbl_ptr_type(%struct.type* %45)
  store i32 %46, i32* %2, align 4
  br label %51

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %48, %30
  br label %50

50:                                               ; preds = %49, %1
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %44, %36, %27
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i32 @cp_is_vtbl_ptr_type(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
