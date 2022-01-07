; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_super.c_ext3_handle_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_super.c_ext3_handle_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32 }
%struct.ext3_super_block = type { i32 }
%struct.TYPE_2__ = type { i32, i32*, i32, %struct.ext3_super_block* }

@EXT3_ERROR_FS = common dso_local global i32 0, align 4
@MS_RDONLY = common dso_local global i32 0, align 4
@ERRORS_CONT = common dso_local global i32 0, align 4
@EXT3_MOUNT_ABORT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ERRORS_RO = common dso_local global i32 0, align 4
@KERN_CRIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"error: remounting filesystem read-only\00", align 1
@ERRORS_PANIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"EXT3-fs (%s): panic forced after error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @ext3_handle_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext3_handle_error(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.ext3_super_block*, align 8
  %4 = alloca i32*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %5 = load %struct.super_block*, %struct.super_block** %2, align 8
  %6 = call %struct.TYPE_2__* @EXT3_SB(%struct.super_block* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 3
  %8 = load %struct.ext3_super_block*, %struct.ext3_super_block** %7, align 8
  store %struct.ext3_super_block* %8, %struct.ext3_super_block** %3, align 8
  %9 = load i32, i32* @EXT3_ERROR_FS, align 4
  %10 = load %struct.super_block*, %struct.super_block** %2, align 8
  %11 = call %struct.TYPE_2__* @EXT3_SB(%struct.super_block* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = or i32 %13, %9
  store i32 %14, i32* %12, align 8
  %15 = load i32, i32* @EXT3_ERROR_FS, align 4
  %16 = call i32 @cpu_to_le16(i32 %15)
  %17 = load %struct.ext3_super_block*, %struct.ext3_super_block** %3, align 8
  %18 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.super_block*, %struct.super_block** %2, align 8
  %22 = getelementptr inbounds %struct.super_block, %struct.super_block* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MS_RDONLY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %79

28:                                               ; preds = %1
  %29 = load %struct.super_block*, %struct.super_block** %2, align 8
  %30 = load i32, i32* @ERRORS_CONT, align 4
  %31 = call i64 @test_opt(%struct.super_block* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %52, label %33

33:                                               ; preds = %28
  %34 = load %struct.super_block*, %struct.super_block** %2, align 8
  %35 = call %struct.TYPE_2__* @EXT3_SB(%struct.super_block* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %4, align 8
  %38 = load i32, i32* @EXT3_MOUNT_ABORT, align 4
  %39 = load %struct.super_block*, %struct.super_block** %2, align 8
  %40 = call %struct.TYPE_2__* @EXT3_SB(%struct.super_block* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %38
  store i32 %43, i32* %41, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %33
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  %50 = call i32 @journal_abort(i32* %47, i32 %49)
  br label %51

51:                                               ; preds = %46, %33
  br label %52

52:                                               ; preds = %51, %28
  %53 = load %struct.super_block*, %struct.super_block** %2, align 8
  %54 = load i32, i32* @ERRORS_RO, align 4
  %55 = call i64 @test_opt(%struct.super_block* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load %struct.super_block*, %struct.super_block** %2, align 8
  %59 = load i32, i32* @KERN_CRIT, align 4
  %60 = call i32 @ext3_msg(%struct.super_block* %58, i32 %59, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @MS_RDONLY, align 4
  %62 = load %struct.super_block*, %struct.super_block** %2, align 8
  %63 = getelementptr inbounds %struct.super_block, %struct.super_block* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %57, %52
  %67 = load %struct.super_block*, %struct.super_block** %2, align 8
  %68 = load %struct.ext3_super_block*, %struct.ext3_super_block** %3, align 8
  %69 = call i32 @ext3_commit_super(%struct.super_block* %67, %struct.ext3_super_block* %68, i32 1)
  %70 = load %struct.super_block*, %struct.super_block** %2, align 8
  %71 = load i32, i32* @ERRORS_PANIC, align 4
  %72 = call i64 @test_opt(%struct.super_block* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %66
  %75 = load %struct.super_block*, %struct.super_block** %2, align 8
  %76 = getelementptr inbounds %struct.super_block, %struct.super_block* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @panic(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %27, %74, %66
  ret void
}

declare dso_local %struct.TYPE_2__* @EXT3_SB(%struct.super_block*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @test_opt(%struct.super_block*, i32) #1

declare dso_local i32 @journal_abort(i32*, i32) #1

declare dso_local i32 @ext3_msg(%struct.super_block*, i32, i8*) #1

declare dso_local i32 @ext3_commit_super(%struct.super_block*, %struct.ext3_super_block*, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
