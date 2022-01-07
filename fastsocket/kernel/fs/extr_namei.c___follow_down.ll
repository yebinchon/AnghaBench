; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c___follow_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c___follow_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.TYPE_7__*, %struct.vfsmount* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, i32)* }
%struct.vfsmount = type { i32 }

@DCACHE_MANAGED_DENTRY = common dso_local global i32 0, align 4
@DCACHE_MANAGE_TRANSIT = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@DCACHE_MOUNTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__follow_down(%struct.path* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.path*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vfsmount*, align 8
  store %struct.path* %0, %struct.path** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %9

9:                                                ; preds = %88, %2
  %10 = load %struct.path*, %struct.path** %4, align 8
  %11 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @ACCESS_ONCE(i32 %14)
  %16 = load %struct.path*, %struct.path** %4, align 8
  %17 = getelementptr inbounds %struct.path, %struct.path* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = call i32 @managed_d_mountpoint(%struct.TYPE_7__* %18)
  %20 = or i32 %15, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @DCACHE_MANAGED_DENTRY, align 4
  %23 = and i32 %21, %22
  %24 = call i32 @unlikely(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %107

26:                                               ; preds = %9
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @DCACHE_MANAGE_TRANSIT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %77

31:                                               ; preds = %26
  %32 = load %struct.path*, %struct.path** %4, align 8
  %33 = getelementptr inbounds %struct.path, %struct.path* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = icmp ne %struct.TYPE_6__* %36, null
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load %struct.path*, %struct.path** %4, align 8
  %42 = getelementptr inbounds %struct.path, %struct.path* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %46, align 8
  %48 = icmp ne i32 (%struct.TYPE_7__*, i32)* %47, null
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @BUG_ON(i32 %50)
  %52 = load %struct.path*, %struct.path** %4, align 8
  %53 = getelementptr inbounds %struct.path, %struct.path* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %57, align 8
  %59 = load %struct.path*, %struct.path** %4, align 8
  %60 = getelementptr inbounds %struct.path, %struct.path* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 %58(%struct.TYPE_7__* %61, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %31
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @EISDIR, align 4
  %69 = sub nsw i32 0, %68
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %74

72:                                               ; preds = %66
  %73 = load i32, i32* %7, align 4
  br label %74

74:                                               ; preds = %72, %71
  %75 = phi i32 [ 0, %71 ], [ %73, %72 ]
  store i32 %75, i32* %3, align 4
  br label %108

76:                                               ; preds = %31
  br label %77

77:                                               ; preds = %76, %26
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @DCACHE_MOUNTED, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %106

82:                                               ; preds = %77
  %83 = load %struct.path*, %struct.path** %4, align 8
  %84 = call %struct.vfsmount* @lookup_mnt(%struct.path* %83)
  store %struct.vfsmount* %84, %struct.vfsmount** %8, align 8
  %85 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %86 = icmp ne %struct.vfsmount* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %82
  br label %107

88:                                               ; preds = %82
  %89 = load %struct.path*, %struct.path** %4, align 8
  %90 = getelementptr inbounds %struct.path, %struct.path* %89, i32 0, i32 0
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = call i32 @dput(%struct.TYPE_7__* %91)
  %93 = load %struct.path*, %struct.path** %4, align 8
  %94 = getelementptr inbounds %struct.path, %struct.path* %93, i32 0, i32 1
  %95 = load %struct.vfsmount*, %struct.vfsmount** %94, align 8
  %96 = call i32 @mntput(%struct.vfsmount* %95)
  %97 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %98 = load %struct.path*, %struct.path** %4, align 8
  %99 = getelementptr inbounds %struct.path, %struct.path* %98, i32 0, i32 1
  store %struct.vfsmount* %97, %struct.vfsmount** %99, align 8
  %100 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %101 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call %struct.TYPE_7__* @dget(i32 %102)
  %104 = load %struct.path*, %struct.path** %4, align 8
  %105 = getelementptr inbounds %struct.path, %struct.path* %104, i32 0, i32 0
  store %struct.TYPE_7__* %103, %struct.TYPE_7__** %105, align 8
  br label %9

106:                                              ; preds = %77
  br label %107

107:                                              ; preds = %106, %87, %9
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %107, %74
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @ACCESS_ONCE(i32) #1

declare dso_local i32 @managed_d_mountpoint(%struct.TYPE_7__*) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.vfsmount* @lookup_mnt(%struct.path*) #1

declare dso_local i32 @dput(%struct.TYPE_7__*) #1

declare dso_local i32 @mntput(%struct.vfsmount*) #1

declare dso_local %struct.TYPE_7__* @dget(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
