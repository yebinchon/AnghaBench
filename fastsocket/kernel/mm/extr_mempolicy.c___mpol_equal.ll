; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c___mpol_equal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c___mpol_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mempolicy = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MPOL_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mpol_equal(%struct.mempolicy* %0, %struct.mempolicy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mempolicy*, align 8
  %5 = alloca %struct.mempolicy*, align 8
  store %struct.mempolicy* %0, %struct.mempolicy** %4, align 8
  store %struct.mempolicy* %1, %struct.mempolicy** %5, align 8
  %6 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %7 = icmp ne %struct.mempolicy* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %10 = icmp ne %struct.mempolicy* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8, %2
  store i32 0, i32* %3, align 4
  br label %70

12:                                               ; preds = %8
  %13 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %14 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %17 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %70

21:                                               ; preds = %12
  %22 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %23 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MPOL_DEFAULT, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %29 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %30 = call i32 @mpol_match_intent(%struct.mempolicy* %28, %struct.mempolicy* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %70

33:                                               ; preds = %27, %21
  %34 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %35 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %68 [
    i32 130, label %37
    i32 129, label %37
    i32 128, label %47
  ]

37:                                               ; preds = %33, %33
  %38 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %39 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %43 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @nodes_equal(i32 %41, i32 %45)
  store i32 %46, i32* %3, align 4
  br label %70

47:                                               ; preds = %33
  %48 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %49 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %53 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %51, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %47
  %58 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %59 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %62 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %60, %63
  br label %65

65:                                               ; preds = %57, %47
  %66 = phi i1 [ false, %47 ], [ %64, %57 ]
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %3, align 4
  br label %70

68:                                               ; preds = %33
  %69 = call i32 (...) @BUG()
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %65, %37, %32, %20, %11
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @mpol_match_intent(%struct.mempolicy*, %struct.mempolicy*) #1

declare dso_local i32 @nodes_equal(i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
