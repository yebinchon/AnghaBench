; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_check-integrity.c_btrfsic_read_from_block_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_check-integrity.c_btrfsic_read_from_block_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfsic_block_data_ctx = type { i64, i64, i8** }

@PAGE_CACHE_SIZE = common dso_local global i64 0, align 8
@PAGE_CACHE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfsic_block_data_ctx*, i8*, i64, i64)* @btrfsic_read_from_block_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfsic_read_from_block_data(%struct.btrfsic_block_data_ctx* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.btrfsic_block_data_ctx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.btrfsic_block_data_ctx* %0, %struct.btrfsic_block_data_ctx** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %12, align 8
  %16 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %5, align 8
  %17 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %20 = sub i64 %19, 1
  %21 = and i64 %18, %20
  store i64 %21, i64* %13, align 8
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* %7, align 8
  %24 = add i64 %22, %23
  %25 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %26 = lshr i64 %24, %25
  store i64 %26, i64* %14, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = add i64 %27, %28
  %30 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %5, align 8
  %31 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ugt i64 %29, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @WARN_ON(i32 %34)
  %36 = load i64, i64* %13, align 8
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %36, %37
  %39 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %40 = sub i64 %39, 1
  %41 = and i64 %38, %40
  store i64 %41, i64* %10, align 8
  br label %42

42:                                               ; preds = %45, %4
  %43 = load i64, i64* %8, align 8
  %44 = icmp ugt i64 %43, 0
  br i1 %44, label %45, label %83

45:                                               ; preds = %42
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %48 = load i64, i64* %10, align 8
  %49 = sub i64 %47, %48
  %50 = call i64 @min(i64 %46, i64 %49)
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %14, align 8
  %52 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %5, align 8
  %53 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %56 = add i64 %54, %55
  %57 = sub i64 %56, 1
  %58 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %59 = lshr i64 %57, %58
  %60 = icmp uge i64 %51, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @BUG_ON(i32 %61)
  %63 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %5, align 8
  %64 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %63, i32 0, i32 2
  %65 = load i8**, i8*** %64, align 8
  %66 = load i64, i64* %14, align 8
  %67 = getelementptr inbounds i8*, i8** %65, i64 %66
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %11, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = load i64, i64* %10, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @memcpy(i8* %69, i8* %72, i64 %73)
  %75 = load i64, i64* %9, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 %75
  store i8* %77, i8** %12, align 8
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* %8, align 8
  %80 = sub i64 %79, %78
  store i64 %80, i64* %8, align 8
  store i64 0, i64* %10, align 8
  %81 = load i64, i64* %14, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %14, align 8
  br label %42

83:                                               ; preds = %42
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
