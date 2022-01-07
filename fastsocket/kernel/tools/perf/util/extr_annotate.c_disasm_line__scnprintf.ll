; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_annotate.c_disasm_line__scnprintf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_annotate.c_disasm_line__scnprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disasm_line = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"%-6.6s %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @disasm_line__scnprintf(%struct.disasm_line* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.disasm_line*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.disasm_line* %0, %struct.disasm_line** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %4
  %13 = load %struct.disasm_line*, %struct.disasm_line** %6, align 8
  %14 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %12, %4
  %18 = load i8*, i8** %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.disasm_line*, %struct.disasm_line** %6, align 8
  %21 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.disasm_line*, %struct.disasm_line** %6, align 8
  %24 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @scnprintf(i8* %18, i64 %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %26)
  store i32 %27, i32* %5, align 4
  br label %37

28:                                               ; preds = %12
  %29 = load %struct.disasm_line*, %struct.disasm_line** %6, align 8
  %30 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.disasm_line*, %struct.disasm_line** %6, align 8
  %35 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %34, i32 0, i32 0
  %36 = call i32 @ins__scnprintf(i32 %31, i8* %32, i64 %33, %struct.TYPE_2__* %35)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %28, %17
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @scnprintf(i8*, i64, i8*, i32, i32) #1

declare dso_local i32 @ins__scnprintf(i32, i8*, i64, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
