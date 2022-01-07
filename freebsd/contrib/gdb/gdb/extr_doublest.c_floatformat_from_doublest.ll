; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_doublest.c_floatformat_from_doublest.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_doublest.c_floatformat_from_doublest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.floatformat = type { i32 }

@host_float_format = common dso_local global %struct.floatformat* null, align 8
@host_double_format = common dso_local global %struct.floatformat* null, align 8
@host_long_double_format = common dso_local global %struct.floatformat* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @floatformat_from_doublest(%struct.floatformat* %0, float* %1, i8* %2) #0 {
  %4 = alloca %struct.floatformat*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca float, align 4
  %8 = alloca double, align 8
  %9 = alloca x86_fp80, align 16
  store %struct.floatformat* %0, %struct.floatformat** %4, align 8
  store float* %1, float** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %11 = icmp ne %struct.floatformat* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @gdb_assert(i32 %12)
  %14 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %15 = load %struct.floatformat*, %struct.floatformat** @host_float_format, align 8
  %16 = icmp eq %struct.floatformat* %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load float*, float** %5, align 8
  %19 = load float, float* %18, align 4
  store float %19, float* %7, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 (i8*, ...) @memcpy(i8* %20, float* %7, i64 4)
  br label %49

22:                                               ; preds = %3
  %23 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %24 = load %struct.floatformat*, %struct.floatformat** @host_double_format, align 8
  %25 = icmp eq %struct.floatformat* %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load float*, float** %5, align 8
  %28 = load float, float* %27, align 4
  %29 = fpext float %28 to double
  store double %29, double* %8, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 (i8*, ...) @memcpy(i8* %30, double* %8, i64 8)
  br label %48

32:                                               ; preds = %22
  %33 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %34 = load %struct.floatformat*, %struct.floatformat** @host_long_double_format, align 8
  %35 = icmp eq %struct.floatformat* %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load float*, float** %5, align 8
  %38 = load float, float* %37, align 4
  %39 = fpext float %38 to x86_fp80
  store x86_fp80 %39, x86_fp80* %9, align 16
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 (i8*, ...) @memcpy(i8* %40, x86_fp80* %9, i64 16)
  br label %47

42:                                               ; preds = %32
  %43 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %44 = load float*, float** %5, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @convert_doublest_to_floatformat(%struct.floatformat* %43, float* %44, i8* %45)
  br label %47

47:                                               ; preds = %42, %36
  br label %48

48:                                               ; preds = %47, %26
  br label %49

49:                                               ; preds = %48, %17
  ret void
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @memcpy(i8*, ...) #1

declare dso_local i32 @convert_doublest_to_floatformat(%struct.floatformat*, float*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
