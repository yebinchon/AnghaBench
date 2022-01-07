; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_set_insn_equiv_classes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_set_insn_equiv_classes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_9__*, i64, %struct.TYPE_9__* }

@process_state_for_insn_equiv_partition = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @set_insn_equiv_classes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_insn_equiv_classes(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %3, align 8
  br label %12

12:                                               ; preds = %25, %1
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = icmp ne %struct.TYPE_9__* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = call %struct.TYPE_9__* @insert_ainsn_into_equiv_class(%struct.TYPE_9__* %21, %struct.TYPE_9__* %22)
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %6, align 8
  br label %24

24:                                               ; preds = %20, %15
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 5
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %3, align 8
  br label %12

29:                                               ; preds = %12
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %31 = load i32, i32* @process_state_for_insn_equiv_partition, align 4
  %32 = call i32 @pass_states(%struct.TYPE_8__* %30, i32 %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %3, align 8
  br label %36

36:                                               ; preds = %42, %29
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = icmp ne %struct.TYPE_9__* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store i32 -1, i32* %41, align 8
  br label %42

42:                                               ; preds = %39
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 5
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %3, align 8
  br label %36

46:                                               ; preds = %36
  store i32 0, i32* %8, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %3, align 8
  br label %50

50:                                               ; preds = %92, %46
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = icmp ne %struct.TYPE_9__* %51, null
  br i1 %52, label %53, label %96

53:                                               ; preds = %50
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %91

58:                                               ; preds = %53
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_9__* %59, %struct.TYPE_9__** %4, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @gcc_assert(i64 %62)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %66, %struct.TYPE_9__** %5, align 8
  br label %67

67:                                               ; preds = %84, %58
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %68, %struct.TYPE_9__** %7, align 8
  br label %69

69:                                               ; preds = %76, %67
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %71 = icmp ne %struct.TYPE_9__* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  br label %76

76:                                               ; preds = %72
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  store %struct.TYPE_9__* %79, %struct.TYPE_9__** %7, align 8
  br label %69

80:                                               ; preds = %69
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  store %struct.TYPE_9__* %83, %struct.TYPE_9__** %5, align 8
  br label %84

84:                                               ; preds = %80
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %87 = icmp ne %struct.TYPE_9__* %85, %86
  br i1 %87, label %67, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %88, %53
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 5
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  store %struct.TYPE_9__* %95, %struct.TYPE_9__** %3, align 8
  br label %50

96:                                               ; preds = %50
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  ret void
}

declare dso_local %struct.TYPE_9__* @insert_ainsn_into_equiv_class(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @pass_states(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @gcc_assert(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
