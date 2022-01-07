; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_cgroup_create_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_cgroup_create_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.dentry* }
%struct.dentry = type { i32, %struct.cgroup* }

@S_IFDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup*, %struct.dentry*, i32)* @cgroup_create_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgroup_create_dir(%struct.cgroup* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.cgroup*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  store %struct.cgroup* %0, %struct.cgroup** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %10 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.dentry*, %struct.dentry** %12, align 8
  store %struct.dentry* %13, %struct.dentry** %7, align 8
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = load i32, i32* @S_IFDIR, align 4
  %16 = load i32, i32* %6, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %19 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @cgroup_create_file(%struct.dentry* %14, i32 %17, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %3
  %27 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %28 = load %struct.dentry*, %struct.dentry** %5, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 1
  store %struct.cgroup* %27, %struct.cgroup** %29, align 8
  %30 = load %struct.dentry*, %struct.dentry** %7, align 8
  %31 = getelementptr inbounds %struct.dentry, %struct.dentry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @inc_nlink(i32 %32)
  %34 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %35 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.dentry*, %struct.dentry** %5, align 8
  %38 = call i32 @rcu_assign_pointer(i32 %36, %struct.dentry* %37)
  %39 = load %struct.dentry*, %struct.dentry** %5, align 8
  %40 = call i32 @dget(%struct.dentry* %39)
  br label %41

41:                                               ; preds = %26, %3
  %42 = load %struct.dentry*, %struct.dentry** %5, align 8
  %43 = call i32 @dput(%struct.dentry* %42)
  %44 = load i32, i32* %8, align 4
  ret i32 %44
}

declare dso_local i32 @cgroup_create_file(%struct.dentry*, i32, i32) #1

declare dso_local i32 @inc_nlink(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.dentry*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
