; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_annotate.c_lock__parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_annotate.c_lock__parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ins_operands = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_9__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ins_operands*)* @lock__parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lock__parse(%struct.ins_operands* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ins_operands*, align 8
  %4 = alloca i8*, align 8
  store %struct.ins_operands* %0, %struct.ins_operands** %3, align 8
  %5 = call %struct.TYPE_9__* @zalloc(i32 4)
  %6 = load %struct.ins_operands*, %struct.ins_operands** %3, align 8
  %7 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %8, align 8
  %9 = load %struct.ins_operands*, %struct.ins_operands** %3, align 8
  %10 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = icmp eq %struct.TYPE_9__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %82

15:                                               ; preds = %1
  %16 = load %struct.ins_operands*, %struct.ins_operands** %3, align 8
  %17 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.ins_operands*, %struct.ins_operands** %3, align 8
  %20 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = call i64 @disasm_line__parse(i32 %18, i8** %4, i32* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %73

27:                                               ; preds = %15
  %28 = load i8*, i8** %4, align 8
  %29 = call %struct.TYPE_10__* @ins__find(i8* %28)
  %30 = load %struct.ins_operands*, %struct.ins_operands** %3, align 8
  %31 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %32, align 8
  %33 = load %struct.ins_operands*, %struct.ins_operands** %3, align 8
  %34 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = icmp eq %struct.TYPE_10__* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %73

39:                                               ; preds = %27
  %40 = load %struct.ins_operands*, %struct.ins_operands** %3, align 8
  %41 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = icmp ne %struct.TYPE_7__* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %82

48:                                               ; preds = %39
  %49 = load %struct.ins_operands*, %struct.ins_operands** %3, align 8
  %50 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %55, align 8
  %57 = icmp ne i32 (%struct.TYPE_9__*)* %56, null
  br i1 %57, label %58, label %72

58:                                               ; preds = %48
  %59 = load %struct.ins_operands*, %struct.ins_operands** %3, align 8
  %60 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %65, align 8
  %67 = load %struct.ins_operands*, %struct.ins_operands** %3, align 8
  %68 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = call i32 %66(%struct.TYPE_9__* %70)
  br label %72

72:                                               ; preds = %58, %48
  store i32 0, i32* %2, align 4
  br label %82

73:                                               ; preds = %38, %26
  %74 = load %struct.ins_operands*, %struct.ins_operands** %3, align 8
  %75 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = call i32 @free(%struct.TYPE_9__* %77)
  %79 = load %struct.ins_operands*, %struct.ins_operands** %3, align 8
  %80 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %81, align 8
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %73, %72, %47, %14
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.TYPE_9__* @zalloc(i32) #1

declare dso_local i64 @disasm_line__parse(i32, i8**, i32*) #1

declare dso_local %struct.TYPE_10__* @ins__find(i8*) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
