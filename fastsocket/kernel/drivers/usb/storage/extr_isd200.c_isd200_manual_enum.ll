; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_isd200.c_isd200_manual_enum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_isd200.c_isd200_manual_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64 }
%struct.isd200_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ISD200_GOOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Entering isd200_manual_enum\0A\00", align 1
@ATA_ADDRESS_DEVHEAD_STD = common dso_local global i32 0, align 4
@ATA_ADDRESS_DEVHEAD_SLAVE = common dso_local global i32 0, align 4
@ATACFG_MASTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"   Setting Master/Slave selection to %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Leaving isd200_manual_enum %08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*)* @isd200_manual_enum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isd200_manual_enum(%struct.us_data* %0) #0 {
  %2 = alloca %struct.us_data*, align 8
  %3 = alloca %struct.isd200_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %2, align 8
  %6 = load %struct.us_data*, %struct.us_data** %2, align 8
  %7 = getelementptr inbounds %struct.us_data, %struct.us_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.isd200_info*
  store %struct.isd200_info* %9, %struct.isd200_info** %3, align 8
  %10 = load i32, i32* @ISD200_GOOD, align 4
  store i32 %10, i32* %4, align 4
  %11 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.us_data*, %struct.us_data** %2, align 8
  %13 = call i32 @isd200_read_config(%struct.us_data* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @ISD200_GOOD, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %77

17:                                               ; preds = %1
  %18 = load %struct.us_data*, %struct.us_data** %2, align 8
  %19 = load i32, i32* @ATA_ADDRESS_DEVHEAD_STD, align 4
  %20 = call i32 @isd200_try_enum(%struct.us_data* %18, i32 %19, i32 0)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @ISD200_GOOD, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load %struct.us_data*, %struct.us_data** %2, align 8
  %26 = load i32, i32* @ATA_ADDRESS_DEVHEAD_SLAVE, align 4
  %27 = call i32 @isd200_try_enum(%struct.us_data* %25, i32 %26, i32 0)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %24, %17
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @ISD200_GOOD, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load %struct.us_data*, %struct.us_data** %2, align 8
  %34 = call i32 @isd200_srst(%struct.us_data* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @ISD200_GOOD, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.us_data*, %struct.us_data** %2, align 8
  %40 = load i32, i32* @ATA_ADDRESS_DEVHEAD_STD, align 4
  %41 = call i32 @isd200_try_enum(%struct.us_data* %39, i32 %40, i32 1)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %32
  br label %43

43:                                               ; preds = %42, %28
  %44 = load %struct.isd200_info*, %struct.isd200_info** %3, align 8
  %45 = getelementptr inbounds %struct.isd200_info, %struct.isd200_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ATA_ADDRESS_DEVHEAD_SLAVE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 1, i32 0
  store i32 %51, i32* %5, align 4
  %52 = load %struct.isd200_info*, %struct.isd200_info** %3, align 8
  %53 = getelementptr inbounds %struct.isd200_info, %struct.isd200_info* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ATACFG_MASTER, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %76, label %59

59:                                               ; preds = %43
  %60 = load i32, i32* %5, align 4
  %61 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load %struct.isd200_info*, %struct.isd200_info** %3, align 8
  %63 = getelementptr inbounds %struct.isd200_info, %struct.isd200_info* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 63
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* %5, align 4
  %68 = shl i32 %67, 6
  %69 = load %struct.isd200_info*, %struct.isd200_info** %3, align 8
  %70 = getelementptr inbounds %struct.isd200_info, %struct.isd200_info* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %68
  store i32 %73, i32* %71, align 4
  %74 = load %struct.us_data*, %struct.us_data** %2, align 8
  %75 = call i32 @isd200_write_config(%struct.us_data* %74)
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %59, %43
  br label %77

77:                                               ; preds = %76, %1
  %78 = load i32, i32* %4, align 4
  %79 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @US_DEBUGP(i8*, ...) #1

declare dso_local i32 @isd200_read_config(%struct.us_data*) #1

declare dso_local i32 @isd200_try_enum(%struct.us_data*, i32, i32) #1

declare dso_local i32 @isd200_srst(%struct.us_data*) #1

declare dso_local i32 @isd200_write_config(%struct.us_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
