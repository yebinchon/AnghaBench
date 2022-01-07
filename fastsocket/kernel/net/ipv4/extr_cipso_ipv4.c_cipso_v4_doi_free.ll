; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_doi_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_doi_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cipso_v4_doi = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.cipso_v4_doi*, %struct.cipso_v4_doi* }
%struct.TYPE_5__ = type { %struct.cipso_v4_doi*, %struct.cipso_v4_doi* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cipso_v4_doi_free(%struct.cipso_v4_doi* %0) #0 {
  %2 = alloca %struct.cipso_v4_doi*, align 8
  store %struct.cipso_v4_doi* %0, %struct.cipso_v4_doi** %2, align 8
  %3 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %2, align 8
  %4 = icmp eq %struct.cipso_v4_doi* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %46

6:                                                ; preds = %1
  %7 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %2, align 8
  %8 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %43 [
    i32 128, label %10
  ]

10:                                               ; preds = %6
  %11 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %2, align 8
  %12 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %16, align 8
  %18 = call i32 @kfree(%struct.cipso_v4_doi* %17)
  %19 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %2, align 8
  %20 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %24, align 8
  %26 = call i32 @kfree(%struct.cipso_v4_doi* %25)
  %27 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %2, align 8
  %28 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %32, align 8
  %34 = call i32 @kfree(%struct.cipso_v4_doi* %33)
  %35 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %2, align 8
  %36 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %40, align 8
  %42 = call i32 @kfree(%struct.cipso_v4_doi* %41)
  br label %43

43:                                               ; preds = %6, %10
  %44 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %2, align 8
  %45 = call i32 @kfree(%struct.cipso_v4_doi* %44)
  br label %46

46:                                               ; preds = %43, %5
  ret void
}

declare dso_local i32 @kfree(%struct.cipso_v4_doi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
