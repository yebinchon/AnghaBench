; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_create_automata.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_create_automata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_13__** }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_14__*, i8* }
%struct.TYPE_12__ = type { i8*, %struct.TYPE_14__*, i64 }
%struct.TYPE_13__ = type { i64 }

@automata_num = common dso_local global i32 0, align 4
@description = common dso_local global %struct.TYPE_15__* null, align 8
@dm_automaton = common dso_local global i64 0, align 8
@NDFA_time = common dso_local global i32 0, align 4
@NDFA_to_DFA_time = common dso_local global i32 0, align 4
@minimize_time = common dso_local global i32 0, align 4
@equiv_time = common dso_local global i32 0, align 4
@progress_flag = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Prepare anonymous automaton creation ... \00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Prepare automaton `%s' creation...\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @create_automata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_automata() #0 {
  %1 = alloca %struct.TYPE_14__*, align 8
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @automata_num, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %42

8:                                                ; preds = %0
  %9 = call i32 (...) @units_to_automata_heuristic_distr()
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %2, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %37, %8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @automata_num, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %10
  %15 = call %struct.TYPE_14__* @create_node(i32 4)
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %1, align 8
  %16 = call i8* (...) @create_ainsns()
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %20, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %22, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %27 = icmp eq %struct.TYPE_14__* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %14
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** @description, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  store %struct.TYPE_14__* %29, %struct.TYPE_14__** %31, align 8
  br label %36

32:                                               ; preds = %14
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 2
  store %struct.TYPE_14__* %33, %struct.TYPE_14__** %35, align 8
  br label %36

36:                                               ; preds = %32, %28
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  store %struct.TYPE_14__* %40, %struct.TYPE_14__** %2, align 8
  br label %10

41:                                               ; preds = %10
  br label %121

42:                                               ; preds = %0
  store i32 0, i32* %4, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %2, align 8
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %101, %42
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** @description, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %104

49:                                               ; preds = %43
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** @description, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %52, i64 %54
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %3, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @dm_automaton, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %100

62:                                               ; preds = %49
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %64 = call %struct.TYPE_12__* @DECL_AUTOMATON(%struct.TYPE_13__* %63)
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %100

68:                                               ; preds = %62
  %69 = call %struct.TYPE_14__* @create_node(i32 4)
  store %struct.TYPE_14__* %69, %struct.TYPE_14__** %1, align 8
  %70 = call i8* (...) @create_ainsns()
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %74 = call %struct.TYPE_12__* @DECL_AUTOMATON(%struct.TYPE_13__* %73)
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  store %struct.TYPE_12__* %74, %struct.TYPE_12__** %76, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %78, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %81 = call %struct.TYPE_12__* @DECL_AUTOMATON(%struct.TYPE_13__* %80)
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  store %struct.TYPE_14__* %79, %struct.TYPE_14__** %82, align 8
  %83 = load i32, i32* %4, align 4
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %87 = icmp eq %struct.TYPE_14__* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %68
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** @description, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  store %struct.TYPE_14__* %89, %struct.TYPE_14__** %91, align 8
  br label %96

92:                                               ; preds = %68
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 2
  store %struct.TYPE_14__* %93, %struct.TYPE_14__** %95, align 8
  br label %96

96:                                               ; preds = %92, %88
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %4, align 4
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  store %struct.TYPE_14__* %99, %struct.TYPE_14__** %2, align 8
  br label %100

100:                                              ; preds = %96, %62, %49
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %5, align 4
  br label %43

104:                                              ; preds = %43
  %105 = load i32, i32* %4, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %104
  %108 = call %struct.TYPE_14__* @create_node(i32 4)
  store %struct.TYPE_14__* %108, %struct.TYPE_14__** %1, align 8
  %109 = call i8* (...) @create_ainsns()
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 3
  store i8* %109, i8** %111, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %113, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %115, align 8
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** @description, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 1
  store %struct.TYPE_14__* %116, %struct.TYPE_14__** %118, align 8
  br label %119

119:                                              ; preds = %107, %104
  %120 = call i32 (...) @units_to_automata_distr()
  br label %121

121:                                              ; preds = %119, %41
  %122 = call i32 (...) @create_ticker()
  store i32 %122, i32* @NDFA_time, align 4
  %123 = call i32 @ticker_off(i32* @NDFA_time)
  %124 = call i32 (...) @create_ticker()
  store i32 %124, i32* @NDFA_to_DFA_time, align 4
  %125 = call i32 @ticker_off(i32* @NDFA_to_DFA_time)
  %126 = call i32 (...) @create_ticker()
  store i32 %126, i32* @minimize_time, align 4
  %127 = call i32 @ticker_off(i32* @minimize_time)
  %128 = call i32 (...) @create_ticker()
  store i32 %128, i32* @equiv_time, align 4
  %129 = call i32 @ticker_off(i32* @equiv_time)
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** @description, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %131, align 8
  store %struct.TYPE_14__* %132, %struct.TYPE_14__** %1, align 8
  br label %133

133:                                              ; preds = %175, %121
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %135 = icmp ne %struct.TYPE_14__* %134, null
  br i1 %135, label %136, label %179

136:                                              ; preds = %133
  %137 = load i64, i64* @progress_flag, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %156

139:                                              ; preds = %136
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  %143 = icmp eq %struct.TYPE_12__* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load i32, i32* @stderr, align 4
  %146 = call i32 (i32, i8*, ...) @fprintf(i32 %145, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %155

147:                                              ; preds = %139
  %148 = load i32, i32* @stderr, align 4
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 (i32, i8*, ...) @fprintf(i32 %148, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %153)
  br label %155

155:                                              ; preds = %147, %144
  br label %156

156:                                              ; preds = %155, %136
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %158 = call i32 @create_alt_states(%struct.TYPE_14__* %157)
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %160 = call i32 @form_ainsn_with_same_reservs(%struct.TYPE_14__* %159)
  %161 = load i64, i64* @progress_flag, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %156
  %164 = load i32, i32* @stderr, align 4
  %165 = call i32 (i32, i8*, ...) @fprintf(i32 %164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %166

166:                                              ; preds = %163, %156
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %168 = call i32 @build_automaton(%struct.TYPE_14__* %167)
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %170 = call i32 @enumerate_states(%struct.TYPE_14__* %169)
  %171 = call i32 @ticker_on(i32* @equiv_time)
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %173 = call i32 @set_insn_equiv_classes(%struct.TYPE_14__* %172)
  %174 = call i32 @ticker_off(i32* @equiv_time)
  br label %175

175:                                              ; preds = %166
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 2
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %177, align 8
  store %struct.TYPE_14__* %178, %struct.TYPE_14__** %1, align 8
  br label %133

179:                                              ; preds = %133
  ret void
}

declare dso_local i32 @units_to_automata_heuristic_distr(...) #1

declare dso_local %struct.TYPE_14__* @create_node(i32) #1

declare dso_local i8* @create_ainsns(...) #1

declare dso_local %struct.TYPE_12__* @DECL_AUTOMATON(%struct.TYPE_13__*) #1

declare dso_local i32 @units_to_automata_distr(...) #1

declare dso_local i32 @create_ticker(...) #1

declare dso_local i32 @ticker_off(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @create_alt_states(%struct.TYPE_14__*) #1

declare dso_local i32 @form_ainsn_with_same_reservs(%struct.TYPE_14__*) #1

declare dso_local i32 @build_automaton(%struct.TYPE_14__*) #1

declare dso_local i32 @enumerate_states(%struct.TYPE_14__*) #1

declare dso_local i32 @ticker_on(i32*) #1

declare dso_local i32 @set_insn_equiv_classes(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
