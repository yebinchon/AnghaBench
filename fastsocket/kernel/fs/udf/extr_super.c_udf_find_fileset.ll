; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_super.c_udf_find_fileset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_super.c_udf_find_fileset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.kernel_lb_addr = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.udf_sb_info = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"Fileset at block=%d, partition=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.kernel_lb_addr*, %struct.kernel_lb_addr*)* @udf_find_fileset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_find_fileset(%struct.super_block* %0, %struct.kernel_lb_addr* %1, %struct.kernel_lb_addr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.kernel_lb_addr*, align 8
  %7 = alloca %struct.kernel_lb_addr*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.udf_sb_info*, align 8
  %12 = alloca %struct.kernel_lb_addr, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.kernel_lb_addr* %1, %struct.kernel_lb_addr** %6, align 8
  store %struct.kernel_lb_addr* %2, %struct.kernel_lb_addr** %7, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %8, align 8
  %13 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %6, align 8
  %14 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %6, align 8
  %19 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 65535
  br i1 %21, label %22, label %37

22:                                               ; preds = %17, %3
  %23 = load %struct.super_block*, %struct.super_block** %5, align 8
  %24 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %6, align 8
  %25 = call %struct.buffer_head* @udf_read_ptagged(%struct.super_block* %23, %struct.kernel_lb_addr* %24, i32 0, i32* %10)
  store %struct.buffer_head* %25, %struct.buffer_head** %8, align 8
  %26 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %27 = icmp ne %struct.buffer_head* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  store i32 1, i32* %4, align 4
  br label %76

29:                                               ; preds = %22
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 129
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %34 = call i32 @brelse(%struct.buffer_head* %33)
  store i32 1, i32* %4, align 4
  br label %76

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35
  br label %37

37:                                               ; preds = %36, %17
  %38 = load %struct.super_block*, %struct.super_block** %5, align 8
  %39 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %38)
  store %struct.udf_sb_info* %39, %struct.udf_sb_info** %11, align 8
  %40 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %41 = icmp ne %struct.buffer_head* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  store i32 1, i32* %4, align 4
  br label %76

43:                                               ; preds = %37
  %44 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %6, align 8
  %45 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, -1
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %6, align 8
  %50 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 65535
  br i1 %52, label %53, label %75

53:                                               ; preds = %48, %43
  %54 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %55 = icmp ne %struct.buffer_head* %54, null
  br i1 %55, label %56, label %75

56:                                               ; preds = %53
  %57 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %6, align 8
  %58 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %6, align 8
  %61 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @udf_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %62)
  %64 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %6, align 8
  %65 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.udf_sb_info*, %struct.udf_sb_info** %11, align 8
  %68 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.super_block*, %struct.super_block** %5, align 8
  %70 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %71 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %7, align 8
  %72 = call i32 @udf_load_fileset(%struct.super_block* %69, %struct.buffer_head* %70, %struct.kernel_lb_addr* %71)
  %73 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %74 = call i32 @brelse(%struct.buffer_head* %73)
  store i32 0, i32* %4, align 4
  br label %76

75:                                               ; preds = %53, %48
  store i32 1, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %56, %42, %32, %28
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.buffer_head* @udf_read_ptagged(%struct.super_block*, %struct.kernel_lb_addr*, i32, i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local i32 @udf_debug(i8*, i32, i32) #1

declare dso_local i32 @udf_load_fileset(%struct.super_block*, %struct.buffer_head*, %struct.kernel_lb_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
