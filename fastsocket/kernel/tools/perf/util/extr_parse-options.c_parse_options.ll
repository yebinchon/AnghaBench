; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-options.c_parse_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-options.c_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i32 }
%struct.parse_opt_ctx_t = type { i8**, i32* }

@OPTION_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"--%s \00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"unknown option `%s'\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"unknown switch `%c'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_options(i32 %0, i8** %1, %struct.option* %2, i8** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.option*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.parse_opt_ctx_t, align 8
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store %struct.option* %2, %struct.option** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i8**, i8*** %7, align 8
  %14 = call i32 @perf_header__set_cmdline(i32 %12, i8** %13)
  %15 = load i32, i32* %6, align 4
  %16 = load i8**, i8*** %7, align 8
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @parse_options_start(%struct.parse_opt_ctx_t* %11, i32 %15, i8** %16, i32 %17)
  %19 = load %struct.option*, %struct.option** %8, align 8
  %20 = load i8**, i8*** %9, align 8
  %21 = call i32 @parse_options_step(%struct.parse_opt_ctx_t* %11, %struct.option* %19, i8** %20)
  switch i32 %21, label %41 [
    i32 129, label %22
    i32 130, label %24
    i32 128, label %25
  ]

22:                                               ; preds = %5
  %23 = call i32 @exit(i32 129) #3
  unreachable

24:                                               ; preds = %5
  br label %67

25:                                               ; preds = %5
  br label %26

26:                                               ; preds = %32, %25
  %27 = load %struct.option*, %struct.option** %8, align 8
  %28 = getelementptr inbounds %struct.option, %struct.option* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @OPTION_END, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.option*, %struct.option** %8, align 8
  %34 = getelementptr inbounds %struct.option, %struct.option* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %35)
  %37 = load %struct.option*, %struct.option** %8, align 8
  %38 = getelementptr inbounds %struct.option, %struct.option* %37, i32 1
  store %struct.option* %38, %struct.option** %8, align 8
  br label %26

39:                                               ; preds = %26
  %40 = call i32 @exit(i32 130) #3
  unreachable

41:                                               ; preds = %5
  %42 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %11, i32 0, i32 0
  %43 = load i8**, i8*** %42, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 45
  br i1 %49, label %50, label %58

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %11, i32 0, i32 0
  %52 = load i8**, i8*** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 0
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 2
  %56 = ptrtoint i8* %55 to i32
  %57 = call i32 @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %63

58:                                               ; preds = %41
  %59 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %11, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %58, %50
  %64 = load i8**, i8*** %9, align 8
  %65 = load %struct.option*, %struct.option** %8, align 8
  %66 = call i32 @usage_with_options(i8** %64, %struct.option* %65)
  br label %67

67:                                               ; preds = %63, %24
  %68 = call i32 @parse_options_end(%struct.parse_opt_ctx_t* %11)
  ret i32 %68
}

declare dso_local i32 @perf_header__set_cmdline(i32, i8**) #1

declare dso_local i32 @parse_options_start(%struct.parse_opt_ctx_t*, i32, i8**, i32) #1

declare dso_local i32 @parse_options_step(%struct.parse_opt_ctx_t*, %struct.option*, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @usage_with_options(i8**, %struct.option*) #1

declare dso_local i32 @parse_options_end(%struct.parse_opt_ctx_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
