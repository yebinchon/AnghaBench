; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_do_revalidate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_do_revalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dentry*, %struct.nameidata*)* }
%struct.nameidata = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*, %struct.nameidata*)* @do_revalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @do_revalidate(%struct.dentry* %0, %struct.nameidata* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.nameidata*, align 8
  %5 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.nameidata* %1, %struct.nameidata** %4, align 8
  %6 = load %struct.dentry*, %struct.dentry** %3, align 8
  %7 = getelementptr inbounds %struct.dentry, %struct.dentry* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (%struct.dentry*, %struct.nameidata*)*, i32 (%struct.dentry*, %struct.nameidata*)** %9, align 8
  %11 = load %struct.dentry*, %struct.dentry** %3, align 8
  %12 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %13 = call i32 %10(%struct.dentry* %11, %struct.nameidata* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp sle i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  %23 = load %struct.dentry*, %struct.dentry** %3, align 8
  %24 = call i32 @d_invalidate(%struct.dentry* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load %struct.dentry*, %struct.dentry** %3, align 8
  %28 = call i32 @dput(%struct.dentry* %27)
  store %struct.dentry* null, %struct.dentry** %3, align 8
  br label %29

29:                                               ; preds = %26, %22
  br label %35

30:                                               ; preds = %19
  %31 = load %struct.dentry*, %struct.dentry** %3, align 8
  %32 = call i32 @dput(%struct.dentry* %31)
  %33 = load i32, i32* %5, align 4
  %34 = call %struct.dentry* @ERR_PTR(i32 %33)
  store %struct.dentry* %34, %struct.dentry** %3, align 8
  br label %35

35:                                               ; preds = %30, %29
  br label %36

36:                                               ; preds = %35, %2
  %37 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %37
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @d_invalidate(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
