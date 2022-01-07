; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_mkpar.c_unused_rules.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_mkpar.c_unused_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_4__* }

@Value_t = common dso_local global i32 0, align 4
@nrules = common dso_local global i32 0, align 4
@rules_used = common dso_local global i32* null, align 8
@nstates = common dso_local global i32 0, align 4
@parser = common dso_local global %struct.TYPE_4__** null, align 8
@REDUCE = common dso_local global i64 0, align 8
@nunused = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s: 1 rule never reduced\0A\00", align 1
@myname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"%s: %d rules never reduced\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @unused_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unused_rules() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = load i32, i32* @Value_t, align 4
  %4 = load i32, i32* @nrules, align 4
  %5 = call i32* @TMALLOC(i32 %3, i32 %4)
  store i32* %5, i32** @rules_used, align 8
  %6 = load i32*, i32** @rules_used, align 8
  %7 = call i32 @NO_SPACE(i32* %6)
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %17, %0
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @nrules, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = load i32*, i32** @rules_used, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %12
  %18 = load i32, i32* %1, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %1, align 4
  br label %8

20:                                               ; preds = %8
  store i32 0, i32* %1, align 4
  br label %21

21:                                               ; preds = %56, %20
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* @nstates, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %59

25:                                               ; preds = %21
  %26 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @parser, align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %26, i64 %28
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  store %struct.TYPE_4__* %30, %struct.TYPE_4__** %2, align 8
  br label %31

31:                                               ; preds = %51, %25
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %33 = icmp ne %struct.TYPE_4__* %32, null
  br i1 %33, label %34, label %55

34:                                               ; preds = %31
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @REDUCE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %34
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %42 = call i64 @MaySuppress(%struct.TYPE_4__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i32*, i32** @rules_used, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  store i32 1, i32* %49, align 4
  br label %50

50:                                               ; preds = %44, %40, %34
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  store %struct.TYPE_4__* %54, %struct.TYPE_4__** %2, align 8
  br label %31

55:                                               ; preds = %31
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %1, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %1, align 4
  br label %21

59:                                               ; preds = %21
  store i32 0, i32* @nunused, align 4
  store i32 3, i32* %1, align 4
  br label %60

60:                                               ; preds = %75, %59
  %61 = load i32, i32* %1, align 4
  %62 = load i32, i32* @nrules, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %60
  %65 = load i32*, i32** @rules_used, align 8
  %66 = load i32, i32* %1, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %64
  %72 = load i32, i32* @nunused, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* @nunused, align 4
  br label %74

74:                                               ; preds = %71, %64
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %1, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %1, align 4
  br label %60

78:                                               ; preds = %60
  %79 = load i32, i32* @nunused, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %78
  %82 = load i32, i32* @nunused, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i32, i32* @stderr, align 4
  %86 = load i8*, i8** @myname, align 8
  %87 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %86)
  br label %93

88:                                               ; preds = %81
  %89 = load i32, i32* @stderr, align 4
  %90 = load i8*, i8** @myname, align 8
  %91 = load i32, i32* @nunused, align 4
  %92 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %89, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %90, i32 %91)
  br label %93

93:                                               ; preds = %88, %84
  br label %94

94:                                               ; preds = %93, %78
  ret void
}

declare dso_local i32* @TMALLOC(i32, i32) #1

declare dso_local i32 @NO_SPACE(i32*) #1

declare dso_local i64 @MaySuppress(%struct.TYPE_4__*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
