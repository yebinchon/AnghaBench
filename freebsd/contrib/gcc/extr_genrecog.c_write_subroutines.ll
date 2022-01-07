; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_write_subroutines.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_write_subroutines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decision_head = type { %struct.decision* }
%struct.decision = type { i64, %struct.decision_head, %struct.decision* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.decision_head*, i32)* @write_subroutines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_subroutines(%struct.decision_head* %0, i32 %1) #0 {
  %3 = alloca %struct.decision_head*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.decision*, align 8
  store %struct.decision_head* %0, %struct.decision_head** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.decision_head*, %struct.decision_head** %3, align 8
  %7 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %6, i32 0, i32 0
  %8 = load %struct.decision*, %struct.decision** %7, align 8
  store %struct.decision* %8, %struct.decision** %5, align 8
  br label %9

9:                                                ; preds = %23, %2
  %10 = load %struct.decision*, %struct.decision** %5, align 8
  %11 = icmp ne %struct.decision* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %9
  %13 = load %struct.decision*, %struct.decision** %5, align 8
  %14 = getelementptr inbounds %struct.decision, %struct.decision* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %14, i32 0, i32 0
  %16 = load %struct.decision*, %struct.decision** %15, align 8
  %17 = icmp ne %struct.decision* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.decision*, %struct.decision** %5, align 8
  %20 = getelementptr inbounds %struct.decision, %struct.decision* %19, i32 0, i32 1
  %21 = load i32, i32* %4, align 4
  call void @write_subroutines(%struct.decision_head* %20, i32 %21)
  br label %22

22:                                               ; preds = %18, %12
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.decision*, %struct.decision** %5, align 8
  %25 = getelementptr inbounds %struct.decision, %struct.decision* %24, i32 0, i32 2
  %26 = load %struct.decision*, %struct.decision** %25, align 8
  store %struct.decision* %26, %struct.decision** %5, align 8
  br label %9

27:                                               ; preds = %9
  %28 = load %struct.decision_head*, %struct.decision_head** %3, align 8
  %29 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %28, i32 0, i32 0
  %30 = load %struct.decision*, %struct.decision** %29, align 8
  %31 = getelementptr inbounds %struct.decision, %struct.decision* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load %struct.decision_head*, %struct.decision_head** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @write_subroutine(%struct.decision_head* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %27
  ret void
}

declare dso_local i32 @write_subroutine(%struct.decision_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
