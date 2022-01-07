; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_contains_variant_part.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_contains_variant_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.type*)* @contains_variant_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @contains_variant_part(%struct.type* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.type*, align 8
  %4 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %3, align 8
  %5 = load %struct.type*, %struct.type** %3, align 8
  %6 = icmp eq %struct.type* %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = load %struct.type*, %struct.type** %3, align 8
  %9 = call i64 @TYPE_CODE(%struct.type* %8)
  %10 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = load %struct.type*, %struct.type** %3, align 8
  %14 = call i64 @TYPE_NFIELDS(%struct.type* %13)
  %15 = icmp sle i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %7, %1
  store i32 0, i32* %2, align 4
  br label %23

17:                                               ; preds = %12
  %18 = load %struct.type*, %struct.type** %3, align 8
  %19 = load %struct.type*, %struct.type** %3, align 8
  %20 = call i64 @TYPE_NFIELDS(%struct.type* %19)
  %21 = sub nsw i64 %20, 1
  %22 = call i32 @ada_is_variant_part(%struct.type* %18, i64 %21)
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %17, %16
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i64 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i32 @ada_is_variant_part(%struct.type*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
