; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evsel.c_perf_evsel__intval.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evsel.c_perf_evsel__intval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evsel = type { i32 }
%struct.perf_sample = type { i8* }
%struct.format_field = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_evsel__intval(%struct.perf_evsel* %0, %struct.perf_sample* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_evsel*, align 8
  %6 = alloca %struct.perf_sample*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.format_field*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.perf_evsel* %0, %struct.perf_evsel** %5, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call %struct.format_field* @perf_evsel__field(%struct.perf_evsel* %11, i8* %12)
  store %struct.format_field* %13, %struct.format_field** %8, align 8
  %14 = load %struct.format_field*, %struct.format_field** %8, align 8
  %15 = icmp ne %struct.format_field* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %67

17:                                               ; preds = %3
  %18 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %19 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.format_field*, %struct.format_field** %8, align 8
  %22 = getelementptr inbounds %struct.format_field, %struct.format_field* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr i8, i8* %20, i64 %24
  store i8* %25, i8** %9, align 8
  %26 = load %struct.format_field*, %struct.format_field** %8, align 8
  %27 = getelementptr inbounds %struct.format_field, %struct.format_field* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %45 [
    i32 1, label %29
    i32 2, label %33
    i32 4, label %37
    i32 8, label %41
  ]

29:                                               ; preds = %17
  %30 = load i8*, i8** %9, align 8
  %31 = bitcast i8* %30 to i32*
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %4, align 4
  br label %67

33:                                               ; preds = %17
  %34 = load i8*, i8** %9, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %10, align 4
  br label %46

37:                                               ; preds = %17
  %38 = load i8*, i8** %9, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %10, align 4
  br label %46

41:                                               ; preds = %17
  %42 = load i8*, i8** %9, align 8
  %43 = bitcast i8* %42 to i32*
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %10, align 4
  br label %46

45:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %67

46:                                               ; preds = %41, %37, %33
  %47 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %48 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %4, align 4
  br label %67

53:                                               ; preds = %46
  %54 = load %struct.format_field*, %struct.format_field** %8, align 8
  %55 = getelementptr inbounds %struct.format_field, %struct.format_field* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %66 [
    i32 2, label %57
    i32 4, label %60
    i32 8, label %63
  ]

57:                                               ; preds = %53
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @bswap_16(i32 %58)
  store i32 %59, i32* %4, align 4
  br label %67

60:                                               ; preds = %53
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @bswap_32(i32 %61)
  store i32 %62, i32* %4, align 4
  br label %67

63:                                               ; preds = %53
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @bswap_64(i32 %64)
  store i32 %65, i32* %4, align 4
  br label %67

66:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %63, %60, %57, %51, %45, %29, %16
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.format_field* @perf_evsel__field(%struct.perf_evsel*, i8*) #1

declare dso_local i32 @bswap_16(i32) #1

declare dso_local i32 @bswap_32(i32) #1

declare dso_local i32 @bswap_64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
