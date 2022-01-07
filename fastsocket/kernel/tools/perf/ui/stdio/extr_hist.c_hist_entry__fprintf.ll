; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/stdio/extr_hist.c_hist_entry__fprintf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/stdio/extr_hist.c_hist_entry__fprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.hist_entry = type { i32 }
%struct.hists = type { i32 }
%struct.perf_hpp = type { i8*, i64 }

@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_entry*, i64, %struct.hists*, i32*)* @hist_entry__fprintf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hist_entry__fprintf(%struct.hist_entry* %0, i64 %1, %struct.hists* %2, i32* %3) #0 {
  %5 = alloca %struct.hist_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hists*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [512 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca %struct.perf_hpp, align 8
  %12 = alloca i32, align 4
  store %struct.hist_entry* %0, %struct.hist_entry** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.hists* %2, %struct.hists** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = getelementptr inbounds %struct.perf_hpp, %struct.perf_hpp* %11, i32 0, i32 0
  %14 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  store i8* %14, i8** %13, align 8
  %15 = getelementptr inbounds %struct.perf_hpp, %struct.perf_hpp* %11, i32 0, i32 1
  %16 = load i64, i64* %6, align 8
  store i64 %16, i64* %15, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 1), align 8
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %12, align 4
  %21 = load i64, i64* %6, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i64, i64* %6, align 8
  %25 = icmp ugt i64 %24, 512
  br i1 %25, label %26, label %28

26:                                               ; preds = %23, %4
  %27 = getelementptr inbounds %struct.perf_hpp, %struct.perf_hpp* %11, i32 0, i32 1
  store i64 512, i64* %27, align 8
  store i64 512, i64* %6, align 8
  br label %28

28:                                               ; preds = %26, %23
  %29 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @hist_entry__period_snprintf(%struct.perf_hpp* %11, %struct.hist_entry* %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %33 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i64, i64* %6, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = sub i64 %37, %39
  %41 = load %struct.hists*, %struct.hists** %7, align 8
  %42 = call i32 @hist_entry__sort_snprintf(%struct.hist_entry* %32, i8* %36, i64 %40, %struct.hists* %41)
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %45 = call i32 @fprintf(i32* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %28
  %49 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %50 = load %struct.hists*, %struct.hists** %7, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = call i64 @hist_entry__callchain_fprintf(%struct.hist_entry* %49, %struct.hists* %50, i32* %51)
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %48, %28
  %58 = load i32, i32* %10, align 4
  ret i32 %58
}

declare dso_local i32 @hist_entry__period_snprintf(%struct.perf_hpp*, %struct.hist_entry*, i32) #1

declare dso_local i32 @hist_entry__sort_snprintf(%struct.hist_entry*, i8*, i64, %struct.hists*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i64 @hist_entry__callchain_fprintf(%struct.hist_entry*, %struct.hists*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
