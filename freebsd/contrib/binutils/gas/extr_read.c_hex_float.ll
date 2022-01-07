; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_hex_float.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_hex_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"unknown floating type type '%c'\00", align 1
@input_line_pointer = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"floating point constant too large\00", align 1
@target_big_endian = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hex_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hex_float(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %14 [
    i32 102, label %10
    i32 70, label %10
    i32 115, label %10
    i32 83, label %10
    i32 100, label %11
    i32 68, label %11
    i32 114, label %11
    i32 82, label %11
    i32 120, label %12
    i32 88, label %12
    i32 112, label %13
    i32 80, label %13
  ]

10:                                               ; preds = %2, %2, %2, %2
  store i32 4, i32* %6, align 4
  br label %18

11:                                               ; preds = %2, %2, %2, %2
  store i32 8, i32* %6, align 4
  br label %18

12:                                               ; preds = %2, %2
  store i32 12, i32* %6, align 4
  br label %18

13:                                               ; preds = %2, %2
  store i32 12, i32* %6, align 4
  br label %18

14:                                               ; preds = %2
  %15 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @as_bad(i32 %15, i32 %16)
  store i32 -1, i32* %3, align 4
  br label %122

18:                                               ; preds = %13, %12, %11, %10
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %94, %36, %18
  %20 = load i8*, i8** @input_line_pointer, align 8
  %21 = load i8, i8* %20, align 1
  %22 = call i64 @hex_p(i8 signext %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** @input_line_pointer, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 95
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi i1 [ true, %19 ], [ %28, %24 ]
  br i1 %30, label %31, label %97

31:                                               ; preds = %29
  %32 = load i8*, i8** @input_line_pointer, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 95
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i8*, i8** @input_line_pointer, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** @input_line_pointer, align 8
  br label %19

39:                                               ; preds = %31
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %45 = call i32 @as_warn(i32 %44)
  store i32 -1, i32* %3, align 4
  br label %122

46:                                               ; preds = %39
  %47 = load i8*, i8** @input_line_pointer, align 8
  %48 = load i8, i8* %47, align 1
  %49 = call i32 @hex_value(i8 signext %48)
  %50 = shl i32 %49, 4
  store i32 %50, i32* %8, align 4
  %51 = load i8*, i8** @input_line_pointer, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** @input_line_pointer, align 8
  br label %53

53:                                               ; preds = %58, %46
  %54 = load i8*, i8** @input_line_pointer, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 95
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i8*, i8** @input_line_pointer, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** @input_line_pointer, align 8
  br label %53

61:                                               ; preds = %53
  %62 = load i8*, i8** @input_line_pointer, align 8
  %63 = load i8, i8* %62, align 1
  %64 = call i64 @hex_p(i8 signext %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load i8*, i8** @input_line_pointer, align 8
  %68 = load i8, i8* %67, align 1
  %69 = call i32 @hex_value(i8 signext %68)
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %8, align 4
  %72 = load i8*, i8** @input_line_pointer, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** @input_line_pointer, align 8
  br label %74

74:                                               ; preds = %66, %61
  %75 = load i64, i64* @target_big_endian, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load i32, i32* %8, align 4
  %79 = trunc i32 %78 to i8
  %80 = load i8*, i8** %5, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  store i8 %79, i8* %83, align 1
  br label %94

84:                                               ; preds = %74
  %85 = load i32, i32* %8, align 4
  %86 = trunc i32 %85 to i8
  %87 = load i8*, i8** %5, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %7, align 4
  %90 = sub nsw i32 %88, %89
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %87, i64 %92
  store i8 %86, i8* %93, align 1
  br label %94

94:                                               ; preds = %84, %77
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %19

97:                                               ; preds = %29
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %120

101:                                              ; preds = %97
  %102 = load i64, i64* @target_big_endian, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %101
  %105 = load i8*, i8** %5, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %7, align 4
  %111 = sub nsw i32 %109, %110
  %112 = call i32 @memset(i8* %108, i32 0, i32 %111)
  br label %119

113:                                              ; preds = %101
  %114 = load i8*, i8** %5, align 8
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %7, align 4
  %117 = sub nsw i32 %115, %116
  %118 = call i32 @memset(i8* %114, i32 0, i32 %117)
  br label %119

119:                                              ; preds = %113, %104
  br label %120

120:                                              ; preds = %119, %97
  %121 = load i32, i32* %6, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %120, %43, %14
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @as_bad(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @hex_p(i8 signext) #1

declare dso_local i32 @as_warn(i32) #1

declare dso_local i32 @hex_value(i8 signext) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
