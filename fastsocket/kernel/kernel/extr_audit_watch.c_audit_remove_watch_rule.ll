; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_audit_watch.c_audit_remove_watch_rule.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_audit_watch.c_audit_remove_watch_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_krule = type { i32, %struct.audit_watch* }
%struct.audit_watch = type { i32, %struct.audit_parent* }
%struct.audit_parent = type { i32, i32, i32 }
%struct.list_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audit_remove_watch_rule(%struct.audit_krule* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.audit_krule*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.audit_watch*, align 8
  %6 = alloca %struct.audit_parent*, align 8
  store %struct.audit_krule* %0, %struct.audit_krule** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %7 = load %struct.audit_krule*, %struct.audit_krule** %3, align 8
  %8 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %7, i32 0, i32 1
  %9 = load %struct.audit_watch*, %struct.audit_watch** %8, align 8
  store %struct.audit_watch* %9, %struct.audit_watch** %5, align 8
  %10 = load %struct.audit_watch*, %struct.audit_watch** %5, align 8
  %11 = getelementptr inbounds %struct.audit_watch, %struct.audit_watch* %10, i32 0, i32 1
  %12 = load %struct.audit_parent*, %struct.audit_parent** %11, align 8
  store %struct.audit_parent* %12, %struct.audit_parent** %6, align 8
  %13 = load %struct.audit_krule*, %struct.audit_krule** %3, align 8
  %14 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %13, i32 0, i32 0
  %15 = call i32 @list_del(i32* %14)
  %16 = load %struct.audit_watch*, %struct.audit_watch** %5, align 8
  %17 = getelementptr inbounds %struct.audit_watch, %struct.audit_watch* %16, i32 0, i32 0
  %18 = call i64 @list_empty(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %2
  %21 = load %struct.audit_watch*, %struct.audit_watch** %5, align 8
  %22 = call i32 @audit_remove_watch(%struct.audit_watch* %21)
  %23 = load %struct.audit_parent*, %struct.audit_parent** %6, align 8
  %24 = getelementptr inbounds %struct.audit_parent, %struct.audit_parent* %23, i32 0, i32 2
  %25 = call i64 @list_empty(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %20
  %28 = load %struct.audit_parent*, %struct.audit_parent** %6, align 8
  %29 = getelementptr inbounds %struct.audit_parent, %struct.audit_parent* %28, i32 0, i32 1
  %30 = call i64 @pin_inotify_watch(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.audit_parent*, %struct.audit_parent** %6, align 8
  %34 = getelementptr inbounds %struct.audit_parent, %struct.audit_parent* %33, i32 0, i32 0
  %35 = load %struct.list_head*, %struct.list_head** %4, align 8
  %36 = call i32 @list_add(i32* %34, %struct.list_head* %35)
  br label %37

37:                                               ; preds = %32, %27
  br label %38

38:                                               ; preds = %37, %20
  br label %39

39:                                               ; preds = %38, %2
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @audit_remove_watch(%struct.audit_watch*) #1

declare dso_local i64 @pin_inotify_watch(i32*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
