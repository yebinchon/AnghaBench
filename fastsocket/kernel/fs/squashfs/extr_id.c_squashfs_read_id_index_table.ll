; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/squashfs/extr_id.c_squashfs_read_id_index_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/squashfs/extr_id.c_squashfs_read_id_index_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"In read_id_index_table, length %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to allocate id index table\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"unable to read id index table\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @squashfs_read_id_index_table(%struct.super_block* %0, i32 %1, i16 zeroext %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i16 %2, i16* %7, align 2
  %11 = load i16, i16* %7, align 2
  %12 = call i32 @SQUASHFS_ID_BLOCK_BYTES(i16 zeroext %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32* @kmalloc(i32 %15, i32 %16)
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = call i32 @ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call i32* @ERR_PTR(i32 %23)
  store i32* %24, i32** %4, align 8
  br label %41

25:                                               ; preds = %3
  %26 = load %struct.super_block*, %struct.super_block** %5, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @squashfs_read_table(%struct.super_block* %26, i32* %27, i32 %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = call i32 @ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @kfree(i32* %35)
  %37 = load i32, i32* %10, align 4
  %38 = call i32* @ERR_PTR(i32 %37)
  store i32* %38, i32** %4, align 8
  br label %41

39:                                               ; preds = %25
  %40 = load i32*, i32** %9, align 8
  store i32* %40, i32** %4, align 8
  br label %41

41:                                               ; preds = %39, %33, %20
  %42 = load i32*, i32** %4, align 8
  ret i32* %42
}

declare dso_local i32 @SQUASHFS_ID_BLOCK_BYTES(i16 zeroext) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @ERROR(i8*) #1

declare dso_local i32* @ERR_PTR(i32) #1

declare dso_local i32 @squashfs_read_table(%struct.super_block*, i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
