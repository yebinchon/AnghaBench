; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_verbose.c_verbose.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_verbose.c_verbose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vflag = common dso_local global i32 0, align 4
@Value_t = common dso_local global i32 0, align 4
@nrules = common dso_local global i32 0, align 4
@null_rules = common dso_local global i32 0, align 4
@verbose_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\0C\0A\00", align 1
@nstates = common dso_local global i32 0, align 4
@nunused = common dso_local global i64 0, align 8
@SRtotal = common dso_local global i64 0, align 8
@RRtotal = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"\0A\0A%d terminals, %d nonterminals\0A\00", align 1
@ntokens = common dso_local global i32 0, align 4
@nvars = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"%d grammar rules, %d states\0A\00", align 1
@nsyms = common dso_local global i32 0, align 4
@symbol_name = common dso_local global i8** null, align 8
@symbol_value = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @verbose() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @vflag, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %48

5:                                                ; preds = %0
  %6 = load i32, i32* @Value_t, align 4
  %7 = load i32, i32* @nrules, align 4
  %8 = call i32 @TMALLOC(i32 %6, i32 %7)
  store i32 %8, i32* @null_rules, align 4
  %9 = load i32, i32* @null_rules, align 4
  %10 = call i32 @NO_SPACE(i32 %9)
  %11 = load i32, i32* @verbose_file, align 4
  %12 = call i32 (i32, i8*, ...) @fprintf(i32 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %20, %5
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @nstates, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @print_state(i32 %18)
  br label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %1, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %1, align 4
  br label %13

23:                                               ; preds = %13
  %24 = load i32, i32* @null_rules, align 4
  %25 = call i32 @FREE(i32 %24)
  %26 = load i64, i64* @nunused, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 (...) @log_unused()
  br label %30

30:                                               ; preds = %28, %23
  %31 = load i64, i64* @SRtotal, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i64, i64* @RRtotal, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33, %30
  %37 = call i32 (...) @log_conflicts()
  br label %38

38:                                               ; preds = %36, %33
  %39 = load i32, i32* @verbose_file, align 4
  %40 = load i32, i32* @ntokens, align 4
  %41 = load i32, i32* @nvars, align 4
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load i32, i32* @verbose_file, align 4
  %44 = load i32, i32* @nrules, align 4
  %45 = sub nsw i32 %44, 2
  %46 = load i32, i32* @nstates, align 4
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %38, %4
  ret void
}

declare dso_local i32 @TMALLOC(i32, i32) #1

declare dso_local i32 @NO_SPACE(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @print_state(i32) #1

declare dso_local i32 @FREE(i32) #1

declare dso_local i32 @log_unused(...) #1

declare dso_local i32 @log_conflicts(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
