; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-options.c_parse_short_opt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-options.c_parse_short_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_opt_ctx_t = type { i64* }
%struct.option = type { i64, i64 }

@OPTION_END = common dso_local global i64 0, align 8
@OPT_SHORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parse_opt_ctx_t*, %struct.option*)* @parse_short_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_short_opt(%struct.parse_opt_ctx_t* %0, %struct.option* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.parse_opt_ctx_t*, align 8
  %5 = alloca %struct.option*, align 8
  store %struct.parse_opt_ctx_t* %0, %struct.parse_opt_ctx_t** %4, align 8
  store %struct.option* %1, %struct.option** %5, align 8
  br label %6

6:                                                ; preds = %43, %2
  %7 = load %struct.option*, %struct.option** %5, align 8
  %8 = getelementptr inbounds %struct.option, %struct.option* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @OPTION_END, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %46

12:                                               ; preds = %6
  %13 = load %struct.option*, %struct.option** %5, align 8
  %14 = getelementptr inbounds %struct.option, %struct.option* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %4, align 8
  %17 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %15, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %12
  %22 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %4, align 8
  %23 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %4, align 8
  %30 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  br label %34

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33, %28
  %35 = phi i64* [ %32, %28 ], [ null, %33 ]
  %36 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %4, align 8
  %37 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %36, i32 0, i32 0
  store i64* %35, i64** %37, align 8
  %38 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %4, align 8
  %39 = load %struct.option*, %struct.option** %5, align 8
  %40 = load i32, i32* @OPT_SHORT, align 4
  %41 = call i32 @get_value(%struct.parse_opt_ctx_t* %38, %struct.option* %39, i32 %40)
  store i32 %41, i32* %3, align 4
  br label %47

42:                                               ; preds = %12
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.option*, %struct.option** %5, align 8
  %45 = getelementptr inbounds %struct.option, %struct.option* %44, i32 1
  store %struct.option* %45, %struct.option** %5, align 8
  br label %6

46:                                               ; preds = %6
  store i32 -2, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %34
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @get_value(%struct.parse_opt_ctx_t*, %struct.option*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
