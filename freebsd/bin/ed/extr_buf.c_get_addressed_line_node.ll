; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_buf.c_get_addressed_line_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_buf.c_get_addressed_line_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.TYPE_4__* }

@get_addressed_line_node.lp = internal global %struct.TYPE_4__* @buffer_head, align 8
@buffer_head = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@get_addressed_line_node.on = internal global i64 0, align 8
@addr_last = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @get_addressed_line_node(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = call i32 (...) @SPL1()
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @get_addressed_line_node.on, align 8
  %6 = icmp sgt i64 %4, %5
  br i1 %6, label %7, label %43

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* @get_addressed_line_node.on, align 8
  %10 = load i64, i64* @addr_last, align 8
  %11 = add nsw i64 %9, %10
  %12 = ashr i64 %11, 1
  %13 = icmp sle i64 %8, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %7
  br label %15

15:                                               ; preds = %23, %14
  %16 = load i64, i64* @get_addressed_line_node.on, align 8
  %17 = load i64, i64* %2, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @get_addressed_line_node.lp, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** @get_addressed_line_node.lp, align 8
  br label %23

23:                                               ; preds = %19
  %24 = load i64, i64* @get_addressed_line_node.on, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* @get_addressed_line_node.on, align 8
  br label %15

26:                                               ; preds = %15
  br label %42

27:                                               ; preds = %7
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @buffer_head, i32 0, i32 1), align 8
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** @get_addressed_line_node.lp, align 8
  %29 = load i64, i64* @addr_last, align 8
  store i64 %29, i64* @get_addressed_line_node.on, align 8
  br label %30

30:                                               ; preds = %38, %27
  %31 = load i64, i64* @get_addressed_line_node.on, align 8
  %32 = load i64, i64* %2, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @get_addressed_line_node.lp, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** @get_addressed_line_node.lp, align 8
  br label %38

38:                                               ; preds = %34
  %39 = load i64, i64* @get_addressed_line_node.on, align 8
  %40 = add nsw i64 %39, -1
  store i64 %40, i64* @get_addressed_line_node.on, align 8
  br label %30

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41, %26
  br label %75

43:                                               ; preds = %1
  %44 = load i64, i64* %2, align 8
  %45 = load i64, i64* @get_addressed_line_node.on, align 8
  %46 = ashr i64 %45, 1
  %47 = icmp sge i64 %44, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %57, %48
  %50 = load i64, i64* @get_addressed_line_node.on, align 8
  %51 = load i64, i64* %2, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @get_addressed_line_node.lp, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  store %struct.TYPE_4__* %56, %struct.TYPE_4__** @get_addressed_line_node.lp, align 8
  br label %57

57:                                               ; preds = %53
  %58 = load i64, i64* @get_addressed_line_node.on, align 8
  %59 = add nsw i64 %58, -1
  store i64 %59, i64* @get_addressed_line_node.on, align 8
  br label %49

60:                                               ; preds = %49
  br label %74

61:                                               ; preds = %43
  store %struct.TYPE_4__* @buffer_head, %struct.TYPE_4__** @get_addressed_line_node.lp, align 8
  store i64 0, i64* @get_addressed_line_node.on, align 8
  br label %62

62:                                               ; preds = %70, %61
  %63 = load i64, i64* @get_addressed_line_node.on, align 8
  %64 = load i64, i64* %2, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @get_addressed_line_node.lp, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  store %struct.TYPE_4__* %69, %struct.TYPE_4__** @get_addressed_line_node.lp, align 8
  br label %70

70:                                               ; preds = %66
  %71 = load i64, i64* @get_addressed_line_node.on, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* @get_addressed_line_node.on, align 8
  br label %62

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73, %60
  br label %75

75:                                               ; preds = %74, %42
  %76 = call i32 (...) @SPL0()
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @get_addressed_line_node.lp, align 8
  ret %struct.TYPE_4__* %77
}

declare dso_local i32 @SPL1(...) #1

declare dso_local i32 @SPL0(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
