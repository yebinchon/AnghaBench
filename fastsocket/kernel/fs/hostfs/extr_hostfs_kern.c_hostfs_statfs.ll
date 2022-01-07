; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hostfs/extr_hostfs_kern.c_hostfs_statfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hostfs/extr_hostfs_kern.c_hostfs_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.kstatfs = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@HOSTFS_SUPER_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostfs_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.kstatfs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %5, align 8
  %12 = load %struct.dentry*, %struct.dentry** %4, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.TYPE_6__* @HOSTFS_I(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %23 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %22, i32 0, i32 9
  %24 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %25 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %24, i32 0, i32 8
  %26 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %27 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %26, i32 0, i32 7
  %28 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %29 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @do_statfs(i32 %21, i32* %23, i64* %7, i64* %8, i64* %9, i64* %10, i64* %11, i32* %25, i32 4, i32* %27, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %55

36:                                               ; preds = %2
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %39 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %42 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %45 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %48 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %47, i32 0, i32 3
  store i64 %46, i64* %48, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %51 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %50, i32 0, i32 4
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* @HOSTFS_SUPER_MAGIC, align 4
  %53 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %54 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 8
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %36, %34
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @do_statfs(i32, i32*, i64*, i64*, i64*, i64*, i64*, i32*, i32, i32*, i32) #1

declare dso_local %struct.TYPE_6__* @HOSTFS_I(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
