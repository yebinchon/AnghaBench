; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_int_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_int_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { i32 }

@builtin_signed_char = common dso_local global i64 0, align 8
@builtin_signed_short_int = common dso_local global i64 0, align 8
@builtin_signed_long = common dso_local global i64 0, align 8
@builtin_signed_long_long = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"IEEE unsupported integer type size %u\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @ieee_int_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_int_type(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee_handle*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.ieee_handle*
  store %struct.ieee_handle* %11, %struct.ieee_handle** %8, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %25 [
    i32 1, label %13
    i32 2, label %16
    i32 4, label %19
    i32 8, label %22
  ]

13:                                               ; preds = %3
  %14 = load i64, i64* @builtin_signed_char, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %9, align 4
  br label %31

16:                                               ; preds = %3
  %17 = load i64, i64* @builtin_signed_short_int, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %9, align 4
  br label %31

19:                                               ; preds = %3
  %20 = load i64, i64* @builtin_signed_long, align 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %9, align 4
  br label %31

22:                                               ; preds = %3
  %23 = load i64, i64* @builtin_signed_long_long, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %9, align 4
  br label %31

25:                                               ; preds = %3
  %26 = load i32, i32* @stderr, align 4
  %27 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @fprintf(i32 %26, i8* %27, i32 %28)
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %4, align 4
  br label %44

31:                                               ; preds = %22, %19, %16, %13
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @FALSE, align 4
  %43 = call i32 @ieee_push_type(%struct.ieee_handle* %38, i32 %39, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %37, %25
  %45 = load i32, i32* %4, align 4
  ret i32 %45
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
