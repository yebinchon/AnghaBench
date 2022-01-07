; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_value_val_atr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_value_val_atr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.value = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"'VAL only defined on discrete types\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"'VAL requires integral argument\00", align 1
@TYPE_CODE_ENUM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"argument to 'VAL out of range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.value* (%struct.type*, %struct.value*)* @value_val_atr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.value* @value_val_atr(%struct.type* %0, %struct.value* %1) #0 {
  %3 = alloca %struct.value*, align 8
  %4 = alloca %struct.type*, align 8
  %5 = alloca %struct.value*, align 8
  %6 = alloca i64, align 8
  store %struct.type* %0, %struct.type** %4, align 8
  store %struct.value* %1, %struct.value** %5, align 8
  %7 = load %struct.type*, %struct.type** %4, align 8
  %8 = call i32 @discrete_type_p(%struct.type* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %2
  %13 = load %struct.value*, %struct.value** %5, align 8
  %14 = call i32 @VALUE_TYPE(%struct.value* %13)
  %15 = call i32 @integer_type_p(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = call i32 @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %12
  %20 = load %struct.type*, %struct.type** %4, align 8
  %21 = call i64 @TYPE_CODE(%struct.type* %20)
  %22 = load i64, i64* @TYPE_CODE_ENUM, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %19
  %25 = load %struct.value*, %struct.value** %5, align 8
  %26 = call i64 @value_as_long(%struct.value* %25)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.type*, %struct.type** %4, align 8
  %32 = call i64 @TYPE_NFIELDS(%struct.type* %31)
  %33 = icmp sge i64 %30, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29, %24
  %35 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %29
  %37 = load %struct.type*, %struct.type** %4, align 8
  %38 = load %struct.type*, %struct.type** %4, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i64 @TYPE_FIELD_BITPOS(%struct.type* %38, i64 %39)
  %41 = call %struct.value* @value_from_longest(%struct.type* %37, i64 %40)
  store %struct.value* %41, %struct.value** %3, align 8
  br label %47

42:                                               ; preds = %19
  %43 = load %struct.type*, %struct.type** %4, align 8
  %44 = load %struct.value*, %struct.value** %5, align 8
  %45 = call i64 @value_as_long(%struct.value* %44)
  %46 = call %struct.value* @value_from_longest(%struct.type* %43, i64 %45)
  store %struct.value* %46, %struct.value** %3, align 8
  br label %47

47:                                               ; preds = %42, %36
  %48 = load %struct.value*, %struct.value** %3, align 8
  ret %struct.value* %48
}

declare dso_local i32 @discrete_type_p(%struct.type*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @integer_type_p(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i64 @value_as_long(%struct.value*) #1

declare dso_local i64 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local %struct.value* @value_from_longest(%struct.type*, i64) #1

declare dso_local i64 @TYPE_FIELD_BITPOS(%struct.type*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
