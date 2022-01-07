; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_the_nilfs.c_put_nilfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_the_nilfs.c_put_nilfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.the_nilfs = type { i32*, i32, i32, i32, i32, i32, i32 }

@nilfs_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @put_nilfs(%struct.the_nilfs* %0) #0 {
  %2 = alloca %struct.the_nilfs*, align 8
  store %struct.the_nilfs* %0, %struct.the_nilfs** %2, align 8
  %3 = call i32 @spin_lock(i32* @nilfs_lock)
  %4 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %5 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %4, i32 0, i32 6
  %6 = call i32 @atomic_dec_and_test(i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 @spin_unlock(i32* @nilfs_lock)
  br label %70

10:                                               ; preds = %1
  %11 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %12 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %11, i32 0, i32 5
  %13 = call i32 @list_del_init(i32* %12)
  %14 = call i32 @spin_unlock(i32* @nilfs_lock)
  %15 = call i32 (...) @might_sleep()
  %16 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %17 = call i64 @nilfs_loaded(%struct.the_nilfs* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %48

19:                                               ; preds = %10
  %20 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %21 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @nilfs_mdt_clear(i32 %22)
  %24 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %25 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @nilfs_mdt_destroy(i32 %26)
  %28 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %29 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @nilfs_mdt_clear(i32 %30)
  %32 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %33 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @nilfs_mdt_destroy(i32 %34)
  %36 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %37 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @nilfs_mdt_clear(i32 %38)
  %40 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %41 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @nilfs_mdt_destroy(i32 %42)
  %44 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %45 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @nilfs_mdt_destroy(i32 %46)
  br label %48

48:                                               ; preds = %19, %10
  %49 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %50 = call i64 @nilfs_init(%struct.the_nilfs* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %48
  %53 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %54 = call i32 @nilfs_destroy_gccache(%struct.the_nilfs* %53)
  %55 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %56 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @brelse(i32 %59)
  %61 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %62 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @brelse(i32 %65)
  br label %67

67:                                               ; preds = %52, %48
  %68 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %69 = call i32 @kfree(%struct.the_nilfs* %68)
  br label %70

70:                                               ; preds = %67, %8
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i64 @nilfs_loaded(%struct.the_nilfs*) #1

declare dso_local i32 @nilfs_mdt_clear(i32) #1

declare dso_local i32 @nilfs_mdt_destroy(i32) #1

declare dso_local i64 @nilfs_init(%struct.the_nilfs*) #1

declare dso_local i32 @nilfs_destroy_gccache(%struct.the_nilfs*) #1

declare dso_local i32 @brelse(i32) #1

declare dso_local i32 @kfree(%struct.the_nilfs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
