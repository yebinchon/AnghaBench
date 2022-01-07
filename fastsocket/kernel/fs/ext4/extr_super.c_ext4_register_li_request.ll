; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_super.c_ext4_register_li_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_super.c_ext4_register_li_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.super_block = type { i32 }
%struct.ext4_sb_info = type { i64, %struct.ext4_li_request* }
%struct.ext4_li_request = type { i32, i64 }

@MS_RDONLY = common dso_local global i32 0, align 4
@INIT_INODE_TABLE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ext4_li_mtx = common dso_local global i32 0, align 4
@ext4_li_info = common dso_local global %struct.TYPE_2__* null, align 8
@EXT4_LAZYINIT_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i64)* @ext4_register_li_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_register_li_request(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ext4_sb_info*, align 8
  %7 = alloca %struct.ext4_li_request*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %10)
  store %struct.ext4_sb_info* %11, %struct.ext4_sb_info** %6, align 8
  %12 = load %struct.super_block*, %struct.super_block** %4, align 8
  %13 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %12)
  %14 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %17 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %16, i32 0, i32 1
  %18 = load %struct.ext4_li_request*, %struct.ext4_li_request** %17, align 8
  %19 = icmp ne %struct.ext4_li_request* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %22 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %21, i32 0, i32 1
  %23 = load %struct.ext4_li_request*, %struct.ext4_li_request** %22, align 8
  %24 = getelementptr inbounds %struct.ext4_li_request, %struct.ext4_li_request* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  store i32 0, i32* %3, align 4
  br label %98

25:                                               ; preds = %2
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %41, label %29

29:                                               ; preds = %25
  %30 = load %struct.super_block*, %struct.super_block** %4, align 8
  %31 = getelementptr inbounds %struct.super_block, %struct.super_block* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MS_RDONLY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %29
  %37 = load %struct.super_block*, %struct.super_block** %4, align 8
  %38 = load i32, i32* @INIT_INODE_TABLE, align 4
  %39 = call i32 @test_opt(%struct.super_block* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36, %29, %25
  store i32 0, i32* %3, align 4
  br label %98

42:                                               ; preds = %36
  %43 = load %struct.super_block*, %struct.super_block** %4, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call %struct.ext4_li_request* @ext4_li_request_new(%struct.super_block* %43, i64 %44)
  store %struct.ext4_li_request* %45, %struct.ext4_li_request** %7, align 8
  %46 = load %struct.ext4_li_request*, %struct.ext4_li_request** %7, align 8
  %47 = icmp ne %struct.ext4_li_request* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %98

51:                                               ; preds = %42
  %52 = call i32 @mutex_lock(i32* @ext4_li_mtx)
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ext4_li_info, align 8
  %54 = icmp eq %struct.TYPE_2__* null, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = call i32 (...) @ext4_li_info_new()
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %89

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60, %51
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ext4_li_info, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = call i32 @mutex_lock(i32* %63)
  %65 = load %struct.ext4_li_request*, %struct.ext4_li_request** %7, align 8
  %66 = getelementptr inbounds %struct.ext4_li_request, %struct.ext4_li_request* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ext4_li_info, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = call i32 @list_add(i32* %66, i32* %68)
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ext4_li_info, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load %struct.ext4_li_request*, %struct.ext4_li_request** %7, align 8
  %74 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %75 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %74, i32 0, i32 1
  store %struct.ext4_li_request* %73, %struct.ext4_li_request** %75, align 8
  store %struct.ext4_li_request* null, %struct.ext4_li_request** %7, align 8
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ext4_li_info, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @EXT4_LAZYINIT_RUNNING, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %61
  %83 = call i32 (...) @ext4_run_lazyinit_thread()
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %89

87:                                               ; preds = %82
  br label %88

88:                                               ; preds = %87, %61
  br label %89

89:                                               ; preds = %88, %86, %59
  %90 = call i32 @mutex_unlock(i32* @ext4_li_mtx)
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load %struct.ext4_li_request*, %struct.ext4_li_request** %7, align 8
  %95 = call i32 @kfree(%struct.ext4_li_request* %94)
  br label %96

96:                                               ; preds = %93, %89
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %96, %48, %41, %20
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @test_opt(%struct.super_block*, i32) #1

declare dso_local %struct.ext4_li_request* @ext4_li_request_new(%struct.super_block*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ext4_li_info_new(...) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ext4_run_lazyinit_thread(...) #1

declare dso_local i32 @kfree(%struct.ext4_li_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
