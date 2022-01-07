; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/scripting-engines/extr_trace-event-perl.c_perl_start_script.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/scripting-engines/extr_trace-event-perl.c_perl_start_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@my_perl = common dso_local global i32 0, align 4
@xs_init = common dso_local global i32 0, align 4
@ERRSV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8**)* @perl_start_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perl_start_script(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 %11, 2
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 8
  %15 = trunc i64 %14 to i32
  %16 = call i8** @malloc(i32 %15)
  store i8** %16, i8*** %8, align 8
  %17 = load i8**, i8*** %8, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i8**, i8*** %8, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  store i8* %19, i8** %21, align 8
  store i32 2, i32* %9, align 4
  br label %22

22:                                               ; preds = %38, %3
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 2
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = load i8**, i8*** %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sub nsw i32 %29, 2
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %28, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = load i8**, i8*** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  store i8* %33, i8** %37, align 8
  br label %38

38:                                               ; preds = %27
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %22

41:                                               ; preds = %22
  %42 = call i32 (...) @perl_alloc()
  store i32 %42, i32* @my_perl, align 4
  %43 = load i32, i32* @my_perl, align 4
  %44 = call i32 @perl_construct(i32 %43)
  %45 = load i32, i32* @my_perl, align 4
  %46 = load i32, i32* @xs_init, align 4
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 2
  %49 = load i8**, i8*** %8, align 8
  %50 = call i64 @perl_parse(i32 %45, i32 %46, i32 %48, i8** %49, i8** null)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  store i32 -1, i32* %10, align 4
  br label %67

53:                                               ; preds = %41
  %54 = load i32, i32* @my_perl, align 4
  %55 = call i64 @perl_run(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 -1, i32* %10, align 4
  br label %67

58:                                               ; preds = %53
  %59 = load i32, i32* @ERRSV, align 4
  %60 = call i64 @SvTRUE(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 -1, i32* %10, align 4
  br label %67

63:                                               ; preds = %58
  %64 = call i32 (...) @run_start_sub()
  %65 = load i8**, i8*** %8, align 8
  %66 = call i32 @free(i8** %65)
  store i32 0, i32* %4, align 4
  br label %73

67:                                               ; preds = %62, %57, %52
  %68 = load i32, i32* @my_perl, align 4
  %69 = call i32 @perl_free(i32 %68)
  %70 = load i8**, i8*** %8, align 8
  %71 = call i32 @free(i8** %70)
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %67, %63
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i8** @malloc(i32) #1

declare dso_local i32 @perl_alloc(...) #1

declare dso_local i32 @perl_construct(i32) #1

declare dso_local i64 @perl_parse(i32, i32, i32, i8**, i8**) #1

declare dso_local i64 @perl_run(i32) #1

declare dso_local i64 @SvTRUE(i32) #1

declare dso_local i32 @run_start_sub(...) #1

declare dso_local i32 @free(i8**) #1

declare dso_local i32 @perl_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
