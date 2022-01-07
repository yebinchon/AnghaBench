; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_follow_managed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_follow_managed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.vfsmount*, %struct.TYPE_7__* }
%struct.vfsmount = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, i32)* }

@DCACHE_MANAGED_DENTRY = common dso_local global i32 0, align 4
@DCACHE_MANAGE_TRANSIT = common dso_local global i32 0, align 4
@DCACHE_MOUNTED = common dso_local global i32 0, align 4
@DCACHE_NEED_AUTOMOUNT = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, i32)* @follow_managed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @follow_managed(%struct.path* %0, i32 %1) #0 {
  %3 = alloca %struct.path*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vfsmount*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vfsmount*, align 8
  store %struct.path* %0, %struct.path** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.path*, %struct.path** %3, align 8
  %11 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 0
  %12 = load %struct.vfsmount*, %struct.vfsmount** %11, align 8
  store %struct.vfsmount* %12, %struct.vfsmount** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %119, %96, %2
  %14 = load %struct.path*, %struct.path** %3, align 8
  %15 = getelementptr inbounds %struct.path, %struct.path* %14, i32 0, i32 1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @ACCESS_ONCE(i32 %18)
  %20 = load %struct.path*, %struct.path** %3, align 8
  %21 = getelementptr inbounds %struct.path, %struct.path* %20, i32 0, i32 1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = call i32 @managed_d_mountpoint(%struct.TYPE_7__* %22)
  %24 = or i32 %19, %23
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @DCACHE_MANAGED_DENTRY, align 4
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @unlikely(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %121

33:                                               ; preds = %13
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @DCACHE_MANAGE_TRANSIT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %74

38:                                               ; preds = %33
  %39 = load %struct.path*, %struct.path** %3, align 8
  %40 = getelementptr inbounds %struct.path, %struct.path* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = icmp ne %struct.TYPE_6__* %43, null
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @BUG_ON(i32 %46)
  %48 = load %struct.path*, %struct.path** %3, align 8
  %49 = getelementptr inbounds %struct.path, %struct.path* %48, i32 0, i32 1
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %53, align 8
  %55 = icmp ne i32 (%struct.TYPE_7__*, i32)* %54, null
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @BUG_ON(i32 %57)
  %59 = load %struct.path*, %struct.path** %3, align 8
  %60 = getelementptr inbounds %struct.path, %struct.path* %59, i32 0, i32 1
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %64, align 8
  %66 = load %struct.path*, %struct.path** %3, align 8
  %67 = getelementptr inbounds %struct.path, %struct.path* %66, i32 0, i32 1
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = call i32 %65(%struct.TYPE_7__* %68, i32 0)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %38
  br label %121

73:                                               ; preds = %38
  br label %74

74:                                               ; preds = %73, %33
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @DCACHE_MOUNTED, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %107

79:                                               ; preds = %74
  %80 = load %struct.path*, %struct.path** %3, align 8
  %81 = call %struct.vfsmount* @lookup_mnt(%struct.path* %80)
  store %struct.vfsmount* %81, %struct.vfsmount** %9, align 8
  %82 = load %struct.vfsmount*, %struct.vfsmount** %9, align 8
  %83 = icmp ne %struct.vfsmount* %82, null
  br i1 %83, label %84, label %106

84:                                               ; preds = %79
  %85 = load %struct.path*, %struct.path** %3, align 8
  %86 = getelementptr inbounds %struct.path, %struct.path* %85, i32 0, i32 1
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = call i32 @dput(%struct.TYPE_7__* %87)
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load %struct.path*, %struct.path** %3, align 8
  %93 = getelementptr inbounds %struct.path, %struct.path* %92, i32 0, i32 0
  %94 = load %struct.vfsmount*, %struct.vfsmount** %93, align 8
  %95 = call i32 @mntput(%struct.vfsmount* %94)
  br label %96

96:                                               ; preds = %91, %84
  %97 = load %struct.vfsmount*, %struct.vfsmount** %9, align 8
  %98 = load %struct.path*, %struct.path** %3, align 8
  %99 = getelementptr inbounds %struct.path, %struct.path* %98, i32 0, i32 0
  store %struct.vfsmount* %97, %struct.vfsmount** %99, align 8
  %100 = load %struct.vfsmount*, %struct.vfsmount** %9, align 8
  %101 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call %struct.TYPE_7__* @dget(i32 %102)
  %104 = load %struct.path*, %struct.path** %3, align 8
  %105 = getelementptr inbounds %struct.path, %struct.path* %104, i32 0, i32 1
  store %struct.TYPE_7__* %103, %struct.TYPE_7__** %105, align 8
  store i32 1, i32* %7, align 4
  br label %13

106:                                              ; preds = %79
  br label %107

107:                                              ; preds = %106, %74
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @DCACHE_NEED_AUTOMOUNT, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %107
  %113 = load %struct.path*, %struct.path** %3, align 8
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @follow_automount(%struct.path* %113, i32 %114, i32* %7)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %121

119:                                              ; preds = %112
  br label %13

120:                                              ; preds = %107
  br label %121

121:                                              ; preds = %120, %118, %72, %13
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %121
  %125 = load %struct.path*, %struct.path** %3, align 8
  %126 = getelementptr inbounds %struct.path, %struct.path* %125, i32 0, i32 0
  %127 = load %struct.vfsmount*, %struct.vfsmount** %126, align 8
  %128 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %129 = icmp eq %struct.vfsmount* %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %124
  %131 = load %struct.path*, %struct.path** %3, align 8
  %132 = getelementptr inbounds %struct.path, %struct.path* %131, i32 0, i32 0
  %133 = load %struct.vfsmount*, %struct.vfsmount** %132, align 8
  %134 = call i32 @mntput(%struct.vfsmount* %133)
  br label %135

135:                                              ; preds = %130, %124, %121
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @EISDIR, align 4
  %138 = sub nsw i32 0, %137
  %139 = icmp eq i32 %136, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  store i32 0, i32* %8, align 4
  br label %141

141:                                              ; preds = %140, %135
  %142 = load i32, i32* %8, align 4
  ret i32 %142
}

declare dso_local i32 @ACCESS_ONCE(i32) #1

declare dso_local i32 @managed_d_mountpoint(%struct.TYPE_7__*) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.vfsmount* @lookup_mnt(%struct.path*) #1

declare dso_local i32 @dput(%struct.TYPE_7__*) #1

declare dso_local i32 @mntput(%struct.vfsmount*) #1

declare dso_local %struct.TYPE_7__* @dget(i32) #1

declare dso_local i32 @follow_automount(%struct.path*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
