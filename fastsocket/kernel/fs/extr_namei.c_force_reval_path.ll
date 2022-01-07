; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_force_reval_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_force_reval_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.dentry* }
%struct.dentry = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 (%struct.dentry*, %struct.nameidata*)* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.nameidata = type { i32 }

@FS_REVAL_DOT = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, %struct.nameidata*)* @force_reval_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @force_reval_path(%struct.path* %0, %struct.nameidata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.path*, align 8
  %5 = alloca %struct.nameidata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dentry*, align 8
  store %struct.path* %0, %struct.path** %4, align 8
  store %struct.nameidata* %1, %struct.nameidata** %5, align 8
  %8 = load %struct.path*, %struct.path** %4, align 8
  %9 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 0
  %10 = load %struct.dentry*, %struct.dentry** %9, align 8
  store %struct.dentry* %10, %struct.dentry** %7, align 8
  %11 = load %struct.dentry*, %struct.dentry** %7, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @FS_REVAL_DOT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

22:                                               ; preds = %2
  %23 = load %struct.dentry*, %struct.dentry** %7, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32 (%struct.dentry*, %struct.nameidata*)*, i32 (%struct.dentry*, %struct.nameidata*)** %26, align 8
  %28 = load %struct.dentry*, %struct.dentry** %7, align 8
  %29 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %30 = call i32 %27(%struct.dentry* %28, %struct.nameidata* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %44

34:                                               ; preds = %22
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = load %struct.dentry*, %struct.dentry** %7, align 8
  %39 = call i32 @d_invalidate(%struct.dentry* %38)
  %40 = load i32, i32* @ESTALE, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %37, %34
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %33, %21
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @d_invalidate(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
