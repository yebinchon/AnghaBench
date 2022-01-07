; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_ds1wm.c_ds1wm_search.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_ds1wm.c_ds1wm_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_master = type { i32 }
%struct.w1_master.0 = type opaque
%struct.ds1wm_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DS1WM_CMD = common dso_local global i32 0, align 4
@DS1WM_CMD_SRA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"found 0x%08llX\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.w1_master*, i32, i32 (%struct.w1_master.0*, i64)*)* @ds1wm_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds1wm_search(i8* %0, %struct.w1_master* %1, i32 %2, i32 (%struct.w1_master.0*, i64)* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.w1_master*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (%struct.w1_master.0*, i64)*, align 8
  %9 = alloca %struct.ds1wm_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store %struct.w1_master* %1, %struct.w1_master** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 (%struct.w1_master.0*, i64)* %3, i32 (%struct.w1_master.0*, i64)** %8, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.ds1wm_data*
  store %struct.ds1wm_data* %16, %struct.ds1wm_data** %9, align 8
  %17 = load %struct.ds1wm_data*, %struct.ds1wm_data** %9, align 8
  %18 = call i64 @ds1wm_reset(%struct.ds1wm_data* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %105

21:                                               ; preds = %4
  %22 = load %struct.ds1wm_data*, %struct.ds1wm_data** %9, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @ds1wm_write(%struct.ds1wm_data* %22, i32 %23)
  %25 = load %struct.ds1wm_data*, %struct.ds1wm_data** %9, align 8
  %26 = load i32, i32* @DS1WM_CMD, align 4
  %27 = load i32, i32* @DS1WM_CMD_SRA, align 4
  %28 = call i32 @ds1wm_write_register(%struct.ds1wm_data* %25, i32 %26, i32 %27)
  store i64 0, i64* %11, align 8
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %83, %21
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 16
  br i1 %31, label %32, label %86

32:                                               ; preds = %29
  %33 = load %struct.ds1wm_data*, %struct.ds1wm_data** %9, align 8
  %34 = call zeroext i8 @ds1wm_read(%struct.ds1wm_data* %33, i32 0)
  store i8 %34, i8* %12, align 1
  %35 = load i8, i8* %12, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 2
  %38 = ashr i32 %37, 1
  %39 = load i8, i8* %12, align 1
  %40 = zext i8 %39 to i32
  %41 = and i32 %40, 8
  %42 = ashr i32 %41, 2
  %43 = or i32 %38, %42
  %44 = load i8, i8* %12, align 1
  %45 = zext i8 %44 to i32
  %46 = and i32 %45, 32
  %47 = ashr i32 %46, 3
  %48 = or i32 %43, %47
  %49 = load i8, i8* %12, align 1
  %50 = zext i8 %49 to i32
  %51 = and i32 %50, 128
  %52 = ashr i32 %51, 4
  %53 = or i32 %48, %52
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %13, align 1
  %55 = load i8, i8* %12, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, 1
  %58 = ashr i32 %57, 0
  %59 = load i8, i8* %12, align 1
  %60 = zext i8 %59 to i32
  %61 = and i32 %60, 4
  %62 = ashr i32 %61, 1
  %63 = or i32 %58, %62
  %64 = load i8, i8* %12, align 1
  %65 = zext i8 %64 to i32
  %66 = and i32 %65, 16
  %67 = ashr i32 %66, 2
  %68 = or i32 %63, %67
  %69 = load i8, i8* %12, align 1
  %70 = zext i8 %69 to i32
  %71 = and i32 %70, 64
  %72 = ashr i32 %71, 3
  %73 = or i32 %68, %72
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %14, align 1
  %75 = load i8, i8* %13, align 1
  %76 = zext i8 %75 to i64
  %77 = load i32, i32* %10, align 4
  %78 = mul nsw i32 %77, 4
  %79 = zext i32 %78 to i64
  %80 = shl i64 %76, %79
  %81 = load i64, i64* %11, align 8
  %82 = or i64 %81, %80
  store i64 %82, i64* %11, align 8
  br label %83

83:                                               ; preds = %32
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %29

86:                                               ; preds = %29
  %87 = load %struct.ds1wm_data*, %struct.ds1wm_data** %9, align 8
  %88 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %11, align 8
  %92 = call i32 @dev_dbg(i32* %90, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %91)
  %93 = load %struct.ds1wm_data*, %struct.ds1wm_data** %9, align 8
  %94 = load i32, i32* @DS1WM_CMD, align 4
  %95 = load i32, i32* @DS1WM_CMD_SRA, align 4
  %96 = xor i32 %95, -1
  %97 = call i32 @ds1wm_write_register(%struct.ds1wm_data* %93, i32 %94, i32 %96)
  %98 = load %struct.ds1wm_data*, %struct.ds1wm_data** %9, align 8
  %99 = call i64 @ds1wm_reset(%struct.ds1wm_data* %98)
  %100 = load i32 (%struct.w1_master.0*, i64)*, i32 (%struct.w1_master.0*, i64)** %8, align 8
  %101 = load %struct.w1_master*, %struct.w1_master** %6, align 8
  %102 = bitcast %struct.w1_master* %101 to %struct.w1_master.0*
  %103 = load i64, i64* %11, align 8
  %104 = call i32 %100(%struct.w1_master.0* %102, i64 %103)
  br label %105

105:                                              ; preds = %86, %20
  ret void
}

declare dso_local i64 @ds1wm_reset(%struct.ds1wm_data*) #1

declare dso_local i32 @ds1wm_write(%struct.ds1wm_data*, i32) #1

declare dso_local i32 @ds1wm_write_register(%struct.ds1wm_data*, i32, i32) #1

declare dso_local zeroext i8 @ds1wm_read(%struct.ds1wm_data*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
