; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_main.c_move_lines.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_main.c_move_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__*, %struct.TYPE_7__* }

@second_addr = common dso_local global i64 0, align 8
@addr_last = common dso_local global i32 0, align 4
@first_addr = common dso_local global i32 0, align 4
@current_addr = common dso_local global i64 0, align 8
@UMOV = common dso_local global i32 0, align 4
@ERR = common dso_local global i32 0, align 4
@isglobal = common dso_local global i64 0, align 8
@modified = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @move_lines(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %11 = load i64, i64* @second_addr, align 8
  %12 = load i32, i32* @addr_last, align 4
  %13 = call i64 @INC_MOD(i64 %11, i32 %12)
  store i64 %13, i64* %8, align 8
  %14 = load i32, i32* @first_addr, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %3, align 8
  %18 = load i32, i32* @first_addr, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %1
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @second_addr, align 8
  %25 = icmp eq i64 %23, %24
  br label %26

26:                                               ; preds = %22, %1
  %27 = phi i1 [ true, %1 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %10, align 4
  %29 = call i32 (...) @SPL1()
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load i64, i64* %8, align 8
  %34 = call %struct.TYPE_7__* @get_addressed_line_node(i64 %33)
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %7, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call %struct.TYPE_7__* @get_addressed_line_node(i64 %35)
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %6, align 8
  %37 = load i64, i64* @second_addr, align 8
  store i64 %37, i64* @current_addr, align 8
  br label %105

38:                                               ; preds = %26
  %39 = load i32, i32* @UMOV, align 4
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32* @push_undo_stack(i32 %39, i64 %40, i64 %41)
  %43 = icmp eq i32* %42, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @UMOV, align 4
  %46 = load i64, i64* %3, align 8
  %47 = load i64, i64* %3, align 8
  %48 = load i32, i32* @addr_last, align 4
  %49 = call i64 @INC_MOD(i64 %47, i32 %48)
  %50 = call i32* @push_undo_stack(i32 %45, i64 %46, i64 %49)
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %44, %38
  %53 = call i32 (...) @SPL0()
  %54 = load i32, i32* @ERR, align 4
  store i32 %54, i32* %2, align 4
  br label %116

55:                                               ; preds = %44
  %56 = load i64, i64* %8, align 8
  %57 = call %struct.TYPE_7__* @get_addressed_line_node(i64 %56)
  store %struct.TYPE_7__* %57, %struct.TYPE_7__** %5, align 8
  %58 = load i64, i64* %3, align 8
  %59 = load i32, i32* @first_addr, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %58, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load i64, i64* %9, align 8
  %64 = call %struct.TYPE_7__* @get_addressed_line_node(i64 %63)
  store %struct.TYPE_7__* %64, %struct.TYPE_7__** %4, align 8
  %65 = load i64, i64* %3, align 8
  %66 = call %struct.TYPE_7__* @get_addressed_line_node(i64 %65)
  store %struct.TYPE_7__* %66, %struct.TYPE_7__** %6, align 8
  br label %72

67:                                               ; preds = %55
  %68 = load i64, i64* %3, align 8
  %69 = call %struct.TYPE_7__* @get_addressed_line_node(i64 %68)
  store %struct.TYPE_7__* %69, %struct.TYPE_7__** %6, align 8
  %70 = load i64, i64* %9, align 8
  %71 = call %struct.TYPE_7__* @get_addressed_line_node(i64 %70)
  store %struct.TYPE_7__* %71, %struct.TYPE_7__** %4, align 8
  br label %72

72:                                               ; preds = %67, %62
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  store %struct.TYPE_7__* %75, %struct.TYPE_7__** %7, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = call i32 @REQUE(%struct.TYPE_7__* %76, %struct.TYPE_7__* %79)
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %85 = call i32 @REQUE(%struct.TYPE_7__* %83, %struct.TYPE_7__* %84)
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %88 = call i32 @REQUE(%struct.TYPE_7__* %86, %struct.TYPE_7__* %87)
  %89 = load i64, i64* %3, align 8
  %90 = load i64, i64* %3, align 8
  %91 = load i32, i32* @first_addr, align 4
  %92 = sext i32 %91 to i64
  %93 = icmp slt i64 %90, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %72
  %95 = load i64, i64* @second_addr, align 8
  %96 = load i32, i32* @first_addr, align 4
  %97 = sext i32 %96 to i64
  %98 = sub nsw i64 %95, %97
  %99 = add nsw i64 %98, 1
  br label %101

100:                                              ; preds = %72
  br label %101

101:                                              ; preds = %100, %94
  %102 = phi i64 [ %99, %94 ], [ 0, %100 ]
  %103 = add nsw i64 %89, %102
  store i64 %103, i64* @current_addr, align 8
  br label %104

104:                                              ; preds = %101
  br label %105

105:                                              ; preds = %104, %32
  %106 = load i64, i64* @isglobal, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %113 = call i32 @unset_active_nodes(%struct.TYPE_7__* %111, %struct.TYPE_7__* %112)
  br label %114

114:                                              ; preds = %108, %105
  store i32 1, i32* @modified, align 4
  %115 = call i32 (...) @SPL0()
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %114, %52
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i64 @INC_MOD(i64, i32) #1

declare dso_local i32 @SPL1(...) #1

declare dso_local %struct.TYPE_7__* @get_addressed_line_node(i64) #1

declare dso_local i32* @push_undo_stack(i32, i64, i64) #1

declare dso_local i32 @SPL0(...) #1

declare dso_local i32 @REQUE(%struct.TYPE_7__*, %struct.TYPE_7__*) #1

declare dso_local i32 @unset_active_nodes(%struct.TYPE_7__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
