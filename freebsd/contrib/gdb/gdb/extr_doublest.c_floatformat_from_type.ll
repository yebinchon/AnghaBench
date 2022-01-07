; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_doublest.c_floatformat_from_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_doublest.c_floatformat_from_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.floatformat = type { i32 }
%struct.type = type { i32 }

@TYPE_CODE_FLT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.floatformat* @floatformat_from_type(%struct.type* %0) #0 {
  %2 = alloca %struct.floatformat*, align 8
  %3 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %3, align 8
  %4 = load %struct.type*, %struct.type** %3, align 8
  %5 = call i64 @TYPE_CODE(%struct.type* %4)
  %6 = load i64, i64* @TYPE_CODE_FLT, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @gdb_assert(i32 %8)
  %10 = load %struct.type*, %struct.type** %3, align 8
  %11 = call %struct.floatformat* @TYPE_FLOATFORMAT(%struct.type* %10)
  %12 = icmp ne %struct.floatformat* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.type*, %struct.type** %3, align 8
  %15 = call %struct.floatformat* @TYPE_FLOATFORMAT(%struct.type* %14)
  store %struct.floatformat* %15, %struct.floatformat** %2, align 8
  br label %20

16:                                               ; preds = %1
  %17 = load %struct.type*, %struct.type** %3, align 8
  %18 = call i32 @TYPE_LENGTH(%struct.type* %17)
  %19 = call %struct.floatformat* @floatformat_from_length(i32 %18)
  store %struct.floatformat* %19, %struct.floatformat** %2, align 8
  br label %20

20:                                               ; preds = %16, %13
  %21 = load %struct.floatformat*, %struct.floatformat** %2, align 8
  ret %struct.floatformat* %21
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.floatformat* @TYPE_FLOATFORMAT(%struct.type*) #1

declare dso_local %struct.floatformat* @floatformat_from_length(i32) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
