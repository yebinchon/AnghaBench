; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_open.c_lookup_instantiate_filp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_open.c_lookup_instantiate_filp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.nameidata = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.file* }
%struct.TYPE_4__ = type { i32 }
%struct.dentry = type opaque
%struct.inode = type opaque
%struct.cred = type { i32 }
%struct.inode.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file* @lookup_instantiate_filp(%struct.nameidata* %0, %struct.dentry* %1, i32 (%struct.inode*, %struct.file*)* %2) #0 {
  %4 = alloca %struct.nameidata*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32 (%struct.inode*, %struct.file*)*, align 8
  %7 = alloca %struct.cred*, align 8
  store %struct.nameidata* %0, %struct.nameidata** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 (%struct.inode*, %struct.file*)* %2, i32 (%struct.inode*, %struct.file*)** %6, align 8
  %8 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %8, %struct.cred** %7, align 8
  %9 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %10 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.file*, %struct.file** %12, align 8
  %14 = call i64 @IS_ERR(%struct.file* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %45

17:                                               ; preds = %3
  %18 = load %struct.dentry*, %struct.dentry** %5, align 8
  %19 = bitcast %struct.dentry* %18 to %struct.file*
  %20 = call i64 @IS_ERR(%struct.file* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %51

23:                                               ; preds = %17
  %24 = load %struct.dentry*, %struct.dentry** %5, align 8
  %25 = bitcast %struct.dentry* %24 to %struct.file*
  %26 = call i32 @dget(%struct.file* %25)
  %27 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %28 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @mntget(i32 %30)
  %32 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %33 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.file*, %struct.file** %35, align 8
  %37 = load i32 (%struct.inode*, %struct.file*)*, i32 (%struct.inode*, %struct.file*)** %6, align 8
  %38 = bitcast i32 (%struct.inode*, %struct.file*)* %37 to i32 (%struct.inode.0*, %struct.file*)*
  %39 = load %struct.cred*, %struct.cred** %7, align 8
  %40 = call %struct.file* @__dentry_open(i32 %26, i32 %31, %struct.file* %36, i32 (%struct.inode.0*, %struct.file*)* %38, %struct.cred* %39)
  %41 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %42 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store %struct.file* %40, %struct.file** %44, align 8
  br label %45

45:                                               ; preds = %51, %23, %16
  %46 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %47 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.file*, %struct.file** %49, align 8
  ret %struct.file* %50

51:                                               ; preds = %22
  %52 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %53 = call i32 @release_open_intent(%struct.nameidata* %52)
  %54 = load %struct.dentry*, %struct.dentry** %5, align 8
  %55 = bitcast %struct.dentry* %54 to %struct.file*
  %56 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %57 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store %struct.file* %55, %struct.file** %59, align 8
  br label %45
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local %struct.file* @__dentry_open(i32, i32, %struct.file*, i32 (%struct.inode.0*, %struct.file*)*, %struct.cred*) #1

declare dso_local i32 @dget(%struct.file*) #1

declare dso_local i32 @mntget(i32) #1

declare dso_local i32 @release_open_intent(%struct.nameidata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
