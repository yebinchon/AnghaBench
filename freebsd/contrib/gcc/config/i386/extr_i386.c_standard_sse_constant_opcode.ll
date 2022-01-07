; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_standard_sse_constant_opcode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_standard_sse_constant_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MODE_V4SF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"xorps\09%0, %0\00", align 1
@MODE_V2DF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"xorpd\09%0, %0\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"pxor\09%0, %0\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"pcmpeqd\09%0, %0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @standard_sse_constant_opcode(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @standard_sse_constant_p(i32 %6)
  switch i32 %7, label %22 [
    i32 1, label %8
    i32 2, label %21
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @get_attr_mode(i32 %9)
  %11 = load i32, i32* @MODE_V4SF, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %24

14:                                               ; preds = %8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @get_attr_mode(i32 %15)
  %17 = load i32, i32* @MODE_V2DF, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %24

20:                                               ; preds = %14
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %24

21:                                               ; preds = %2
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %24

22:                                               ; preds = %2
  %23 = call i32 (...) @gcc_unreachable()
  br label %24

24:                                               ; preds = %22, %21, %20, %19, %13
  %25 = load i8*, i8** %3, align 8
  ret i8* %25
}

declare dso_local i32 @standard_sse_constant_p(i32) #1

declare dso_local i32 @get_attr_mode(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
