; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_do_add_mount_unlocked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_do_add_mount_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.path = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MNT_SHRINKABLE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfsmount*, %struct.path*, i32)* @do_add_mount_unlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_add_mount_unlocked(%struct.vfsmount* %0, %struct.path* %1, i32 %2) #0 {
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.path*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vfsmount* %0, %struct.vfsmount** %4, align 8
  store %struct.path* %1, %struct.path** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.path*, %struct.path** %5, align 8
  %9 = call i32 @__follow_down(%struct.path* %8, i32 1)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %78

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @MNT_SHRINKABLE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %13
  %21 = load %struct.path*, %struct.path** %5, align 8
  %22 = getelementptr inbounds %struct.path, %struct.path* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = call i32 @check_mnt(%struct.TYPE_6__* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %78

27:                                               ; preds = %20, %13
  %28 = load %struct.path*, %struct.path** %5, align 8
  %29 = getelementptr inbounds %struct.path, %struct.path* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %78

35:                                               ; preds = %27
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  %38 = load %struct.path*, %struct.path** %5, align 8
  %39 = getelementptr inbounds %struct.path, %struct.path* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %44 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %35
  %48 = load %struct.path*, %struct.path** %5, align 8
  %49 = getelementptr inbounds %struct.path, %struct.path* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.path*, %struct.path** %5, align 8
  %54 = getelementptr inbounds %struct.path, %struct.path* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %78

58:                                               ; preds = %47, %35
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %7, align 4
  %61 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %62 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %61, i32 0, i32 2
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @S_ISLNK(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  br label %78

71:                                               ; preds = %58
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %74 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %76 = load %struct.path*, %struct.path** %5, align 8
  %77 = call i32 @graft_tree(%struct.vfsmount* %75, %struct.path* %76)
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %71, %70, %57, %34, %26, %12
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i32 @__follow_down(%struct.path*, i32) #1

declare dso_local i32 @check_mnt(%struct.TYPE_6__*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @graft_tree(%struct.vfsmount*, %struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
