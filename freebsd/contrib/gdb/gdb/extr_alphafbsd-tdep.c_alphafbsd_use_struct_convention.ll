; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alphafbsd-tdep.c_alphafbsd_use_struct_convention.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alphafbsd-tdep.c_alphafbsd_use_struct_convention.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@ALPHA_REGISTER_SIZE = common dso_local global i64 0, align 8
@TYPE_CODE_STRUCT = common dso_local global i32 0, align 4
@TYPE_CODE_UNION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.type*)* @alphafbsd_use_struct_convention to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alphafbsd_use_struct_convention(i32 %0, %struct.type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.type*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.type* %1, %struct.type** %5, align 8
  %8 = load %struct.type*, %struct.type** %5, align 8
  %9 = call i64 @TYPE_LENGTH(%struct.type* %8)
  %10 = load i64, i64* @ALPHA_REGISTER_SIZE, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %46

13:                                               ; preds = %2
  %14 = load %struct.type*, %struct.type** %5, align 8
  %15 = call i32 @TYPE_CODE(%struct.type* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @TYPE_CODE_STRUCT, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @TYPE_CODE_UNION, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %46

24:                                               ; preds = %19, %13
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %42, %24
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.type*, %struct.type** %5, align 8
  %28 = call i32 @TYPE_NFIELDS(%struct.type* %27)
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load %struct.type*, %struct.type** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @TYPE_FIELD_BITPOS(%struct.type* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.type*, %struct.type** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @TYPE_FIELD_BITSIZE(%struct.type* %36, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %46

41:                                               ; preds = %35, %30
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %25

45:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %40, %23, %12
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i64 @TYPE_FIELD_BITPOS(%struct.type*, i32) #1

declare dso_local i64 @TYPE_FIELD_BITSIZE(%struct.type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
