; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_debug_decision_0.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_debug_decision_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decision = type { %struct.decision*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.decision* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"(nil)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.decision*, i32, i32)* @debug_decision_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_decision_0(%struct.decision* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.decision*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.decision*, align 8
  %8 = alloca i32, align 4
  store %struct.decision* %0, %struct.decision** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %50

12:                                               ; preds = %3
  %13 = load %struct.decision*, %struct.decision** %4, align 8
  %14 = icmp eq %struct.decision* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %23, %15
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @putc(i8 signext 32, i32 %21)
  br label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %8, align 4
  br label %16

26:                                               ; preds = %16
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %50

29:                                               ; preds = %12
  %30 = load %struct.decision*, %struct.decision** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @debug_decision_1(%struct.decision* %30, i32 %31)
  %33 = load %struct.decision*, %struct.decision** %4, align 8
  %34 = getelementptr inbounds %struct.decision, %struct.decision* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.decision*, %struct.decision** %35, align 8
  store %struct.decision* %36, %struct.decision** %7, align 8
  br label %37

37:                                               ; preds = %46, %29
  %38 = load %struct.decision*, %struct.decision** %7, align 8
  %39 = icmp ne %struct.decision* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load %struct.decision*, %struct.decision** %7, align 8
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 2
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %44, 1
  call void @debug_decision_0(%struct.decision* %41, i32 %43, i32 %45)
  br label %46

46:                                               ; preds = %40
  %47 = load %struct.decision*, %struct.decision** %7, align 8
  %48 = getelementptr inbounds %struct.decision, %struct.decision* %47, i32 0, i32 0
  %49 = load %struct.decision*, %struct.decision** %48, align 8
  store %struct.decision* %49, %struct.decision** %7, align 8
  br label %37

50:                                               ; preds = %11, %26, %37
  ret void
}

declare dso_local i32 @putc(i8 signext, i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @debug_decision_1(%struct.decision*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
