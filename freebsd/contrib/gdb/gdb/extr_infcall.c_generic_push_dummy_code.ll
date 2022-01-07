; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcall.c_generic_push_dummy_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcall.c_generic_push_dummy_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.value = type { i32 }
%struct.type = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdbarch*, i32, i32, i32, %struct.value**, i32, %struct.type*, i32*, i32*)* @generic_push_dummy_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_push_dummy_code(%struct.gdbarch* %0, i32 %1, i32 %2, i32 %3, %struct.value** %4, i32 %5, %struct.type* %6, i32* %7, i32* %8) #0 {
  %10 = alloca %struct.gdbarch*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.value**, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.type*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store %struct.value** %4, %struct.value*** %14, align 8
  store i32 %5, i32* %15, align 4
  store %struct.type* %6, %struct.type** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %21 = load %struct.gdbarch*, %struct.gdbarch** %10, align 8
  %22 = call i32 @gdbarch_frame_align_p(%struct.gdbarch* %21)
  %23 = call i32 @gdb_assert(i32 %22)
  %24 = load %struct.gdbarch*, %struct.gdbarch** %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @gdbarch_frame_align(%struct.gdbarch* %24, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.gdbarch*, %struct.gdbarch** %10, align 8
  %28 = call i64 @gdbarch_inner_than(%struct.gdbarch* %27, i32 1, i32 2)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %9
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %20, align 4
  %32 = load %struct.gdbarch*, %struct.gdbarch** %10, align 8
  %33 = call i32 @gdbarch_breakpoint_from_pc(%struct.gdbarch* %32, i32* %20, i32* %19)
  %34 = load %struct.gdbarch*, %struct.gdbarch** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %19, align 4
  %37 = sub nsw i32 %35, %36
  %38 = call i32 @gdbarch_frame_align(%struct.gdbarch* %34, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32*, i32** %18, align 8
  store i32 %39, i32* %40, align 4
  br label %52

41:                                               ; preds = %9
  %42 = load i32, i32* %11, align 4
  %43 = load i32*, i32** %18, align 8
  store i32 %42, i32* %43, align 4
  %44 = load %struct.gdbarch*, %struct.gdbarch** %10, align 8
  %45 = load i32*, i32** %18, align 8
  %46 = call i32 @gdbarch_breakpoint_from_pc(%struct.gdbarch* %44, i32* %45, i32* %19)
  %47 = load %struct.gdbarch*, %struct.gdbarch** %10, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %19, align 4
  %50 = add nsw i32 %48, %49
  %51 = call i32 @gdbarch_frame_align(%struct.gdbarch* %47, i32 %50)
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %41, %30
  %53 = load i32, i32* %12, align 4
  %54 = load i32*, i32** %17, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %11, align 4
  ret i32 %55
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @gdbarch_frame_align_p(%struct.gdbarch*) #1

declare dso_local i32 @gdbarch_frame_align(%struct.gdbarch*, i32) #1

declare dso_local i64 @gdbarch_inner_than(%struct.gdbarch*, i32, i32) #1

declare dso_local i32 @gdbarch_breakpoint_from_pc(%struct.gdbarch*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
