; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-options.c_get_arg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-options.c_get_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_opt_ctx_t = type { i8*, i32, i8** }
%struct.option = type { i32, i64 }

@PARSE_OPT_LASTARG_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"requires a value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parse_opt_ctx_t*, %struct.option*, i32, i8**)* @get_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_arg(%struct.parse_opt_ctx_t* %0, %struct.option* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.parse_opt_ctx_t*, align 8
  %7 = alloca %struct.option*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  store %struct.parse_opt_ctx_t* %0, %struct.parse_opt_ctx_t** %6, align 8
  store %struct.option* %1, %struct.option** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %10 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %11 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %4
  %15 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %16 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i8**, i8*** %9, align 8
  store i8* %17, i8** %18, align 8
  %19 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %20 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %19, i32 0, i32 0
  store i8* null, i8** %20, align 8
  br label %70

21:                                               ; preds = %4
  %22 = load %struct.option*, %struct.option** %7, align 8
  %23 = getelementptr inbounds %struct.option, %struct.option* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @PARSE_OPT_LASTARG_DEFAULT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %21
  %29 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %30 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %42, label %33

33:                                               ; preds = %28
  %34 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %35 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %34, i32 0, i32 2
  %36 = load i8**, i8*** %35, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 45
  br i1 %41, label %42, label %48

42:                                               ; preds = %33, %28
  %43 = load %struct.option*, %struct.option** %7, align 8
  %44 = getelementptr inbounds %struct.option, %struct.option* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = load i8**, i8*** %9, align 8
  store i8* %46, i8** %47, align 8
  br label %69

48:                                               ; preds = %33, %21
  %49 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %50 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %64

53:                                               ; preds = %48
  %54 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %55 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %55, align 8
  %58 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %59 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %58, i32 0, i32 2
  %60 = load i8**, i8*** %59, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i32 1
  store i8** %61, i8*** %59, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = load i8**, i8*** %9, align 8
  store i8* %62, i8** %63, align 8
  br label %68

64:                                               ; preds = %48
  %65 = load %struct.option*, %struct.option** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @opterror(%struct.option* %65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %66)
  store i32 %67, i32* %5, align 4
  br label %71

68:                                               ; preds = %53
  br label %69

69:                                               ; preds = %68, %42
  br label %70

70:                                               ; preds = %69, %14
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %64
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @opterror(%struct.option*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
