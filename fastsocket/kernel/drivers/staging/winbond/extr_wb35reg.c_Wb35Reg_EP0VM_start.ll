; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35reg.c_Wb35Reg_EP0VM_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35reg.c_Wb35Reg_EP0VM_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_data = type { %struct.wb35_reg }
%struct.wb35_reg = type { i32, i32 }

@VM_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Wb35Reg_EP0VM_start(%struct.hw_data* %0) #0 {
  %2 = alloca %struct.hw_data*, align 8
  %3 = alloca %struct.wb35_reg*, align 8
  store %struct.hw_data* %0, %struct.hw_data** %2, align 8
  %4 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %5 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %4, i32 0, i32 0
  store %struct.wb35_reg* %5, %struct.wb35_reg** %3, align 8
  %6 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %7 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %6, i32 0, i32 0
  %8 = call i32 @atomic_inc_return(i32* %7)
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i32, i32* @VM_RUNNING, align 4
  %12 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %13 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %15 = call i32 @Wb35Reg_EP0VM(%struct.hw_data* %14)
  br label %20

16:                                               ; preds = %1
  %17 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %18 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %17, i32 0, i32 0
  %19 = call i32 @atomic_dec(i32* %18)
  br label %20

20:                                               ; preds = %16, %10
  ret void
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @Wb35Reg_EP0VM(%struct.hw_data*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
