; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/browsers/extr_annotate.c_disasm_line__calc_percent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/browsers/extr_annotate.c_disasm_line__calc_percent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disasm_line = type { i32 }
%struct.symbol = type { i32, i32 }
%struct.annotation = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.source_line* }
%struct.source_line = type { i64 }
%struct.sym_hist = type { double, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.disasm_line*, %struct.symbol*, i32)* @disasm_line__calc_percent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @disasm_line__calc_percent(%struct.disasm_line* %0, %struct.symbol* %1, i32 %2) #0 {
  %4 = alloca %struct.disasm_line*, align 8
  %5 = alloca %struct.symbol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.annotation*, align 8
  %11 = alloca %struct.source_line*, align 8
  %12 = alloca %struct.sym_hist*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.disasm_line*, align 8
  store %struct.disasm_line* %0, %struct.disasm_line** %4, align 8
  store %struct.symbol* %1, %struct.symbol** %5, align 8
  store i32 %2, i32* %6, align 4
  store double 0.000000e+00, double* %7, align 8
  %15 = load %struct.disasm_line*, %struct.disasm_line** %4, align 8
  %16 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %109

19:                                               ; preds = %3
  %20 = load %struct.symbol*, %struct.symbol** %5, align 8
  %21 = getelementptr inbounds %struct.symbol, %struct.symbol* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.symbol*, %struct.symbol** %5, align 8
  %24 = getelementptr inbounds %struct.symbol, %struct.symbol* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %22, %25
  store i32 %26, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %27 = load %struct.symbol*, %struct.symbol** %5, align 8
  %28 = call %struct.annotation* @symbol__annotation(%struct.symbol* %27)
  store %struct.annotation* %28, %struct.annotation** %10, align 8
  %29 = load %struct.annotation*, %struct.annotation** %10, align 8
  %30 = getelementptr inbounds %struct.annotation, %struct.annotation* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load %struct.source_line*, %struct.source_line** %32, align 8
  store %struct.source_line* %33, %struct.source_line** %11, align 8
  %34 = load %struct.annotation*, %struct.annotation** %10, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call %struct.sym_hist* @annotation__histogram(%struct.annotation* %34, i32 %35)
  store %struct.sym_hist* %36, %struct.sym_hist** %12, align 8
  %37 = load %struct.disasm_line*, %struct.disasm_line** %4, align 8
  %38 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %13, align 8
  %41 = load %struct.annotation*, %struct.annotation** %10, align 8
  %42 = getelementptr inbounds %struct.annotation, %struct.annotation* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.disasm_line*, %struct.disasm_line** %4, align 8
  %46 = call %struct.disasm_line* @disasm__get_next_ip_line(i32* %44, %struct.disasm_line* %45)
  store %struct.disasm_line* %46, %struct.disasm_line** %14, align 8
  br label %47

47:                                               ; preds = %89, %19
  %48 = load i64, i64* %13, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp ult i64 %48, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = load %struct.disasm_line*, %struct.disasm_line** %14, align 8
  %54 = icmp eq %struct.disasm_line* %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %52
  %56 = load i64, i64* %13, align 8
  %57 = load %struct.disasm_line*, %struct.disasm_line** %14, align 8
  %58 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp ult i64 %56, %60
  br label %62

62:                                               ; preds = %55, %52
  %63 = phi i1 [ true, %52 ], [ %61, %55 ]
  br label %64

64:                                               ; preds = %62, %47
  %65 = phi i1 [ false, %47 ], [ %63, %62 ]
  br i1 %65, label %66, label %92

66:                                               ; preds = %64
  %67 = load %struct.source_line*, %struct.source_line** %11, align 8
  %68 = icmp ne %struct.source_line* %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load %struct.source_line*, %struct.source_line** %11, align 8
  %71 = load i64, i64* %13, align 8
  %72 = getelementptr inbounds %struct.source_line, %struct.source_line* %70, i64 %71
  %73 = getelementptr inbounds %struct.source_line, %struct.source_line* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = sitofp i64 %74 to double
  %76 = load double, double* %7, align 8
  %77 = fadd double %76, %75
  store double %77, double* %7, align 8
  br label %89

78:                                               ; preds = %66
  %79 = load %struct.sym_hist*, %struct.sym_hist** %12, align 8
  %80 = getelementptr inbounds %struct.sym_hist, %struct.sym_hist* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = load i64, i64* %13, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = zext i32 %85 to i64
  %87 = add nsw i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %78, %69
  %90 = load i64, i64* %13, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %13, align 8
  br label %47

92:                                               ; preds = %64
  %93 = load %struct.source_line*, %struct.source_line** %11, align 8
  %94 = icmp eq %struct.source_line* %93, null
  br i1 %94, label %95, label %108

95:                                               ; preds = %92
  %96 = load %struct.sym_hist*, %struct.sym_hist** %12, align 8
  %97 = getelementptr inbounds %struct.sym_hist, %struct.sym_hist* %96, i32 0, i32 0
  %98 = load double, double* %97, align 8
  %99 = fcmp une double %98, 0.000000e+00
  br i1 %99, label %100, label %108

100:                                              ; preds = %95
  %101 = load i32, i32* %9, align 4
  %102 = uitofp i32 %101 to double
  %103 = fmul double 1.000000e+02, %102
  %104 = load %struct.sym_hist*, %struct.sym_hist** %12, align 8
  %105 = getelementptr inbounds %struct.sym_hist, %struct.sym_hist* %104, i32 0, i32 0
  %106 = load double, double* %105, align 8
  %107 = fdiv double %103, %106
  store double %107, double* %7, align 8
  br label %108

108:                                              ; preds = %100, %95, %92
  br label %109

109:                                              ; preds = %108, %3
  %110 = load double, double* %7, align 8
  ret double %110
}

declare dso_local %struct.annotation* @symbol__annotation(%struct.symbol*) #1

declare dso_local %struct.sym_hist* @annotation__histogram(%struct.annotation*, i32) #1

declare dso_local %struct.disasm_line* @disasm__get_next_ip_line(i32*, %struct.disasm_line*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
