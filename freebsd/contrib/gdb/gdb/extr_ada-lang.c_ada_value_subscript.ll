; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_value_subscript.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_value_subscript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }

@TYPE_CODE_ARRAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"too many subscripts (%d expected)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @ada_value_subscript(%struct.value* %0, i32 %1, %struct.value** %2) #0 {
  %4 = alloca %struct.value*, align 8
  %5 = alloca %struct.value*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.value**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.value*, align 8
  %10 = alloca %struct.type*, align 8
  store %struct.value* %0, %struct.value** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.value** %2, %struct.value*** %7, align 8
  %11 = load %struct.value*, %struct.value** %5, align 8
  %12 = call %struct.value* @ada_coerce_to_simple_array(%struct.value* %11)
  store %struct.value* %12, %struct.value** %9, align 8
  %13 = load %struct.value*, %struct.value** %9, align 8
  %14 = call i32 @VALUE_TYPE(%struct.value* %13)
  %15 = call %struct.type* @check_typedef(i32 %14)
  store %struct.type* %15, %struct.type** %10, align 8
  %16 = load %struct.type*, %struct.type** %10, align 8
  %17 = call i64 @TYPE_CODE(%struct.type* %16)
  %18 = load i64, i64* @TYPE_CODE_ARRAY, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load %struct.type*, %struct.type** %10, align 8
  %22 = call i64 @TYPE_FIELD_BITSIZE(%struct.type* %21, i32 0)
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.value*, %struct.value** %9, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.value**, %struct.value*** %7, align 8
  %28 = call %struct.value* @value_subscript_packed(%struct.value* %25, i32 %26, %struct.value** %27)
  store %struct.value* %28, %struct.value** %4, align 8
  br label %56

29:                                               ; preds = %20, %3
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %51, %29
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %30
  %35 = load %struct.type*, %struct.type** %10, align 8
  %36 = call i64 @TYPE_CODE(%struct.type* %35)
  %37 = load i64, i64* @TYPE_CODE_ARRAY, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %34
  %43 = load %struct.value*, %struct.value** %9, align 8
  %44 = load %struct.value**, %struct.value*** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.value*, %struct.value** %44, i64 %46
  %48 = load %struct.value*, %struct.value** %47, align 8
  %49 = call i32 @value_pos_atr(%struct.value* %48)
  %50 = call %struct.value* @value_subscript(%struct.value* %43, i32 %49)
  store %struct.value* %50, %struct.value** %9, align 8
  br label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %30

54:                                               ; preds = %30
  %55 = load %struct.value*, %struct.value** %9, align 8
  store %struct.value* %55, %struct.value** %4, align 8
  br label %56

56:                                               ; preds = %54, %24
  %57 = load %struct.value*, %struct.value** %4, align 8
  ret %struct.value* %57
}

declare dso_local %struct.value* @ada_coerce_to_simple_array(%struct.value*) #1

declare dso_local %struct.type* @check_typedef(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i64 @TYPE_FIELD_BITSIZE(%struct.type*, i32) #1

declare dso_local %struct.value* @value_subscript_packed(%struct.value*, i32, %struct.value**) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local %struct.value* @value_subscript(%struct.value*, i32) #1

declare dso_local i32 @value_pos_atr(%struct.value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
