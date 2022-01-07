; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_virtual_base_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_virtual_base_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_CLASS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @virtual_base_index(%struct.type* %0, %struct.type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.type*, align 8
  %5 = alloca %struct.type*, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %4, align 8
  store %struct.type* %1, %struct.type** %5, align 8
  %8 = load %struct.type*, %struct.type** %5, align 8
  %9 = call i64 @TYPE_CODE(%struct.type* %8)
  %10 = load i64, i64* @TYPE_CODE_CLASS, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.type*, %struct.type** %4, align 8
  %14 = call i64 @TYPE_CODE(%struct.type* %13)
  %15 = load i64, i64* @TYPE_CODE_CLASS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %2
  store i32 -1, i32* %3, align 4
  br label %47

18:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  %19 = load %struct.type*, %struct.type** %5, align 8
  %20 = call %struct.type** @virtual_base_list(%struct.type* %19)
  %21 = getelementptr inbounds %struct.type*, %struct.type** %20, i64 0
  %22 = load %struct.type*, %struct.type** %21, align 8
  store %struct.type* %22, %struct.type** %6, align 8
  br label %23

23:                                               ; preds = %31, %18
  %24 = load %struct.type*, %struct.type** %6, align 8
  %25 = icmp ne %struct.type* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load %struct.type*, %struct.type** %6, align 8
  %28 = load %struct.type*, %struct.type** %4, align 8
  %29 = icmp eq %struct.type* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %39

31:                                               ; preds = %26
  %32 = load %struct.type*, %struct.type** %5, align 8
  %33 = call %struct.type** @virtual_base_list(%struct.type* %32)
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.type*, %struct.type** %33, i64 %36
  %38 = load %struct.type*, %struct.type** %37, align 8
  store %struct.type* %38, %struct.type** %6, align 8
  br label %23

39:                                               ; preds = %30, %23
  %40 = load %struct.type*, %struct.type** %6, align 8
  %41 = icmp ne %struct.type* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  br label %45

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32 [ %43, %42 ], [ -1, %44 ]
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %17
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.type** @virtual_base_list(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
