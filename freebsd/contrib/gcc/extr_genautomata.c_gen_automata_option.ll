; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_gen_automata_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_gen_automata_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NO_MINIMIZATION_OPTION = common dso_local global i64 0, align 8
@no_minimization_flag = common dso_local global i32 0, align 4
@TIME_OPTION = common dso_local global i64 0, align 8
@time_flag = common dso_local global i32 0, align 4
@V_OPTION = common dso_local global i64 0, align 8
@v_flag = common dso_local global i32 0, align 4
@W_OPTION = common dso_local global i64 0, align 8
@w_flag = common dso_local global i32 0, align 4
@NDFA_OPTION = common dso_local global i64 0, align 8
@ndfa_flag = common dso_local global i32 0, align 4
@PROGRESS_OPTION = common dso_local global i64 0, align 8
@progress_flag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"invalid option `%s' in automata_option\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @gen_automata_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_automata_option(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @XSTR(i32 %3, i32 0)
  %5 = load i64, i64* @NO_MINIMIZATION_OPTION, align 8
  %6 = add nsw i64 %5, 1
  %7 = call i64 @strcmp(i32 %4, i64 %6)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* @no_minimization_flag, align 4
  br label %59

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @XSTR(i32 %11, i32 0)
  %13 = load i64, i64* @TIME_OPTION, align 8
  %14 = add nsw i64 %13, 1
  %15 = call i64 @strcmp(i32 %12, i64 %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store i32 1, i32* @time_flag, align 4
  br label %58

18:                                               ; preds = %10
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @XSTR(i32 %19, i32 0)
  %21 = load i64, i64* @V_OPTION, align 8
  %22 = add nsw i64 %21, 1
  %23 = call i64 @strcmp(i32 %20, i64 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 1, i32* @v_flag, align 4
  br label %57

26:                                               ; preds = %18
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @XSTR(i32 %27, i32 0)
  %29 = load i64, i64* @W_OPTION, align 8
  %30 = add nsw i64 %29, 1
  %31 = call i64 @strcmp(i32 %28, i64 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 1, i32* @w_flag, align 4
  br label %56

34:                                               ; preds = %26
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @XSTR(i32 %35, i32 0)
  %37 = load i64, i64* @NDFA_OPTION, align 8
  %38 = add nsw i64 %37, 1
  %39 = call i64 @strcmp(i32 %36, i64 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 1, i32* @ndfa_flag, align 4
  br label %55

42:                                               ; preds = %34
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @XSTR(i32 %43, i32 0)
  %45 = load i64, i64* @PROGRESS_OPTION, align 8
  %46 = add nsw i64 %45, 1
  %47 = call i64 @strcmp(i32 %44, i64 %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 1, i32* @progress_flag, align 4
  br label %54

50:                                               ; preds = %42
  %51 = load i32, i32* %2, align 4
  %52 = call i32 @XSTR(i32 %51, i32 0)
  %53 = call i32 @fatal(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %50, %49
  br label %55

55:                                               ; preds = %54, %41
  br label %56

56:                                               ; preds = %55, %33
  br label %57

57:                                               ; preds = %56, %25
  br label %58

58:                                               ; preds = %57, %17
  br label %59

59:                                               ; preds = %58, %9
  ret void
}

declare dso_local i64 @strcmp(i32, i64) #1

declare dso_local i32 @XSTR(i32, i32) #1

declare dso_local i32 @fatal(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
