; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_self_follow_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_self_follow_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pid_namespace* }
%struct.pid_namespace = type { i32 }
%struct.nameidata = type { i32 }

@current = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dentry*, %struct.nameidata*)* @proc_self_follow_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @proc_self_follow_link(%struct.dentry* %0, %struct.nameidata* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.nameidata*, align 8
  %5 = alloca %struct.pid_namespace*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.nameidata* %1, %struct.nameidata** %4, align 8
  %8 = load %struct.dentry*, %struct.dentry** %3, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.pid_namespace*, %struct.pid_namespace** %11, align 8
  store %struct.pid_namespace* %12, %struct.pid_namespace** %5, align 8
  %13 = load i32, i32* @current, align 4
  %14 = load %struct.pid_namespace*, %struct.pid_namespace** %5, align 8
  %15 = call i32 @task_tgid_nr_ns(i32 %13, %struct.pid_namespace* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  %18 = call i8* @ERR_PTR(i32 %17)
  store i8* %18, i8** %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %2
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kmalloc(i32 12, i32 %22)
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call i8* @ERR_PTR(i32 %28)
  store i8* %29, i8** %7, align 8
  br label %34

30:                                               ; preds = %21
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @sprintf(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %30, %26
  br label %35

35:                                               ; preds = %34, %2
  %36 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @nd_set_link(%struct.nameidata* %36, i8* %37)
  ret i8* null
}

declare dso_local i32 @task_tgid_nr_ns(i32, %struct.pid_namespace*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @nd_set_link(%struct.nameidata*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
