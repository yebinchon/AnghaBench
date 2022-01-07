; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_reg.c_BBProcessor_AL7230_5000.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_reg.c_BBProcessor_AL7230_5000.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_data = type { %struct.wb35_reg }
%struct.wb35_reg = type { i32, i32, i32, i32, i32, i32 }

@AUTO_INCREMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BBProcessor_AL7230_5000(%struct.hw_data* %0) #0 {
  %2 = alloca %struct.hw_data*, align 8
  %3 = alloca %struct.wb35_reg*, align 8
  %4 = alloca [12 x i32], align 16
  store %struct.hw_data* %0, %struct.hw_data** %2, align 8
  %5 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %6 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %5, i32 0, i32 0
  store %struct.wb35_reg* %6, %struct.wb35_reg** %3, align 8
  %7 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 0
  store i32 380266104, i32* %7, align 16
  %8 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 1
  store i32 -1694523214, i32* %8, align 4
  %9 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 2
  store i32 1439697412, i32* %9, align 8
  %10 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 3
  store i32 -268491970, i32* %10, align 4
  %11 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %12 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %11, i32 0, i32 0
  store i32 -268491970, i32* %12, align 4
  %13 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 4
  store i32 262986949, i32* %13, align 16
  %14 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 5
  store i32 13280051, i32* %14, align 4
  %15 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 6
  store i32 -230481647, i32* %15, align 8
  %16 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 7
  store i32 262402285, i32* %16, align 4
  %17 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 8
  store i32 96744512, i32* %17, align 16
  %18 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 9
  store i32 10873, i32* %18, align 4
  %19 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 10
  store i32 1073743144, i32* %19, align 8
  %20 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 11
  store i32 590339888, i32* %20, align 4
  %21 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %22 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %21, i32 0, i32 1
  store i32 590339888, i32* %22, align 4
  %23 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %24 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 0
  %25 = load i32, i32* @AUTO_INCREMENT, align 4
  %26 = call i32 @Wb35Reg_BurstWrite(%struct.hw_data* %23, i32 4096, i32* %24, i32 12, i32 %25)
  %27 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 0
  store i32 -2147472260, i32* %27, align 16
  %28 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 1
  store i32 12637893, i32* %28, align 4
  %29 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 2
  store i32 1529644905, i32* %29, align 8
  %30 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 3
  store i32 0, i32* %30, align 4
  %31 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %32 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %31, i32 0, i32 2
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 4
  store i32 16169, i32* %33, align 16
  %34 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 5
  store i32 251591678, i32* %34, align 4
  %35 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 6
  store i32 3353627, i32* %35, align 8
  %36 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 7
  store i32 167837439, i32* %36, align 4
  %37 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 8
  store i32 722498056, i32* %37, align 16
  %38 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %39 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %38, i32 0, i32 3
  store i32 722498056, i32* %39, align 4
  %40 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 9
  store i32 0, i32* %40, align 4
  %41 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %42 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %41, i32 0, i32 4
  store i32 0, i32* %42, align 4
  %43 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 10
  store i32 1381122626, i32* %43, align 8
  %44 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %45 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %44, i32 0, i32 5
  store i32 1381122626, i32* %45, align 4
  %46 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 11
  store i32 -1442136064, i32* %46, align 4
  %47 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %48 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 0
  %49 = load i32, i32* @AUTO_INCREMENT, align 4
  %50 = call i32 @Wb35Reg_BurstWrite(%struct.hw_data* %47, i32 4144, i32* %48, i32 12, i32 %49)
  ret void
}

declare dso_local i32 @Wb35Reg_BurstWrite(%struct.hw_data*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
