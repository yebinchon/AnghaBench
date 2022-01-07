; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_verbose.c_print_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_verbose.c_print_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verbose_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@SRconflicts = common dso_local global i64* null, align 8
@RRconflicts = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"state %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @print_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_state(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, i32* @verbose_file, align 4
  %7 = call i32 (i32, i8*, ...) @fprintf(i32 %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %5, %1
  %9 = load i64*, i64** @SRconflicts, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %8
  %16 = load i64*, i64** @RRconflicts, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15, %8
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @print_conflicts(i32 %23)
  br label %25

25:                                               ; preds = %22, %15
  %26 = load i32, i32* @verbose_file, align 4
  %27 = load i32, i32* %2, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @print_core(i32 %29)
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @print_nulls(i32 %31)
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @print_actions(i32 %33)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @print_conflicts(i32) #1

declare dso_local i32 @print_core(i32) #1

declare dso_local i32 @print_nulls(i32) #1

declare dso_local i32 @print_actions(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
