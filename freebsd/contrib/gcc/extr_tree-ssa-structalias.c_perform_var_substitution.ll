; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-structalias.c_perform_var_substitution.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-structalias.c_perform_var_substitution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.scc_info = type { i32*, i32 }
%struct.TYPE_7__ = type { i32, i32*, i32 }
%struct.TYPE_9__ = type { i8* }

@iteration_obstack = common dso_local global i32 0, align 4
@equivalence_class = common dso_local global i64 0, align 8
@LAST_REF_NODE = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@FIRST_REF_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Equivalence class for %s node id %d:%s is %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Direct node\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Indirect node\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"%s is a non-pointer variable, eliminating edges.\0A\00", align 1
@stats = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scc_info* (%struct.TYPE_7__*)* @perform_var_substitution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scc_info* @perform_var_substitution(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.scc_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.scc_info* @init_scc_info(i32 %11)
  store %struct.scc_info* %12, %struct.scc_info** %5, align 8
  %13 = call i32 @bitmap_obstack_initialize(i32* @iteration_obstack)
  store i64 0, i64* @equivalence_class, align 8
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %43, %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @LAST_REF_NODE, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %14
  %19 = load %struct.scc_info*, %struct.scc_info** %5, align 8
  %20 = getelementptr inbounds %struct.scc_info, %struct.scc_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.scc_info*, %struct.scc_info** %5, align 8
  %23 = getelementptr inbounds %struct.scc_info, %struct.scc_info* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @TEST_BIT(i32 %21, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %18
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %33 = load %struct.scc_info*, %struct.scc_info** %5, align 8
  %34 = load %struct.scc_info*, %struct.scc_info** %5, align 8
  %35 = getelementptr inbounds %struct.scc_info, %struct.scc_info* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @label_visit(%struct.TYPE_7__* %32, %struct.scc_info* %33, i32 %40)
  br label %42

42:                                               ; preds = %31, %18
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %3, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %14

46:                                               ; preds = %14
  %47 = load i64, i64* @dump_file, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %93

49:                                               ; preds = %46
  %50 = load i32, i32* @dump_flags, align 4
  %51 = load i32, i32* @TDF_DETAILS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %93

54:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %89, %54
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @FIRST_REF_NODE, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %92

59:                                               ; preds = %55
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @TEST_BIT(i32 %62, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i64, i64* @dump_file, align 8
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* %3, align 4
  %72 = call %struct.TYPE_9__* @get_varinfo(i32 %71)
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.scc_info*, %struct.scc_info** %5, align 8
  %79 = getelementptr inbounds %struct.scc_info, %struct.scc_info* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %3, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %77, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i64, i8*, i8*, ...) @fprintf(i64 %65, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %69, i32 %70, i8* %74, i32 %87)
  br label %89

89:                                               ; preds = %59
  %90 = load i32, i32* %3, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %3, align 4
  br label %55

92:                                               ; preds = %55
  br label %93

93:                                               ; preds = %92, %49, %46
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %143, %93
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* @FIRST_REF_NODE, align 4
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %98, label %146

98:                                               ; preds = %94
  %99 = load %struct.scc_info*, %struct.scc_info** %5, align 8
  %100 = getelementptr inbounds %struct.scc_info, %struct.scc_info* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %3, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %7, align 4
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %142

114:                                              ; preds = %98
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @TEST_BIT(i32 %117, i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %142

121:                                              ; preds = %114
  %122 = load i64, i64* @dump_file, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %121
  %125 = load i32, i32* @dump_flags, align 4
  %126 = load i32, i32* @TDF_DETAILS, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %124
  %130 = load i64, i64* @dump_file, align 8
  %131 = load i32, i32* %7, align 4
  %132 = call %struct.TYPE_9__* @get_varinfo(i32 %131)
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 (i64, i8*, i8*, ...) @fprintf(i64 %130, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i8* %134)
  br label %136

136:                                              ; preds = %129, %124, %121
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @stats, i32 0, i32 0), align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @stats, i32 0, i32 0), align 4
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @clear_edges_for_node(%struct.TYPE_7__* %139, i32 %140)
  br label %142

142:                                              ; preds = %136, %114, %98
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %3, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %3, align 4
  br label %94

146:                                              ; preds = %94
  %147 = load %struct.scc_info*, %struct.scc_info** %5, align 8
  ret %struct.scc_info* %147
}

declare dso_local %struct.scc_info* @init_scc_info(i32) #1

declare dso_local i32 @bitmap_obstack_initialize(i32*) #1

declare dso_local i32 @TEST_BIT(i32, i32) #1

declare dso_local i32 @label_visit(%struct.TYPE_7__*, %struct.scc_info*, i32) #1

declare dso_local i32 @fprintf(i64, i8*, i8*, ...) #1

declare dso_local %struct.TYPE_9__* @get_varinfo(i32) #1

declare dso_local i32 @clear_edges_for_node(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
