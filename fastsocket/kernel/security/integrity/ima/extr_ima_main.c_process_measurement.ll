; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_main.c_process_measurement.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_main.c_process_measurement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.ima_iint_cache = type { i32, i32 }

@ima_initialized = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@iint_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32, i32)* @process_measurement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_measurement(%struct.file* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ima_iint_cache*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.file*, %struct.file** %6, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %10, align 8
  %18 = load i32, i32* @ima_initialized, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load %struct.inode*, %struct.inode** %10, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @S_ISREG(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20, %4
  store i32 0, i32* %5, align 4
  br label %68

27:                                               ; preds = %20
  %28 = load %struct.inode*, %struct.inode** %10, align 8
  %29 = call %struct.ima_iint_cache* @ima_iint_find_get(%struct.inode* %28)
  store %struct.ima_iint_cache* %29, %struct.ima_iint_cache** %11, align 8
  %30 = load %struct.ima_iint_cache*, %struct.ima_iint_cache** %11, align 8
  %31 = icmp ne %struct.ima_iint_cache* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %68

35:                                               ; preds = %27
  %36 = load %struct.ima_iint_cache*, %struct.ima_iint_cache** %11, align 8
  %37 = getelementptr inbounds %struct.ima_iint_cache, %struct.ima_iint_cache* %36, i32 0, i32 1
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.ima_iint_cache*, %struct.ima_iint_cache** %11, align 8
  %40 = load %struct.inode*, %struct.inode** %10, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @ima_must_measure(%struct.ima_iint_cache* %39, %struct.inode* %40, i32 %41, i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %59

47:                                               ; preds = %35
  %48 = load %struct.ima_iint_cache*, %struct.ima_iint_cache** %11, align 8
  %49 = load %struct.file*, %struct.file** %6, align 8
  %50 = call i32 @ima_collect_measurement(%struct.ima_iint_cache* %48, %struct.file* %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %47
  %54 = load %struct.ima_iint_cache*, %struct.ima_iint_cache** %11, align 8
  %55 = load %struct.file*, %struct.file** %6, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @ima_store_measurement(%struct.ima_iint_cache* %54, %struct.file* %55, i8* %56)
  br label %58

58:                                               ; preds = %53, %47
  br label %59

59:                                               ; preds = %58, %46
  %60 = load %struct.ima_iint_cache*, %struct.ima_iint_cache** %11, align 8
  %61 = getelementptr inbounds %struct.ima_iint_cache, %struct.ima_iint_cache* %60, i32 0, i32 1
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load %struct.ima_iint_cache*, %struct.ima_iint_cache** %11, align 8
  %64 = getelementptr inbounds %struct.ima_iint_cache, %struct.ima_iint_cache* %63, i32 0, i32 0
  %65 = load i32, i32* @iint_free, align 4
  %66 = call i32 @kref_put(i32* %64, i32 %65)
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %59, %32, %26
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local %struct.ima_iint_cache* @ima_iint_find_get(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ima_must_measure(%struct.ima_iint_cache*, %struct.inode*, i32, i32) #1

declare dso_local i32 @ima_collect_measurement(%struct.ima_iint_cache*, %struct.file*) #1

declare dso_local i32 @ima_store_measurement(%struct.ima_iint_cache*, %struct.file*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
