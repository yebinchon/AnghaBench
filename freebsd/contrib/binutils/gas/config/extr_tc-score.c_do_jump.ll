; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_do_jump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_do_jump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }

@inst = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@FAIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"lacking label  \00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"invalid constant: 25 bit expression not in range -2^24..2^24\00", align 1
@input_line_pointer = common dso_local global i8* null, align 8
@BFD_RELOC_SCORE_JMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @do_jump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_jump(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @skip_whitespace(i8* %4)
  %6 = call i32 @my_get_expression(%struct.TYPE_5__* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0, i32 2), i8** %2)
  %7 = load i64, i64* @FAIL, align 8
  %8 = trunc i64 %7 to i32
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @end_of_line(i8* %11)
  %13 = load i64, i64* @FAIL, align 8
  %14 = trunc i64 %13 to i32
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %1
  br label %37

17:                                               ; preds = %10
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0, i32 2, i32 0), align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i8* @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 1), align 8
  br label %37

22:                                               ; preds = %17
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0, i32 2, i32 1), align 8
  %24 = and i32 %23, -16777216
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0, i32 2, i32 1), align 8
  %28 = and i32 %27, -16777216
  %29 = icmp ne i32 %28, -16777216
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i8* @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  store i8* %31, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 1), align 8
  br label %37

32:                                               ; preds = %26, %22
  %33 = load i8*, i8** @input_line_pointer, align 8
  store i8* %33, i8** %3, align 8
  %34 = load i8*, i8** %2, align 8
  store i8* %34, i8** @input_line_pointer, align 8
  %35 = load i32, i32* @BFD_RELOC_SCORE_JMP, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0, i32 1), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0, i32 0), align 8
  %36 = load i8*, i8** %3, align 8
  store i8* %36, i8** @input_line_pointer, align 8
  br label %37

37:                                               ; preds = %32, %30, %20, %16
  ret void
}

declare dso_local i32 @skip_whitespace(i8*) #1

declare dso_local i32 @my_get_expression(%struct.TYPE_5__*, i8**) #1

declare dso_local i32 @end_of_line(i8*) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
