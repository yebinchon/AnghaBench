; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/squashfs/extr_fragment.c_squashfs_read_fragment_index_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/squashfs/extr_fragment.c_squashfs_read_fragment_index_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to allocate fragment index table\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"unable to read fragment index table\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @squashfs_read_fragment_index_table(%struct.super_block* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @SQUASHFS_FRAGMENT_INDEX_BYTES(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32* @kmalloc(i32 %13, i32 %14)
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = call i32 @ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call i32* @ERR_PTR(i32 %21)
  store i32* %22, i32** %4, align 8
  br label %39

23:                                               ; preds = %3
  %24 = load %struct.super_block*, %struct.super_block** %5, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @squashfs_read_table(%struct.super_block* %24, i32* %25, i32 %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = call i32 @ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @kfree(i32* %33)
  %35 = load i32, i32* %10, align 4
  %36 = call i32* @ERR_PTR(i32 %35)
  store i32* %36, i32** %4, align 8
  br label %39

37:                                               ; preds = %23
  %38 = load i32*, i32** %9, align 8
  store i32* %38, i32** %4, align 8
  br label %39

39:                                               ; preds = %37, %31, %18
  %40 = load i32*, i32** %4, align 8
  ret i32* %40
}

declare dso_local i32 @SQUASHFS_FRAGMENT_INDEX_BYTES(i32) #1

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
