; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_inode.c_udf_iget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_inode.c_udf_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.kernel_lb_addr = type { i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@I_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"block=%d, partition=%d out of range\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @udf_iget(%struct.super_block* %0, %struct.kernel_lb_addr* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.kernel_lb_addr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.kernel_lb_addr* %1, %struct.kernel_lb_addr** %5, align 8
  %8 = load %struct.super_block*, %struct.super_block** %4, align 8
  %9 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %5, align 8
  %10 = call i64 @udf_get_lb_pblock(%struct.super_block* %8, %struct.kernel_lb_addr* %9, i32 0)
  store i64 %10, i64* %6, align 8
  %11 = load %struct.super_block*, %struct.super_block** %4, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call %struct.inode* @iget_locked(%struct.super_block* %11, i64 %12)
  store %struct.inode* %13, %struct.inode** %7, align 8
  %14 = load %struct.inode*, %struct.inode** %7, align 8
  %15 = icmp ne %struct.inode* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.inode* null, %struct.inode** %3, align 8
  br label %69

17:                                               ; preds = %2
  %18 = load %struct.inode*, %struct.inode** %7, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @I_NEW, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %17
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = call %struct.TYPE_6__* @UDF_I(%struct.inode* %25)
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %5, align 8
  %29 = call i32 @memcpy(i32* %27, %struct.kernel_lb_addr* %28, i32 16)
  %30 = load %struct.inode*, %struct.inode** %7, align 8
  %31 = call i32 @__udf_read_inode(%struct.inode* %30)
  %32 = load %struct.inode*, %struct.inode** %7, align 8
  %33 = call i32 @unlock_new_inode(%struct.inode* %32)
  br label %34

34:                                               ; preds = %24, %17
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = call i64 @is_bad_inode(%struct.inode* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %66

39:                                               ; preds = %34
  %40 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %5, align 8
  %41 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.super_block*, %struct.super_block** %4, align 8
  %44 = call %struct.TYPE_5__* @UDF_SB(%struct.super_block* %43)
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %5, align 8
  %48 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sge i64 %42, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %39
  %55 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %5, align 8
  %56 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %5, align 8
  %59 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @udf_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %57, i64 %60)
  %62 = load %struct.inode*, %struct.inode** %7, align 8
  %63 = call i32 @make_bad_inode(%struct.inode* %62)
  br label %66

64:                                               ; preds = %39
  %65 = load %struct.inode*, %struct.inode** %7, align 8
  store %struct.inode* %65, %struct.inode** %3, align 8
  br label %69

66:                                               ; preds = %54, %38
  %67 = load %struct.inode*, %struct.inode** %7, align 8
  %68 = call i32 @iput(%struct.inode* %67)
  store %struct.inode* null, %struct.inode** %3, align 8
  br label %69

69:                                               ; preds = %66, %64, %16
  %70 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %70
}

declare dso_local i64 @udf_get_lb_pblock(%struct.super_block*, %struct.kernel_lb_addr*, i32) #1

declare dso_local %struct.inode* @iget_locked(%struct.super_block*, i64) #1

declare dso_local i32 @memcpy(i32*, %struct.kernel_lb_addr*, i32) #1

declare dso_local %struct.TYPE_6__* @UDF_I(%struct.inode*) #1

declare dso_local i32 @__udf_read_inode(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local %struct.TYPE_5__* @UDF_SB(%struct.super_block*) #1

declare dso_local i32 @udf_debug(i8*, i64, i64) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
