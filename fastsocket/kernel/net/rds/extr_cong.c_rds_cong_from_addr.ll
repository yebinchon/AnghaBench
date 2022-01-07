; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_cong.c_rds_cong_from_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_cong.c_rds_cong_from_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_cong_map = type { i64*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RDS_CONG_MAP_PAGES = common dso_local global i64 0, align 8
@rds_cong_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"map %p for addr %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rds_cong_map* (i32)* @rds_cong_from_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rds_cong_map* @rds_cong_from_addr(i32 %0) #0 {
  %2 = alloca %struct.rds_cong_map*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rds_cong_map*, align 8
  %5 = alloca %struct.rds_cong_map*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.rds_cong_map* null, %struct.rds_cong_map** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.rds_cong_map* @kzalloc(i32 24, i32 %9)
  store %struct.rds_cong_map* %10, %struct.rds_cong_map** %4, align 8
  %11 = load %struct.rds_cong_map*, %struct.rds_cong_map** %4, align 8
  %12 = icmp ne %struct.rds_cong_map* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store %struct.rds_cong_map* null, %struct.rds_cong_map** %2, align 8
  br label %95

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.rds_cong_map*, %struct.rds_cong_map** %4, align 8
  %17 = getelementptr inbounds %struct.rds_cong_map, %struct.rds_cong_map* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load %struct.rds_cong_map*, %struct.rds_cong_map** %4, align 8
  %19 = getelementptr inbounds %struct.rds_cong_map, %struct.rds_cong_map* %18, i32 0, i32 2
  %20 = call i32 @init_waitqueue_head(i32* %19)
  %21 = load %struct.rds_cong_map*, %struct.rds_cong_map** %4, align 8
  %22 = getelementptr inbounds %struct.rds_cong_map, %struct.rds_cong_map* %21, i32 0, i32 1
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  store i64 0, i64* %7, align 8
  br label %24

24:                                               ; preds = %41, %14
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @RDS_CONG_MAP_PAGES, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %24
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i64 @get_zeroed_page(i32 %29)
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %57

34:                                               ; preds = %28
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.rds_cong_map*, %struct.rds_cong_map** %4, align 8
  %37 = getelementptr inbounds %struct.rds_cong_map, %struct.rds_cong_map* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  store i64 %35, i64* %40, align 8
  br label %41

41:                                               ; preds = %34
  %42 = load i64, i64* %7, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %7, align 8
  br label %24

44:                                               ; preds = %24
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @spin_lock_irqsave(i32* @rds_cong_lock, i64 %45)
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.rds_cong_map*, %struct.rds_cong_map** %4, align 8
  %49 = call %struct.rds_cong_map* @rds_cong_tree_walk(i32 %47, %struct.rds_cong_map* %48)
  store %struct.rds_cong_map* %49, %struct.rds_cong_map** %5, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* @rds_cong_lock, i64 %50)
  %52 = load %struct.rds_cong_map*, %struct.rds_cong_map** %5, align 8
  %53 = icmp ne %struct.rds_cong_map* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %44
  %55 = load %struct.rds_cong_map*, %struct.rds_cong_map** %4, align 8
  store %struct.rds_cong_map* %55, %struct.rds_cong_map** %5, align 8
  store %struct.rds_cong_map* null, %struct.rds_cong_map** %4, align 8
  br label %56

56:                                               ; preds = %54, %44
  br label %57

57:                                               ; preds = %56, %33
  %58 = load %struct.rds_cong_map*, %struct.rds_cong_map** %4, align 8
  %59 = icmp ne %struct.rds_cong_map* %58, null
  br i1 %59, label %60, label %89

60:                                               ; preds = %57
  store i64 0, i64* %7, align 8
  br label %61

61:                                               ; preds = %83, %60
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @RDS_CONG_MAP_PAGES, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load %struct.rds_cong_map*, %struct.rds_cong_map** %4, align 8
  %67 = getelementptr inbounds %struct.rds_cong_map, %struct.rds_cong_map* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* %7, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br label %73

73:                                               ; preds = %65, %61
  %74 = phi i1 [ false, %61 ], [ %72, %65 ]
  br i1 %74, label %75, label %86

75:                                               ; preds = %73
  %76 = load %struct.rds_cong_map*, %struct.rds_cong_map** %4, align 8
  %77 = getelementptr inbounds %struct.rds_cong_map, %struct.rds_cong_map* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = load i64, i64* %7, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @free_page(i64 %81)
  br label %83

83:                                               ; preds = %75
  %84 = load i64, i64* %7, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %7, align 8
  br label %61

86:                                               ; preds = %73
  %87 = load %struct.rds_cong_map*, %struct.rds_cong_map** %4, align 8
  %88 = call i32 @kfree(%struct.rds_cong_map* %87)
  br label %89

89:                                               ; preds = %86, %57
  %90 = load %struct.rds_cong_map*, %struct.rds_cong_map** %5, align 8
  %91 = load i32, i32* %3, align 4
  %92 = call i32 @be32_to_cpu(i32 %91)
  %93 = call i32 @rdsdebug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.rds_cong_map* %90, i32 %92)
  %94 = load %struct.rds_cong_map*, %struct.rds_cong_map** %5, align 8
  store %struct.rds_cong_map* %94, %struct.rds_cong_map** %2, align 8
  br label %95

95:                                               ; preds = %89, %13
  %96 = load %struct.rds_cong_map*, %struct.rds_cong_map** %2, align 8
  ret %struct.rds_cong_map* %96
}

declare dso_local %struct.rds_cong_map* @kzalloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.rds_cong_map* @rds_cong_tree_walk(i32, %struct.rds_cong_map*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(%struct.rds_cong_map*) #1

declare dso_local i32 @rdsdebug(i8*, %struct.rds_cong_map*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
