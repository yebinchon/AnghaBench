; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_virtual_base_index_skip_primaries.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_virtual_base_index_skip_primaries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_CLASS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @virtual_base_index_skip_primaries(%struct.type* %0, %struct.type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.type*, align 8
  %5 = alloca %struct.type*, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %4, align 8
  store %struct.type* %1, %struct.type** %5, align 8
  %10 = load %struct.type*, %struct.type** %5, align 8
  %11 = call i64 @TYPE_CODE(%struct.type* %10)
  %12 = load i64, i64* @TYPE_CODE_CLASS, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.type*, %struct.type** %4, align 8
  %16 = call i64 @TYPE_CODE(%struct.type* %15)
  %17 = load i64, i64* @TYPE_CODE_CLASS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %2
  store i32 -1, i32* %3, align 4
  br label %69

20:                                               ; preds = %14
  %21 = load %struct.type*, %struct.type** %5, align 8
  %22 = call i64 @TYPE_RUNTIME_PTR(%struct.type* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load %struct.type*, %struct.type** %5, align 8
  %26 = call %struct.type* @TYPE_PRIMARY_BASE(%struct.type* %25)
  br label %28

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %24
  %29 = phi %struct.type* [ %26, %24 ], [ null, %27 ]
  store %struct.type* %29, %struct.type** %9, align 8
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %7, align 4
  %30 = load %struct.type*, %struct.type** %5, align 8
  %31 = call %struct.type** @virtual_base_list(%struct.type* %30)
  %32 = getelementptr inbounds %struct.type*, %struct.type** %31, i64 0
  %33 = load %struct.type*, %struct.type** %32, align 8
  store %struct.type* %33, %struct.type** %6, align 8
  br label %34

34:                                               ; preds = %53, %28
  %35 = load %struct.type*, %struct.type** %6, align 8
  %36 = icmp ne %struct.type* %35, null
  br i1 %36, label %37, label %61

37:                                               ; preds = %34
  %38 = load %struct.type*, %struct.type** %9, align 8
  %39 = icmp ne %struct.type* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.type*, %struct.type** %6, align 8
  %42 = load %struct.type*, %struct.type** %9, align 8
  %43 = call i32 @virtual_base_index_skip_primaries(%struct.type* %41, %struct.type* %42)
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40, %37
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %45, %40
  %49 = load %struct.type*, %struct.type** %6, align 8
  %50 = load %struct.type*, %struct.type** %4, align 8
  %51 = icmp eq %struct.type* %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %61

53:                                               ; preds = %48
  %54 = load %struct.type*, %struct.type** %5, align 8
  %55 = call %struct.type** @virtual_base_list(%struct.type* %54)
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.type*, %struct.type** %55, i64 %58
  %60 = load %struct.type*, %struct.type** %59, align 8
  store %struct.type* %60, %struct.type** %6, align 8
  br label %34

61:                                               ; preds = %52, %34
  %62 = load %struct.type*, %struct.type** %6, align 8
  %63 = icmp ne %struct.type* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* %8, align 4
  br label %67

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %66, %64
  %68 = phi i32 [ %65, %64 ], [ -1, %66 ]
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %19
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i64 @TYPE_RUNTIME_PTR(%struct.type*) #1

declare dso_local %struct.type* @TYPE_PRIMARY_BASE(%struct.type*) #1

declare dso_local %struct.type** @virtual_base_list(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
