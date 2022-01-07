; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_init_simd_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_init_simd_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_STRUCT = common dso_local global i32 0, align 4
@builtin_type_int = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (i8*, %struct.type*, i8*, i32)* @init_simd_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @init_simd_type(i8* %0, %struct.type* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.type*, align 8
  %10 = alloca %struct.type*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.type* %1, %struct.type** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* @TYPE_CODE_STRUCT, align 4
  %13 = call %struct.type* @init_composite_type(i8* %11, i32 %12)
  store %struct.type* %13, %struct.type** %9, align 8
  %14 = load %struct.type*, %struct.type** %6, align 8
  %15 = load i32, i32* @builtin_type_int, align 4
  %16 = load i32, i32* %8, align 4
  %17 = sub nsw i32 %16, 1
  %18 = call i32 @create_range_type(i32 0, i32 %15, i32 0, i32 %17)
  %19 = call %struct.type* @create_array_type(i32 0, %struct.type* %14, i32 %18)
  store %struct.type* %19, %struct.type** %10, align 8
  %20 = load %struct.type*, %struct.type** %9, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct.type*, %struct.type** %10, align 8
  %23 = call i32 @append_composite_type_field(%struct.type* %20, i8* %21, %struct.type* %22)
  %24 = load %struct.type*, %struct.type** %9, align 8
  ret %struct.type* %24
}

declare dso_local %struct.type* @init_composite_type(i8*, i32) #1

declare dso_local %struct.type* @create_array_type(i32, %struct.type*, i32) #1

declare dso_local i32 @create_range_type(i32, i32, i32, i32) #1

declare dso_local i32 @append_composite_type_field(%struct.type*, i8*, %struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
