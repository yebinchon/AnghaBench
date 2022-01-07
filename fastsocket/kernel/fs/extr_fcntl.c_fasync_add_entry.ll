; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_fcntl.c_fasync_add_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_fcntl.c_fasync_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32 }
%struct.fasync_struct = type { i32, %struct.fasync_struct*, %struct.file*, i32 }

@fasync_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fasync_lock = common dso_local global i32 0, align 4
@FASYNC_MAGIC = common dso_local global i32 0, align 4
@FASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.file*, %struct.fasync_struct**)* @fasync_add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fasync_add_entry(i32 %0, %struct.file* %1, %struct.fasync_struct** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.fasync_struct**, align 8
  %8 = alloca %struct.fasync_struct*, align 8
  %9 = alloca %struct.fasync_struct*, align 8
  %10 = alloca %struct.fasync_struct**, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.file* %1, %struct.file** %6, align 8
  store %struct.fasync_struct** %2, %struct.fasync_struct*** %7, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* @fasync_cache, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.fasync_struct* @kmem_cache_alloc(i32 %12, i32 %13)
  store %struct.fasync_struct* %14, %struct.fasync_struct** %8, align 8
  %15 = load %struct.fasync_struct*, %struct.fasync_struct** %8, align 8
  %16 = icmp ne %struct.fasync_struct* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %74

20:                                               ; preds = %3
  %21 = load %struct.file*, %struct.file** %6, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 0
  %23 = call i32 @spin_lock(i32* %22)
  %24 = call i32 @write_lock_irq(i32* @fasync_lock)
  %25 = load %struct.fasync_struct**, %struct.fasync_struct*** %7, align 8
  store %struct.fasync_struct** %25, %struct.fasync_struct*** %10, align 8
  br label %26

26:                                               ; preds = %44, %20
  %27 = load %struct.fasync_struct**, %struct.fasync_struct*** %10, align 8
  %28 = load %struct.fasync_struct*, %struct.fasync_struct** %27, align 8
  store %struct.fasync_struct* %28, %struct.fasync_struct** %9, align 8
  %29 = icmp ne %struct.fasync_struct* %28, null
  br i1 %29, label %30, label %47

30:                                               ; preds = %26
  %31 = load %struct.fasync_struct*, %struct.fasync_struct** %9, align 8
  %32 = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %31, i32 0, i32 2
  %33 = load %struct.file*, %struct.file** %32, align 8
  %34 = load %struct.file*, %struct.file** %6, align 8
  %35 = icmp ne %struct.file* %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %44

37:                                               ; preds = %30
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.fasync_struct*, %struct.fasync_struct** %9, align 8
  %40 = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @fasync_cache, align 4
  %42 = load %struct.fasync_struct*, %struct.fasync_struct** %8, align 8
  %43 = call i32 @kmem_cache_free(i32 %41, %struct.fasync_struct* %42)
  br label %68

44:                                               ; preds = %36
  %45 = load %struct.fasync_struct*, %struct.fasync_struct** %9, align 8
  %46 = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %45, i32 0, i32 1
  store %struct.fasync_struct** %46, %struct.fasync_struct*** %10, align 8
  br label %26

47:                                               ; preds = %26
  %48 = load i32, i32* @FASYNC_MAGIC, align 4
  %49 = load %struct.fasync_struct*, %struct.fasync_struct** %8, align 8
  %50 = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load %struct.file*, %struct.file** %6, align 8
  %52 = load %struct.fasync_struct*, %struct.fasync_struct** %8, align 8
  %53 = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %52, i32 0, i32 2
  store %struct.file* %51, %struct.file** %53, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.fasync_struct*, %struct.fasync_struct** %8, align 8
  %56 = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.fasync_struct**, %struct.fasync_struct*** %7, align 8
  %58 = load %struct.fasync_struct*, %struct.fasync_struct** %57, align 8
  %59 = load %struct.fasync_struct*, %struct.fasync_struct** %8, align 8
  %60 = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %59, i32 0, i32 1
  store %struct.fasync_struct* %58, %struct.fasync_struct** %60, align 8
  %61 = load %struct.fasync_struct*, %struct.fasync_struct** %8, align 8
  %62 = load %struct.fasync_struct**, %struct.fasync_struct*** %7, align 8
  store %struct.fasync_struct* %61, %struct.fasync_struct** %62, align 8
  store i32 1, i32* %11, align 4
  %63 = load i32, i32* @FASYNC, align 4
  %64 = load %struct.file*, %struct.file** %6, align 8
  %65 = getelementptr inbounds %struct.file, %struct.file* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %47, %37
  %69 = call i32 @write_unlock_irq(i32* @fasync_lock)
  %70 = load %struct.file*, %struct.file** %6, align 8
  %71 = getelementptr inbounds %struct.file, %struct.file* %70, i32 0, i32 0
  %72 = call i32 @spin_unlock(i32* %71)
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %68, %17
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.fasync_struct* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.fasync_struct*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
