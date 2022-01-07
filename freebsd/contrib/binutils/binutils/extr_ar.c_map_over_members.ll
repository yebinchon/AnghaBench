; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ar.c_map_over_members.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ar.c_map_over_members.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, %struct.TYPE_7__* }
%struct.stat = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@counted_name_mode = common dso_local global i64 0, align 8
@counted_name_counter = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"no entry %s in archive\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, void (%struct.TYPE_7__*)*, i8**, i32)* @map_over_members to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @map_over_members(%struct.TYPE_7__* %0, void (%struct.TYPE_7__*)* %1, i8** %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca void (%struct.TYPE_7__*)*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.stat, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store void (%struct.TYPE_7__*)* %1, void (%struct.TYPE_7__*)** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %9, align 8
  br label %19

19:                                               ; preds = %26, %15
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %21 = icmp ne %struct.TYPE_7__* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = call i32 @PROGRESS(i32 1)
  %24 = load void (%struct.TYPE_7__*)*, void (%struct.TYPE_7__*)** %6, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  call void %24(%struct.TYPE_7__* %25)
  br label %26

26:                                               ; preds = %22
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %9, align 8
  br label %19

30:                                               ; preds = %19
  br label %101

31:                                               ; preds = %4
  br label %32

32:                                               ; preds = %96, %31
  %33 = load i32, i32* %8, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %101

35:                                               ; preds = %32
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %9, align 8
  br label %40

40:                                               ; preds = %82, %35
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %42 = icmp ne %struct.TYPE_7__* %41, null
  br i1 %42, label %43, label %86

43:                                               ; preds = %40
  %44 = call i32 @PROGRESS(i32 1)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %51 = call i32 @bfd_stat_arch_elt(%struct.TYPE_7__* %50, %struct.stat* %12)
  br label %52

52:                                               ; preds = %49, %43
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %81

57:                                               ; preds = %52
  %58 = load i8**, i8*** %7, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = call i32 @normalize(i8* %59, %struct.TYPE_7__* %60)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @FILENAME_CMP(i32 %61, i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %81, label %67

67:                                               ; preds = %57
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  %70 = load i64, i64* @counted_name_mode, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @counted_name_counter, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %82

77:                                               ; preds = %72, %67
  %78 = load i32, i32* @TRUE, align 4
  store i32 %78, i32* %11, align 4
  %79 = load void (%struct.TYPE_7__*)*, void (%struct.TYPE_7__*)** %6, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  call void %79(%struct.TYPE_7__* %80)
  br label %81

81:                                               ; preds = %77, %57, %52
  br label %82

82:                                               ; preds = %81, %76
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  store %struct.TYPE_7__* %85, %struct.TYPE_7__** %9, align 8
  br label %40

86:                                               ; preds = %40
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* @stderr, align 4
  %91 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %92 = load i8**, i8*** %7, align 8
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @fprintf(i32 %90, i8* %91, i8* %93)
  br label %95

95:                                               ; preds = %89, %86
  br label %96

96:                                               ; preds = %95
  %97 = load i8**, i8*** %7, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i32 1
  store i8** %98, i8*** %7, align 8
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %8, align 4
  br label %32

101:                                              ; preds = %30, %32
  ret void
}

declare dso_local i32 @PROGRESS(i32) #1

declare dso_local i32 @bfd_stat_arch_elt(%struct.TYPE_7__*, %struct.stat*) #1

declare dso_local i32 @FILENAME_CMP(i32, i32*) #1

declare dso_local i32 @normalize(i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
