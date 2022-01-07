; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_value_pos_atr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_value_pos_atr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"'POS only defined on discrete types\00", align 1
@TYPE_CODE_ENUM = common dso_local global i64 0, align 8
@builtin_type_ada_int = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"enumeration value is invalid: can't find 'POS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.value* (%struct.value*)* @value_pos_atr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.value* @value_pos_atr(%struct.value* %0) #0 {
  %2 = alloca %struct.value*, align 8
  %3 = alloca %struct.value*, align 8
  %4 = alloca %struct.type*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.value* %0, %struct.value** %3, align 8
  %7 = load %struct.value*, %struct.value** %3, align 8
  %8 = call %struct.type* @VALUE_TYPE(%struct.value* %7)
  store %struct.type* %8, %struct.type** %4, align 8
  %9 = load %struct.type*, %struct.type** %4, align 8
  %10 = call i32 @discrete_type_p(%struct.type* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %1
  %15 = load %struct.type*, %struct.type** %4, align 8
  %16 = call i64 @TYPE_CODE(%struct.type* %15)
  %17 = load i64, i64* @TYPE_CODE_ENUM, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %14
  %20 = load %struct.value*, %struct.value** %3, align 8
  %21 = call i32 @value_as_long(%struct.value* %20)
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %6, align 8
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %39, %19
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.type*, %struct.type** %4, align 8
  %26 = call i32 @TYPE_NFIELDS(%struct.type* %25)
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.type*, %struct.type** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @TYPE_FIELD_BITPOS(%struct.type* %30, i32 %31)
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* @builtin_type_ada_int, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call %struct.value* @value_from_longest(i32 %35, i32 %36)
  store %struct.value* %37, %struct.value** %2, align 8
  br label %49

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %23

42:                                               ; preds = %23
  %43 = call i32 @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %49

44:                                               ; preds = %14
  %45 = load i32, i32* @builtin_type_ada_int, align 4
  %46 = load %struct.value*, %struct.value** %3, align 8
  %47 = call i32 @value_as_long(%struct.value* %46)
  %48 = call %struct.value* @value_from_longest(i32 %45, i32 %47)
  store %struct.value* %48, %struct.value** %2, align 8
  br label %49

49:                                               ; preds = %34, %44, %42
  %50 = load %struct.value*, %struct.value** %2, align 8
  ret %struct.value* %50
}

declare dso_local %struct.type* @VALUE_TYPE(%struct.value*) #1

declare dso_local i32 @discrete_type_p(%struct.type*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @value_as_long(%struct.value*) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i64 @TYPE_FIELD_BITPOS(%struct.type*, i32) #1

declare dso_local %struct.value* @value_from_longest(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
