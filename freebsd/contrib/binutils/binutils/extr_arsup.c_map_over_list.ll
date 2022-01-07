; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_arsup.c_map_over_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_arsup.c_map_over_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, %struct.TYPE_7__* }
%struct.list = type { i8*, %struct.list* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"No entry %s in archive.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, void (%struct.TYPE_7__*, %struct.TYPE_7__*)*, %struct.list*)* @map_over_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @map_over_list(%struct.TYPE_7__* %0, void (%struct.TYPE_7__*, %struct.TYPE_7__*)* %1, %struct.list* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca void (%struct.TYPE_7__*, %struct.TYPE_7__*)*, align 8
  %6 = alloca %struct.list*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.list*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store void (%struct.TYPE_7__*, %struct.TYPE_7__*)* %1, void (%struct.TYPE_7__*, %struct.TYPE_7__*)** %5, align 8
  store %struct.list* %2, %struct.list** %6, align 8
  %12 = load %struct.list*, %struct.list** %6, align 8
  %13 = icmp eq %struct.list* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %7, align 8
  br label %18

18:                                               ; preds = %21, %14
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %20 = icmp ne %struct.TYPE_7__* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %8, align 8
  %25 = load void (%struct.TYPE_7__*, %struct.TYPE_7__*)*, void (%struct.TYPE_7__*, %struct.TYPE_7__*)** %5, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  call void %25(%struct.TYPE_7__* %26, %struct.TYPE_7__* null)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %7, align 8
  br label %18

28:                                               ; preds = %18
  br label %84

29:                                               ; preds = %3
  %30 = load %struct.list*, %struct.list** %6, align 8
  store %struct.list* %30, %struct.list** %9, align 8
  br label %31

31:                                               ; preds = %79, %29
  %32 = load %struct.list*, %struct.list** %9, align 8
  %33 = icmp ne %struct.list* %32, null
  br i1 %33, label %34, label %83

34:                                               ; preds = %31
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %10, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %11, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %7, align 8
  br label %40

40:                                               ; preds = %64, %34
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %42 = icmp ne %struct.TYPE_7__* %41, null
  br i1 %42, label %43, label %68

43:                                               ; preds = %40
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %62

48:                                               ; preds = %43
  %49 = load %struct.list*, %struct.list** %9, align 8
  %50 = getelementptr inbounds %struct.list, %struct.list* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i64 @FILENAME_CMP(i8* %51, i32* %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %48
  %58 = load i32, i32* @TRUE, align 4
  store i32 %58, i32* %10, align 4
  %59 = load void (%struct.TYPE_7__*, %struct.TYPE_7__*)*, void (%struct.TYPE_7__*, %struct.TYPE_7__*)** %5, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  call void %59(%struct.TYPE_7__* %60, %struct.TYPE_7__* %61)
  br label %62

62:                                               ; preds = %57, %48, %43
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %11, align 8
  br label %64

64:                                               ; preds = %62
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  store %struct.TYPE_7__* %67, %struct.TYPE_7__** %7, align 8
  br label %40

68:                                               ; preds = %40
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* @stderr, align 4
  %73 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %74 = load %struct.list*, %struct.list** %9, align 8
  %75 = getelementptr inbounds %struct.list, %struct.list* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @fprintf(i32 %72, i8* %73, i8* %76)
  br label %78

78:                                               ; preds = %71, %68
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.list*, %struct.list** %9, align 8
  %81 = getelementptr inbounds %struct.list, %struct.list* %80, i32 0, i32 1
  %82 = load %struct.list*, %struct.list** %81, align 8
  store %struct.list* %82, %struct.list** %9, align 8
  br label %31

83:                                               ; preds = %31
  br label %84

84:                                               ; preds = %83, %28
  ret void
}

declare dso_local i64 @FILENAME_CMP(i8*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
