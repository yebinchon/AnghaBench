; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_acct.c_acct_on.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_acct.c_acct_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { %struct.vfsmount*, %struct.TYPE_6__* }
%struct.vfsmount = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.pid_namespace = type { %struct.bsd_acct_struct* }
%struct.bsd_acct_struct = type { i32 }

@O_WRONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_LARGEFILE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@acct_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @acct_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acct_on(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vfsmount*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pid_namespace*, align 8
  %8 = alloca %struct.bsd_acct_struct*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.bsd_acct_struct* null, %struct.bsd_acct_struct** %8, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* @O_WRONLY, align 4
  %11 = load i32, i32* @O_APPEND, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @O_LARGEFILE, align 4
  %14 = or i32 %12, %13
  %15 = call %struct.file* @filp_open(i8* %9, i32 %14, i32 0)
  store %struct.file* %15, %struct.file** %4, align 8
  %16 = load %struct.file*, %struct.file** %4, align 8
  %17 = call i64 @IS_ERR(%struct.file* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.file*, %struct.file** %4, align 8
  %21 = call i32 @PTR_ERR(%struct.file* %20)
  store i32 %21, i32* %2, align 4
  br label %107

22:                                               ; preds = %1
  %23 = load %struct.file*, %struct.file** %4, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @S_ISREG(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %22
  %34 = load %struct.file*, %struct.file** %4, align 8
  %35 = call i32 @filp_close(%struct.file* %34, i32* null)
  %36 = load i32, i32* @EACCES, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %107

38:                                               ; preds = %22
  %39 = load %struct.file*, %struct.file** %4, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %38
  %46 = load %struct.file*, %struct.file** %4, align 8
  %47 = call i32 @filp_close(%struct.file* %46, i32* null)
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %107

50:                                               ; preds = %38
  %51 = load i32, i32* @current, align 4
  %52 = call %struct.pid_namespace* @task_active_pid_ns(i32 %51)
  store %struct.pid_namespace* %52, %struct.pid_namespace** %7, align 8
  %53 = load %struct.pid_namespace*, %struct.pid_namespace** %7, align 8
  %54 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %53, i32 0, i32 0
  %55 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %54, align 8
  %56 = icmp eq %struct.bsd_acct_struct* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %50
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call %struct.bsd_acct_struct* @kzalloc(i32 4, i32 %58)
  store %struct.bsd_acct_struct* %59, %struct.bsd_acct_struct** %8, align 8
  %60 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %8, align 8
  %61 = icmp eq %struct.bsd_acct_struct* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.file*, %struct.file** %4, align 8
  %64 = call i32 @filp_close(%struct.file* %63, i32* null)
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %107

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %50
  %69 = load %struct.file*, %struct.file** %4, align 8
  %70 = call i32 @security_acct(%struct.file* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %8, align 8
  %75 = call i32 @kfree(%struct.bsd_acct_struct* %74)
  %76 = load %struct.file*, %struct.file** %4, align 8
  %77 = call i32 @filp_close(%struct.file* %76, i32* null)
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %2, align 4
  br label %107

79:                                               ; preds = %68
  %80 = call i32 @spin_lock(i32* @acct_lock)
  %81 = load %struct.pid_namespace*, %struct.pid_namespace** %7, align 8
  %82 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %81, i32 0, i32 0
  %83 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %82, align 8
  %84 = icmp eq %struct.bsd_acct_struct* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %8, align 8
  %87 = load %struct.pid_namespace*, %struct.pid_namespace** %7, align 8
  %88 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %87, i32 0, i32 0
  store %struct.bsd_acct_struct* %86, %struct.bsd_acct_struct** %88, align 8
  store %struct.bsd_acct_struct* null, %struct.bsd_acct_struct** %8, align 8
  br label %89

89:                                               ; preds = %85, %79
  %90 = load %struct.file*, %struct.file** %4, align 8
  %91 = getelementptr inbounds %struct.file, %struct.file* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load %struct.vfsmount*, %struct.vfsmount** %92, align 8
  store %struct.vfsmount* %93, %struct.vfsmount** %5, align 8
  %94 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %95 = call i32 @mnt_pin(%struct.vfsmount* %94)
  %96 = load %struct.pid_namespace*, %struct.pid_namespace** %7, align 8
  %97 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %96, i32 0, i32 0
  %98 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %97, align 8
  %99 = load %struct.file*, %struct.file** %4, align 8
  %100 = load %struct.pid_namespace*, %struct.pid_namespace** %7, align 8
  %101 = call i32 @acct_file_reopen(%struct.bsd_acct_struct* %98, %struct.file* %99, %struct.pid_namespace* %100)
  %102 = call i32 @spin_unlock(i32* @acct_lock)
  %103 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %104 = call i32 @mntput(%struct.vfsmount* %103)
  %105 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %8, align 8
  %106 = call i32 @kfree(%struct.bsd_acct_struct* %105)
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %89, %73, %62, %45, %33, %19
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.file* @filp_open(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @filp_close(%struct.file*, i32*) #1

declare dso_local %struct.pid_namespace* @task_active_pid_ns(i32) #1

declare dso_local %struct.bsd_acct_struct* @kzalloc(i32, i32) #1

declare dso_local i32 @security_acct(%struct.file*) #1

declare dso_local i32 @kfree(%struct.bsd_acct_struct*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mnt_pin(%struct.vfsmount*) #1

declare dso_local i32 @acct_file_reopen(%struct.bsd_acct_struct*, %struct.file*, %struct.pid_namespace*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mntput(%struct.vfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
