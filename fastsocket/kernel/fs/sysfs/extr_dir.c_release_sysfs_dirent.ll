; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_release_sysfs_dirent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_release_sysfs_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysfs_dirent = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_3__, %struct.sysfs_dirent* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }

@SYSFS_KOBJ_LINK = common dso_local global i32 0, align 4
@SYSFS_COPY_NAME = common dso_local global i32 0, align 4
@sysfs_dir_cachep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @release_sysfs_dirent(%struct.sysfs_dirent* %0) #0 {
  %2 = alloca %struct.sysfs_dirent*, align 8
  %3 = alloca %struct.sysfs_dirent*, align 8
  store %struct.sysfs_dirent* %0, %struct.sysfs_dirent** %2, align 8
  br label %4

4:                                                ; preds = %73, %1
  %5 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %2, align 8
  %6 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %5, i32 0, i32 5
  %7 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %6, align 8
  store %struct.sysfs_dirent* %7, %struct.sysfs_dirent** %3, align 8
  %8 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %2, align 8
  %9 = call i32 @sysfs_type(%struct.sysfs_dirent* %8)
  %10 = load i32, i32* @SYSFS_KOBJ_LINK, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %2, align 8
  %14 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @sysfs_put(i32 %16)
  br label %18

18:                                               ; preds = %12, %4
  %19 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %2, align 8
  %20 = call i32 @sysfs_type(%struct.sysfs_dirent* %19)
  %21 = load i32, i32* @SYSFS_COPY_NAME, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %2, align 8
  %26 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %25, i32 0, i32 3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = call i32 @kfree(%struct.TYPE_4__* %27)
  br label %29

29:                                               ; preds = %24, %18
  %30 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %2, align 8
  %31 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = icmp ne %struct.TYPE_4__* %32, null
  br i1 %33, label %34, label %53

34:                                               ; preds = %29
  %35 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %2, align 8
  %36 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %34
  %42 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %2, align 8
  %43 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %2, align 8
  %48 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @security_release_secctx(i64 %46, i32 %51)
  br label %53

53:                                               ; preds = %41, %34, %29
  %54 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %2, align 8
  %55 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = call i32 @kfree(%struct.TYPE_4__* %56)
  %58 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %2, align 8
  %59 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @sysfs_free_ino(i32 %60)
  %62 = load i32, i32* @sysfs_dir_cachep, align 4
  %63 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %2, align 8
  %64 = call i32 @kmem_cache_free(i32 %62, %struct.sysfs_dirent* %63)
  %65 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %3, align 8
  store %struct.sysfs_dirent* %65, %struct.sysfs_dirent** %2, align 8
  %66 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %2, align 8
  %67 = icmp ne %struct.sysfs_dirent* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %53
  %69 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %2, align 8
  %70 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %69, i32 0, i32 0
  %71 = call i64 @atomic_dec_and_test(i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %4

74:                                               ; preds = %68, %53
  ret void
}

declare dso_local i32 @sysfs_type(%struct.sysfs_dirent*) #1

declare dso_local i32 @sysfs_put(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

declare dso_local i32 @security_release_secctx(i64, i32) #1

declare dso_local i32 @sysfs_free_ino(i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.sysfs_dirent*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
