; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_main.c_ima_file_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_main.c_ima_file_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.ima_iint_cache = type { i32, i32 }

@ima_enabled = common dso_local global i32 0, align 4
@ima_initialized = common dso_local global i32 0, align 4
@iint_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ima_file_free(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ima_iint_cache*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %9, %struct.inode** %3, align 8
  %10 = load i32, i32* @ima_enabled, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load i32, i32* @ima_initialized, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @S_ISREG(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15, %12, %1
  br label %43

22:                                               ; preds = %15
  %23 = load %struct.inode*, %struct.inode** %3, align 8
  %24 = call %struct.ima_iint_cache* @ima_iint_find_get(%struct.inode* %23)
  store %struct.ima_iint_cache* %24, %struct.ima_iint_cache** %4, align 8
  %25 = load %struct.ima_iint_cache*, %struct.ima_iint_cache** %4, align 8
  %26 = icmp ne %struct.ima_iint_cache* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %43

28:                                               ; preds = %22
  %29 = load %struct.ima_iint_cache*, %struct.ima_iint_cache** %4, align 8
  %30 = getelementptr inbounds %struct.ima_iint_cache, %struct.ima_iint_cache* %29, i32 0, i32 1
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.ima_iint_cache*, %struct.ima_iint_cache** %4, align 8
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = load %struct.file*, %struct.file** %2, align 8
  %35 = call i32 @ima_dec_counts(%struct.ima_iint_cache* %32, %struct.inode* %33, %struct.file* %34)
  %36 = load %struct.ima_iint_cache*, %struct.ima_iint_cache** %4, align 8
  %37 = getelementptr inbounds %struct.ima_iint_cache, %struct.ima_iint_cache* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load %struct.ima_iint_cache*, %struct.ima_iint_cache** %4, align 8
  %40 = getelementptr inbounds %struct.ima_iint_cache, %struct.ima_iint_cache* %39, i32 0, i32 0
  %41 = load i32, i32* @iint_free, align 4
  %42 = call i32 @kref_put(i32* %40, i32 %41)
  br label %43

43:                                               ; preds = %28, %27, %21
  ret void
}

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local %struct.ima_iint_cache* @ima_iint_find_get(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ima_dec_counts(%struct.ima_iint_cache*, %struct.inode*, %struct.file*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
