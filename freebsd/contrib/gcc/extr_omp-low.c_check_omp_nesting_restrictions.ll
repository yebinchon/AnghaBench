; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_check_omp_nesting_restrictions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_check_omp_nesting_restrictions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.TYPE_3__* }

@.str = private unnamed_addr constant [105 x i8] c"work-sharing region may not be closely nested inside of work-sharing, critical, ordered or master region\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"master region may not be closely nested inside of work-sharing region\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"ordered region may not be closely nested inside of critical region\00", align 1
@OMP_CLAUSE_ORDERED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [82 x i8] c"ordered region must be closely nested inside a loop region with an ordered clause\00", align 1
@.str.4 = private unnamed_addr constant [78 x i8] c"critical region may not be nested inside a critical region with the same name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_3__*)* @check_omp_nesting_restrictions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_omp_nesting_restrictions(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @TREE_CODE(i32 %5)
  switch i32 %6, label %101 [
    i32 133, label %7
    i32 129, label %7
    i32 128, label %7
    i32 132, label %26
    i32 131, label %45
    i32 134, label %75
  ]

7:                                                ; preds = %2, %2, %2
  br label %8

8:                                                ; preds = %21, %7
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @TREE_CODE(i32 %14)
  switch i32 %15, label %19 [
    i32 133, label %16
    i32 129, label %16
    i32 128, label %16
    i32 131, label %16
    i32 132, label %16
    i32 130, label %18
  ]

16:                                               ; preds = %11, %11, %11, %11, %11
  %17 = call i32 @warning(i32 0, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str, i64 0, i64 0))
  br label %102

18:                                               ; preds = %11
  br label %102

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %4, align 8
  br label %8

25:                                               ; preds = %8
  br label %102

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %40, %26
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = icmp ne %struct.TYPE_3__* %28, null
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @TREE_CODE(i32 %33)
  switch i32 %34, label %38 [
    i32 133, label %35
    i32 129, label %35
    i32 128, label %35
    i32 130, label %37
  ]

35:                                               ; preds = %30, %30, %30
  %36 = call i32 @warning(i32 0, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  br label %102

37:                                               ; preds = %30
  br label %102

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  store %struct.TYPE_3__* %43, %struct.TYPE_3__** %4, align 8
  br label %27

44:                                               ; preds = %27
  br label %102

45:                                               ; preds = %2
  br label %46

46:                                               ; preds = %70, %45
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = icmp ne %struct.TYPE_3__* %47, null
  br i1 %48, label %49, label %74

49:                                               ; preds = %46
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @TREE_CODE(i32 %52)
  switch i32 %53, label %68 [
    i32 134, label %54
    i32 133, label %56
    i32 130, label %67
  ]

54:                                               ; preds = %49
  %55 = call i32 @warning(i32 0, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0))
  br label %102

56:                                               ; preds = %49
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @OMP_CLAUSES(i32 %59)
  %61 = load i32, i32* @OMP_CLAUSE_ORDERED, align 4
  %62 = call i32* @find_omp_clause(i32 %60, i32 %61)
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = call i32 @warning(i32 0, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.3, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %56
  br label %102

67:                                               ; preds = %49
  br label %102

68:                                               ; preds = %49
  br label %69

69:                                               ; preds = %68
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  store %struct.TYPE_3__* %73, %struct.TYPE_3__** %4, align 8
  br label %46

74:                                               ; preds = %46
  br label %102

75:                                               ; preds = %2
  br label %76

76:                                               ; preds = %96, %75
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %78 = icmp ne %struct.TYPE_3__* %77, null
  br i1 %78, label %79, label %100

79:                                               ; preds = %76
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @TREE_CODE(i32 %82)
  %84 = icmp eq i32 %83, 134
  br i1 %84, label %85, label %95

85:                                               ; preds = %79
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @OMP_CRITICAL_NAME(i32 %86)
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @OMP_CRITICAL_NAME(i32 %90)
  %92 = icmp eq i32 %87, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %85
  %94 = call i32 @warning(i32 0, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i64 0, i64 0))
  br label %102

95:                                               ; preds = %85, %79
  br label %96

96:                                               ; preds = %95
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  store %struct.TYPE_3__* %99, %struct.TYPE_3__** %4, align 8
  br label %76

100:                                              ; preds = %76
  br label %102

101:                                              ; preds = %2
  br label %102

102:                                              ; preds = %16, %18, %35, %37, %54, %66, %67, %93, %101, %100, %74, %44, %25
  ret void
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i32* @find_omp_clause(i32, i32) #1

declare dso_local i32 @OMP_CLAUSES(i32) #1

declare dso_local i32 @OMP_CRITICAL_NAME(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
