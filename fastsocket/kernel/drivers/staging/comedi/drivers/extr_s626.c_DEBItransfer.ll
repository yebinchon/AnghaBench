; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_DEBItransfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_DEBItransfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }

@P_MC2 = common dso_local global i32 0, align 4
@MC2_UPLD_DEBI = common dso_local global i32 0, align 4
@P_PSR = common dso_local global i32 0, align 4
@PSR_DEBI_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @DEBItransfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DEBItransfer(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %3 = load i32, i32* @P_MC2, align 4
  %4 = load i32, i32* @MC2_UPLD_DEBI, align 4
  %5 = call i32 @MC_ENABLE(i32 %3, i32 %4)
  br label %6

6:                                                ; preds = %12, %1
  %7 = load i32, i32* @P_MC2, align 4
  %8 = load i32, i32* @MC2_UPLD_DEBI, align 4
  %9 = call i32 @MC_TEST(i32 %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  br label %6

13:                                               ; preds = %6
  br label %14

14:                                               ; preds = %20, %13
  %15 = load i32, i32* @P_PSR, align 4
  %16 = call i32 @RR7146(i32 %15)
  %17 = load i32, i32* @PSR_DEBI_S, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %14

21:                                               ; preds = %14
  ret void
}

declare dso_local i32 @MC_ENABLE(i32, i32) #1

declare dso_local i32 @MC_TEST(i32, i32) #1

declare dso_local i32 @RR7146(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
