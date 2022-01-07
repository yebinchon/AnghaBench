; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_export.c_exp_parent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_export.c_exp_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_export = type { i32 }
%struct.path = type { %struct.dentry* }
%struct.dentry = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.svc_export* (i32*, %struct.path*)* @exp_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.svc_export* @exp_parent(i32* %0, %struct.path* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.path*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.svc_export*, align 8
  %7 = alloca %struct.dentry*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.path* %1, %struct.path** %4, align 8
  %8 = load %struct.path*, %struct.path** %4, align 8
  %9 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 0
  %10 = load %struct.dentry*, %struct.dentry** %9, align 8
  %11 = call %struct.dentry* @dget(%struct.dentry* %10)
  store %struct.dentry* %11, %struct.dentry** %5, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.path*, %struct.path** %4, align 8
  %14 = call %struct.svc_export* @exp_get_by_name(i32* %12, %struct.path* %13, i32* null)
  store %struct.svc_export* %14, %struct.svc_export** %6, align 8
  br label %15

15:                                               ; preds = %30, %2
  %16 = load %struct.svc_export*, %struct.svc_export** %6, align 8
  %17 = call i32 @PTR_ERR(%struct.svc_export* %16)
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load %struct.path*, %struct.path** %4, align 8
  %23 = getelementptr inbounds %struct.path, %struct.path* %22, i32 0, i32 0
  %24 = load %struct.dentry*, %struct.dentry** %23, align 8
  %25 = call i32 @IS_ROOT(%struct.dentry* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %21, %15
  %29 = phi i1 [ false, %15 ], [ %27, %21 ]
  br i1 %29, label %30, label %45

30:                                               ; preds = %28
  %31 = load %struct.path*, %struct.path** %4, align 8
  %32 = getelementptr inbounds %struct.path, %struct.path* %31, i32 0, i32 0
  %33 = load %struct.dentry*, %struct.dentry** %32, align 8
  %34 = call %struct.dentry* @dget_parent(%struct.dentry* %33)
  store %struct.dentry* %34, %struct.dentry** %7, align 8
  %35 = load %struct.path*, %struct.path** %4, align 8
  %36 = getelementptr inbounds %struct.path, %struct.path* %35, i32 0, i32 0
  %37 = load %struct.dentry*, %struct.dentry** %36, align 8
  %38 = call i32 @dput(%struct.dentry* %37)
  %39 = load %struct.dentry*, %struct.dentry** %7, align 8
  %40 = load %struct.path*, %struct.path** %4, align 8
  %41 = getelementptr inbounds %struct.path, %struct.path* %40, i32 0, i32 0
  store %struct.dentry* %39, %struct.dentry** %41, align 8
  %42 = load i32*, i32** %3, align 8
  %43 = load %struct.path*, %struct.path** %4, align 8
  %44 = call %struct.svc_export* @exp_get_by_name(i32* %42, %struct.path* %43, i32* null)
  store %struct.svc_export* %44, %struct.svc_export** %6, align 8
  br label %15

45:                                               ; preds = %28
  %46 = load %struct.path*, %struct.path** %4, align 8
  %47 = getelementptr inbounds %struct.path, %struct.path* %46, i32 0, i32 0
  %48 = load %struct.dentry*, %struct.dentry** %47, align 8
  %49 = call i32 @dput(%struct.dentry* %48)
  %50 = load %struct.dentry*, %struct.dentry** %5, align 8
  %51 = load %struct.path*, %struct.path** %4, align 8
  %52 = getelementptr inbounds %struct.path, %struct.path* %51, i32 0, i32 0
  store %struct.dentry* %50, %struct.dentry** %52, align 8
  %53 = load %struct.svc_export*, %struct.svc_export** %6, align 8
  ret %struct.svc_export* %53
}

declare dso_local %struct.dentry* @dget(%struct.dentry*) #1

declare dso_local %struct.svc_export* @exp_get_by_name(i32*, %struct.path*, i32*) #1

declare dso_local i32 @PTR_ERR(%struct.svc_export*) #1

declare dso_local i32 @IS_ROOT(%struct.dentry*) #1

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
