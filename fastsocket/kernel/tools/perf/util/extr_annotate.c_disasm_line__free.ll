; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_annotate.c_disasm_line__free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_annotate.c_disasm_line__free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disasm_line = type { i32, %struct.TYPE_4__*, %struct.disasm_line*, %struct.disasm_line* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @disasm_line__free(%struct.disasm_line* %0) #0 {
  %2 = alloca %struct.disasm_line*, align 8
  store %struct.disasm_line* %0, %struct.disasm_line** %2, align 8
  %3 = load %struct.disasm_line*, %struct.disasm_line** %2, align 8
  %4 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %3, i32 0, i32 3
  %5 = load %struct.disasm_line*, %struct.disasm_line** %4, align 8
  %6 = call i32 @free(%struct.disasm_line* %5)
  %7 = load %struct.disasm_line*, %struct.disasm_line** %2, align 8
  %8 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %7, i32 0, i32 2
  %9 = load %struct.disasm_line*, %struct.disasm_line** %8, align 8
  %10 = call i32 @free(%struct.disasm_line* %9)
  %11 = load %struct.disasm_line*, %struct.disasm_line** %2, align 8
  %12 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %35

15:                                               ; preds = %1
  %16 = load %struct.disasm_line*, %struct.disasm_line** %2, align 8
  %17 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32 (i32*)*, i32 (i32*)** %21, align 8
  %23 = icmp ne i32 (i32*)* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %15
  %25 = load %struct.disasm_line*, %struct.disasm_line** %2, align 8
  %26 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32 (i32*)*, i32 (i32*)** %30, align 8
  %32 = load %struct.disasm_line*, %struct.disasm_line** %2, align 8
  %33 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %32, i32 0, i32 0
  %34 = call i32 %31(i32* %33)
  br label %39

35:                                               ; preds = %15, %1
  %36 = load %struct.disasm_line*, %struct.disasm_line** %2, align 8
  %37 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %36, i32 0, i32 0
  %38 = call i32 @ins__delete(i32* %37)
  br label %39

39:                                               ; preds = %35, %24
  %40 = load %struct.disasm_line*, %struct.disasm_line** %2, align 8
  %41 = call i32 @free(%struct.disasm_line* %40)
  ret void
}

declare dso_local i32 @free(%struct.disasm_line*) #1

declare dso_local i32 @ins__delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
