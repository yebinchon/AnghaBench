; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_audit_tree.c_BUG.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_audit_tree.c_BUG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_krule = type { %struct.audit_tree*, i32 }
%struct.audit_tree = type { i32, i32, i32, i32*, i32 }

@hash_lock = common dso_local global i32 0, align 4
@prune_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @audit_remove_tree_rule(%struct.audit_krule* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.audit_krule*, align 8
  %4 = alloca %struct.audit_tree*, align 8
  store %struct.audit_krule* %0, %struct.audit_krule** %3, align 8
  %5 = load %struct.audit_krule*, %struct.audit_krule** %3, align 8
  %6 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %5, i32 0, i32 0
  %7 = load %struct.audit_tree*, %struct.audit_tree** %6, align 8
  store %struct.audit_tree* %7, %struct.audit_tree** %4, align 8
  %8 = load %struct.audit_tree*, %struct.audit_tree** %4, align 8
  %9 = icmp ne %struct.audit_tree* %8, null
  br i1 %9, label %10, label %43

10:                                               ; preds = %1
  %11 = call i32 @spin_lock(i32* @hash_lock)
  %12 = load %struct.audit_krule*, %struct.audit_krule** %3, align 8
  %13 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %12, i32 0, i32 1
  %14 = call i32 @list_del_init(i32* %13)
  %15 = load %struct.audit_tree*, %struct.audit_tree** %4, align 8
  %16 = getelementptr inbounds %struct.audit_tree, %struct.audit_tree* %15, i32 0, i32 4
  %17 = call i64 @list_empty(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %10
  %20 = load %struct.audit_tree*, %struct.audit_tree** %4, align 8
  %21 = getelementptr inbounds %struct.audit_tree, %struct.audit_tree* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %19
  %25 = load %struct.audit_tree*, %struct.audit_tree** %4, align 8
  %26 = getelementptr inbounds %struct.audit_tree, %struct.audit_tree* %25, i32 0, i32 3
  store i32* null, i32** %26, align 8
  %27 = load %struct.audit_tree*, %struct.audit_tree** %4, align 8
  %28 = getelementptr inbounds %struct.audit_tree, %struct.audit_tree* %27, i32 0, i32 2
  %29 = call i32 @list_del_init(i32* %28)
  %30 = load %struct.audit_tree*, %struct.audit_tree** %4, align 8
  %31 = getelementptr inbounds %struct.audit_tree, %struct.audit_tree* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.audit_tree*, %struct.audit_tree** %4, align 8
  %33 = getelementptr inbounds %struct.audit_tree, %struct.audit_tree* %32, i32 0, i32 1
  %34 = call i32 @list_move(i32* %33, i32* @prune_list)
  %35 = load %struct.audit_krule*, %struct.audit_krule** %3, align 8
  %36 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %35, i32 0, i32 0
  store %struct.audit_tree* null, %struct.audit_tree** %36, align 8
  %37 = call i32 @spin_unlock(i32* @hash_lock)
  %38 = call i32 (...) @audit_schedule_prune()
  store i32 1, i32* %2, align 4
  br label %44

39:                                               ; preds = %19, %10
  %40 = load %struct.audit_krule*, %struct.audit_krule** %3, align 8
  %41 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %40, i32 0, i32 0
  store %struct.audit_tree* null, %struct.audit_tree** %41, align 8
  %42 = call i32 @spin_unlock(i32* @hash_lock)
  store i32 1, i32* %2, align 4
  br label %44

43:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %39, %24
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @audit_schedule_prune(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
