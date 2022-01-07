; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_SYSCALL_DEFINE.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_SYSCALL_DEFINE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.address_space* }
%struct.address_space = type { i32 }

@EBADF = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @readahead(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i32, i32* @EBADF, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.file* @fget(i32 %15)
  store %struct.file* %16, %struct.file** %8, align 8
  %17 = load %struct.file*, %struct.file** %8, align 8
  %18 = icmp ne %struct.file* %17, null
  br i1 %18, label %19, label %54

19:                                               ; preds = %3
  %20 = load %struct.file*, %struct.file** %8, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @FMODE_READ, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %19
  %27 = load %struct.file*, %struct.file** %8, align 8
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 1
  %29 = load %struct.address_space*, %struct.address_space** %28, align 8
  store %struct.address_space* %29, %struct.address_space** %9, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %32 = lshr i64 %30, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %10, align 4
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %34, %35
  %37 = sub i64 %36, 1
  %38 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %39 = lshr i64 %37, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = sub nsw i32 %41, %42
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %12, align 8
  %46 = load %struct.address_space*, %struct.address_space** %9, align 8
  %47 = load %struct.file*, %struct.file** %8, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i64, i64* %12, align 8
  %50 = call i32 @do_readahead(%struct.address_space* %46, %struct.file* %47, i32 %48, i64 %49)
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %26, %19
  %52 = load %struct.file*, %struct.file** %8, align 8
  %53 = call i32 @fput(%struct.file* %52)
  br label %54

54:                                               ; preds = %51, %3
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local %struct.file* @fget(i32) #1

declare dso_local i32 @do_readahead(%struct.address_space*, %struct.file*, i32, i64) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
