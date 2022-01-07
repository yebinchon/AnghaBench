; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_doublest.c_floatformat_from_length.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_doublest.c_floatformat_from_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.floatformat = type { i32 }

@TARGET_CHAR_BIT = common dso_local global i32 0, align 4
@TARGET_FLOAT_BIT = common dso_local global i32 0, align 4
@TARGET_FLOAT_FORMAT = common dso_local global %struct.floatformat* null, align 8
@TARGET_DOUBLE_BIT = common dso_local global i32 0, align 4
@TARGET_DOUBLE_FORMAT = common dso_local global %struct.floatformat* null, align 8
@TARGET_LONG_DOUBLE_BIT = common dso_local global i32 0, align 4
@TARGET_LONG_DOUBLE_FORMAT = common dso_local global %struct.floatformat* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.floatformat* (i32)* @floatformat_from_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.floatformat* @floatformat_from_length(i32 %0) #0 {
  %2 = alloca %struct.floatformat*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %6 = mul nsw i32 %4, %5
  %7 = load i32, i32* @TARGET_FLOAT_BIT, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load %struct.floatformat*, %struct.floatformat** @TARGET_FLOAT_FORMAT, align 8
  store %struct.floatformat* %10, %struct.floatformat** %2, align 8
  br label %44

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %14 = mul nsw i32 %12, %13
  %15 = load i32, i32* @TARGET_DOUBLE_BIT, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load %struct.floatformat*, %struct.floatformat** @TARGET_DOUBLE_FORMAT, align 8
  store %struct.floatformat* %18, %struct.floatformat** %2, align 8
  br label %44

19:                                               ; preds = %11
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %22 = mul nsw i32 %20, %21
  %23 = load i32, i32* @TARGET_LONG_DOUBLE_BIT, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load %struct.floatformat*, %struct.floatformat** @TARGET_LONG_DOUBLE_FORMAT, align 8
  store %struct.floatformat* %26, %struct.floatformat** %2, align 8
  br label %44

27:                                               ; preds = %19
  %28 = load %struct.floatformat*, %struct.floatformat** @TARGET_LONG_DOUBLE_FORMAT, align 8
  %29 = icmp ne %struct.floatformat* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %33 = mul nsw i32 %31, %32
  %34 = load %struct.floatformat*, %struct.floatformat** @TARGET_LONG_DOUBLE_FORMAT, align 8
  %35 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load %struct.floatformat*, %struct.floatformat** @TARGET_LONG_DOUBLE_FORMAT, align 8
  store %struct.floatformat* %39, %struct.floatformat** %2, align 8
  br label %44

40:                                               ; preds = %30, %27
  br label %41

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %42
  store %struct.floatformat* null, %struct.floatformat** %2, align 8
  br label %44

44:                                               ; preds = %43, %38, %25, %17, %9
  %45 = load %struct.floatformat*, %struct.floatformat** %2, align 8
  ret %struct.floatformat* %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
