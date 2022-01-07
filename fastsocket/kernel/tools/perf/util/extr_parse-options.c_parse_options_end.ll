; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-options.c_parse_options_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-options.c_parse_options_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_opt_ctx_t = type { i32, i32, i32**, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_options_end(%struct.parse_opt_ctx_t* %0) #0 {
  %2 = alloca %struct.parse_opt_ctx_t*, align 8
  store %struct.parse_opt_ctx_t* %0, %struct.parse_opt_ctx_t** %2, align 8
  %3 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %2, align 8
  %4 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %3, i32 0, i32 2
  %5 = load i32**, i32*** %4, align 8
  %6 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %2, align 8
  %7 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32*, i32** %5, i64 %9
  %11 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %2, align 8
  %12 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %2, align 8
  %15 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @memmove(i32** %10, i32 %13, i32 %19)
  %21 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %2, align 8
  %22 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %21, i32 0, i32 2
  %23 = load i32**, i32*** %22, align 8
  %24 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %2, align 8
  %25 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %2, align 8
  %28 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %26, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %23, i64 %31
  store i32* null, i32** %32, align 8
  %33 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %2, align 8
  %34 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %2, align 8
  %37 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %35, %38
  ret i32 %39
}

declare dso_local i32 @memmove(i32**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
