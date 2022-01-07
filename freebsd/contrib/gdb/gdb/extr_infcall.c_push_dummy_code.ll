; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcall.c_push_dummy_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcall.c_push_dummy_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.value = type { i32 }
%struct.type = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdbarch*, i32, i32, i32, %struct.value**, i32, %struct.type*, i32*, i32*)* @push_dummy_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_dummy_code(%struct.gdbarch* %0, i32 %1, i32 %2, i32 %3, %struct.value** %4, i32 %5, %struct.type* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.gdbarch*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.value**, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.type*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store %struct.value** %4, %struct.value*** %15, align 8
  store i32 %5, i32* %16, align 4
  store %struct.type* %6, %struct.type** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %20 = load %struct.gdbarch*, %struct.gdbarch** %11, align 8
  %21 = call i64 @gdbarch_push_dummy_code_p(%struct.gdbarch* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %9
  %24 = load %struct.gdbarch*, %struct.gdbarch** %11, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %14, align 4
  %28 = load %struct.value**, %struct.value*** %15, align 8
  %29 = load i32, i32* %16, align 4
  %30 = load %struct.type*, %struct.type** %17, align 8
  %31 = load i32*, i32** %18, align 8
  %32 = load i32*, i32** %19, align 8
  %33 = call i32 @gdbarch_push_dummy_code(%struct.gdbarch* %24, i32 %25, i32 %26, i32 %27, %struct.value** %28, i32 %29, %struct.type* %30, i32* %31, i32* %32)
  store i32 %33, i32* %10, align 4
  br label %63

34:                                               ; preds = %9
  %35 = call i64 (...) @DEPRECATED_FIX_CALL_DUMMY_P()
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %34
  %38 = load %struct.gdbarch*, %struct.gdbarch** %11, align 8
  %39 = call i32 @gdbarch_push_dummy_call_p(%struct.gdbarch* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %37
  %42 = load %struct.gdbarch*, %struct.gdbarch** %11, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load %struct.value**, %struct.value*** %15, align 8
  %47 = load i32, i32* %16, align 4
  %48 = load %struct.type*, %struct.type** %17, align 8
  %49 = load i32*, i32** %18, align 8
  %50 = load i32*, i32** %19, align 8
  %51 = call i32 @legacy_push_dummy_code(%struct.gdbarch* %42, i32 %43, i32 %44, i32 %45, %struct.value** %46, i32 %47, %struct.type* %48, i32* %49, i32* %50)
  store i32 %51, i32* %10, align 4
  br label %63

52:                                               ; preds = %37, %34
  %53 = load %struct.gdbarch*, %struct.gdbarch** %11, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load %struct.value**, %struct.value*** %15, align 8
  %58 = load i32, i32* %16, align 4
  %59 = load %struct.type*, %struct.type** %17, align 8
  %60 = load i32*, i32** %18, align 8
  %61 = load i32*, i32** %19, align 8
  %62 = call i32 @generic_push_dummy_code(%struct.gdbarch* %53, i32 %54, i32 %55, i32 %56, %struct.value** %57, i32 %58, %struct.type* %59, i32* %60, i32* %61)
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %52, %41, %23
  %64 = load i32, i32* %10, align 4
  ret i32 %64
}

declare dso_local i64 @gdbarch_push_dummy_code_p(%struct.gdbarch*) #1

declare dso_local i32 @gdbarch_push_dummy_code(%struct.gdbarch*, i32, i32, i32, %struct.value**, i32, %struct.type*, i32*, i32*) #1

declare dso_local i64 @DEPRECATED_FIX_CALL_DUMMY_P(...) #1

declare dso_local i32 @gdbarch_push_dummy_call_p(%struct.gdbarch*) #1

declare dso_local i32 @legacy_push_dummy_code(%struct.gdbarch*, i32, i32, i32, %struct.value**, i32, %struct.type*, i32*, i32*) #1

declare dso_local i32 @generic_push_dummy_code(%struct.gdbarch*, i32, i32, i32, %struct.value**, i32, %struct.type*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
