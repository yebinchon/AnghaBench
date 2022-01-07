; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_mac.c_ConfigFlowControl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_mac.c_ConfigFlowControl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { i64, i64, i64 }

@None = common dso_local global i8* null, align 8
@TRUEPHY_BIT_READ = common dso_local global i32 0, align 4
@TRUEPHY_BIT_SET = common dso_local global i8 0, align 1
@TRUEPHY_BIT_CLEAR = common dso_local global i8 0, align 1
@Both = common dso_local global i64 0, align 8
@RxOnly = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ConfigFlowControl(%struct.et131x_adapter* %0) #0 {
  %2 = alloca %struct.et131x_adapter*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %2, align 8
  %5 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i8*, i8** @None, align 8
  %11 = ptrtoint i8* %10 to i64
  %12 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %12, i32 0, i32 1
  store i64 %11, i64* %13, align 8
  br label %102

14:                                               ; preds = %1
  %15 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %16 = load i32, i32* @TRUEPHY_BIT_READ, align 4
  %17 = call i32 @ET1310_PhyAccessMiBit(%struct.et131x_adapter* %15, i32 %16, i32 5, i32 10, i8* %3)
  %18 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %19 = load i32, i32* @TRUEPHY_BIT_READ, align 4
  %20 = call i32 @ET1310_PhyAccessMiBit(%struct.et131x_adapter* %18, i32 %19, i32 5, i32 11, i8* %4)
  %21 = load i8, i8* %3, align 1
  %22 = sext i8 %21 to i32
  %23 = load i8, i8* @TRUEPHY_BIT_SET, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %14
  %27 = load i8, i8* %4, align 1
  %28 = sext i8 %27 to i32
  %29 = load i8, i8* @TRUEPHY_BIT_SET, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  br label %101

38:                                               ; preds = %26, %14
  %39 = load i8, i8* %3, align 1
  %40 = sext i8 %39 to i32
  %41 = load i8, i8* @TRUEPHY_BIT_SET, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %66

44:                                               ; preds = %38
  %45 = load i8, i8* %4, align 1
  %46 = sext i8 %45 to i32
  %47 = load i8, i8* @TRUEPHY_BIT_CLEAR, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %44
  %51 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %52 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @Both, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i64, i64* @Both, align 8
  %58 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %59 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  br label %65

60:                                               ; preds = %50
  %61 = load i8*, i8** @None, align 8
  %62 = ptrtoint i8* %61 to i64
  %63 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %64 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %60, %56
  br label %100

66:                                               ; preds = %44, %38
  %67 = load i8, i8* %3, align 1
  %68 = sext i8 %67 to i32
  %69 = load i8, i8* @TRUEPHY_BIT_CLEAR, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %66
  %73 = load i8, i8* %4, align 1
  %74 = sext i8 %73 to i32
  %75 = load i8, i8* @TRUEPHY_BIT_CLEAR, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = load i8*, i8** @None, align 8
  %80 = ptrtoint i8* %79 to i64
  %81 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %82 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  br label %99

83:                                               ; preds = %72, %66
  %84 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %85 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @Both, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load i64, i64* @RxOnly, align 8
  %91 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %92 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  br label %98

93:                                               ; preds = %83
  %94 = load i8*, i8** @None, align 8
  %95 = ptrtoint i8* %94 to i64
  %96 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %97 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %96, i32 0, i32 1
  store i64 %95, i64* %97, align 8
  br label %98

98:                                               ; preds = %93, %89
  br label %99

99:                                               ; preds = %98, %78
  br label %100

100:                                              ; preds = %99, %65
  br label %101

101:                                              ; preds = %100, %32
  br label %102

102:                                              ; preds = %101, %9
  ret void
}

declare dso_local i32 @ET1310_PhyAccessMiBit(%struct.et131x_adapter*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
