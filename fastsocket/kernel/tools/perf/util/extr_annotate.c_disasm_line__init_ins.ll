; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_annotate.c_disasm_line__init_ins.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_annotate.c_disasm_line__init_ins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disasm_line = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.disasm_line*)* @disasm_line__init_ins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disasm_line__init_ins(%struct.disasm_line* %0) #0 {
  %2 = alloca %struct.disasm_line*, align 8
  store %struct.disasm_line* %0, %struct.disasm_line** %2, align 8
  %3 = load %struct.disasm_line*, %struct.disasm_line** %2, align 8
  %4 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = call %struct.TYPE_4__* @ins__find(i32 %5)
  %7 = load %struct.disasm_line*, %struct.disasm_line** %2, align 8
  %8 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %7, i32 0, i32 1
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %8, align 8
  %9 = load %struct.disasm_line*, %struct.disasm_line** %2, align 8
  %10 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp eq %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %42

14:                                               ; preds = %1
  %15 = load %struct.disasm_line*, %struct.disasm_line** %2, align 8
  %16 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = icmp ne %struct.TYPE_3__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %42

22:                                               ; preds = %14
  %23 = load %struct.disasm_line*, %struct.disasm_line** %2, align 8
  %24 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32 (i32*)*, i32 (i32*)** %28, align 8
  %30 = icmp ne i32 (i32*)* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %22
  %32 = load %struct.disasm_line*, %struct.disasm_line** %2, align 8
  %33 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32 (i32*)*, i32 (i32*)** %37, align 8
  %39 = load %struct.disasm_line*, %struct.disasm_line** %2, align 8
  %40 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %39, i32 0, i32 0
  %41 = call i32 %38(i32* %40)
  br label %42

42:                                               ; preds = %13, %21, %31, %22
  ret void
}

declare dso_local %struct.TYPE_4__* @ins__find(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
