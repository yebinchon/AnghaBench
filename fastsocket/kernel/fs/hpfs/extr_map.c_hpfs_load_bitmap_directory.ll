; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_map.c_hpfs_load_bitmap_directory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_map.c_hpfs_load_bitmap_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"HPFS: can't allocate memory for bitmap directory\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @hpfs_load_bitmap_directory(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.super_block*, %struct.super_block** %4, align 8
  %12 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 2097152
  %16 = sub nsw i32 %15, 1
  %17 = ashr i32 %16, 21
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = mul nsw i32 %18, 512
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i64* @kmalloc(i32 %19, i32 %20)
  store i64* %21, i64** %9, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = call i32 @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i64* null, i64** %3, align 8
  br label %62

25:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %57, %25
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %60

30:                                               ; preds = %26
  %31 = load %struct.super_block*, %struct.super_block** %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = sub nsw i32 %36, %37
  %39 = sub nsw i32 %38, 1
  %40 = call i64* @hpfs_map_sector(%struct.super_block* %31, i64 %35, %struct.buffer_head** %6, i32 %39)
  store i64* %40, i64** %10, align 8
  %41 = load i64*, i64** %10, align 8
  %42 = icmp ne i64* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %30
  %44 = load i64*, i64** %9, align 8
  %45 = call i32 @kfree(i64* %44)
  store i64* null, i64** %3, align 8
  br label %62

46:                                               ; preds = %30
  %47 = load i64*, i64** %9, align 8
  %48 = bitcast i64* %47 to i8*
  %49 = load i32, i32* %8, align 4
  %50 = mul nsw i32 512, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  %53 = load i64*, i64** %10, align 8
  %54 = call i32 @memcpy(i8* %52, i64* %53, i32 512)
  %55 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %56 = call i32 @brelse(%struct.buffer_head* %55)
  br label %57

57:                                               ; preds = %46
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %26

60:                                               ; preds = %26
  %61 = load i64*, i64** %9, align 8
  store i64* %61, i64** %3, align 8
  br label %62

62:                                               ; preds = %60, %43, %23
  %63 = load i64*, i64** %3, align 8
  ret i64* %63
}

declare dso_local %struct.TYPE_2__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i64* @kmalloc(i32, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i64* @hpfs_map_sector(%struct.super_block*, i64, %struct.buffer_head**, i32) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @memcpy(i8*, i64*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
