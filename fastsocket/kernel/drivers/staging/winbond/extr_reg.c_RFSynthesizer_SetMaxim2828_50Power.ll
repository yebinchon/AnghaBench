; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_reg.c_RFSynthesizer_SetMaxim2828_50Power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_reg.c_RFSynthesizer_SetMaxim2828_50Power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_data = type { i32 }

@max2828_power_data_50 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RFSynthesizer_SetMaxim2828_50Power(%struct.hw_data* %0, i32 %1) #0 {
  %3 = alloca %struct.hw_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hw_data* %0, %struct.hw_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 1, i32* %4, align 4
  br label %9

9:                                                ; preds = %8, %2
  %10 = load i32*, i32** @max2828_power_data_50, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @BitReverse(i32 %14, i32 18)
  %16 = or i32 -1845493760, %15
  store i32 %16, i32* %5, align 4
  %17 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @Wb35Reg_Write(%struct.hw_data* %17, i32 2148, i32 %18)
  %20 = load i32, i32* %4, align 4
  ret i32 %20
}

declare dso_local i32 @BitReverse(i32, i32) #1

declare dso_local i32 @Wb35Reg_Write(%struct.hw_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
