; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_set_tracer_option.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_set_tracer_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracer = type { i32 (i32, i32, i32)*, %struct.tracer_flags* }
%struct.tracer_flags = type { i32, %struct.tracer_opt* }
%struct.tracer_opt = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tracer*, i8*, i32)* @set_tracer_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_tracer_option(%struct.tracer* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tracer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tracer_flags*, align 8
  %9 = alloca %struct.tracer_opt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tracer* %0, %struct.tracer** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.tracer*, %struct.tracer** %5, align 8
  %14 = getelementptr inbounds %struct.tracer, %struct.tracer* %13, i32 0, i32 1
  %15 = load %struct.tracer_flags*, %struct.tracer_flags** %14, align 8
  store %struct.tracer_flags* %15, %struct.tracer_flags** %8, align 8
  store %struct.tracer_opt* null, %struct.tracer_opt** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %60, %3
  %17 = load %struct.tracer_flags*, %struct.tracer_flags** %8, align 8
  %18 = getelementptr inbounds %struct.tracer_flags, %struct.tracer_flags* %17, i32 0, i32 1
  %19 = load %struct.tracer_opt*, %struct.tracer_opt** %18, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.tracer_opt, %struct.tracer_opt* %19, i64 %21
  %23 = getelementptr inbounds %struct.tracer_opt, %struct.tracer_opt* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %63

26:                                               ; preds = %16
  %27 = load %struct.tracer_flags*, %struct.tracer_flags** %8, align 8
  %28 = getelementptr inbounds %struct.tracer_flags, %struct.tracer_flags* %27, i32 0, i32 1
  %29 = load %struct.tracer_opt*, %struct.tracer_opt** %28, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.tracer_opt, %struct.tracer_opt* %29, i64 %31
  store %struct.tracer_opt* %32, %struct.tracer_opt** %9, align 8
  %33 = load %struct.tracer_opt*, %struct.tracer_opt** %9, align 8
  %34 = getelementptr inbounds %struct.tracer_opt, %struct.tracer_opt* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @strlen(i64 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = load %struct.tracer_opt*, %struct.tracer_opt** %9, align 8
  %39 = getelementptr inbounds %struct.tracer_opt, %struct.tracer_opt* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i64 @strncmp(i8* %37, i64 %40, i32 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %26
  %45 = load %struct.tracer*, %struct.tracer** %5, align 8
  %46 = getelementptr inbounds %struct.tracer, %struct.tracer* %45, i32 0, i32 0
  %47 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %46, align 8
  %48 = load %struct.tracer_flags*, %struct.tracer_flags** %8, align 8
  %49 = getelementptr inbounds %struct.tracer_flags, %struct.tracer_flags* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.tracer_opt*, %struct.tracer_opt** %9, align 8
  %52 = getelementptr inbounds %struct.tracer_opt, %struct.tracer_opt* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 %47(i32 %50, i32 %53, i32 %57)
  store i32 %58, i32* %10, align 4
  br label %63

59:                                               ; preds = %26
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %16

63:                                               ; preds = %44, %16
  %64 = load %struct.tracer_flags*, %struct.tracer_flags** %8, align 8
  %65 = getelementptr inbounds %struct.tracer_flags, %struct.tracer_flags* %64, i32 0, i32 1
  %66 = load %struct.tracer_opt*, %struct.tracer_opt** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.tracer_opt, %struct.tracer_opt* %66, i64 %68
  %70 = getelementptr inbounds %struct.tracer_opt, %struct.tracer_opt* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %63
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %102

76:                                               ; preds = %63
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %4, align 4
  br label %102

81:                                               ; preds = %76
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %81
  %85 = load %struct.tracer_opt*, %struct.tracer_opt** %9, align 8
  %86 = getelementptr inbounds %struct.tracer_opt, %struct.tracer_opt* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = xor i32 %87, -1
  %89 = load %struct.tracer_flags*, %struct.tracer_flags** %8, align 8
  %90 = getelementptr inbounds %struct.tracer_flags, %struct.tracer_flags* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %101

93:                                               ; preds = %81
  %94 = load %struct.tracer_opt*, %struct.tracer_opt** %9, align 8
  %95 = getelementptr inbounds %struct.tracer_opt, %struct.tracer_opt* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.tracer_flags*, %struct.tracer_flags** %8, align 8
  %98 = getelementptr inbounds %struct.tracer_flags, %struct.tracer_flags* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %93, %84
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %101, %79, %73
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @strlen(i64) #1

declare dso_local i64 @strncmp(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
