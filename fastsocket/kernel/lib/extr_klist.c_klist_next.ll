; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_klist.c_klist_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_klist.c_klist_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.klist_node = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_6__* }
%struct.klist_iter = type { %struct.klist_node*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { void (%struct.klist_node*)*, i32, %struct.TYPE_6__ }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.klist_node* @klist_next(%struct.klist_iter* %0) #0 {
  %2 = alloca %struct.klist_iter*, align 8
  %3 = alloca void (%struct.klist_node*)*, align 8
  %4 = alloca %struct.klist_node*, align 8
  %5 = alloca %struct.klist_node*, align 8
  store %struct.klist_iter* %0, %struct.klist_iter** %2, align 8
  %6 = load %struct.klist_iter*, %struct.klist_iter** %2, align 8
  %7 = getelementptr inbounds %struct.klist_iter, %struct.klist_iter* %6, i32 0, i32 1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load void (%struct.klist_node*)*, void (%struct.klist_node*)** %9, align 8
  store void (%struct.klist_node*)* %10, void (%struct.klist_node*)** %3, align 8
  %11 = load %struct.klist_iter*, %struct.klist_iter** %2, align 8
  %12 = getelementptr inbounds %struct.klist_iter, %struct.klist_iter* %11, i32 0, i32 0
  %13 = load %struct.klist_node*, %struct.klist_node** %12, align 8
  store %struct.klist_node* %13, %struct.klist_node** %4, align 8
  %14 = load %struct.klist_iter*, %struct.klist_iter** %2, align 8
  %15 = getelementptr inbounds %struct.klist_iter, %struct.klist_iter* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.klist_node*, %struct.klist_node** %4, align 8
  %20 = icmp ne %struct.klist_node* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %1
  %22 = load %struct.klist_node*, %struct.klist_node** %4, align 8
  %23 = getelementptr inbounds %struct.klist_node, %struct.klist_node* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = call %struct.klist_node* @to_klist_node(%struct.TYPE_6__* %25)
  store %struct.klist_node* %26, %struct.klist_node** %5, align 8
  %27 = load %struct.klist_node*, %struct.klist_node** %4, align 8
  %28 = call i32 @klist_dec_and_del(%struct.klist_node* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  store void (%struct.klist_node*)* null, void (%struct.klist_node*)** %3, align 8
  br label %31

31:                                               ; preds = %30, %21
  br label %40

32:                                               ; preds = %1
  %33 = load %struct.klist_iter*, %struct.klist_iter** %2, align 8
  %34 = getelementptr inbounds %struct.klist_iter, %struct.klist_iter* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = call %struct.klist_node* @to_klist_node(%struct.TYPE_6__* %38)
  store %struct.klist_node* %39, %struct.klist_node** %5, align 8
  br label %40

40:                                               ; preds = %32, %31
  %41 = load %struct.klist_iter*, %struct.klist_iter** %2, align 8
  %42 = getelementptr inbounds %struct.klist_iter, %struct.klist_iter* %41, i32 0, i32 0
  store %struct.klist_node* null, %struct.klist_node** %42, align 8
  br label %43

43:                                               ; preds = %66, %40
  %44 = load %struct.klist_node*, %struct.klist_node** %5, align 8
  %45 = load %struct.klist_iter*, %struct.klist_iter** %2, align 8
  %46 = getelementptr inbounds %struct.klist_iter, %struct.klist_iter* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = call %struct.klist_node* @to_klist_node(%struct.TYPE_6__* %48)
  %50 = icmp ne %struct.klist_node* %44, %49
  br i1 %50, label %51, label %72

51:                                               ; preds = %43
  %52 = load %struct.klist_node*, %struct.klist_node** %5, align 8
  %53 = call i32 @knode_dead(%struct.klist_node* %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i64 @likely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %51
  %60 = load %struct.klist_node*, %struct.klist_node** %5, align 8
  %61 = getelementptr inbounds %struct.klist_node, %struct.klist_node* %60, i32 0, i32 1
  %62 = call i32 @kref_get(i32* %61)
  %63 = load %struct.klist_node*, %struct.klist_node** %5, align 8
  %64 = load %struct.klist_iter*, %struct.klist_iter** %2, align 8
  %65 = getelementptr inbounds %struct.klist_iter, %struct.klist_iter* %64, i32 0, i32 0
  store %struct.klist_node* %63, %struct.klist_node** %65, align 8
  br label %72

66:                                               ; preds = %51
  %67 = load %struct.klist_node*, %struct.klist_node** %5, align 8
  %68 = getelementptr inbounds %struct.klist_node, %struct.klist_node* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = call %struct.klist_node* @to_klist_node(%struct.TYPE_6__* %70)
  store %struct.klist_node* %71, %struct.klist_node** %5, align 8
  br label %43

72:                                               ; preds = %59, %43
  %73 = load %struct.klist_iter*, %struct.klist_iter** %2, align 8
  %74 = getelementptr inbounds %struct.klist_iter, %struct.klist_iter* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = call i32 @spin_unlock(i32* %76)
  %78 = load void (%struct.klist_node*)*, void (%struct.klist_node*)** %3, align 8
  %79 = icmp ne void (%struct.klist_node*)* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %72
  %81 = load %struct.klist_node*, %struct.klist_node** %4, align 8
  %82 = icmp ne %struct.klist_node* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load void (%struct.klist_node*)*, void (%struct.klist_node*)** %3, align 8
  %85 = load %struct.klist_node*, %struct.klist_node** %4, align 8
  call void %84(%struct.klist_node* %85)
  br label %86

86:                                               ; preds = %83, %80, %72
  %87 = load %struct.klist_iter*, %struct.klist_iter** %2, align 8
  %88 = getelementptr inbounds %struct.klist_iter, %struct.klist_iter* %87, i32 0, i32 0
  %89 = load %struct.klist_node*, %struct.klist_node** %88, align 8
  ret %struct.klist_node* %89
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.klist_node* @to_klist_node(%struct.TYPE_6__*) #1

declare dso_local i32 @klist_dec_and_del(%struct.klist_node*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @knode_dead(%struct.klist_node*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
