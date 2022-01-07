; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_super.c_ext3_create_journal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_super.c_ext3_create_journal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext3_super_block = type { i32 }
%struct.TYPE_2__ = type { i32* }

@MS_RDONLY = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"error: readonly filesystem when trying to create journal\00", align 1
@EROFS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"creating new journal on inode %u\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"error creating journal\00", align 1
@EIO = common dso_local global i32 0, align 4
@EXT3_FEATURE_INCOMPAT_RECOVER = common dso_local global i32 0, align 4
@EXT3_FEATURE_COMPAT_HAS_JOURNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ext3_super_block*, i32)* @ext3_create_journal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_create_journal(%struct.super_block* %0, %struct.ext3_super_block* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.ext3_super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.ext3_super_block* %1, %struct.ext3_super_block** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.super_block*, %struct.super_block** %5, align 8
  %11 = getelementptr inbounds %struct.super_block, %struct.super_block* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MS_RDONLY, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.super_block*, %struct.super_block** %5, align 8
  %18 = load i32, i32* @KERN_ERR, align 4
  %19 = call i32 (%struct.super_block*, i32, i8*, ...) @ext3_msg(%struct.super_block* %17, i32 %18, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EROFS, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %68

22:                                               ; preds = %3
  %23 = load %struct.super_block*, %struct.super_block** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32* @ext3_get_journal(%struct.super_block* %23, i32 %24)
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %68

31:                                               ; preds = %22
  %32 = load %struct.super_block*, %struct.super_block** %5, align 8
  %33 = load i32, i32* @KERN_INFO, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 (%struct.super_block*, i32, i8*, ...) @ext3_msg(%struct.super_block* %32, i32 %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @journal_create(i32* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %31
  %41 = load %struct.super_block*, %struct.super_block** %5, align 8
  %42 = load i32, i32* @KERN_ERR, align 4
  %43 = call i32 (%struct.super_block*, i32, i8*, ...) @ext3_msg(%struct.super_block* %41, i32 %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @journal_destroy(i32* %44)
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %68

48:                                               ; preds = %31
  %49 = load i32*, i32** %8, align 8
  %50 = load %struct.super_block*, %struct.super_block** %5, align 8
  %51 = call %struct.TYPE_2__* @EXT3_SB(%struct.super_block* %50)
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32* %49, i32** %52, align 8
  %53 = load %struct.super_block*, %struct.super_block** %5, align 8
  %54 = call i32 @ext3_update_dynamic_rev(%struct.super_block* %53)
  %55 = load %struct.super_block*, %struct.super_block** %5, align 8
  %56 = load i32, i32* @EXT3_FEATURE_INCOMPAT_RECOVER, align 4
  %57 = call i32 @EXT3_SET_INCOMPAT_FEATURE(%struct.super_block* %55, i32 %56)
  %58 = load %struct.super_block*, %struct.super_block** %5, align 8
  %59 = load i32, i32* @EXT3_FEATURE_COMPAT_HAS_JOURNAL, align 4
  %60 = call i32 @EXT3_SET_COMPAT_FEATURE(%struct.super_block* %58, i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @cpu_to_le32(i32 %61)
  %63 = load %struct.ext3_super_block*, %struct.ext3_super_block** %6, align 8
  %64 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.super_block*, %struct.super_block** %5, align 8
  %66 = load %struct.ext3_super_block*, %struct.ext3_super_block** %6, align 8
  %67 = call i32 @ext3_commit_super(%struct.super_block* %65, %struct.ext3_super_block* %66, i32 1)
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %48, %40, %28, %16
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @ext3_msg(%struct.super_block*, i32, i8*, ...) #1

declare dso_local i32* @ext3_get_journal(%struct.super_block*, i32) #1

declare dso_local i32 @journal_create(i32*) #1

declare dso_local i32 @journal_destroy(i32*) #1

declare dso_local %struct.TYPE_2__* @EXT3_SB(%struct.super_block*) #1

declare dso_local i32 @ext3_update_dynamic_rev(%struct.super_block*) #1

declare dso_local i32 @EXT3_SET_INCOMPAT_FEATURE(%struct.super_block*, i32) #1

declare dso_local i32 @EXT3_SET_COMPAT_FEATURE(%struct.super_block*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ext3_commit_super(%struct.super_block*, %struct.ext3_super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
