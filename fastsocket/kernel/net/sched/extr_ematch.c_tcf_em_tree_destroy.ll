; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_ematch.c_tcf_em_tree_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_ematch.c_tcf_em_tree_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.tcf_ematch_tree = type { i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.tcf_ematch = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32, i32 (%struct.tcf_proto*, %struct.tcf_ematch*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcf_em_tree_destroy(%struct.tcf_proto* %0, %struct.tcf_ematch_tree* %1) #0 {
  %3 = alloca %struct.tcf_proto*, align 8
  %4 = alloca %struct.tcf_ematch_tree*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcf_ematch*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %3, align 8
  store %struct.tcf_ematch_tree* %1, %struct.tcf_ematch_tree** %4, align 8
  %7 = load %struct.tcf_ematch_tree*, %struct.tcf_ematch_tree** %4, align 8
  %8 = getelementptr inbounds %struct.tcf_ematch_tree, %struct.tcf_ematch_tree* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %76

12:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %63, %12
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.tcf_ematch_tree*, %struct.tcf_ematch_tree** %4, align 8
  %16 = getelementptr inbounds %struct.tcf_ematch_tree, %struct.tcf_ematch_tree* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %66

20:                                               ; preds = %13
  %21 = load %struct.tcf_ematch_tree*, %struct.tcf_ematch_tree** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call %struct.tcf_ematch* @tcf_em_get_match(%struct.tcf_ematch_tree* %21, i32 %22)
  store %struct.tcf_ematch* %23, %struct.tcf_ematch** %6, align 8
  %24 = load %struct.tcf_ematch*, %struct.tcf_ematch** %6, align 8
  %25 = getelementptr inbounds %struct.tcf_ematch, %struct.tcf_ematch* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %28, label %62

28:                                               ; preds = %20
  %29 = load %struct.tcf_ematch*, %struct.tcf_ematch** %6, align 8
  %30 = getelementptr inbounds %struct.tcf_ematch, %struct.tcf_ematch* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32 (%struct.tcf_proto*, %struct.tcf_ematch*)*, i32 (%struct.tcf_proto*, %struct.tcf_ematch*)** %32, align 8
  %34 = icmp ne i32 (%struct.tcf_proto*, %struct.tcf_ematch*)* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = load %struct.tcf_ematch*, %struct.tcf_ematch** %6, align 8
  %37 = getelementptr inbounds %struct.tcf_ematch, %struct.tcf_ematch* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32 (%struct.tcf_proto*, %struct.tcf_ematch*)*, i32 (%struct.tcf_proto*, %struct.tcf_ematch*)** %39, align 8
  %41 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %42 = load %struct.tcf_ematch*, %struct.tcf_ematch** %6, align 8
  %43 = call i32 %40(%struct.tcf_proto* %41, %struct.tcf_ematch* %42)
  br label %55

44:                                               ; preds = %28
  %45 = load %struct.tcf_ematch*, %struct.tcf_ematch** %6, align 8
  %46 = call i32 @tcf_em_is_simple(%struct.tcf_ematch* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = load %struct.tcf_ematch*, %struct.tcf_ematch** %6, align 8
  %50 = getelementptr inbounds %struct.tcf_ematch, %struct.tcf_ematch* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 @kfree(i8* %52)
  br label %54

54:                                               ; preds = %48, %44
  br label %55

55:                                               ; preds = %54, %35
  %56 = load %struct.tcf_ematch*, %struct.tcf_ematch** %6, align 8
  %57 = getelementptr inbounds %struct.tcf_ematch, %struct.tcf_ematch* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @module_put(i32 %60)
  br label %62

62:                                               ; preds = %55, %20
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %13

66:                                               ; preds = %13
  %67 = load %struct.tcf_ematch_tree*, %struct.tcf_ematch_tree** %4, align 8
  %68 = getelementptr inbounds %struct.tcf_ematch_tree, %struct.tcf_ematch_tree* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  %70 = load %struct.tcf_ematch_tree*, %struct.tcf_ematch_tree** %4, align 8
  %71 = getelementptr inbounds %struct.tcf_ematch_tree, %struct.tcf_ematch_tree* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @kfree(i8* %72)
  %74 = load %struct.tcf_ematch_tree*, %struct.tcf_ematch_tree** %4, align 8
  %75 = getelementptr inbounds %struct.tcf_ematch_tree, %struct.tcf_ematch_tree* %74, i32 0, i32 0
  store i8* null, i8** %75, align 8
  br label %76

76:                                               ; preds = %66, %11
  ret void
}

declare dso_local %struct.tcf_ematch* @tcf_em_get_match(%struct.tcf_ematch_tree*, i32) #1

declare dso_local i32 @tcf_em_is_simple(%struct.tcf_ematch*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
