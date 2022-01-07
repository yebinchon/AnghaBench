; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_process_seq_for_forming_states.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_process_seq_for_forming_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_14__** }
%struct.TYPE_12__ = type { i32, %struct.TYPE_14__** }

@state_being_formed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_15__*, i32)* @process_seq_for_forming_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_seq_for_forming_states(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %12 = icmp eq %struct.TYPE_14__* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %4, align 4
  br label %103

15:                                               ; preds = %3
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %101 [
    i32 128, label %19
    i32 129, label %42
    i32 131, label %68
    i32 130, label %99
  ]

19:                                               ; preds = %15
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = call %struct.TYPE_16__* @REGEXP_UNIT(%struct.TYPE_14__* %20)
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %19
  %31 = load i32, i32* @state_being_formed, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %34 = call %struct.TYPE_16__* @REGEXP_UNIT(%struct.TYPE_14__* %33)
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @set_state_reserv(i32 %31, i32 %32, i32 %38)
  br label %40

40:                                               ; preds = %30, %19
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %4, align 4
  br label %103

42:                                               ; preds = %15
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %63, %42
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %46 = call %struct.TYPE_17__* @REGEXP_SEQUENCE(%struct.TYPE_14__* %45)
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %44, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %43
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %52 = call %struct.TYPE_17__* @REGEXP_SEQUENCE(%struct.TYPE_14__* %51)
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %54, i64 %56
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @process_seq_for_forming_states(%struct.TYPE_14__* %58, %struct.TYPE_15__* %59, i32 %60)
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %50
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %43

66:                                               ; preds = %43
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %4, align 4
  br label %103

68:                                               ; preds = %15
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %94, %68
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %72 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_14__* %71)
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %70, %74
  br i1 %75, label %76, label %97

76:                                               ; preds = %69
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %78 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_14__* %77)
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %80, i64 %82
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %83, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @process_seq_for_forming_states(%struct.TYPE_14__* %84, %struct.TYPE_15__* %85, i32 %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %76
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %91, %76
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %69

97:                                               ; preds = %69
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %4, align 4
  br label %103

99:                                               ; preds = %15
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %4, align 4
  br label %103

101:                                              ; preds = %15
  %102 = call i32 (...) @gcc_unreachable()
  br label %103

103:                                              ; preds = %13, %40, %66, %97, %99, %101
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local %struct.TYPE_16__* @REGEXP_UNIT(%struct.TYPE_14__*) #1

declare dso_local i32 @set_state_reserv(i32, i32, i32) #1

declare dso_local %struct.TYPE_17__* @REGEXP_SEQUENCE(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_14__*) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
