; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/notify/inotify/extr_inotify_user.c_inotify_new_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/notify/inotify/extr_inotify_user.c_inotify_new_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_group = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__*, i32*, i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@INOTIFY_GROUP_NUM = common dso_local global i64 0, align 8
@inotify_grp_num = common dso_local global i32 0, align 4
@inotify_fsnotify_ops = common dso_local global i32 0, align 4
@inotify_max_user_instances = common dso_local global i64 0, align 8
@EMFILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fsnotify_group* (i32)* @inotify_new_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fsnotify_group* @inotify_new_group(i32 %0) #0 {
  %2 = alloca %struct.fsnotify_group*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsnotify_group*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i64, i64* @INOTIFY_GROUP_NUM, align 8
  %7 = call i64 @atomic_inc_return(i32* @inotify_grp_num)
  %8 = sub nsw i64 %6, %7
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.fsnotify_group* @fsnotify_obtain_group(i32 %10, i32 0, i32* @inotify_fsnotify_ops)
  store %struct.fsnotify_group* %11, %struct.fsnotify_group** %4, align 8
  %12 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %13 = call i64 @IS_ERR(%struct.fsnotify_group* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  store %struct.fsnotify_group* %16, %struct.fsnotify_group** %2, align 8
  br label %55

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %20 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %22 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 4
  %24 = call i32 @spin_lock_init(i32* %23)
  %25 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %26 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  %28 = call i32 @idr_init(i32* %27)
  %29 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %30 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %33 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = call %struct.TYPE_4__* (...) @get_current_user()
  %36 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %37 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %38, align 8
  %39 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %40 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i64 @atomic_inc_return(i32* %43)
  %45 = load i64, i64* @inotify_max_user_instances, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %17
  %48 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %49 = call i32 @fsnotify_put_group(%struct.fsnotify_group* %48)
  %50 = load i32, i32* @EMFILE, align 4
  %51 = sub nsw i32 0, %50
  %52 = call %struct.fsnotify_group* @ERR_PTR(i32 %51)
  store %struct.fsnotify_group* %52, %struct.fsnotify_group** %2, align 8
  br label %55

53:                                               ; preds = %17
  %54 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  store %struct.fsnotify_group* %54, %struct.fsnotify_group** %2, align 8
  br label %55

55:                                               ; preds = %53, %47, %15
  %56 = load %struct.fsnotify_group*, %struct.fsnotify_group** %2, align 8
  ret %struct.fsnotify_group* %56
}

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local %struct.fsnotify_group* @fsnotify_obtain_group(i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.fsnotify_group*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local %struct.TYPE_4__* @get_current_user(...) #1

declare dso_local i32 @fsnotify_put_group(%struct.fsnotify_group*) #1

declare dso_local %struct.fsnotify_group* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
