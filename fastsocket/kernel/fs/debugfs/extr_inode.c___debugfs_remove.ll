; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/debugfs/extr_inode.c___debugfs_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/debugfs/extr_inode.c___debugfs_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@S_IFMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*, %struct.dentry*)* @__debugfs_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__debugfs_remove(%struct.dentry* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.dentry*, %struct.dentry** %3, align 8
  %7 = call i64 @debugfs_positive(%struct.dentry* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %53

9:                                                ; preds = %2
  %10 = load %struct.dentry*, %struct.dentry** %3, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  br i1 %13, label %14, label %52

14:                                               ; preds = %9
  %15 = load %struct.dentry*, %struct.dentry** %3, align 8
  %16 = call i32 @dget(%struct.dentry* %15)
  %17 = load %struct.dentry*, %struct.dentry** %3, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @S_IFMT, align 4
  %23 = and i32 %21, %22
  switch i32 %23, label %37 [
    i32 129, label %24
    i32 128, label %30
  ]

24:                                               ; preds = %14
  %25 = load %struct.dentry*, %struct.dentry** %4, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load %struct.dentry*, %struct.dentry** %3, align 8
  %29 = call i32 @simple_rmdir(%struct.TYPE_3__* %27, %struct.dentry* %28)
  store i32 %29, i32* %5, align 4
  br label %43

30:                                               ; preds = %14
  %31 = load %struct.dentry*, %struct.dentry** %3, align 8
  %32 = getelementptr inbounds %struct.dentry, %struct.dentry* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @kfree(i32 %35)
  br label %37

37:                                               ; preds = %14, %30
  %38 = load %struct.dentry*, %struct.dentry** %4, align 8
  %39 = getelementptr inbounds %struct.dentry, %struct.dentry* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load %struct.dentry*, %struct.dentry** %3, align 8
  %42 = call i32 @simple_unlink(%struct.TYPE_3__* %40, %struct.dentry* %41)
  br label %43

43:                                               ; preds = %37, %24
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load %struct.dentry*, %struct.dentry** %3, align 8
  %48 = call i32 @d_delete(%struct.dentry* %47)
  br label %49

49:                                               ; preds = %46, %43
  %50 = load %struct.dentry*, %struct.dentry** %3, align 8
  %51 = call i32 @dput(%struct.dentry* %50)
  br label %52

52:                                               ; preds = %49, %9
  br label %53

53:                                               ; preds = %52, %2
  ret void
}

declare dso_local i64 @debugfs_positive(%struct.dentry*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @simple_rmdir(%struct.TYPE_3__*, %struct.dentry*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @simple_unlink(%struct.TYPE_3__*, %struct.dentry*) #1

declare dso_local i32 @d_delete(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
