; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_generic_file_buffered_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_generic_file_buffered_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.file* }
%struct.file = type { i32, %struct.address_space* }
%struct.address_space = type { i32 }
%struct.iovec = type { i32 }
%struct.iov_iter = type { i32 }

@O_DIRECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @generic_file_buffered_write(%struct.kiocb* %0, %struct.iovec* %1, i64 %2, i64 %3, i64* %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.kiocb*, align 8
  %9 = alloca %struct.iovec*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.file*, align 8
  %16 = alloca %struct.address_space*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.iov_iter, align 4
  store %struct.kiocb* %0, %struct.kiocb** %8, align 8
  store %struct.iovec* %1, %struct.iovec** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %19 = load %struct.kiocb*, %struct.kiocb** %8, align 8
  %20 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %19, i32 0, i32 0
  %21 = load %struct.file*, %struct.file** %20, align 8
  store %struct.file* %21, %struct.file** %15, align 8
  %22 = load %struct.file*, %struct.file** %15, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 1
  %24 = load %struct.address_space*, %struct.address_space** %23, align 8
  store %struct.address_space* %24, %struct.address_space** %16, align 8
  %25 = load %struct.iovec*, %struct.iovec** %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %13, align 8
  %28 = load i64, i64* %14, align 8
  %29 = call i32 @iov_iter_init(%struct.iov_iter* %18, %struct.iovec* %25, i64 %26, i64 %27, i64 %28)
  %30 = load %struct.file*, %struct.file** %15, align 8
  %31 = load i64, i64* %11, align 8
  %32 = call i64 @generic_perform_write(%struct.file* %30, %struct.iov_iter* %18, i64 %31)
  store i64 %32, i64* %17, align 8
  %33 = load i64, i64* %17, align 8
  %34 = icmp sge i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i64 @likely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %7
  %39 = load i64, i64* %17, align 8
  %40 = load i64, i64* %14, align 8
  %41 = add nsw i64 %40, %39
  store i64 %41, i64* %14, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %17, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i64*, i64** %12, align 8
  store i64 %44, i64* %45, align 8
  br label %46

46:                                               ; preds = %38, %7
  %47 = load %struct.file*, %struct.file** %15, align 8
  %48 = getelementptr inbounds %struct.file, %struct.file* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @O_DIRECT, align 4
  %51 = and i32 %49, %50
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %46
  %55 = load i64, i64* %14, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load %struct.address_space*, %struct.address_space** %16, align 8
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %14, align 8
  %62 = add nsw i64 %60, %61
  %63 = sub nsw i64 %62, 1
  %64 = call i64 @filemap_write_and_wait_range(%struct.address_space* %58, i64 %59, i64 %63)
  store i64 %64, i64* %17, align 8
  br label %65

65:                                               ; preds = %57, %54, %46
  %66 = load i64, i64* %14, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i64, i64* %14, align 8
  br label %72

70:                                               ; preds = %65
  %71 = load i64, i64* %17, align 8
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i64 [ %69, %68 ], [ %71, %70 ]
  ret i64 %73
}

declare dso_local i32 @iov_iter_init(%struct.iov_iter*, %struct.iovec*, i64, i64, i64) #1

declare dso_local i64 @generic_perform_write(%struct.file*, %struct.iov_iter*, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @filemap_write_and_wait_range(%struct.address_space*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
