; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_audit_watch.c_audit_init_parent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_audit_watch.c_audit_init_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_parent = type { i32, i64, i32 }
%struct.nameidata = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@audit_ih = common dso_local global i32 0, align 4
@AUDIT_IN_WATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.audit_parent* (%struct.nameidata*)* @audit_init_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.audit_parent* @audit_init_parent(%struct.nameidata* %0) #0 {
  %2 = alloca %struct.audit_parent*, align 8
  %3 = alloca %struct.nameidata*, align 8
  %4 = alloca %struct.audit_parent*, align 8
  %5 = alloca i32, align 4
  store %struct.nameidata* %0, %struct.nameidata** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.audit_parent* @kzalloc(i32 24, i32 %6)
  store %struct.audit_parent* %7, %struct.audit_parent** %4, align 8
  %8 = load %struct.audit_parent*, %struct.audit_parent** %4, align 8
  %9 = icmp ne %struct.audit_parent* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.audit_parent* @ERR_PTR(i32 %16)
  store %struct.audit_parent* %17, %struct.audit_parent** %2, align 8
  br label %51

18:                                               ; preds = %1
  %19 = load %struct.audit_parent*, %struct.audit_parent** %4, align 8
  %20 = getelementptr inbounds %struct.audit_parent, %struct.audit_parent* %19, i32 0, i32 2
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.audit_parent*, %struct.audit_parent** %4, align 8
  %23 = getelementptr inbounds %struct.audit_parent, %struct.audit_parent* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.audit_parent*, %struct.audit_parent** %4, align 8
  %25 = getelementptr inbounds %struct.audit_parent, %struct.audit_parent* %24, i32 0, i32 0
  %26 = call i32 @inotify_init_watch(i32* %25)
  %27 = load %struct.audit_parent*, %struct.audit_parent** %4, align 8
  %28 = getelementptr inbounds %struct.audit_parent, %struct.audit_parent* %27, i32 0, i32 0
  %29 = call i32 @get_inotify_watch(i32* %28)
  %30 = load i32, i32* @audit_ih, align 4
  %31 = load %struct.audit_parent*, %struct.audit_parent** %4, align 8
  %32 = getelementptr inbounds %struct.audit_parent, %struct.audit_parent* %31, i32 0, i32 0
  %33 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %34 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @AUDIT_IN_WATCH, align 4
  %40 = call i32 @inotify_add_watch(i32 %30, i32* %32, i32 %38, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %18
  %44 = load %struct.audit_parent*, %struct.audit_parent** %4, align 8
  %45 = getelementptr inbounds %struct.audit_parent, %struct.audit_parent* %44, i32 0, i32 0
  %46 = call i32 @audit_free_parent(i32* %45)
  %47 = load i32, i32* %5, align 4
  %48 = call %struct.audit_parent* @ERR_PTR(i32 %47)
  store %struct.audit_parent* %48, %struct.audit_parent** %2, align 8
  br label %51

49:                                               ; preds = %18
  %50 = load %struct.audit_parent*, %struct.audit_parent** %4, align 8
  store %struct.audit_parent* %50, %struct.audit_parent** %2, align 8
  br label %51

51:                                               ; preds = %49, %43, %14
  %52 = load %struct.audit_parent*, %struct.audit_parent** %2, align 8
  ret %struct.audit_parent* %52
}

declare dso_local %struct.audit_parent* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.audit_parent* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @inotify_init_watch(i32*) #1

declare dso_local i32 @get_inotify_watch(i32*) #1

declare dso_local i32 @inotify_add_watch(i32, i32*, i32, i32) #1

declare dso_local i32 @audit_free_parent(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
