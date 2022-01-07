; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_main.c_delete_lines.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_main.c_delete_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@UDEL = common dso_local global i32 0, align 4
@ERR = common dso_local global i32 0, align 4
@addr_last = common dso_local global i64 0, align 8
@isglobal = common dso_local global i64 0, align 8
@current_addr = common dso_local global i64 0, align 8
@modified = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delete_lines(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = call i32 (...) @SPL1()
  %9 = load i32, i32* @UDEL, align 4
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i32* @push_undo_stack(i32 %9, i64 %10, i64 %11)
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = call i32 (...) @SPL0()
  %16 = load i32, i32* @ERR, align 4
  store i32 %16, i32* %3, align 4
  br label %46

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @addr_last, align 8
  %20 = call i64 @INC_MOD(i64 %18, i64 %19)
  %21 = call %struct.TYPE_6__* @get_addressed_line_node(i64 %20)
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %6, align 8
  %22 = load i64, i64* %4, align 8
  %23 = sub nsw i64 %22, 1
  %24 = call %struct.TYPE_6__* @get_addressed_line_node(i64 %23)
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %7, align 8
  %25 = load i64, i64* @isglobal, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %17
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = call i32 @unset_active_nodes(i32 %30, %struct.TYPE_6__* %31)
  br label %33

33:                                               ; preds = %27, %17
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = call i32 @REQUE(%struct.TYPE_6__* %34, %struct.TYPE_6__* %35)
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %4, align 8
  %39 = sub nsw i64 %37, %38
  %40 = add nsw i64 %39, 1
  %41 = load i64, i64* @addr_last, align 8
  %42 = sub nsw i64 %41, %40
  store i64 %42, i64* @addr_last, align 8
  %43 = load i64, i64* %4, align 8
  %44 = sub nsw i64 %43, 1
  store i64 %44, i64* @current_addr, align 8
  store i32 1, i32* @modified, align 4
  %45 = call i32 (...) @SPL0()
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %33, %14
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @SPL1(...) #1

declare dso_local i32* @push_undo_stack(i32, i64, i64) #1

declare dso_local i32 @SPL0(...) #1

declare dso_local %struct.TYPE_6__* @get_addressed_line_node(i64) #1

declare dso_local i64 @INC_MOD(i64, i64) #1

declare dso_local i32 @unset_active_nodes(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @REQUE(%struct.TYPE_6__*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
