; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditfilter.c_audit_del_rule.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditfilter.c_audit_del_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_entry = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i32, %struct.audit_tree*, %struct.audit_watch* }
%struct.audit_tree = type { i32 }
%struct.audit_watch = type { i32 }
%struct.list_head = type { i32 }

@inotify_list = common dso_local global i32 0, align 4
@audit_filter_mutex = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@audit_free_rule_rcu = common dso_local global i32 0, align 4
@AUDIT_FILTER_TYPE = common dso_local global i64 0, align 8
@AUDIT_FILTER_USER = common dso_local global i64 0, align 8
@audit_n_rules = common dso_local global i32 0, align 4
@audit_signals = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audit_entry*)* @audit_del_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audit_del_rule(%struct.audit_entry* %0) #0 {
  %2 = alloca %struct.audit_entry*, align 8
  %3 = alloca %struct.audit_entry*, align 8
  %4 = alloca %struct.audit_watch*, align 8
  %5 = alloca %struct.audit_tree*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca i32, align 4
  store %struct.audit_entry* %0, %struct.audit_entry** %2, align 8
  %8 = load %struct.audit_entry*, %struct.audit_entry** %2, align 8
  %9 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  %11 = load %struct.audit_watch*, %struct.audit_watch** %10, align 8
  store %struct.audit_watch* %11, %struct.audit_watch** %4, align 8
  %12 = load %struct.audit_entry*, %struct.audit_entry** %2, align 8
  %13 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load %struct.audit_tree*, %struct.audit_tree** %14, align 8
  store %struct.audit_tree* %15, %struct.audit_tree** %5, align 8
  %16 = load i32, i32* @inotify_list, align 4
  %17 = call i32 @LIST_HEAD(i32 %16)
  store i32 0, i32* %7, align 4
  %18 = call i32 @mutex_lock(i32* @audit_filter_mutex)
  %19 = load %struct.audit_entry*, %struct.audit_entry** %2, align 8
  %20 = call %struct.audit_entry* @audit_find_rule(%struct.audit_entry* %19, %struct.list_head** %6)
  store %struct.audit_entry* %20, %struct.audit_entry** %3, align 8
  %21 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %22 = icmp ne %struct.audit_entry* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %1
  %24 = call i32 @mutex_unlock(i32* @audit_filter_mutex)
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %65

27:                                               ; preds = %1
  %28 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %29 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  %31 = load %struct.audit_watch*, %struct.audit_watch** %30, align 8
  %32 = icmp ne %struct.audit_watch* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %35 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %34, i32 0, i32 1
  %36 = call i32 @audit_remove_watch_rule(%struct.TYPE_3__* %35, i32* @inotify_list)
  br label %37

37:                                               ; preds = %33, %27
  %38 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %39 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load %struct.audit_tree*, %struct.audit_tree** %40, align 8
  %42 = icmp ne %struct.audit_tree* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %45 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %44, i32 0, i32 1
  %46 = call i32 @audit_remove_tree_rule(%struct.TYPE_3__* %45)
  br label %47

47:                                               ; preds = %43, %37
  %48 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %49 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %48, i32 0, i32 2
  %50 = call i32 @list_del_rcu(i32* %49)
  %51 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %52 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = call i32 @list_del(i32* %53)
  %55 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %56 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %55, i32 0, i32 0
  %57 = load i32, i32* @audit_free_rule_rcu, align 4
  %58 = call i32 @call_rcu(i32* %56, i32 %57)
  %59 = call i32 @mutex_unlock(i32* @audit_filter_mutex)
  %60 = call i32 @list_empty(i32* @inotify_list)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %47
  %63 = call i32 @audit_inotify_unregister(i32* @inotify_list)
  br label %64

64:                                               ; preds = %62, %47
  br label %65

65:                                               ; preds = %64, %23
  %66 = load %struct.audit_watch*, %struct.audit_watch** %4, align 8
  %67 = icmp ne %struct.audit_watch* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct.audit_watch*, %struct.audit_watch** %4, align 8
  %70 = call i32 @audit_put_watch(%struct.audit_watch* %69)
  br label %71

71:                                               ; preds = %68, %65
  %72 = load %struct.audit_tree*, %struct.audit_tree** %5, align 8
  %73 = icmp ne %struct.audit_tree* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load %struct.audit_tree*, %struct.audit_tree** %5, align 8
  %76 = call i32 @audit_put_tree(%struct.audit_tree* %75)
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.audit_entry* @audit_find_rule(%struct.audit_entry*, %struct.list_head**) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @audit_remove_watch_rule(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @audit_remove_tree_rule(%struct.TYPE_3__*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @audit_inotify_unregister(i32*) #1

declare dso_local i32 @audit_put_watch(%struct.audit_watch*) #1

declare dso_local i32 @audit_put_tree(%struct.audit_tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
