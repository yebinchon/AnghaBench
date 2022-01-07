; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_debug_decision_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_debug_decision_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decision = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.decision_test* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.decision_test = type { %struct.decision_test* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"(nil)\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" + \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"} %d n %d a %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.decision*, i32)* @debug_decision_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_decision_1(%struct.decision* %0, i32 %1) #0 {
  %3 = alloca %struct.decision*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.decision_test*, align 8
  store %struct.decision* %0, %struct.decision** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.decision*, %struct.decision** %3, align 8
  %8 = icmp eq %struct.decision* %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %17, %9
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 @putc(i8 signext 32, i32 %15)
  br label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %5, align 4
  br label %10

20:                                               ; preds = %10
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %88

23:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %31, %23
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 @putc(i8 signext 32, i32 %29)
  br label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %24

34:                                               ; preds = %24
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 @putc(i8 signext 123, i32 %35)
  %37 = load %struct.decision*, %struct.decision** %3, align 8
  %38 = getelementptr inbounds %struct.decision, %struct.decision* %37, i32 0, i32 3
  %39 = load %struct.decision_test*, %struct.decision_test** %38, align 8
  store %struct.decision_test* %39, %struct.decision_test** %6, align 8
  %40 = load %struct.decision_test*, %struct.decision_test** %6, align 8
  %41 = icmp ne %struct.decision_test* %40, null
  br i1 %41, label %42, label %56

42:                                               ; preds = %34
  %43 = load %struct.decision_test*, %struct.decision_test** %6, align 8
  %44 = call i32 @debug_decision_2(%struct.decision_test* %43)
  br label %45

45:                                               ; preds = %50, %42
  %46 = load %struct.decision_test*, %struct.decision_test** %6, align 8
  %47 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %46, i32 0, i32 0
  %48 = load %struct.decision_test*, %struct.decision_test** %47, align 8
  store %struct.decision_test* %48, %struct.decision_test** %6, align 8
  %49 = icmp ne %struct.decision_test* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i32, i32* @stderr, align 4
  %52 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load %struct.decision_test*, %struct.decision_test** %6, align 8
  %54 = call i32 @debug_decision_2(%struct.decision_test* %53)
  br label %45

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %34
  %57 = load i32, i32* @stderr, align 4
  %58 = load %struct.decision*, %struct.decision** %3, align 8
  %59 = getelementptr inbounds %struct.decision, %struct.decision* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.decision*, %struct.decision** %3, align 8
  %62 = getelementptr inbounds %struct.decision, %struct.decision* %61, i32 0, i32 2
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = icmp ne %struct.TYPE_3__* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %56
  %66 = load %struct.decision*, %struct.decision** %3, align 8
  %67 = getelementptr inbounds %struct.decision, %struct.decision* %66, i32 0, i32 2
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  br label %72

71:                                               ; preds = %56
  br label %72

72:                                               ; preds = %71, %65
  %73 = phi i32 [ %70, %65 ], [ -1, %71 ]
  %74 = load %struct.decision*, %struct.decision** %3, align 8
  %75 = getelementptr inbounds %struct.decision, %struct.decision* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = icmp ne %struct.TYPE_4__* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load %struct.decision*, %struct.decision** %3, align 8
  %80 = getelementptr inbounds %struct.decision, %struct.decision* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  br label %85

84:                                               ; preds = %72
  br label %85

85:                                               ; preds = %84, %78
  %86 = phi i32 [ %83, %78 ], [ -1, %84 ]
  %87 = call i32 @fprintf(i32 %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %73, i32 %86)
  br label %88

88:                                               ; preds = %85, %20
  ret void
}

declare dso_local i32 @putc(i8 signext, i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @debug_decision_2(%struct.decision_test*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
