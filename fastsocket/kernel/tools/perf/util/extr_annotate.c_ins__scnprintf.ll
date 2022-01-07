; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_annotate.c_ins__scnprintf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_annotate.c_ins__scnprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ins = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.ins_operands = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ins__scnprintf(%struct.ins* %0, i8* %1, i64 %2, %struct.ins_operands* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ins*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ins_operands*, align 8
  store %struct.ins* %0, %struct.ins** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.ins_operands* %3, %struct.ins_operands** %9, align 8
  %10 = load %struct.ins*, %struct.ins** %6, align 8
  %11 = getelementptr inbounds %struct.ins, %struct.ins* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = bitcast {}** %13 to i32 (%struct.ins*, i8*, i64, %struct.ins_operands*)**
  %15 = load i32 (%struct.ins*, i8*, i64, %struct.ins_operands*)*, i32 (%struct.ins*, i8*, i64, %struct.ins_operands*)** %14, align 8
  %16 = icmp ne i32 (%struct.ins*, i8*, i64, %struct.ins_operands*)* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %4
  %18 = load %struct.ins*, %struct.ins** %6, align 8
  %19 = getelementptr inbounds %struct.ins, %struct.ins* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.ins*, i8*, i64, %struct.ins_operands*)**
  %23 = load i32 (%struct.ins*, i8*, i64, %struct.ins_operands*)*, i32 (%struct.ins*, i8*, i64, %struct.ins_operands*)** %22, align 8
  %24 = load %struct.ins*, %struct.ins** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.ins_operands*, %struct.ins_operands** %9, align 8
  %28 = call i32 %23(%struct.ins* %24, i8* %25, i64 %26, %struct.ins_operands* %27)
  store i32 %28, i32* %5, align 4
  br label %35

29:                                               ; preds = %4
  %30 = load %struct.ins*, %struct.ins** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.ins_operands*, %struct.ins_operands** %9, align 8
  %34 = call i32 @ins__raw_scnprintf(%struct.ins* %30, i8* %31, i64 %32, %struct.ins_operands* %33)
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %29, %17
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @ins__raw_scnprintf(%struct.ins*, i8*, i64, %struct.ins_operands*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
