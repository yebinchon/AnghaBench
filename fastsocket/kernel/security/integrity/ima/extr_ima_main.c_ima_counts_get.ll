; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_main.c_ima_counts_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_main.c_ima_counts_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.dentry* }
%struct.dentry = type { %struct.TYPE_4__, %struct.inode* }
%struct.TYPE_4__ = type { i32 }
%struct.inode = type { i32 }
%struct.ima_iint_cache = type { i32, i32 }

@ima_enabled = common dso_local global i32 0, align 4
@ima_initialized = common dso_local global i32 0, align 4
@MAY_READ = common dso_local global i32 0, align 4
@FILE_CHECK = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@TOMTOU = common dso_local global i32 0, align 4
@OPEN_WRITERS = common dso_local global i32 0, align 4
@iint_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ima_counts_get(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ima_iint_cache*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %8 = load %struct.file*, %struct.file** %2, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %11, %struct.dentry** %3, align 8
  %12 = load %struct.dentry*, %struct.dentry** %3, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 1
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %4, align 8
  %15 = load %struct.file*, %struct.file** %2, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @ima_enabled, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = load i32, i32* @ima_initialized, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @S_ISREG(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23, %20, %1
  br label %84

30:                                               ; preds = %23
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = call %struct.ima_iint_cache* @ima_iint_find_get(%struct.inode* %31)
  store %struct.ima_iint_cache* %32, %struct.ima_iint_cache** %6, align 8
  %33 = load %struct.ima_iint_cache*, %struct.ima_iint_cache** %6, align 8
  %34 = icmp ne %struct.ima_iint_cache* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %84

36:                                               ; preds = %30
  %37 = load %struct.ima_iint_cache*, %struct.ima_iint_cache** %6, align 8
  %38 = getelementptr inbounds %struct.ima_iint_cache, %struct.ima_iint_cache* %37, i32 0, i32 1
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.ima_iint_cache*, %struct.ima_iint_cache** %6, align 8
  %41 = load %struct.inode*, %struct.inode** %4, align 8
  %42 = load i32, i32* @MAY_READ, align 4
  %43 = load i32, i32* @FILE_CHECK, align 4
  %44 = call i32 @ima_must_measure(%struct.ima_iint_cache* %40, %struct.inode* %41, i32 %42, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %71

48:                                               ; preds = %36
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @FMODE_WRITE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load i32, i32* @TOMTOU, align 4
  %55 = load %struct.ima_iint_cache*, %struct.ima_iint_cache** %6, align 8
  %56 = load %struct.inode*, %struct.inode** %4, align 8
  %57 = load %struct.dentry*, %struct.dentry** %3, align 8
  %58 = getelementptr inbounds %struct.dentry, %struct.dentry* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @ima_read_write_check(i32 %54, %struct.ima_iint_cache* %55, %struct.inode* %56, i32 %60)
  br label %71

62:                                               ; preds = %48
  %63 = load i32, i32* @OPEN_WRITERS, align 4
  %64 = load %struct.ima_iint_cache*, %struct.ima_iint_cache** %6, align 8
  %65 = load %struct.inode*, %struct.inode** %4, align 8
  %66 = load %struct.dentry*, %struct.dentry** %3, align 8
  %67 = getelementptr inbounds %struct.dentry, %struct.dentry* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @ima_read_write_check(i32 %63, %struct.ima_iint_cache* %64, %struct.inode* %65, i32 %69)
  br label %71

71:                                               ; preds = %62, %53, %47
  %72 = load %struct.ima_iint_cache*, %struct.ima_iint_cache** %6, align 8
  %73 = load %struct.file*, %struct.file** %2, align 8
  %74 = getelementptr inbounds %struct.file, %struct.file* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @ima_inc_counts(%struct.ima_iint_cache* %72, i32 %75)
  %77 = load %struct.ima_iint_cache*, %struct.ima_iint_cache** %6, align 8
  %78 = getelementptr inbounds %struct.ima_iint_cache, %struct.ima_iint_cache* %77, i32 0, i32 1
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load %struct.ima_iint_cache*, %struct.ima_iint_cache** %6, align 8
  %81 = getelementptr inbounds %struct.ima_iint_cache, %struct.ima_iint_cache* %80, i32 0, i32 0
  %82 = load i32, i32* @iint_free, align 4
  %83 = call i32 @kref_put(i32* %81, i32 %82)
  br label %84

84:                                               ; preds = %71, %35, %29
  ret void
}

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local %struct.ima_iint_cache* @ima_iint_find_get(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ima_must_measure(%struct.ima_iint_cache*, %struct.inode*, i32, i32) #1

declare dso_local i32 @ima_read_write_check(i32, %struct.ima_iint_cache*, %struct.inode*, i32) #1

declare dso_local i32 @ima_inc_counts(%struct.ima_iint_cache*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
