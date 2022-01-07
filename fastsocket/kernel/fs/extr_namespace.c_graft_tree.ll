; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_graft_tree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_graft_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.path = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }

@MS_NOUSER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfsmount*, %struct.path*)* @graft_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @graft_tree(%struct.vfsmount* %0, %struct.path* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.path*, align 8
  %6 = alloca i32, align 4
  store %struct.vfsmount* %0, %struct.vfsmount** %4, align 8
  store %struct.path* %1, %struct.path** %5, align 8
  %7 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %8 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MS_NOUSER, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %93

18:                                               ; preds = %2
  %19 = load %struct.path*, %struct.path** %5, align 8
  %20 = getelementptr inbounds %struct.path, %struct.path* %19, i32 0, i32 0
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @S_ISDIR(i32 %25)
  %27 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %28 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @S_ISDIR(i32 %33)
  %35 = icmp ne i64 %26, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %18
  %37 = load i32, i32* @ENOTDIR, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %93

39:                                               ; preds = %18
  %40 = load i32, i32* @ENOENT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  %42 = load %struct.path*, %struct.path** %5, align 8
  %43 = getelementptr inbounds %struct.path, %struct.path* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load %struct.path*, %struct.path** %5, align 8
  %50 = getelementptr inbounds %struct.path, %struct.path* %49, i32 0, i32 0
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = call i64 @IS_DEADDIR(%struct.TYPE_10__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %39
  br label %77

57:                                               ; preds = %39
  %58 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %59 = load %struct.path*, %struct.path** %5, align 8
  %60 = call i32 @security_sb_check_sb(%struct.vfsmount* %58, %struct.path* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %77

64:                                               ; preds = %57
  %65 = load i32, i32* @ENOENT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  %67 = load %struct.path*, %struct.path** %5, align 8
  %68 = getelementptr inbounds %struct.path, %struct.path* %67, i32 0, i32 0
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = call i32 @d_unlinked(%struct.TYPE_9__* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %64
  %73 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %74 = load %struct.path*, %struct.path** %5, align 8
  %75 = call i32 @attach_recursive_mnt(%struct.vfsmount* %73, %struct.path* %74, i32* null)
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %72, %64
  br label %77

77:                                               ; preds = %76, %63, %56
  %78 = load %struct.path*, %struct.path** %5, align 8
  %79 = getelementptr inbounds %struct.path, %struct.path* %78, i32 0, i32 0
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = call i32 @mutex_unlock(i32* %83)
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %77
  %88 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %89 = load %struct.path*, %struct.path** %5, align 8
  %90 = call i32 @security_sb_post_addmount(%struct.vfsmount* %88, %struct.path* %89)
  br label %91

91:                                               ; preds = %87, %77
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %36, %15
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @IS_DEADDIR(%struct.TYPE_10__*) #1

declare dso_local i32 @security_sb_check_sb(%struct.vfsmount*, %struct.path*) #1

declare dso_local i32 @d_unlinked(%struct.TYPE_9__*) #1

declare dso_local i32 @attach_recursive_mnt(%struct.vfsmount*, %struct.path*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @security_sb_post_addmount(%struct.vfsmount*, %struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
