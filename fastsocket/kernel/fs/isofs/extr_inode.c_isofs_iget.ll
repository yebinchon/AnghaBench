; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/isofs/extr_inode.c_isofs_iget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/isofs/extr_inode.c_isofs_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.isofs_iget5_callback_data = type { i64, i64 }

@EINVAL = common dso_local global i64 0, align 8
@isofs_iget5_test = common dso_local global i32 0, align 4
@isofs_iget5_set = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@I_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @isofs_iget(%struct.super_block* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.isofs_iget5_callback_data, align 8
  %11 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.super_block*, %struct.super_block** %5, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = zext i32 %15 to i64
  %17 = shl i64 1, %16
  %18 = icmp uge i64 %12, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i64, i64* @EINVAL, align 8
  %21 = sub nsw i64 0, %20
  %22 = call %struct.inode* @ERR_PTR(i64 %21)
  store %struct.inode* %22, %struct.inode** %4, align 8
  br label %68

23:                                               ; preds = %3
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.isofs_iget5_callback_data, %struct.isofs_iget5_callback_data* %10, i32 0, i32 0
  store i64 %24, i64* %25, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.isofs_iget5_callback_data, %struct.isofs_iget5_callback_data* %10, i32 0, i32 1
  store i64 %26, i64* %27, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.super_block*, %struct.super_block** %5, align 8
  %30 = getelementptr inbounds %struct.super_block, %struct.super_block* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = zext i32 %31 to i64
  %33 = shl i64 %28, %32
  %34 = load i64, i64* %7, align 8
  %35 = or i64 %33, %34
  store i64 %35, i64* %8, align 8
  %36 = load %struct.super_block*, %struct.super_block** %5, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call %struct.inode* @iget5_locked(%struct.super_block* %36, i64 %37, i32* @isofs_iget5_test, i32* @isofs_iget5_set, %struct.isofs_iget5_callback_data* %10)
  store %struct.inode* %38, %struct.inode** %9, align 8
  %39 = load %struct.inode*, %struct.inode** %9, align 8
  %40 = icmp ne %struct.inode* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %23
  %42 = load i64, i64* @ENOMEM, align 8
  %43 = sub nsw i64 0, %42
  %44 = call %struct.inode* @ERR_PTR(i64 %43)
  store %struct.inode* %44, %struct.inode** %4, align 8
  br label %68

45:                                               ; preds = %23
  %46 = load %struct.inode*, %struct.inode** %9, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @I_NEW, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %45
  %53 = load %struct.inode*, %struct.inode** %9, align 8
  %54 = call i64 @isofs_read_inode(%struct.inode* %53)
  store i64 %54, i64* %11, align 8
  %55 = load i64, i64* %11, align 8
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.inode*, %struct.inode** %9, align 8
  %59 = call i32 @iget_failed(%struct.inode* %58)
  %60 = load i64, i64* %11, align 8
  %61 = call %struct.inode* @ERR_PTR(i64 %60)
  store %struct.inode* %61, %struct.inode** %9, align 8
  br label %65

62:                                               ; preds = %52
  %63 = load %struct.inode*, %struct.inode** %9, align 8
  %64 = call i32 @unlock_new_inode(%struct.inode* %63)
  br label %65

65:                                               ; preds = %62, %57
  br label %66

66:                                               ; preds = %65, %45
  %67 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %67, %struct.inode** %4, align 8
  br label %68

68:                                               ; preds = %66, %41, %19
  %69 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %69
}

declare dso_local %struct.inode* @ERR_PTR(i64) #1

declare dso_local %struct.inode* @iget5_locked(%struct.super_block*, i64, i32*, i32*, %struct.isofs_iget5_callback_data*) #1

declare dso_local i64 @isofs_read_inode(%struct.inode*) #1

declare dso_local i32 @iget_failed(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
