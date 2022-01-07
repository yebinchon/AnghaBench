; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_float_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_float_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { i32 }

@builtin_float = common dso_local global i64 0, align 8
@builtin_double = common dso_local global i64 0, align 8
@builtin_long_double = common dso_local global i64 0, align 8
@builtin_long_long_double = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"IEEE unsupported float type size %u\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @ieee_float_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_float_type(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee_handle*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.ieee_handle*
  store %struct.ieee_handle* %9, %struct.ieee_handle** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %23 [
    i32 4, label %11
    i32 8, label %14
    i32 12, label %17
    i32 16, label %20
  ]

11:                                               ; preds = %2
  %12 = load i64, i64* @builtin_float, align 8
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %7, align 4
  br label %29

14:                                               ; preds = %2
  %15 = load i64, i64* @builtin_double, align 8
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %7, align 4
  br label %29

17:                                               ; preds = %2
  %18 = load i64, i64* @builtin_long_double, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %7, align 4
  br label %29

20:                                               ; preds = %2
  %21 = load i64, i64* @builtin_long_long_double, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %7, align 4
  br label %29

23:                                               ; preds = %2
  %24 = load i32, i32* @stderr, align 4
  %25 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @fprintf(i32 %24, i8* %25, i32 %26)
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %3, align 4
  br label %36

29:                                               ; preds = %20, %17, %14, %11
  %30 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @FALSE, align 4
  %34 = load i32, i32* @FALSE, align 4
  %35 = call i32 @ieee_push_type(%struct.ieee_handle* %30, i32 %31, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %29, %23
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @ieee_push_type(%struct.ieee_handle*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
