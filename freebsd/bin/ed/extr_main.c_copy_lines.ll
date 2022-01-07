; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_main.c_copy_lines.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_main.c_copy_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_9__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }

@first_addr = common dso_local global i32 0, align 4
@second_addr = common dso_local global i32 0, align 4
@current_addr = common dso_local global i32 0, align 4
@ERR = common dso_local global i32 0, align 4
@UADD = common dso_local global i32 0, align 4
@modified = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_lines(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %9 = load i32, i32* @first_addr, align 4
  %10 = call %struct.TYPE_9__* @get_addressed_line_node(i32 %9)
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  %11 = load i32, i32* @second_addr, align 4
  %12 = load i32, i32* @first_addr, align 4
  %13 = sub nsw i32 %11, %12
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %16 = load i64, i64* %3, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* @current_addr, align 4
  %18 = load i32, i32* @first_addr, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %3, align 8
  %21 = icmp sle i64 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %1
  %23 = load i64, i64* %3, align 8
  %24 = load i32, i32* @second_addr, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp slt i64 %23, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load i64, i64* %3, align 8
  %29 = load i32, i32* @first_addr, align 4
  %30 = sext i32 %29 to i64
  %31 = sub nsw i64 %28, %30
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %7, align 8
  %33 = load i32, i32* @second_addr, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %3, align 8
  %36 = sub nsw i64 %34, %35
  store i64 %36, i64* %8, align 8
  br label %37

37:                                               ; preds = %27, %22, %1
  br label %38

38:                                               ; preds = %80, %37
  %39 = load i64, i64* %7, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %85

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %75, %41
  %43 = load i64, i64* %7, align 8
  %44 = add nsw i64 %43, -1
  store i64 %44, i64* %7, align 8
  %45 = icmp sgt i64 %43, 0
  br i1 %45, label %46, label %79

46:                                               ; preds = %42
  %47 = call i32 (...) @SPL1()
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = call %struct.TYPE_9__* @dup_line_node(%struct.TYPE_9__* %48)
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %4, align 8
  %50 = icmp eq %struct.TYPE_9__* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = call i32 (...) @SPL0()
  %53 = load i32, i32* @ERR, align 4
  store i32 %53, i32* %2, align 4
  br label %86

54:                                               ; preds = %46
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = call i32 @add_line_node(%struct.TYPE_9__* %55)
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %58 = icmp ne %struct.TYPE_8__* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  store %struct.TYPE_9__* %60, %struct.TYPE_9__** %62, align 8
  br label %73

63:                                               ; preds = %54
  %64 = load i32, i32* @UADD, align 4
  %65 = load i32, i32* @current_addr, align 4
  %66 = load i32, i32* @current_addr, align 4
  %67 = call %struct.TYPE_8__* @push_undo_stack(i32 %64, i32 %65, i32 %66)
  store %struct.TYPE_8__* %67, %struct.TYPE_8__** %6, align 8
  %68 = icmp eq %struct.TYPE_8__* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = call i32 (...) @SPL0()
  %71 = load i32, i32* @ERR, align 4
  store i32 %71, i32* %2, align 4
  br label %86

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %59
  store i32 1, i32* @modified, align 4
  %74 = call i32 (...) @SPL0()
  br label %75

75:                                               ; preds = %73
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  store %struct.TYPE_9__* %78, %struct.TYPE_9__** %5, align 8
  br label %42

79:                                               ; preds = %42
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %8, align 8
  store i64 %81, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %82 = load i32, i32* @current_addr, align 4
  %83 = add nsw i32 %82, 1
  %84 = call %struct.TYPE_9__* @get_addressed_line_node(i32 %83)
  store %struct.TYPE_9__* %84, %struct.TYPE_9__** %5, align 8
  br label %38

85:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %69, %51
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.TYPE_9__* @get_addressed_line_node(i32) #1

declare dso_local i32 @SPL1(...) #1

declare dso_local %struct.TYPE_9__* @dup_line_node(%struct.TYPE_9__*) #1

declare dso_local i32 @SPL0(...) #1

declare dso_local i32 @add_line_node(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_8__* @push_undo_stack(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
