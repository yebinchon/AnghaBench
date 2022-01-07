; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_gen.c_genftbl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_gen.c_genftbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@num_rules = common dso_local global i32 0, align 4
@long_align = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"yy_accept\00", align 1
@lastdfa = common dso_local global i32 0, align 4
@dfaacc = common dso_local global %struct.TYPE_2__* null, align 8
@end_of_buffer_state = common dso_local global i64 0, align 8
@trace = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"state # %d accepts: [%d]\0A\00", align 1
@useecs = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @genftbl() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @num_rules, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* %2, align 4
  %6 = load i64, i64* @long_align, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 (...) @get_int32_decl()
  br label %12

10:                                               ; preds = %0
  %11 = call i32 (...) @get_int16_decl()
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %14 = load i32, i32* @lastdfa, align 4
  %15 = add nsw i32 %14, 1
  %16 = call i32 @out_str_dec(i32 %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %2, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dfaacc, align 8
  %19 = load i64, i64* @end_of_buffer_state, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %17, i32* %21, align 4
  store i32 1, i32* %1, align 4
  br label %22

22:                                               ; preds = %47, %12
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* @lastdfa, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %22
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dfaacc, align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @mkdata(i32 %33)
  %35 = load i64, i64* @trace, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %26
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i32, i32* @stderr, align 4
  %42 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* %1, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @fprintf(i32 %41, i8* %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %40, %37, %26
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %1, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %1, align 4
  br label %22

50:                                               ; preds = %22
  %51 = call i32 (...) @dataend()
  %52 = load i64, i64* @useecs, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = call i32 (...) @genecs()
  br label %56

56:                                               ; preds = %54, %50
  ret void
}

declare dso_local i32 @out_str_dec(i32, i8*, i32) #1

declare dso_local i32 @get_int32_decl(...) #1

declare dso_local i32 @get_int16_decl(...) #1

declare dso_local i32 @mkdata(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @dataend(...) #1

declare dso_local i32 @genecs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
