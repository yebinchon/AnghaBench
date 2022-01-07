; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_write_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_write_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decision_head = type { %struct.decision* }
%struct.decision = type { i64, i8*, %struct.decision_head, %struct.decision*, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@write_tree.name_prefix = internal constant [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str.1 = private unnamed_addr constant [6 x i8] c"recog\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"split\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"peephole2\00", align 1
@write_tree.call_suffix = internal constant [3 x i8*] [i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str.4 = private unnamed_addr constant [16 x i8] c", pnum_clobbers\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [14 x i8] c", _pmatch_len\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"  tem = %s_%d (x0, insn%s);\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"  if (tem != 0)\0A    return tem;\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"  if (tem >= 0)\0A    return tem;\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"  goto L%d;\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"  return %s_%d (x0, insn%s);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.decision_head*, i8*, i32, i32)* @write_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_tree(%struct.decision_head* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.decision_head*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.decision*, align 8
  %10 = alloca i32, align 4
  store %struct.decision_head* %0, %struct.decision_head** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.decision_head*, %struct.decision_head** %5, align 8
  %12 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %11, i32 0, i32 0
  %13 = load %struct.decision*, %struct.decision** %12, align 8
  store %struct.decision* %13, %struct.decision** %9, align 8
  %14 = call i32 @putchar(i8 signext 10)
  %15 = load %struct.decision*, %struct.decision** %9, align 8
  %16 = getelementptr inbounds %struct.decision, %struct.decision* %15, i32 0, i32 6
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load %struct.decision*, %struct.decision** %9, align 8
  %21 = getelementptr inbounds %struct.decision, %struct.decision* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @OUTPUT_LABEL(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %19, %4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %87, label %27

27:                                               ; preds = %24
  %28 = load %struct.decision*, %struct.decision** %9, align 8
  %29 = getelementptr inbounds %struct.decision, %struct.decision* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %87

32:                                               ; preds = %27
  %33 = load %struct.decision*, %struct.decision** %9, align 8
  %34 = getelementptr inbounds %struct.decision, %struct.decision* %33, i32 0, i32 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = icmp ne %struct.TYPE_2__* %35, null
  br i1 %36, label %37, label %73

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [3 x i8*], [3 x i8*]* @write_tree.name_prefix, i64 0, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.decision*, %struct.decision** %9, align 8
  %43 = getelementptr inbounds %struct.decision, %struct.decision* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [3 x i8*], [3 x i8*]* @write_tree.call_suffix, i64 0, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %41, i64 %44, i8* %48)
  %50 = load i32, i32* %7, align 4
  %51 = call i64 @IS_SPLIT(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %37
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  br label %57

55:                                               ; preds = %37
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %53
  %58 = load %struct.decision*, %struct.decision** %9, align 8
  %59 = getelementptr inbounds %struct.decision, %struct.decision* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.decision*, %struct.decision** %9, align 8
  %62 = getelementptr inbounds %struct.decision, %struct.decision* %61, i32 0, i32 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @change_state(i8* %60, i8* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %67 = load %struct.decision*, %struct.decision** %9, align 8
  %68 = getelementptr inbounds %struct.decision, %struct.decision* %67, i32 0, i32 4
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %71)
  br label %86

73:                                               ; preds = %32
  %74 = load i32, i32* %7, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds [3 x i8*], [3 x i8*]* @write_tree.name_prefix, i64 0, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.decision*, %struct.decision** %9, align 8
  %79 = getelementptr inbounds %struct.decision, %struct.decision* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds [3 x i8*], [3 x i8*]* @write_tree.call_suffix, i64 0, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i8* %77, i64 %80, i8* %84)
  br label %86

86:                                               ; preds = %73, %57
  br label %126

87:                                               ; preds = %27, %24
  %88 = load %struct.decision*, %struct.decision** %9, align 8
  %89 = getelementptr inbounds %struct.decision, %struct.decision* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @strlen(i8* %90)
  store i32 %91, i32* %10, align 4
  %92 = load i8*, i8** %6, align 8
  %93 = load %struct.decision*, %struct.decision** %9, align 8
  %94 = getelementptr inbounds %struct.decision, %struct.decision* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @change_state(i8* %92, i8* %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %97 = load %struct.decision_head*, %struct.decision_head** %5, align 8
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @write_tree_1(%struct.decision_head* %97, i32 %98, i32 %99)
  %101 = load %struct.decision_head*, %struct.decision_head** %5, align 8
  %102 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %101, i32 0, i32 0
  %103 = load %struct.decision*, %struct.decision** %102, align 8
  store %struct.decision* %103, %struct.decision** %9, align 8
  br label %104

104:                                              ; preds = %121, %87
  %105 = load %struct.decision*, %struct.decision** %9, align 8
  %106 = icmp ne %struct.decision* %105, null
  br i1 %106, label %107, label %125

107:                                              ; preds = %104
  %108 = load %struct.decision*, %struct.decision** %9, align 8
  %109 = getelementptr inbounds %struct.decision, %struct.decision* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %109, i32 0, i32 0
  %111 = load %struct.decision*, %struct.decision** %110, align 8
  %112 = icmp ne %struct.decision* %111, null
  br i1 %112, label %113, label %120

113:                                              ; preds = %107
  %114 = load %struct.decision*, %struct.decision** %9, align 8
  %115 = getelementptr inbounds %struct.decision, %struct.decision* %114, i32 0, i32 2
  %116 = load %struct.decision*, %struct.decision** %9, align 8
  %117 = getelementptr inbounds %struct.decision, %struct.decision* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = load i32, i32* %7, align 4
  call void @write_tree(%struct.decision_head* %115, i8* %118, i32 %119, i32 0)
  br label %120

120:                                              ; preds = %113, %107
  br label %121

121:                                              ; preds = %120
  %122 = load %struct.decision*, %struct.decision** %9, align 8
  %123 = getelementptr inbounds %struct.decision, %struct.decision* %122, i32 0, i32 3
  %124 = load %struct.decision*, %struct.decision** %123, align 8
  store %struct.decision* %124, %struct.decision** %9, align 8
  br label %104

125:                                              ; preds = %104
  br label %126

126:                                              ; preds = %125, %86
  ret void
}

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @OUTPUT_LABEL(i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @IS_SPLIT(i32) #1

declare dso_local i32 @change_state(i8*, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @write_tree_1(%struct.decision_head*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
