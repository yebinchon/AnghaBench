; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_rdma.c_rds_iw_map_fastreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_rdma.c_rds_iw_map_fastreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_iw_mr_pool = type { i64, %struct.rds_iw_device* }
%struct.rds_iw_device = type { i32 }
%struct.rds_iw_mr = type { %struct.TYPE_4__*, %struct.rds_iw_mapping }
%struct.TYPE_4__ = type { i32* }
%struct.rds_iw_mapping = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.scatterlist = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@s_iw_rdma_mr_used = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rds_iw_mr_pool*, %struct.rds_iw_mr*, %struct.scatterlist*, i32)* @rds_iw_map_fastreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rds_iw_map_fastreg(%struct.rds_iw_mr_pool* %0, %struct.rds_iw_mr* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca %struct.rds_iw_mr_pool*, align 8
  %6 = alloca %struct.rds_iw_mr*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rds_iw_device*, align 8
  %10 = alloca %struct.rds_iw_mapping*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rds_iw_mr_pool* %0, %struct.rds_iw_mr_pool** %5, align 8
  store %struct.rds_iw_mr* %1, %struct.rds_iw_mr** %6, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.rds_iw_mr_pool*, %struct.rds_iw_mr_pool** %5, align 8
  %15 = getelementptr inbounds %struct.rds_iw_mr_pool, %struct.rds_iw_mr_pool* %14, i32 0, i32 1
  %16 = load %struct.rds_iw_device*, %struct.rds_iw_device** %15, align 8
  store %struct.rds_iw_device* %16, %struct.rds_iw_device** %9, align 8
  %17 = load %struct.rds_iw_mr*, %struct.rds_iw_mr** %6, align 8
  %18 = getelementptr inbounds %struct.rds_iw_mr, %struct.rds_iw_mr* %17, i32 0, i32 1
  store %struct.rds_iw_mapping* %18, %struct.rds_iw_mapping** %10, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.rds_iw_mapping*, %struct.rds_iw_mapping** %10, align 8
  %20 = getelementptr inbounds %struct.rds_iw_mapping, %struct.rds_iw_mapping* %19, i32 0, i32 0
  %21 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @rds_iw_set_scatterlist(%struct.TYPE_5__* %20, %struct.scatterlist* %21, i32 %22)
  %24 = load %struct.rds_iw_device*, %struct.rds_iw_device** %9, align 8
  %25 = load %struct.rds_iw_mapping*, %struct.rds_iw_mapping** %10, align 8
  %26 = getelementptr inbounds %struct.rds_iw_mapping, %struct.rds_iw_mapping* %25, i32 0, i32 0
  %27 = call i32* @rds_iw_map_scatterlist(%struct.rds_iw_device* %24, %struct.TYPE_5__* %26)
  store i32* %27, i32** %11, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = call i64 @IS_ERR(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i32*, i32** %11, align 8
  %33 = call i32 @PTR_ERR(i32* %32)
  store i32 %33, i32* %13, align 4
  store i32* null, i32** %11, align 8
  br label %80

34:                                               ; preds = %4
  %35 = load %struct.rds_iw_mapping*, %struct.rds_iw_mapping** %10, align 8
  %36 = getelementptr inbounds %struct.rds_iw_mapping, %struct.rds_iw_mapping* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.rds_iw_mr_pool*, %struct.rds_iw_mr_pool** %5, align 8
  %40 = getelementptr inbounds %struct.rds_iw_mr_pool, %struct.rds_iw_mr_pool* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i32, i32* @EMSGSIZE, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %13, align 4
  br label %80

46:                                               ; preds = %34
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %68, %46
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.rds_iw_mapping*, %struct.rds_iw_mapping** %10, align 8
  %50 = getelementptr inbounds %struct.rds_iw_mapping, %struct.rds_iw_mapping* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %48, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %47
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.rds_iw_mr*, %struct.rds_iw_mr** %6, align 8
  %61 = getelementptr inbounds %struct.rds_iw_mr, %struct.rds_iw_mr* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %59, i32* %67, align 4
  br label %68

68:                                               ; preds = %54
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %47

71:                                               ; preds = %47
  %72 = load %struct.rds_iw_mapping*, %struct.rds_iw_mapping** %10, align 8
  %73 = call i32 @rds_iw_rdma_build_fastreg(%struct.rds_iw_mapping* %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %80

77:                                               ; preds = %71
  %78 = load i32, i32* @s_iw_rdma_mr_used, align 4
  %79 = call i32 @rds_iw_stats_inc(i32 %78)
  br label %80

80:                                               ; preds = %77, %76, %43, %31
  %81 = load i32*, i32** %11, align 8
  %82 = call i32 @kfree(i32* %81)
  %83 = load i32, i32* %13, align 4
  ret i32 %83
}

declare dso_local i32 @rds_iw_set_scatterlist(%struct.TYPE_5__*, %struct.scatterlist*, i32) #1

declare dso_local i32* @rds_iw_map_scatterlist(%struct.rds_iw_device*, %struct.TYPE_5__*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @rds_iw_rdma_build_fastreg(%struct.rds_iw_mapping*) #1

declare dso_local i32 @rds_iw_stats_inc(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
