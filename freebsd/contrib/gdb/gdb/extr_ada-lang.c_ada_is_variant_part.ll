; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_is_variant_part.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_is_variant_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_UNION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ada_is_variant_part(%struct.type* %0, i32 %1) #0 {
  %3 = alloca %struct.type*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.type*, %struct.type** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %6, i32 %7)
  store %struct.type* %8, %struct.type** %5, align 8
  %9 = load %struct.type*, %struct.type** %5, align 8
  %10 = call i64 @TYPE_CODE(%struct.type* %9)
  %11 = load i64, i64* @TYPE_CODE_UNION, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %26, label %13

13:                                               ; preds = %2
  %14 = load %struct.type*, %struct.type** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @is_dynamic_field(%struct.type* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.type*, %struct.type** %5, align 8
  %20 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %19)
  %21 = call i64 @TYPE_CODE(%struct.type* %20)
  %22 = load i64, i64* @TYPE_CODE_UNION, align 8
  %23 = icmp eq i64 %21, %22
  br label %24

24:                                               ; preds = %18, %13
  %25 = phi i1 [ false, %13 ], [ %23, %18 ]
  br label %26

26:                                               ; preds = %24, %2
  %27 = phi i1 [ true, %2 ], [ %25, %24 ]
  %28 = zext i1 %27 to i32
  ret i32 %28
}

declare dso_local %struct.type* @TYPE_FIELD_TYPE(%struct.type*, i32) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i64 @is_dynamic_field(%struct.type*, i32) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
