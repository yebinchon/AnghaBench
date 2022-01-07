; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/browsers/extr_annotate.c_annotate_browser__jump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/browsers/extr_annotate.c_annotate_browser__jump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.annotate_browser = type { %struct.disasm_line* }
%struct.disasm_line = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Invallid jump offset\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.annotate_browser*)* @annotate_browser__jump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @annotate_browser__jump(%struct.annotate_browser* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.annotate_browser*, align 8
  %4 = alloca %struct.disasm_line*, align 8
  %5 = alloca i32, align 4
  store %struct.annotate_browser* %0, %struct.annotate_browser** %3, align 8
  %6 = load %struct.annotate_browser*, %struct.annotate_browser** %3, align 8
  %7 = getelementptr inbounds %struct.annotate_browser, %struct.annotate_browser* %6, i32 0, i32 0
  %8 = load %struct.disasm_line*, %struct.disasm_line** %7, align 8
  store %struct.disasm_line* %8, %struct.disasm_line** %4, align 8
  %9 = load %struct.disasm_line*, %struct.disasm_line** %4, align 8
  %10 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ins__is_jump(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

15:                                               ; preds = %1
  %16 = load %struct.annotate_browser*, %struct.annotate_browser** %3, align 8
  %17 = load %struct.disasm_line*, %struct.disasm_line** %4, align 8
  %18 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.disasm_line* @annotate_browser__find_offset(%struct.annotate_browser* %16, i32 %21, i32* %5)
  store %struct.disasm_line* %22, %struct.disasm_line** %4, align 8
  %23 = load %struct.disasm_line*, %struct.disasm_line** %4, align 8
  %24 = icmp eq %struct.disasm_line* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = call i32 @ui_helpline__puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %32

27:                                               ; preds = %15
  %28 = load %struct.annotate_browser*, %struct.annotate_browser** %3, align 8
  %29 = load %struct.disasm_line*, %struct.disasm_line** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @annotate_browser__set_top(%struct.annotate_browser* %28, %struct.disasm_line* %29, i32 %30)
  store i32 1, i32* %2, align 4
  br label %32

32:                                               ; preds = %27, %25, %14
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @ins__is_jump(i32) #1

declare dso_local %struct.disasm_line* @annotate_browser__find_offset(%struct.annotate_browser*, i32, i32*) #1

declare dso_local i32 @ui_helpline__puts(i8*) #1

declare dso_local i32 @annotate_browser__set_top(%struct.annotate_browser*, %struct.disasm_line*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
