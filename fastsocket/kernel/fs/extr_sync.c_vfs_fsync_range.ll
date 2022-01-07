; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_sync.c_vfs_fsync_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_sync.c_vfs_fsync_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.file_operations*, %struct.address_space* }
%struct.file_operations = type { i32 (%struct.file.0*, %struct.dentry*, i32)* }
%struct.file.0 = type opaque
%struct.dentry = type opaque
%struct.address_space = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.dentry.1 = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.file_operations*, %struct.address_space* }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_fsync_range(%struct.file* %0, %struct.dentry.1* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.dentry.1*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.file_operations*, align 8
  %12 = alloca %struct.address_space*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store %struct.dentry.1* %1, %struct.dentry.1** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.file*, %struct.file** %6, align 8
  %16 = icmp ne %struct.file* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %5
  %18 = load %struct.file*, %struct.file** %6, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 1
  %20 = load %struct.address_space*, %struct.address_space** %19, align 8
  store %struct.address_space* %20, %struct.address_space** %12, align 8
  %21 = load %struct.file*, %struct.file** %6, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 0
  %23 = load %struct.file_operations*, %struct.file_operations** %22, align 8
  store %struct.file_operations* %23, %struct.file_operations** %11, align 8
  br label %35

24:                                               ; preds = %5
  %25 = load %struct.dentry.1*, %struct.dentry.1** %7, align 8
  %26 = getelementptr inbounds %struct.dentry.1, %struct.dentry.1* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load %struct.address_space*, %struct.address_space** %28, align 8
  store %struct.address_space* %29, %struct.address_space** %12, align 8
  %30 = load %struct.dentry.1*, %struct.dentry.1** %7, align 8
  %31 = getelementptr inbounds %struct.dentry.1, %struct.dentry.1* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.file_operations*, %struct.file_operations** %33, align 8
  store %struct.file_operations* %34, %struct.file_operations** %11, align 8
  br label %35

35:                                               ; preds = %24, %17
  %36 = load %struct.file_operations*, %struct.file_operations** %11, align 8
  %37 = icmp ne %struct.file_operations* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct.file_operations*, %struct.file_operations** %11, align 8
  %40 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %39, i32 0, i32 0
  %41 = load i32 (%struct.file.0*, %struct.dentry*, i32)*, i32 (%struct.file.0*, %struct.dentry*, i32)** %40, align 8
  %42 = icmp ne i32 (%struct.file.0*, %struct.dentry*, i32)* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38, %35
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %14, align 4
  br label %83

46:                                               ; preds = %38
  %47 = load %struct.address_space*, %struct.address_space** %12, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @filemap_write_and_wait_range(%struct.address_space* %47, i32 %48, i32 %49)
  store i32 %50, i32* %14, align 4
  %51 = load %struct.address_space*, %struct.address_space** %12, align 8
  %52 = getelementptr inbounds %struct.address_space, %struct.address_space* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = load %struct.file_operations*, %struct.file_operations** %11, align 8
  %57 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %56, i32 0, i32 0
  %58 = load i32 (%struct.file.0*, %struct.dentry*, i32)*, i32 (%struct.file.0*, %struct.dentry*, i32)** %57, align 8
  %59 = load %struct.file*, %struct.file** %6, align 8
  %60 = bitcast %struct.file* %59 to %struct.file.0*
  %61 = load %struct.dentry.1*, %struct.dentry.1** %7, align 8
  %62 = bitcast %struct.dentry.1* %61 to %struct.dentry*
  %63 = load i32, i32* %10, align 4
  %64 = call i32 %58(%struct.file.0* %60, %struct.dentry* %62, i32 %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %46
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %70, %46
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %14, align 4
  br label %77

77:                                               ; preds = %75, %70, %67
  %78 = load %struct.address_space*, %struct.address_space** %12, align 8
  %79 = getelementptr inbounds %struct.address_space, %struct.address_space* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = call i32 @mutex_unlock(i32* %81)
  br label %83

83:                                               ; preds = %77, %43
  %84 = load i32, i32* %14, align 4
  ret i32 %84
}

declare dso_local i32 @filemap_write_and_wait_range(%struct.address_space*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
