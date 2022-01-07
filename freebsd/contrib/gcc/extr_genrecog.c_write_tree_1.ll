; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_write_tree_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_write_tree_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decision_head = type { %struct.TYPE_2__*, %struct.decision* }
%struct.TYPE_2__ = type { i32 }
%struct.decision = type { %struct.decision*, i32, i64 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.decision_head*, i32, i32)* @write_tree_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_tree_1(%struct.decision_head* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.decision_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.decision*, align 8
  %8 = alloca %struct.decision*, align 8
  %9 = alloca i32, align 4
  store %struct.decision_head* %0, %struct.decision_head** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.decision_head*, %struct.decision_head** %4, align 8
  %11 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %10, i32 0, i32 1
  %12 = load %struct.decision*, %struct.decision** %11, align 8
  store %struct.decision* %12, %struct.decision** %7, align 8
  br label %13

13:                                               ; preds = %49, %3
  %14 = load %struct.decision*, %struct.decision** %7, align 8
  %15 = icmp ne %struct.decision* %14, null
  br i1 %15, label %16, label %51

16:                                               ; preds = %13
  %17 = load %struct.decision*, %struct.decision** %7, align 8
  %18 = load %struct.decision_head*, %struct.decision_head** %4, align 8
  %19 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %18, i32 0, i32 1
  %20 = load %struct.decision*, %struct.decision** %19, align 8
  %21 = icmp ne %struct.decision* %17, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load %struct.decision*, %struct.decision** %7, align 8
  %24 = getelementptr inbounds %struct.decision, %struct.decision* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.decision*, %struct.decision** %7, align 8
  %29 = getelementptr inbounds %struct.decision, %struct.decision* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @OUTPUT_LABEL(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %27, %22, %16
  %33 = load %struct.decision*, %struct.decision** %7, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call %struct.decision* @write_switch(%struct.decision* %33, i32 %34)
  store %struct.decision* %35, %struct.decision** %8, align 8
  %36 = load %struct.decision*, %struct.decision** %7, align 8
  %37 = load %struct.decision*, %struct.decision** %8, align 8
  %38 = icmp ne %struct.decision* %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 0, i32* %9, align 4
  br label %48

40:                                               ; preds = %32
  %41 = load %struct.decision*, %struct.decision** %7, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @write_node(%struct.decision* %41, i32 %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.decision*, %struct.decision** %7, align 8
  %46 = getelementptr inbounds %struct.decision, %struct.decision* %45, i32 0, i32 0
  %47 = load %struct.decision*, %struct.decision** %46, align 8
  store %struct.decision* %47, %struct.decision** %8, align 8
  br label %48

48:                                               ; preds = %40, %39
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.decision*, %struct.decision** %8, align 8
  store %struct.decision* %50, %struct.decision** %7, align 8
  br label %13

51:                                               ; preds = %13
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %51
  %55 = load %struct.decision_head*, %struct.decision_head** %4, align 8
  %56 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load %struct.decision_head*, %struct.decision_head** %4, align 8
  %59 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @write_afterward(%struct.TYPE_2__* %57, i32 %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %54, %51
  ret void
}

declare dso_local i32 @OUTPUT_LABEL(i8*, i32) #1

declare dso_local %struct.decision* @write_switch(%struct.decision*, i32) #1

declare dso_local i32 @write_node(%struct.decision*, i32, i32) #1

declare dso_local i32 @write_afterward(%struct.TYPE_2__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
