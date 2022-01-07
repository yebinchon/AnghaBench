; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_write_subroutine.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_write_subroutine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decision_head = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"static \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"_%d\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"_insns\00", align 1
@.str.4 = private unnamed_addr constant [107 x i8] c"%sint\0Arecog%s (rtx x0 ATTRIBUTE_UNUSED,\0A\09rtx insn ATTRIBUTE_UNUSED,\0A\09int *pnum_clobbers ATTRIBUTE_UNUSED)\0A\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"%srtx\0Asplit%s (rtx x0 ATTRIBUTE_UNUSED, rtx insn ATTRIBUTE_UNUSED)\0A\00", align 1
@.str.6 = private unnamed_addr constant [109 x i8] c"%srtx\0Apeephole2%s (rtx x0 ATTRIBUTE_UNUSED,\0A\09rtx insn ATTRIBUTE_UNUSED,\0A\09int *_pmatch_len ATTRIBUTE_UNUSED)\0A\00", align 1
@.str.7 = private unnamed_addr constant [69 x i8] c"{\0A  rtx * const operands ATTRIBUTE_UNUSED = &recog_data.operand[0];\0A\00", align 1
@max_depth = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"  rtx x%d ATTRIBUTE_UNUSED;\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"  %s tem ATTRIBUTE_UNUSED;\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"rtx\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"  recog_data.insn = NULL_RTX;\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"  goto ret0;\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c" ret0:\0A  return %d;\0A}\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.decision_head*, i32)* @write_subroutine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_subroutine(%struct.decision_head* %0, i32 %1) #0 {
  %3 = alloca %struct.decision_head*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [32 x i8], align 16
  %8 = alloca i32, align 4
  store %struct.decision_head* %0, %struct.decision_head** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.decision_head*, %struct.decision_head** %3, align 8
  %10 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.decision_head*, %struct.decision_head** %3, align 8
  %15 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  br label %20

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19, %13
  %21 = phi i32 [ %18, %13 ], [ 0, %19 ]
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  store i8* %25, i8** %6, align 8
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @sprintf(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  br label %41

32:                                               ; preds = %20
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, 129
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %36, align 16
  br label %40

37:                                               ; preds = %32
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %39 = call i32 @strcpy(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %35
  br label %41

41:                                               ; preds = %40, %28
  %42 = load i32, i32* %4, align 4
  switch i32 %42, label %55 [
    i32 129, label %43
    i32 128, label %47
    i32 130, label %51
  ]

43:                                               ; preds = %41
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.4, i64 0, i64 0), i8* %44, i8* %45)
  br label %55

47:                                               ; preds = %41
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0), i8* %48, i8* %49)
  br label %55

51:                                               ; preds = %41
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.6, i64 0, i64 0), i8* %52, i8* %53)
  br label %55

55:                                               ; preds = %41, %51, %47, %43
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %57

57:                                               ; preds = %64, %55
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @max_depth, align 4
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load i32, i32* %8, align 4
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %57

67:                                               ; preds = %57
  %68 = load i32, i32* %4, align 4
  %69 = call i64 @IS_SPLIT(i32 %68)
  %70 = icmp ne i64 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8* %72)
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %67
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %67
  %79 = load %struct.decision_head*, %struct.decision_head** %3, align 8
  %80 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = icmp ne %struct.TYPE_2__* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.decision_head*, %struct.decision_head** %3, align 8
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @write_tree(%struct.decision_head* %84, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 1)
  br label %89

87:                                               ; preds = %78
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %83
  %90 = load i32, i32* %4, align 4
  %91 = call i64 @IS_SPLIT(i32 %90)
  %92 = icmp ne i64 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 0, i32 -1
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 %94)
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @IS_SPLIT(i32) #1

declare dso_local i32 @write_tree(%struct.decision_head*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
