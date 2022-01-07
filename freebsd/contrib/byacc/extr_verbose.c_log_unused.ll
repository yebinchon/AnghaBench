; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_verbose.c_log_unused.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_verbose.c_log_unused.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verbose_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"\0A\0ARules never reduced:\0A\00", align 1
@nrules = common dso_local global i32 0, align 4
@rules_used = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"\09%s :\00", align 1
@symbol_name = common dso_local global i8** null, align 8
@rlhs = common dso_local global i64* null, align 8
@ritem = common dso_local global i64* null, align 8
@rrhs = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"  (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @log_unused to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_unused() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64*, align 8
  %3 = load i32, i32* @verbose_file, align 4
  %4 = call i32 (i32, i8*, ...) @fprintf(i32 %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 3, i32* %1, align 4
  br label %5

5:                                                ; preds = %56, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @nrules, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %59

9:                                                ; preds = %5
  %10 = load i32*, i32** @rules_used, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %55, label %16

16:                                               ; preds = %9
  %17 = load i32, i32* @verbose_file, align 4
  %18 = load i8**, i8*** @symbol_name, align 8
  %19 = load i64*, i64** @rlhs, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i8*, i8** %18, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  %27 = load i64*, i64** @ritem, align 8
  %28 = load i32*, i32** @rrhs, align 8
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %27, i64 %33
  store i64* %34, i64** %2, align 8
  br label %35

35:                                               ; preds = %47, %16
  %36 = load i64*, i64** %2, align 8
  %37 = load i64, i64* %36, align 8
  %38 = icmp uge i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load i32, i32* @verbose_file, align 4
  %41 = load i8**, i8*** @symbol_name, align 8
  %42 = load i64*, i64** %2, align 8
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %39
  %48 = load i64*, i64** %2, align 8
  %49 = getelementptr inbounds i64, i64* %48, i32 1
  store i64* %49, i64** %2, align 8
  br label %35

50:                                               ; preds = %35
  %51 = load i32, i32* @verbose_file, align 4
  %52 = load i32, i32* %1, align 4
  %53 = sub nsw i32 %52, 2
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %50, %9
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %1, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %1, align 4
  br label %5

59:                                               ; preds = %5
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
