; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_do_change_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_do_change_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i64, %struct.vfsmount* }
%struct.vfsmount = type { i64 }

@MS_REC = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@namespace_sem = common dso_local global i32 0, align 4
@MS_SHARED = common dso_local global i32 0, align 4
@vfsmount_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, i32)* @do_change_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_change_type(%struct.path* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.path*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vfsmount*, align 8
  %7 = alloca %struct.vfsmount*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.path*, %struct.path** %4, align 8
  %12 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 1
  %13 = load %struct.vfsmount*, %struct.vfsmount** %12, align 8
  store %struct.vfsmount* %13, %struct.vfsmount** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MS_REC, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @MS_REC, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  store i32 %20, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %21 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %22 = call i32 @capable(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @EPERM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %78

27:                                               ; preds = %2
  %28 = load %struct.path*, %struct.path** %4, align 8
  %29 = getelementptr inbounds %struct.path, %struct.path* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.path*, %struct.path** %4, align 8
  %32 = getelementptr inbounds %struct.path, %struct.path* %31, i32 0, i32 1
  %33 = load %struct.vfsmount*, %struct.vfsmount** %32, align 8
  %34 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %30, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %78

40:                                               ; preds = %27
  %41 = call i32 @down_write(i32* @namespace_sem)
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @MS_SHARED, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @invent_group_ids(%struct.vfsmount* %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %75

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %40
  %54 = call i32 @spin_lock(i32* @vfsmount_lock)
  %55 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  store %struct.vfsmount* %55, %struct.vfsmount** %6, align 8
  br label %56

56:                                               ; preds = %71, %53
  %57 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %58 = icmp ne %struct.vfsmount* %57, null
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  %60 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @change_mnt_propagation(%struct.vfsmount* %60, i32 %61)
  br label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %68 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %69 = call %struct.vfsmount* @next_mnt(%struct.vfsmount* %67, %struct.vfsmount* %68)
  br label %71

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %66
  %72 = phi %struct.vfsmount* [ %69, %66 ], [ null, %70 ]
  store %struct.vfsmount* %72, %struct.vfsmount** %6, align 8
  br label %56

73:                                               ; preds = %56
  %74 = call i32 @spin_unlock(i32* @vfsmount_lock)
  br label %75

75:                                               ; preds = %73, %51
  %76 = call i32 @up_write(i32* @namespace_sem)
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %75, %37, %24
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @invent_group_ids(%struct.vfsmount*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @change_mnt_propagation(%struct.vfsmount*, i32) #1

declare dso_local %struct.vfsmount* @next_mnt(%struct.vfsmount*, %struct.vfsmount*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
