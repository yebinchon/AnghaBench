; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_follow_to_parent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_follow_to_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.dentry*, %struct.TYPE_2__* }
%struct.dentry = type { i32 }
%struct.TYPE_2__ = type { %struct.dentry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.path*)* @follow_to_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @follow_to_parent(%struct.path* %0) #0 {
  %2 = alloca %struct.path*, align 8
  %3 = alloca %struct.dentry*, align 8
  store %struct.path* %0, %struct.path** %2, align 8
  br label %4

4:                                                ; preds = %20, %1
  %5 = load %struct.path*, %struct.path** %2, align 8
  %6 = getelementptr inbounds %struct.path, %struct.path* %5, i32 0, i32 0
  %7 = load %struct.dentry*, %struct.dentry** %6, align 8
  %8 = load %struct.path*, %struct.path** %2, align 8
  %9 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.dentry*, %struct.dentry** %11, align 8
  %13 = icmp eq %struct.dentry* %7, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load %struct.path*, %struct.path** %2, align 8
  %16 = call i64 @follow_up(%struct.path* %15)
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %14, %4
  %19 = phi i1 [ false, %4 ], [ %17, %14 ]
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  br label %4

21:                                               ; preds = %18
  %22 = load %struct.path*, %struct.path** %2, align 8
  %23 = getelementptr inbounds %struct.path, %struct.path* %22, i32 0, i32 0
  %24 = load %struct.dentry*, %struct.dentry** %23, align 8
  %25 = call %struct.dentry* @dget_parent(%struct.dentry* %24)
  store %struct.dentry* %25, %struct.dentry** %3, align 8
  %26 = load %struct.path*, %struct.path** %2, align 8
  %27 = getelementptr inbounds %struct.path, %struct.path* %26, i32 0, i32 0
  %28 = load %struct.dentry*, %struct.dentry** %27, align 8
  %29 = call i32 @dput(%struct.dentry* %28)
  %30 = load %struct.dentry*, %struct.dentry** %3, align 8
  %31 = load %struct.path*, %struct.path** %2, align 8
  %32 = getelementptr inbounds %struct.path, %struct.path* %31, i32 0, i32 0
  store %struct.dentry* %30, %struct.dentry** %32, align 8
  ret void
}

declare dso_local i64 @follow_up(%struct.path*) #1

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
