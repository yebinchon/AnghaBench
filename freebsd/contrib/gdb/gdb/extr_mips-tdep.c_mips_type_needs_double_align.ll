; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_type_needs_double_align.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_type_needs_double_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_FLT = common dso_local global i32 0, align 4
@TYPE_CODE_STRUCT = common dso_local global i32 0, align 4
@TYPE_CODE_UNION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.type*)* @mips_type_needs_double_align to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_type_needs_double_align(%struct.type* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.type*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %3, align 8
  %7 = load %struct.type*, %struct.type** %3, align 8
  %8 = call i32 @TYPE_CODE(%struct.type* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @TYPE_CODE_FLT, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.type*, %struct.type** %3, align 8
  %14 = call i32 @TYPE_LENGTH(%struct.type* %13)
  %15 = icmp eq i32 %14, 8
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %56

17:                                               ; preds = %12, %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @TYPE_CODE_STRUCT, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load %struct.type*, %struct.type** %3, align 8
  %23 = call i32 @TYPE_NFIELDS(%struct.type* %22)
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %56

26:                                               ; preds = %21
  %27 = load %struct.type*, %struct.type** %3, align 8
  %28 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %27, i32 0)
  %29 = call i32 @mips_type_needs_double_align(%struct.type* %28)
  store i32 %29, i32* %2, align 4
  br label %56

30:                                               ; preds = %17
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @TYPE_CODE_UNION, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %30
  %35 = load %struct.type*, %struct.type** %3, align 8
  %36 = call i32 @TYPE_NFIELDS(%struct.type* %35)
  store i32 %36, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %49, %34
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load %struct.type*, %struct.type** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %42, i32 %43)
  %45 = call i32 @mips_type_needs_double_align(%struct.type* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 1, i32* %2, align 4
  br label %56

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %37

52:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %56

53:                                               ; preds = %30
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %52, %47, %26, %25, %16
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local %struct.type* @TYPE_FIELD_TYPE(%struct.type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
