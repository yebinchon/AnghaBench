; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_undo.c_clear_undo_stack.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_undo.c_clear_undo_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.TYPE_7__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }

@u_p = common dso_local global i64 0, align 8
@ustack = common dso_local global %struct.TYPE_8__* null, align 8
@UDEL = common dso_local global i64 0, align 8
@current_addr = common dso_local global i32 0, align 4
@u_current_addr = common dso_local global i32 0, align 4
@addr_last = common dso_local global i32 0, align 4
@u_addr_last = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_undo_stack() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  br label %4

4:                                                ; preds = %44, %0
  %5 = load i64, i64* @u_p, align 8
  %6 = add i64 %5, -1
  store i64 %6, i64* @u_p, align 8
  %7 = icmp ne i64 %5, 0
  br i1 %7, label %8, label %45

8:                                                ; preds = %4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ustack, align 8
  %10 = load i64, i64* @u_p, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @UDEL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ustack, align 8
  %18 = load i64, i64* @u_p, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %2, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ustack, align 8
  %25 = load i64, i64* @u_p, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %1, align 8
  br label %29

29:                                               ; preds = %41, %16
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %32 = icmp ne %struct.TYPE_7__* %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %35 = call i32 @unmark_line_node(%struct.TYPE_7__* %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %3, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %40 = call i32 @free(%struct.TYPE_7__* %39)
  br label %41

41:                                               ; preds = %33
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %1, align 8
  br label %29

43:                                               ; preds = %29
  br label %44

44:                                               ; preds = %43, %8
  br label %4

45:                                               ; preds = %4
  store i64 0, i64* @u_p, align 8
  %46 = load i32, i32* @current_addr, align 4
  store i32 %46, i32* @u_current_addr, align 4
  %47 = load i32, i32* @addr_last, align 4
  store i32 %47, i32* @u_addr_last, align 4
  ret void
}

declare dso_local i32 @unmark_line_node(%struct.TYPE_7__*) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
