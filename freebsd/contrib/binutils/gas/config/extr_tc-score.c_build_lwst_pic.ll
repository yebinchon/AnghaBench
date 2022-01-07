; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_build_lwst_pic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_build_lwst_pic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.score_it = type { i32 }

@RELAX_INST_NUM = common dso_local global i32 0, align 4
@MAX_LITERAL_POOL_SIZE = common dso_local global i32 0, align 4
@nor1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"lw_pic r1, %s\00", align 1
@FALSE = common dso_local global i32 0, align 4
@FAIL = common dso_local global i64 0, align 8
@inst = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@BFD_RELOC_SCORE_GOT15 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"addi_s_pic r1, %s\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"%s r%d, [r1, %d]\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"PIC code offset overflow (max 16 signed bits)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_11__*, i8*)* @build_lwst_pic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_lwst_pic(i32 %0, i32 %1, %struct.TYPE_11__* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_12__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = bitcast %struct.TYPE_12__* %5 to { i32, %struct.TYPE_11__* }*
  %19 = getelementptr inbounds { i32, %struct.TYPE_11__* }, { i32, %struct.TYPE_11__* }* %18, i32 0, i32 0
  store i32 %1, i32* %19, align 8
  %20 = getelementptr inbounds { i32, %struct.TYPE_11__* }, { i32, %struct.TYPE_11__* }* %18, i32 0, i32 1
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %20, align 8
  store i32 %0, i32* %6, align 4
  store i8* %3, i8** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @RELAX_INST_NUM, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %10, align 8
  %28 = alloca %struct.score_it, i64 %26, align 16
  store i64 %26, i64* %11, align 8
  %29 = load i32, i32* @RELAX_INST_NUM, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca %struct.score_it, i64 %30, align 16
  store i64 %30, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %32 = load i32, i32* @MAX_LITERAL_POOL_SIZE, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %15, align 8
  %35 = load i32, i32* @nor1, align 4
  store i32 %35, i32* %16, align 4
  store i32 0, i32* @nor1, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %4
  %39 = load i32, i32* %9, align 4
  %40 = icmp sge i32 %39, -32768
  br i1 %40, label %41, label %93

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = icmp sle i32 %42, 32767
  br i1 %43, label %44, label %93

44:                                               ; preds = %41, %4
  store i32 1, i32* %13, align 4
  store i32 2, i32* %14, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* @FALSE, align 4
  %52 = call i32 @append_insn(i8* %34, i32 %51)
  %53 = load i64, i64* @FAIL, align 8
  %54 = trunc i64 %53 to i32
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  store i32 1, i32* %17, align 4
  br label %97

57:                                               ; preds = %44
  %58 = getelementptr inbounds %struct.score_it, %struct.score_it* %28, i64 0
  %59 = call i32 @memcpy(%struct.score_it* %58, %struct.TYPE_13__* @inst, i32 4)
  %60 = load i32, i32* @BFD_RELOC_SCORE_GOT15, align 4
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @inst, i32 0, i32 2, i32 0), align 4
  %61 = getelementptr inbounds %struct.score_it, %struct.score_it* %31, i64 0
  %62 = call i32 @memcpy(%struct.score_it* %61, %struct.TYPE_13__* @inst, i32 4)
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %67)
  %69 = load i32, i32* @FALSE, align 4
  %70 = call i32 @append_insn(i8* %34, i32 %69)
  %71 = load i64, i64* @FAIL, align 8
  %72 = trunc i64 %71 to i32
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %57
  store i32 1, i32* %17, align 4
  br label %97

75:                                               ; preds = %57
  %76 = getelementptr inbounds %struct.score_it, %struct.score_it* %31, i64 1
  %77 = call i32 @memcpy(%struct.score_it* %76, %struct.TYPE_13__* @inst, i32 4)
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %81 = call i32 @build_relax_frag(%struct.score_it* %28, i32 %78, %struct.score_it* %31, i32 %79, %struct.TYPE_11__* %80)
  %82 = load i8*, i8** %7, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %82, i32 %83, i32 %84)
  %86 = load i32, i32* @TRUE, align 4
  %87 = call i32 @append_insn(i8* %34, i32 %86)
  %88 = load i64, i64* @FAIL, align 8
  %89 = trunc i64 %88 to i32
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %75
  store i32 1, i32* %17, align 4
  br label %97

92:                                               ; preds = %75
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @inst, i32 0, i32 0), align 4
  br label %95

93:                                               ; preds = %41, %38
  %94 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  store i32 %94, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @inst, i32 0, i32 1), align 4
  store i32 1, i32* %17, align 4
  br label %97

95:                                               ; preds = %92
  %96 = load i32, i32* %16, align 4
  store i32 %96, i32* @nor1, align 4
  store i32 0, i32* %17, align 4
  br label %97

97:                                               ; preds = %95, %93, %91, %74, %56
  %98 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %98)
  %99 = load i32, i32* %17, align 4
  switch i32 %99, label %101 [
    i32 0, label %100
    i32 1, label %100
  ]

100:                                              ; preds = %97, %97
  ret void

101:                                              ; preds = %97
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #2

declare dso_local i32 @append_insn(i8*, i32) #2

declare dso_local i32 @memcpy(%struct.score_it*, %struct.TYPE_13__*, i32) #2

declare dso_local i32 @build_relax_frag(%struct.score_it*, i32, %struct.score_it*, i32, %struct.TYPE_11__*) #2

declare dso_local i32 @_(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
