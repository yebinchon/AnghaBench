; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_desc_base_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_desc_base_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_PTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (%struct.type*)* @desc_base_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @desc_base_type(%struct.type* %0) #0 {
  %2 = alloca %struct.type*, align 8
  %3 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %3, align 8
  %4 = load %struct.type*, %struct.type** %3, align 8
  %5 = icmp eq %struct.type* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store %struct.type* null, %struct.type** %2, align 8
  br label %23

7:                                                ; preds = %1
  %8 = load %struct.type*, %struct.type** %3, align 8
  %9 = call i32 @CHECK_TYPEDEF(%struct.type* %8)
  %10 = load %struct.type*, %struct.type** %3, align 8
  %11 = icmp ne %struct.type* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %7
  %13 = load %struct.type*, %struct.type** %3, align 8
  %14 = call i64 @TYPE_CODE(%struct.type* %13)
  %15 = load i64, i64* @TYPE_CODE_PTR, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.type*, %struct.type** %3, align 8
  %19 = call i32 @TYPE_TARGET_TYPE(%struct.type* %18)
  %20 = call %struct.type* @check_typedef(i32 %19)
  store %struct.type* %20, %struct.type** %2, align 8
  br label %23

21:                                               ; preds = %12, %7
  %22 = load %struct.type*, %struct.type** %3, align 8
  store %struct.type* %22, %struct.type** %2, align 8
  br label %23

23:                                               ; preds = %21, %17, %6
  %24 = load %struct.type*, %struct.type** %2, align 8
  ret %struct.type* %24
}

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.type* @check_typedef(i32) #1

declare dso_local i32 @TYPE_TARGET_TYPE(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
