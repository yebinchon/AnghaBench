; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_build_automaton.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_build_automaton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8* }

@NDFA_time = common dso_local global i32 0, align 4
@progress_flag = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Create anonymous automaton\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Create automaton `%s'\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c" (1 dot is 100 new states):\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" done\0A\00", align 1
@NDFA_to_DFA_time = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"Make anonymous DFA\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Make DFA `%s'\00", align 1
@no_minimization_flag = common dso_local global i32 0, align 4
@minimize_time = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"Minimize anonymous DFA...\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Minimize DFA `%s'...\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @build_automaton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_automaton(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %5 = call i32 @ticker_on(i32* @NDFA_time)
  %6 = load i64, i64* @progress_flag, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 6
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = icmp eq %struct.TYPE_8__* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %24

16:                                               ; preds = %8
  %17 = load i32, i32* @stderr, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 6
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %16, %13
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %1
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = call i32 @make_automaton(%struct.TYPE_9__* %28)
  %30 = load i64, i64* @progress_flag, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %27
  %36 = call i32 @ticker_off(i32* @NDFA_time)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %38 = call i32 @count_states_and_arcs(%struct.TYPE_9__* %37, i32* %3, i32* %4)
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = call i32 @ticker_on(i32* @NDFA_to_DFA_time)
  %46 = load i64, i64* @progress_flag, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %35
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 6
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = icmp eq %struct.TYPE_8__* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %64

56:                                               ; preds = %48
  %57 = load i32, i32* @stderr, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 6
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %56, %53
  %65 = load i32, i32* @stderr, align 4
  %66 = call i32 (i32, i8*, ...) @fprintf(i32 %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %35
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %69 = call i32 @NDFA_to_DFA(%struct.TYPE_9__* %68)
  %70 = load i64, i64* @progress_flag, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* @stderr, align 4
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %67
  %76 = call i32 @ticker_off(i32* @NDFA_to_DFA_time)
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %78 = call i32 @count_states_and_arcs(%struct.TYPE_9__* %77, i32* %3, i32* %4)
  %79 = load i32, i32* %3, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* %4, align 4
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @no_minimization_flag, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %126, label %87

87:                                               ; preds = %75
  %88 = call i32 @ticker_on(i32* @minimize_time)
  %89 = load i64, i64* @progress_flag, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %87
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 6
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = icmp eq %struct.TYPE_8__* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* @stderr, align 4
  %98 = call i32 (i32, i8*, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %107

99:                                               ; preds = %91
  %100 = load i32, i32* @stderr, align 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 6
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 (i32, i8*, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %105)
  br label %107

107:                                              ; preds = %99, %96
  br label %108

108:                                              ; preds = %107, %87
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %110 = call i32 @minimize_DFA(%struct.TYPE_9__* %109)
  %111 = load i64, i64* @progress_flag, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i32, i32* @stderr, align 4
  %115 = call i32 (i32, i8*, ...) @fprintf(i32 %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %108
  %117 = call i32 @ticker_off(i32* @minimize_time)
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %119 = call i32 @count_states_and_arcs(%struct.TYPE_9__* %118, i32* %3, i32* %4)
  %120 = load i32, i32* %3, align 4
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* %4, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 5
  store i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %116, %75
  ret void
}

declare dso_local i32 @ticker_on(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @make_automaton(%struct.TYPE_9__*) #1

declare dso_local i32 @ticker_off(i32*) #1

declare dso_local i32 @count_states_and_arcs(%struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i32 @NDFA_to_DFA(%struct.TYPE_9__*) #1

declare dso_local i32 @minimize_DFA(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
