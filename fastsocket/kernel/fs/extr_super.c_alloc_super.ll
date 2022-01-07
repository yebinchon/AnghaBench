; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_super.c_alloc_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_super.c_alloc_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_operations = type { i32 }
%struct.super_block = type { i32, i32, %struct.super_operations*, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.file_system_type = type { i32, i32 }

@GFP_USER = common dso_local global i32 0, align 4
@alloc_super.default_op = internal constant %struct.super_operations zeroinitializer, align 4
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@MAX_NON_LFS = common dso_local global i32 0, align 4
@sb_dquot_ops = common dso_local global i32 0, align 4
@sb_quotactl_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.super_block* (%struct.file_system_type*)* @alloc_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.super_block* @alloc_super(%struct.file_system_type* %0) #0 {
  %2 = alloca %struct.file_system_type*, align 8
  %3 = alloca %struct.super_block*, align 8
  store %struct.file_system_type* %0, %struct.file_system_type** %2, align 8
  %4 = load i32, i32* @GFP_USER, align 4
  %5 = call %struct.super_block* @kzalloc(i32 80, i32 %4)
  store %struct.super_block* %5, %struct.super_block** %3, align 8
  %6 = load %struct.super_block*, %struct.super_block** %3, align 8
  %7 = icmp ne %struct.super_block* %6, null
  br i1 %7, label %8, label %93

8:                                                ; preds = %1
  %9 = load %struct.super_block*, %struct.super_block** %3, align 8
  %10 = call i64 @security_sb_alloc(%struct.super_block* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load %struct.super_block*, %struct.super_block** %3, align 8
  %14 = call i32 @kfree(%struct.super_block* %13)
  store %struct.super_block* null, %struct.super_block** %3, align 8
  br label %94

15:                                               ; preds = %8
  %16 = load %struct.super_block*, %struct.super_block** %3, align 8
  %17 = getelementptr inbounds %struct.super_block, %struct.super_block* %16, i32 0, i32 16
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.super_block*, %struct.super_block** %3, align 8
  %20 = load %struct.file_system_type*, %struct.file_system_type** %2, align 8
  %21 = call i64 @init_sb_writers(%struct.super_block* %19, %struct.file_system_type* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %96

24:                                               ; preds = %15
  %25 = load %struct.super_block*, %struct.super_block** %3, align 8
  %26 = getelementptr inbounds %struct.super_block, %struct.super_block* %25, i32 0, i32 15
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.super_block*, %struct.super_block** %3, align 8
  %29 = getelementptr inbounds %struct.super_block, %struct.super_block* %28, i32 0, i32 14
  %30 = call i32 @INIT_HLIST_HEAD(i32* %29)
  %31 = load %struct.super_block*, %struct.super_block** %3, align 8
  %32 = getelementptr inbounds %struct.super_block, %struct.super_block* %31, i32 0, i32 13
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.super_block*, %struct.super_block** %3, align 8
  %35 = getelementptr inbounds %struct.super_block, %struct.super_block* %34, i32 0, i32 12
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.super_block*, %struct.super_block** %3, align 8
  %38 = getelementptr inbounds %struct.super_block, %struct.super_block* %37, i32 0, i32 10
  %39 = call i32 @init_rwsem(i32* %38)
  %40 = load %struct.super_block*, %struct.super_block** %3, align 8
  %41 = getelementptr inbounds %struct.super_block, %struct.super_block* %40, i32 0, i32 11
  %42 = call i32 @mutex_init(i32* %41)
  %43 = load %struct.super_block*, %struct.super_block** %3, align 8
  %44 = getelementptr inbounds %struct.super_block, %struct.super_block* %43, i32 0, i32 10
  %45 = load %struct.file_system_type*, %struct.file_system_type** %2, align 8
  %46 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %45, i32 0, i32 1
  %47 = call i32 @lockdep_set_class(i32* %44, i32* %46)
  %48 = load %struct.super_block*, %struct.super_block** %3, align 8
  %49 = getelementptr inbounds %struct.super_block, %struct.super_block* %48, i32 0, i32 11
  %50 = load %struct.file_system_type*, %struct.file_system_type** %2, align 8
  %51 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %50, i32 0, i32 0
  %52 = call i32 @lockdep_set_class(i32* %49, i32* %51)
  %53 = load %struct.super_block*, %struct.super_block** %3, align 8
  %54 = getelementptr inbounds %struct.super_block, %struct.super_block* %53, i32 0, i32 10
  %55 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %56 = call i32 @down_write_nested(i32* %54, i32 %55)
  %57 = load %struct.super_block*, %struct.super_block** %3, align 8
  %58 = getelementptr inbounds %struct.super_block, %struct.super_block* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %struct.super_block*, %struct.super_block** %3, align 8
  %60 = getelementptr inbounds %struct.super_block, %struct.super_block* %59, i32 0, i32 9
  %61 = call i32 @atomic_set(i32* %60, i32 1)
  %62 = load %struct.super_block*, %struct.super_block** %3, align 8
  %63 = getelementptr inbounds %struct.super_block, %struct.super_block* %62, i32 0, i32 8
  %64 = call i32 @mutex_init(i32* %63)
  %65 = load %struct.super_block*, %struct.super_block** %3, align 8
  %66 = getelementptr inbounds %struct.super_block, %struct.super_block* %65, i32 0, i32 7
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = call i32 @mutex_init(i32* %67)
  %69 = load %struct.super_block*, %struct.super_block** %3, align 8
  %70 = getelementptr inbounds %struct.super_block, %struct.super_block* %69, i32 0, i32 7
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = call i32 @mutex_init(i32* %71)
  %73 = load %struct.super_block*, %struct.super_block** %3, align 8
  %74 = getelementptr inbounds %struct.super_block, %struct.super_block* %73, i32 0, i32 7
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = call i32 @init_rwsem(i32* %75)
  %77 = load %struct.super_block*, %struct.super_block** %3, align 8
  %78 = getelementptr inbounds %struct.super_block, %struct.super_block* %77, i32 0, i32 6
  %79 = call i32 @init_waitqueue_head(i32* %78)
  %80 = load i32, i32* @MAX_NON_LFS, align 4
  %81 = load %struct.super_block*, %struct.super_block** %3, align 8
  %82 = getelementptr inbounds %struct.super_block, %struct.super_block* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @sb_dquot_ops, align 4
  %84 = load %struct.super_block*, %struct.super_block** %3, align 8
  %85 = getelementptr inbounds %struct.super_block, %struct.super_block* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @sb_quotactl_ops, align 4
  %87 = load %struct.super_block*, %struct.super_block** %3, align 8
  %88 = getelementptr inbounds %struct.super_block, %struct.super_block* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 8
  %89 = load %struct.super_block*, %struct.super_block** %3, align 8
  %90 = getelementptr inbounds %struct.super_block, %struct.super_block* %89, i32 0, i32 2
  store %struct.super_operations* @alloc_super.default_op, %struct.super_operations** %90, align 8
  %91 = load %struct.super_block*, %struct.super_block** %3, align 8
  %92 = getelementptr inbounds %struct.super_block, %struct.super_block* %91, i32 0, i32 1
  store i32 1000000000, i32* %92, align 4
  br label %93

93:                                               ; preds = %24, %1
  br label %94

94:                                               ; preds = %96, %93, %12
  %95 = load %struct.super_block*, %struct.super_block** %3, align 8
  ret %struct.super_block* %95

96:                                               ; preds = %23
  %97 = load %struct.super_block*, %struct.super_block** %3, align 8
  %98 = call i32 @security_sb_free(%struct.super_block* %97)
  %99 = load %struct.super_block*, %struct.super_block** %3, align 8
  %100 = call i32 @destroy_sb_writers(%struct.super_block* %99)
  %101 = load %struct.super_block*, %struct.super_block** %3, align 8
  %102 = call i32 @kfree(%struct.super_block* %101)
  store %struct.super_block* null, %struct.super_block** %3, align 8
  br label %94
}

declare dso_local %struct.super_block* @kzalloc(i32, i32) #1

declare dso_local i64 @security_sb_alloc(%struct.super_block*) #1

declare dso_local i32 @kfree(%struct.super_block*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @init_sb_writers(%struct.super_block*, %struct.file_system_type*) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @lockdep_set_class(i32*, i32*) #1

declare dso_local i32 @down_write_nested(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @security_sb_free(%struct.super_block*) #1

declare dso_local i32 @destroy_sb_writers(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
