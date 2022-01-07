; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_write_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_write_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { i32 }

@ieee_number_end_enum = common dso_local global i64 0, align 8
@ieee_number_repeat_end_enum = common dso_local global i64 0, align 8
@ieee_number_repeat_start_enum = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"IEEE numeric overflow: 0x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee_handle*, i64)* @ieee_write_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_write_number(%struct.ieee_handle* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee_handle*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [20 x i32], align 16
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee_handle* %0, %struct.ieee_handle** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @ieee_number_end_enum, align 8
  %12 = icmp sle i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 @ieee_write_byte(%struct.ieee_handle* %14, i32 %16)
  store i32 %17, i32* %3, align 4
  br label %88

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  store i64 %19, i64* %6, align 8
  %20 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 0
  %21 = getelementptr inbounds i32, i32* %20, i64 80
  store i32* %21, i32** %8, align 8
  br label %22

22:                                               ; preds = %25, %18
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i64, i64* %6, align 8
  %27 = and i64 %26, 255
  %28 = trunc i64 %27 to i32
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 -1
  store i32* %30, i32** %8, align 8
  store i32 %28, i32* %30, align 4
  %31 = load i64, i64* %6, align 8
  %32 = ashr i64 %31, 8
  store i64 %32, i64* %6, align 8
  br label %22

33:                                               ; preds = %22
  %34 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 0
  %35 = getelementptr inbounds i32, i32* %34, i64 20
  %36 = load i32*, i32** %8, align 8
  %37 = ptrtoint i32* %35 to i64
  %38 = ptrtoint i32* %36 to i64
  %39 = sub i64 %37, %38
  %40 = sdiv exact i64 %39, 4
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i64, i64* @ieee_number_repeat_end_enum, align 8
  %44 = load i64, i64* @ieee_number_repeat_start_enum, align 8
  %45 = sub nsw i64 %43, %44
  %46 = trunc i64 %45 to i32
  %47 = icmp ugt i32 %42, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %33
  %49 = load i32, i32* @stderr, align 4
  %50 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %51 = call i32 @fprintf(i32 %49, i8* %50)
  %52 = load i32, i32* @stderr, align 4
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @fprintf_vma(i32 %52, i64 %53)
  %55 = load i32, i32* @stderr, align 4
  %56 = call i32 @fprintf(i32 %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %3, align 4
  br label %88

58:                                               ; preds = %33
  %59 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %60 = load i64, i64* @ieee_number_repeat_start_enum, align 8
  %61 = trunc i64 %60 to i32
  %62 = load i32, i32* %9, align 4
  %63 = add i32 %61, %62
  %64 = call i32 @ieee_write_byte(%struct.ieee_handle* %59, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %58
  %67 = load i32, i32* @FALSE, align 4
  store i32 %67, i32* %3, align 4
  br label %88

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %81, %68
  %70 = load i32, i32* %9, align 4
  %71 = icmp ugt i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %69
  %73 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ieee_write_byte(%struct.ieee_handle* %73, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %72
  %79 = load i32, i32* @FALSE, align 4
  store i32 %79, i32* %3, align 4
  br label %88

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %9, align 4
  %83 = add i32 %82, -1
  store i32 %83, i32* %9, align 4
  %84 = load i32*, i32** %8, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %8, align 8
  br label %69

86:                                               ; preds = %69
  %87 = load i32, i32* @TRUE, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %78, %66, %48, %13
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @ieee_write_byte(%struct.ieee_handle*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @fprintf_vma(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
