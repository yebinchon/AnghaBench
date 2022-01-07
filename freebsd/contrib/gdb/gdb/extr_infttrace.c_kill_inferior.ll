; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_kill_inferior.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_kill_inferior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_4__*, i64 }

@inferior_ptid = common dso_local global i32 0, align 4
@thread_head = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str = private unnamed_addr constant [42 x i8] c"Bad data in gdb's thread data; repairing.\00", align 1
@TT_PROC_EXIT = common dso_local global i32 0, align 4
@TT_NIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kill_inferior() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @inferior_ptid, align 4
  %8 = call i64 @PIDGET(i32 %7)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %89

11:                                               ; preds = %0
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @thread_head, i32 0, i32 0), align 8
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 8
  %15 = trunc i64 %14 to i32
  %16 = call i64 @xmalloc(i32 %15)
  %17 = inttoptr i64 %16 to %struct.TYPE_4__**
  store %struct.TYPE_4__** %17, %struct.TYPE_4__*** %4, align 8
  store i32 0, i32* %5, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @thread_head, i32 0, i32 1), align 8
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %3, align 8
  br label %19

19:                                               ; preds = %73, %11
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %77

22:                                               ; preds = %19
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %24, i64 %26
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %27, align 8
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %47, %22
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %28
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %36, i64 %38
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = icmp eq %struct.TYPE_4__* %35, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %32
  %43 = call i32 @warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %45, align 8
  br label %46

46:                                               ; preds = %42, %32
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %28

50:                                               ; preds = %28
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %50
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @inferior_ptid, align 4
  %62 = call i64 @PIDGET(i32 %61)
  %63 = icmp ne i64 %60, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %57
  %65 = load i32, i32* @TT_PROC_EXIT, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* @TT_NIL, align 4
  %70 = load i32, i32* @TT_NIL, align 4
  %71 = load i32, i32* @TT_NIL, align 4
  %72 = call i32 @call_ttrace(i32 %65, i64 %68, i32 %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %64, %57, %50
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  store %struct.TYPE_4__* %76, %struct.TYPE_4__** %3, align 8
  br label %19

77:                                               ; preds = %19
  %78 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %79 = call i32 @xfree(%struct.TYPE_4__** %78)
  %80 = load i32, i32* @TT_PROC_EXIT, align 4
  %81 = load i32, i32* @inferior_ptid, align 4
  %82 = call i64 @PIDGET(i32 %81)
  %83 = load i32, i32* @TT_NIL, align 4
  %84 = load i32, i32* @TT_NIL, align 4
  %85 = load i32, i32* @TT_NIL, align 4
  %86 = call i32 @call_ttrace(i32 %80, i64 %82, i32 %83, i32 %84, i32 %85)
  %87 = call i32 (...) @target_mourn_inferior()
  %88 = call i32 (...) @clear_thread_info()
  br label %89

89:                                               ; preds = %77, %10
  ret void
}

declare dso_local i64 @PIDGET(i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i32 @call_ttrace(i32, i64, i32, i32, i32) #1

declare dso_local i32 @xfree(%struct.TYPE_4__**) #1

declare dso_local i32 @target_mourn_inferior(...) #1

declare dso_local i32 @clear_thread_info(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
