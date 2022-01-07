; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_expire.c_autofs4_tree_busy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_expire.c_autofs4_tree_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.dentry = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.autofs_info = type { i8*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"top %p %.*s\00", align 1
@dcache_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"dentry %p %.*s\00", align 1
@jiffies = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfsmount*, %struct.dentry*, i64, i32)* @autofs4_tree_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs4_tree_busy(%struct.vfsmount* %0, %struct.dentry* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vfsmount*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.autofs_info*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.autofs_info*, align 8
  %13 = alloca i32, align 4
  store %struct.vfsmount* %0, %struct.vfsmount** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.dentry*, %struct.dentry** %7, align 8
  %15 = call %struct.autofs_info* @autofs4_dentry_ino(%struct.dentry* %14)
  store %struct.autofs_info* %15, %struct.autofs_info** %10, align 8
  %16 = load %struct.dentry*, %struct.dentry** %7, align 8
  %17 = load %struct.dentry*, %struct.dentry** %7, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = load %struct.dentry*, %struct.dentry** %7, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @DPRINTK(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.dentry* %16, i32 %21, i32 %25)
  %27 = load %struct.dentry*, %struct.dentry** %7, align 8
  %28 = call i32 @simple_positive(%struct.dentry* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %119

31:                                               ; preds = %4
  %32 = call i32 @spin_lock(i32* @dcache_lock)
  %33 = load %struct.dentry*, %struct.dentry** %7, align 8
  store %struct.dentry* %33, %struct.dentry** %11, align 8
  br label %34

34:                                               ; preds = %106, %31
  %35 = load %struct.dentry*, %struct.dentry** %11, align 8
  %36 = icmp ne %struct.dentry* %35, null
  br i1 %36, label %37, label %110

37:                                               ; preds = %34
  %38 = load %struct.dentry*, %struct.dentry** %11, align 8
  %39 = call i32 @simple_positive(%struct.dentry* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  br label %106

42:                                               ; preds = %37
  %43 = load %struct.dentry*, %struct.dentry** %11, align 8
  %44 = load %struct.dentry*, %struct.dentry** %11, align 8
  %45 = getelementptr inbounds %struct.dentry, %struct.dentry* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = load %struct.dentry*, %struct.dentry** %11, align 8
  %50 = getelementptr inbounds %struct.dentry, %struct.dentry* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @DPRINTK(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %struct.dentry* %43, i32 %48, i32 %52)
  %54 = load %struct.dentry*, %struct.dentry** %11, align 8
  %55 = call %struct.dentry* @dget(%struct.dentry* %54)
  store %struct.dentry* %55, %struct.dentry** %11, align 8
  %56 = call i32 @spin_unlock(i32* @dcache_lock)
  %57 = load %struct.dentry*, %struct.dentry** %11, align 8
  %58 = call i64 @d_mountpoint(%struct.dentry* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %42
  %61 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %62 = load %struct.dentry*, %struct.dentry** %11, align 8
  %63 = call i64 @autofs4_mount_busy(%struct.vfsmount* %61, %struct.dentry* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load i8*, i8** @jiffies, align 8
  %67 = load %struct.autofs_info*, %struct.autofs_info** %10, align 8
  %68 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  %69 = load %struct.dentry*, %struct.dentry** %11, align 8
  %70 = call i32 @dput(%struct.dentry* %69)
  store i32 1, i32* %5, align 4
  br label %119

71:                                               ; preds = %60
  br label %102

72:                                               ; preds = %42
  %73 = load %struct.dentry*, %struct.dentry** %11, align 8
  %74 = call %struct.autofs_info* @autofs4_dentry_ino(%struct.dentry* %73)
  store %struct.autofs_info* %74, %struct.autofs_info** %12, align 8
  %75 = load %struct.autofs_info*, %struct.autofs_info** %12, align 8
  %76 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %75, i32 0, i32 1
  %77 = call i32 @atomic_read(i32* %76)
  store i32 %77, i32* %13, align 4
  %78 = load %struct.dentry*, %struct.dentry** %11, align 8
  %79 = call i32 @d_invalidate(%struct.dentry* %78)
  %80 = load %struct.dentry*, %struct.dentry** %11, align 8
  %81 = load %struct.dentry*, %struct.dentry** %7, align 8
  %82 = icmp eq %struct.dentry* %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %72
  %84 = load i32, i32* %13, align 4
  %85 = add i32 %84, 2
  store i32 %85, i32* %13, align 4
  br label %89

86:                                               ; preds = %72
  %87 = load i32, i32* %13, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %13, align 4
  br label %89

89:                                               ; preds = %86, %83
  %90 = load %struct.dentry*, %struct.dentry** %11, align 8
  %91 = getelementptr inbounds %struct.dentry, %struct.dentry* %90, i32 0, i32 0
  %92 = call i32 @atomic_read(i32* %91)
  %93 = load i32, i32* %13, align 4
  %94 = icmp ugt i32 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = load i8*, i8** @jiffies, align 8
  %97 = load %struct.autofs_info*, %struct.autofs_info** %10, align 8
  %98 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  %99 = load %struct.dentry*, %struct.dentry** %11, align 8
  %100 = call i32 @dput(%struct.dentry* %99)
  store i32 1, i32* %5, align 4
  br label %119

101:                                              ; preds = %89
  br label %102

102:                                              ; preds = %101, %71
  %103 = load %struct.dentry*, %struct.dentry** %11, align 8
  %104 = call i32 @dput(%struct.dentry* %103)
  %105 = call i32 @spin_lock(i32* @dcache_lock)
  br label %106

106:                                              ; preds = %102, %41
  %107 = load %struct.dentry*, %struct.dentry** %11, align 8
  %108 = load %struct.dentry*, %struct.dentry** %7, align 8
  %109 = call %struct.dentry* @next_dentry(%struct.dentry* %107, %struct.dentry* %108)
  store %struct.dentry* %109, %struct.dentry** %11, align 8
  br label %34

110:                                              ; preds = %34
  %111 = call i32 @spin_unlock(i32* @dcache_lock)
  %112 = load %struct.dentry*, %struct.dentry** %7, align 8
  %113 = load i64, i64* %8, align 8
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @autofs4_can_expire(%struct.dentry* %112, i64 %113, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %110
  store i32 1, i32* %5, align 4
  br label %119

118:                                              ; preds = %110
  store i32 0, i32* %5, align 4
  br label %119

119:                                              ; preds = %118, %117, %95, %65, %30
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local %struct.autofs_info* @autofs4_dentry_ino(%struct.dentry*) #1

declare dso_local i32 @DPRINTK(i8*, %struct.dentry*, i32, i32) #1

declare dso_local i32 @simple_positive(%struct.dentry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.dentry* @dget(%struct.dentry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @d_mountpoint(%struct.dentry*) #1

declare dso_local i64 @autofs4_mount_busy(%struct.vfsmount*, %struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @d_invalidate(%struct.dentry*) #1

declare dso_local %struct.dentry* @next_dentry(%struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @autofs4_can_expire(%struct.dentry*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
