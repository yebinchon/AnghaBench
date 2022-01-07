; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_mkpar.c_total_conflicts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_mkpar.c_total_conflicts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@myname = common dso_local global i8* null, align 8
@SRtotal = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"1 shift/reduce conflict\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"%d shift/reduce conflicts\00", align 1
@RRtotal = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"1 reduce/reduce conflict\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"%d reduce/reduce conflicts\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@SRexpect = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"expected %d shift/reduce conflict%s.\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@exit_code = common dso_local global i32 0, align 4
@RRexpect = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"expected %d reduce/reduce conflict%s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @total_conflicts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @total_conflicts() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = load i8*, i8** @myname, align 8
  %3 = call i32 (i32, i8*, ...) @fprintf(i32 %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %2)
  %4 = load i32, i32* @SRtotal, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @stderr, align 4
  %8 = call i32 (i32, i8*, ...) @fprintf(i32 %7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %17

9:                                                ; preds = %0
  %10 = load i32, i32* @SRtotal, align 4
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32, i32* @stderr, align 4
  %14 = load i32, i32* @SRtotal, align 4
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %12, %9
  br label %17

17:                                               ; preds = %16, %6
  %18 = load i32, i32* @SRtotal, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i32, i32* @RRtotal, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %20, %17
  %27 = load i32, i32* @RRtotal, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %40

32:                                               ; preds = %26
  %33 = load i32, i32* @RRtotal, align 4
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* @stderr, align 4
  %37 = load i32, i32* @RRtotal, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %35, %32
  br label %40

40:                                               ; preds = %39, %29
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %43 = load i32, i32* @SRexpect, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %40
  %46 = load i32, i32* @SRtotal, align 4
  %47 = load i32, i32* @SRexpect, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load i32, i32* @stderr, align 4
  %51 = load i8*, i8** @myname, align 8
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %51)
  %53 = load i32, i32* @stderr, align 4
  %54 = load i32, i32* @SRexpect, align 4
  %55 = load i32, i32* @SRexpect, align 4
  %56 = call i8* @PLURAL(i32 %55)
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %54, i8* %56)
  %58 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %58, i32* @exit_code, align 4
  br label %59

59:                                               ; preds = %49, %45, %40
  %60 = load i32, i32* @RRexpect, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %59
  %63 = load i32, i32* @RRtotal, align 4
  %64 = load i32, i32* @RRexpect, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %62
  %67 = load i32, i32* @stderr, align 4
  %68 = load i8*, i8** @myname, align 8
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %68)
  %70 = load i32, i32* @stderr, align 4
  %71 = load i32, i32* @RRexpect, align 4
  %72 = load i32, i32* @RRexpect, align 4
  %73 = call i8* @PLURAL(i32 %72)
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %70, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i32 %71, i8* %73)
  %75 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %75, i32* @exit_code, align 4
  br label %76

76:                                               ; preds = %66, %62, %59
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @PLURAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
