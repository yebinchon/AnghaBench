; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_resize.c_verify_reserved_gdb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_resize.c_verify_reserved_gdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i64, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"reserved GDT %llu missing grp %d (%llu)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.buffer_head*)* @verify_reserved_gdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_reserved_gdb(%struct.super_block* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  %14 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %15 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load %struct.super_block*, %struct.super_block** %4, align 8
  %18 = call %struct.TYPE_2__* @EXT4_SB(%struct.super_block* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 5, i32* %9, align 4
  store i32 7, i32* %10, align 4
  %21 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %22 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %12, align 8
  store i32 0, i32* %13, align 4
  br label %25

25:                                               ; preds = %67, %2
  %26 = load %struct.super_block*, %struct.super_block** %4, align 8
  %27 = call i32 @ext4_list_backups(%struct.super_block* %26, i32* %8, i32* %9, i32* %10)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %68

30:                                               ; preds = %25
  %31 = load i32*, i32** %12, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %12, align 8
  %33 = load i32, i32* %31, align 4
  %34 = call i64 @le32_to_cpu(i32 %33)
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.super_block*, %struct.super_block** %4, align 8
  %37 = call i32 @EXT4_BLOCKS_PER_GROUP(%struct.super_block* %36)
  %38 = mul i32 %35, %37
  %39 = zext i32 %38 to i64
  %40 = load i64, i64* %6, align 8
  %41 = add nsw i64 %39, %40
  %42 = icmp ne i64 %34, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %30
  %44 = load %struct.super_block*, %struct.super_block** %4, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = zext i32 %47 to i64
  %49 = load %struct.super_block*, %struct.super_block** %4, align 8
  %50 = call i32 @EXT4_BLOCKS_PER_GROUP(%struct.super_block* %49)
  %51 = zext i32 %50 to i64
  %52 = mul nsw i64 %48, %51
  %53 = load i64, i64* %6, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @ext4_warning(%struct.super_block* %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %45, i32 %46, i64 %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %70

58:                                               ; preds = %30
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %13, align 4
  %61 = load %struct.super_block*, %struct.super_block** %4, align 8
  %62 = call i32 @EXT4_ADDR_PER_BLOCK(%struct.super_block* %61)
  %63 = icmp sgt i32 %60, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* @EFBIG, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %70

67:                                               ; preds = %58
  br label %25

68:                                               ; preds = %25
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %64, %43
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.TYPE_2__* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @ext4_list_backups(%struct.super_block*, i32*, i32*, i32*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @EXT4_BLOCKS_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @ext4_warning(%struct.super_block*, i8*, i64, i32, i64) #1

declare dso_local i32 @EXT4_ADDR_PER_BLOCK(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
