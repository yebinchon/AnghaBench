; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35tx.c_Wb35Tx_EP2VM_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35tx.c_Wb35Tx_EP2VM_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, i32, %struct.wbsoft_priv* }
%struct.wbsoft_priv = type { %struct.hw_data }
%struct.hw_data = type { i64, i64, %struct.wb35_tx }
%struct.wb35_tx = type { i64, i8*, i32, i64, i64 }
%struct.TYPE_3__ = type { i32 }

@VM_COMPLETED = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"EP2 IoCompleteRoutine return error\0A\00", align 1
@VM_STOP = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @Wb35Tx_EP2VM_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Wb35Tx_EP2VM_complete(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.wbsoft_priv*, align 8
  %4 = alloca %struct.hw_data*, align 8
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca %struct.wb35_tx*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %11 = load %struct.urb*, %struct.urb** %2, align 8
  %12 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 2
  %13 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %12, align 8
  store %struct.wbsoft_priv* %13, %struct.wbsoft_priv** %3, align 8
  %14 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %3, align 8
  %15 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %14, i32 0, i32 0
  store %struct.hw_data* %15, %struct.hw_data** %4, align 8
  %16 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %17 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %16, i32 0, i32 2
  store %struct.wb35_tx* %17, %struct.wb35_tx** %7, align 8
  %18 = load %struct.wb35_tx*, %struct.wb35_tx** %7, align 8
  %19 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %8, align 8
  %22 = load i8*, i8** @VM_COMPLETED, align 8
  %23 = load %struct.wb35_tx*, %struct.wb35_tx** %7, align 8
  %24 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.urb*, %struct.urb** %2, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.wb35_tx*, %struct.wb35_tx** %7, align 8
  %29 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %31 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %1
  %35 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %36 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %1
  br label %103

40:                                               ; preds = %34
  %41 = load %struct.wb35_tx*, %struct.wb35_tx** %7, align 8
  %42 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %103

46:                                               ; preds = %40
  %47 = load %struct.wb35_tx*, %struct.wb35_tx** %7, align 8
  %48 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = call i32 @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %53 = load i8*, i8** @VM_STOP, align 8
  %54 = load %struct.wb35_tx*, %struct.wb35_tx** %7, align 8
  %55 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  br label %103

56:                                               ; preds = %46
  %57 = load %struct.urb*, %struct.urb** %2, align 8
  %58 = getelementptr inbounds %struct.urb, %struct.urb* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %10, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @cpu_to_le32(i32 %62)
  %64 = ashr i32 %63, 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %10, align 4
  %67 = sub nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = ashr i32 %68, 2
  store i32 %69, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %70

70:                                               ; preds = %99, %56
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp sle i32 %71, %72
  br i1 %73, label %74, label %102

74:                                               ; preds = %70
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @cpu_to_le32(i32 %79)
  %81 = and i32 %80, 255
  %82 = shl i32 %81, 24
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %82
  store i32 %85, i32* %83, align 4
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32 %87, i32* %88, align 4
  %89 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %3, align 8
  %90 = call i32 @Mds_SendComplete(%struct.wbsoft_priv* %89, %struct.TYPE_3__* %6)
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @cpu_to_le32(i32 %95)
  %97 = ashr i32 %96, 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %74
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %9, align 4
  br label %70

102:                                              ; preds = %70
  br label %110

103:                                              ; preds = %51, %45, %39
  %104 = load %struct.wb35_tx*, %struct.wb35_tx** %7, align 8
  %105 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %104, i32 0, i32 2
  %106 = call i32 @atomic_dec(i32* %105)
  %107 = load i8*, i8** @VM_STOP, align 8
  %108 = load %struct.wb35_tx*, %struct.wb35_tx** %7, align 8
  %109 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  br label %110

110:                                              ; preds = %103, %102
  ret void
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @Mds_SendComplete(%struct.wbsoft_priv*, %struct.TYPE_3__*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
