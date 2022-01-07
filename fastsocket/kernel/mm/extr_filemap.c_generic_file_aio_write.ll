; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_generic_file_aio_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_generic_file_aio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32, %struct.file* }
%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.iovec = type { i32 }

@EIOCBQUEUED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @generic_file_aio_write(%struct.kiocb* %0, %struct.iovec* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.kiocb*, align 8
  %6 = alloca %struct.iovec*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %5, align 8
  store %struct.iovec* %1, %struct.iovec** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %14 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %13, i32 0, i32 1
  %15 = load %struct.file*, %struct.file** %14, align 8
  store %struct.file* %15, %struct.file** %9, align 8
  %16 = load %struct.file*, %struct.file** %9, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %10, align 8
  %21 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %22 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.inode*, %struct.inode** %10, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @sb_start_write(i32 %30)
  %32 = load %struct.inode*, %struct.inode** %10, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 1
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %36 = load %struct.iovec*, %struct.iovec** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %39 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %38, i32 0, i32 0
  %40 = call i64 @__generic_file_aio_write(%struct.kiocb* %35, %struct.iovec* %36, i64 %37, i32* %39)
  store i64 %40, i64* %11, align 8
  %41 = load %struct.inode*, %struct.inode** %10, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 1
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i64, i64* %11, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %4
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* @EIOCBQUEUED, align 8
  %49 = sub nsw i64 0, %48
  %50 = icmp eq i64 %47, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %46, %4
  %52 = load %struct.file*, %struct.file** %9, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i64, i64* %11, align 8
  %55 = call i64 @generic_write_sync(%struct.file* %52, i32 %53, i64 %54)
  store i64 %55, i64* %12, align 8
  %56 = load i64, i64* %12, align 8
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load i64, i64* %11, align 8
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i64, i64* %12, align 8
  store i64 %62, i64* %11, align 8
  br label %63

63:                                               ; preds = %61, %58, %51
  br label %64

64:                                               ; preds = %63, %46
  %65 = load %struct.inode*, %struct.inode** %10, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @sb_end_write(i32 %67)
  %69 = load i64, i64* %11, align 8
  ret i64 %69
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @sb_start_write(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @__generic_file_aio_write(%struct.kiocb*, %struct.iovec*, i64, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @generic_write_sync(%struct.file*, i32, i64) #1

declare dso_local i32 @sb_end_write(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
