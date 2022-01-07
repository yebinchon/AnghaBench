; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-bench.c_all_suite.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-bench.c_all_suite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bench_subsys = type { i8*, %struct.bench_suite* }
%struct.bench_suite = type { i8*, i32 (i32, i8**, i32*)* }

@.str = private unnamed_addr constant [30 x i8] c"# Running %s/%s benchmark...\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bench_subsys*)* @all_suite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @all_suite(%struct.bench_subsys* %0) #0 {
  %2 = alloca %struct.bench_subsys*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [2 x i8*], align 16
  %5 = alloca %struct.bench_suite*, align 8
  store %struct.bench_subsys* %0, %struct.bench_subsys** %2, align 8
  %6 = load %struct.bench_subsys*, %struct.bench_subsys** %2, align 8
  %7 = getelementptr inbounds %struct.bench_subsys, %struct.bench_subsys* %6, i32 0, i32 1
  %8 = load %struct.bench_suite*, %struct.bench_suite** %7, align 8
  store %struct.bench_suite* %8, %struct.bench_suite** %5, align 8
  %9 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 1
  store i8* null, i8** %9, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %45, %1
  %11 = load %struct.bench_suite*, %struct.bench_suite** %5, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.bench_suite, %struct.bench_suite* %11, i64 %13
  %15 = getelementptr inbounds %struct.bench_suite, %struct.bench_suite* %14, i32 0, i32 1
  %16 = load i32 (i32, i8**, i32*)*, i32 (i32, i8**, i32*)** %15, align 8
  %17 = icmp ne i32 (i32, i8**, i32*)* %16, null
  br i1 %17, label %18, label %48

18:                                               ; preds = %10
  %19 = load %struct.bench_subsys*, %struct.bench_subsys** %2, align 8
  %20 = getelementptr inbounds %struct.bench_subsys, %struct.bench_subsys* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.bench_suite*, %struct.bench_suite** %5, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.bench_suite, %struct.bench_suite* %22, i64 %24
  %26 = getelementptr inbounds %struct.bench_suite, %struct.bench_suite* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %27)
  %29 = load %struct.bench_suite*, %struct.bench_suite** %5, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.bench_suite, %struct.bench_suite* %29, i64 %31
  %33 = getelementptr inbounds %struct.bench_suite, %struct.bench_suite* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 1
  store i8* %34, i8** %35, align 8
  %36 = load %struct.bench_suite*, %struct.bench_suite** %5, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.bench_suite, %struct.bench_suite* %36, i64 %38
  %40 = getelementptr inbounds %struct.bench_suite, %struct.bench_suite* %39, i32 0, i32 1
  %41 = load i32 (i32, i8**, i32*)*, i32 (i32, i8**, i32*)** %40, align 8
  %42 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 0
  %43 = call i32 %41(i32 1, i8** %42, i32* null)
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %18
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %10

48:                                               ; preds = %10
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
