; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_protoize.c_visit_each_hash_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_protoize.c_visit_each_hash_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__*, i64 }

@HASH_TABLE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, void (%struct.TYPE_7__*)*)* @visit_each_hash_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @visit_each_hash_node(%struct.TYPE_7__* %0, void (%struct.TYPE_7__*)* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca void (%struct.TYPE_7__*)*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store void (%struct.TYPE_7__*)* %1, void (%struct.TYPE_7__*)** %4, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %5, align 8
  br label %8

8:                                                ; preds = %37, %2
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = load i64, i64* @HASH_TABLE_SIZE, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i64 %11
  %13 = icmp ult %struct.TYPE_7__* %9, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %14
  %20 = load void (%struct.TYPE_7__*)*, void (%struct.TYPE_7__*)** %4, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  call void %20(%struct.TYPE_7__* %21)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %6, align 8
  br label %25

25:                                               ; preds = %31, %19
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = icmp ne %struct.TYPE_7__* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load void (%struct.TYPE_7__*)*, void (%struct.TYPE_7__*)** %4, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  call void %29(%struct.TYPE_7__* %30)
  br label %31

31:                                               ; preds = %28
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %6, align 8
  br label %25

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35, %14
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 1
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %5, align 8
  br label %8

40:                                               ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
