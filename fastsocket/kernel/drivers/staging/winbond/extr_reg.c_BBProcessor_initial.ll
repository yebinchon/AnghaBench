; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_reg.c_BBProcessor_initial.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_reg.c_BBProcessor_initial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_data = type { i32, i64, i64, %struct.wb35_reg }
%struct.wb35_reg = type { i32, i32, i32, i32, i32, i32, i32, i32*, i8**, i8*, i8* }

@AUTO_INCREMENT = common dso_local global i32 0, align 4
@BB48_DEFAULT_AL2230_11G = common dso_local global i8* null, align 8
@BB4C_DEFAULT_AL2230_11G = common dso_local global i8* null, align 8
@BB48_DEFAULT_WB242_11G = common dso_local global i8* null, align 8
@BB4C_DEFAULT_WB242_11G = common dso_local global i8* null, align 8
@MAX_SQ3_FILTER_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BBProcessor_initial(%struct.hw_data* %0) #0 {
  %2 = alloca %struct.hw_data*, align 8
  %3 = alloca %struct.wb35_reg*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [12 x i64], align 16
  store %struct.hw_data* %0, %struct.hw_data** %2, align 8
  %6 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %7 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %6, i32 0, i32 3
  store %struct.wb35_reg* %7, %struct.wb35_reg** %3, align 8
  %8 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %9 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %361 [
    i32 130, label %11
    i32 134, label %67
    i32 133, label %67
    i32 132, label %67
    i32 131, label %116
    i32 137, label %165
    i32 136, label %224
    i32 135, label %283
    i32 129, label %288
    i32 128, label %288
  ]

11:                                               ; preds = %1
  %12 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 0
  store i64 385121911, i64* %12, align 16
  %13 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 1
  store i64 2600447652, i64* %13, align 8
  %14 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 2
  store i64 1439697412, i64* %14, align 16
  %15 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 3
  store i64 4026473012, i64* %15, align 8
  %16 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %17 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %16, i32 0, i32 0
  store i32 -268494284, i32* %17, align 8
  %18 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 4
  store i64 262922423, i64* %18, align 16
  %19 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 5
  store i64 13280050, i64* %19, align 8
  %20 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 6
  store i64 4133691665, i64* %20, align 16
  %21 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 7
  store i64 262402285, i64* %21, align 8
  %22 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 8
  store i64 80492096, i64* %22, align 16
  %23 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 9
  store i64 10873, i64* %23, align 8
  %24 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %25 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 3
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 1073744424, i32 1073742376
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 10
  store i64 %30, i64* %31, align 16
  %32 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 11
  store i64 590339888, i64* %32, align 8
  %33 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %34 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %33, i32 0, i32 1
  store i32 590339888, i32* %34, align 4
  %35 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %36 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 0
  %37 = load i32, i32* @AUTO_INCREMENT, align 4
  %38 = call i32 @Wb35Reg_BurstWrite(%struct.hw_data* %35, i32 4096, i64* %36, i32 12, i32 %37)
  %39 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 0
  store i64 11348, i64* %39, align 16
  %40 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %41 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %40, i32 0, i32 2
  store i32 11348, i32* %41, align 8
  %42 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 1
  store i64 12637893, i64* %42, align 8
  %43 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 2
  store i64 1533839209, i64* %43, align 16
  %44 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 3
  store i64 0, i64* %44, align 8
  %45 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %46 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %45, i32 0, i32 3
  store i32 0, i32* %46, align 4
  %47 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 4
  store i64 16169, i64* %47, align 16
  %48 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 5
  store i64 251591678, i64* %48, align 8
  %49 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 6
  store i64 4537124, i64* %49, align 16
  %50 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 7
  store i64 234946303, i64* %50, align 8
  %51 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 8
  store i64 655385096, i64* %51, align 16
  %52 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %53 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %52, i32 0, i32 4
  store i32 655385096, i32* %53, align 8
  %54 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 9
  store i64 0, i64* %54, align 8
  %55 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %56 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %55, i32 0, i32 5
  store i32 0, i32* %56, align 4
  %57 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 10
  store i64 1684300900, i64* %57, align 16
  %58 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %59 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %58, i32 0, i32 6
  store i32 1684300900, i32* %59, align 8
  %60 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 11
  store i64 2852831232, i64* %60, align 8
  %61 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %62 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 0
  %63 = load i32, i32* @AUTO_INCREMENT, align 4
  %64 = call i32 @Wb35Reg_BurstWrite(%struct.hw_data* %61, i32 4144, i64* %62, i32 12, i32 %63)
  %65 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %66 = call i32 @Wb35Reg_Write(%struct.hw_data* %65, i32 4208, i32 69)
  br label %361

67:                                               ; preds = %1, %1, %1
  %68 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 0
  store i64 380927607, i64* %68, align 16
  %69 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 1
  store i64 2600447652, i64* %69, align 8
  %70 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 2
  store i64 1439697412, i64* %70, align 16
  %71 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 3
  store i64 4026473012, i64* %71, align 8
  %72 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %73 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %72, i32 0, i32 0
  store i32 -268494284, i32* %73, align 8
  %74 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 4
  store i64 262922423, i64* %74, align 16
  %75 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 5
  store i64 13280050, i64* %75, align 8
  %76 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 6
  store i64 4133691665, i64* %76, align 16
  %77 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 7
  store i64 262402285, i64* %77, align 8
  %78 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 8
  store i64 80492096, i64* %78, align 16
  %79 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 9
  store i64 10873, i64* %79, align 8
  %80 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 10
  store i64 1073743144, i64* %80, align 16
  %81 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 11
  store i64 590339888, i64* %81, align 8
  %82 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %83 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %82, i32 0, i32 1
  store i32 590339888, i32* %83, align 4
  %84 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %85 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 0
  %86 = load i32, i32* @AUTO_INCREMENT, align 4
  %87 = call i32 @Wb35Reg_BurstWrite(%struct.hw_data* %84, i32 4096, i64* %85, i32 12, i32 %86)
  %88 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 0
  store i64 11348, i64* %88, align 16
  %89 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %90 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %89, i32 0, i32 2
  store i32 11348, i32* %90, align 8
  %91 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 1
  store i64 12637893, i64* %91, align 8
  %92 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 2
  store i64 1533839209, i64* %92, align 16
  %93 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 3
  store i64 0, i64* %93, align 8
  %94 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %95 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %94, i32 0, i32 3
  store i32 0, i32* %95, align 4
  %96 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 4
  store i64 16169, i64* %96, align 16
  %97 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 5
  store i64 251591678, i64* %97, align 8
  %98 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 6
  store i64 4537124, i64* %98, align 16
  %99 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 7
  store i64 218168831, i64* %99, align 8
  %100 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 8
  store i64 655385096, i64* %100, align 16
  %101 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %102 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %101, i32 0, i32 4
  store i32 655385096, i32* %102, align 8
  %103 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 9
  store i64 0, i64* %103, align 8
  %104 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %105 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %104, i32 0, i32 5
  store i32 0, i32* %105, align 4
  %106 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 10
  store i64 1684300900, i64* %106, align 16
  %107 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %108 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %107, i32 0, i32 6
  store i32 1684300900, i32* %108, align 8
  %109 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 11
  store i64 2854797312, i64* %109, align 8
  %110 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %111 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 0
  %112 = load i32, i32* @AUTO_INCREMENT, align 4
  %113 = call i32 @Wb35Reg_BurstWrite(%struct.hw_data* %110, i32 4144, i64* %111, i32 12, i32 %112)
  %114 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %115 = call i32 @Wb35Reg_Write(%struct.hw_data* %114, i32 4208, i32 69)
  br label %361

116:                                              ; preds = %1
  %117 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 0
  store i64 380927607, i64* %117, align 16
  %118 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 1
  store i64 2600447652, i64* %118, align 8
  %119 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 2
  store i64 1439697412, i64* %119, align 16
  %120 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 3
  store i64 4110358066, i64* %120, align 8
  %121 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %122 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %121, i32 0, i32 0
  store i32 -184609230, i32* %122, align 8
  %123 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 4
  store i64 262922423, i64* %123, align 16
  %124 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 5
  store i64 13280050, i64* %124, align 8
  %125 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 6
  store i64 4167246098, i64* %125, align 16
  %126 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 7
  store i64 262402285, i64* %126, align 8
  %127 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 8
  store i64 80492096, i64* %127, align 16
  %128 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 9
  store i64 10873, i64* %128, align 8
  %129 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 10
  store i64 1073743144, i64* %129, align 16
  %130 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 11
  store i64 590339888, i64* %130, align 8
  %131 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %132 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %131, i32 0, i32 1
  store i32 590339888, i32* %132, align 4
  %133 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %134 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 0
  %135 = load i32, i32* @AUTO_INCREMENT, align 4
  %136 = call i32 @Wb35Reg_BurstWrite(%struct.hw_data* %133, i32 4096, i64* %134, i32 12, i32 %135)
  %137 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 0
  store i64 11348, i64* %137, align 16
  %138 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %139 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %138, i32 0, i32 2
  store i32 11348, i32* %139, align 8
  %140 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 1
  store i64 12637893, i64* %140, align 8
  %141 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 2
  store i64 1529644905, i64* %141, align 16
  %142 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 3
  store i64 0, i64* %142, align 8
  %143 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %144 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %143, i32 0, i32 3
  store i32 0, i32* %144, align 4
  %145 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 4
  store i64 16169, i64* %145, align 16
  %146 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 5
  store i64 251591678, i64* %146, align 8
  %147 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 6
  store i64 2893335, i64* %147, align 16
  %148 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 7
  store i64 134283007, i64* %148, align 8
  %149 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 8
  store i64 655385096, i64* %149, align 16
  %150 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %151 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %150, i32 0, i32 4
  store i32 655385096, i32* %151, align 8
  %152 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 9
  store i64 0, i64* %152, align 8
  %153 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %154 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %153, i32 0, i32 5
  store i32 0, i32* %154, align 4
  %155 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 10
  store i64 1684294218, i64* %155, align 16
  %156 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %157 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %156, i32 0, i32 6
  store i32 1684300900, i32* %157, align 8
  %158 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 11
  store i64 2854797312, i64* %158, align 8
  %159 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %160 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 0
  %161 = load i32, i32* @AUTO_INCREMENT, align 4
  %162 = call i32 @Wb35Reg_BurstWrite(%struct.hw_data* %159, i32 4144, i64* %160, i32 12, i32 %161)
  %163 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %164 = call i32 @Wb35Reg_Write(%struct.hw_data* %163, i32 4208, i32 69)
  br label %361

165:                                              ; preds = %1
  %166 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 0
  store i64 376851063, i64* %166, align 16
  %167 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 1
  store i64 2600447922, i64* %167, align 8
  %168 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 2
  store i64 1439697412, i64* %168, align 16
  %169 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 3
  store i64 4294778940, i64* %169, align 8
  %170 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %171 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %170, i32 0, i32 0
  store i32 -188356, i32* %171, align 8
  %172 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 4
  store i64 264232133, i64* %172, align 16
  %173 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 5
  store i64 13280050, i64* %173, align 8
  %174 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 6
  store i64 4133691665, i64* %174, align 16
  %175 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 7
  store i64 262402285, i64* %175, align 8
  %176 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 8
  store i64 79967808, i64* %176, align 16
  %177 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 9
  store i64 10873, i64* %177, align 8
  %178 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 10
  store i64 1073743144, i64* %178, align 16
  %179 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 11
  store i64 590217008, i64* %179, align 8
  %180 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %181 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %180, i32 0, i32 1
  store i32 590217008, i32* %181, align 4
  %182 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %183 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 0
  %184 = load i32, i32* @AUTO_INCREMENT, align 4
  %185 = call i32 @Wb35Reg_BurstWrite(%struct.hw_data* %182, i32 4096, i64* %183, i32 12, i32 %184)
  %186 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 0
  store i64 11348, i64* %186, align 16
  %187 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %188 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %187, i32 0, i32 2
  store i32 11348, i32* %188, align 8
  %189 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 1
  store i64 12637893, i64* %189, align 8
  %190 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 2
  store i64 1529644905, i64* %190, align 16
  %191 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 3
  store i64 0, i64* %191, align 8
  %192 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %193 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %192, i32 0, i32 3
  store i32 0, i32* %193, align 4
  %194 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 4
  store i64 16169, i64* %194, align 16
  %195 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 5
  store i64 251591678, i64* %195, align 8
  %196 = load i8*, i8** @BB48_DEFAULT_AL2230_11G, align 8
  %197 = ptrtoint i8* %196 to i64
  %198 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 6
  store i64 %197, i64* %198, align 16
  %199 = load i8*, i8** @BB48_DEFAULT_AL2230_11G, align 8
  %200 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %201 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %200, i32 0, i32 10
  store i8* %199, i8** %201, align 8
  %202 = load i8*, i8** @BB4C_DEFAULT_AL2230_11G, align 8
  %203 = ptrtoint i8* %202 to i64
  %204 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 7
  store i64 %203, i64* %204, align 8
  %205 = load i8*, i8** @BB4C_DEFAULT_AL2230_11G, align 8
  %206 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %207 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %206, i32 0, i32 9
  store i8* %205, i8** %207, align 8
  %208 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 8
  store i64 655385088, i64* %208, align 16
  %209 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %210 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %209, i32 0, i32 4
  store i32 655385088, i32* %210, align 8
  %211 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 9
  store i64 0, i64* %211, align 8
  %212 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %213 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %212, i32 0, i32 5
  store i32 0, i32* %213, align 4
  %214 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 10
  store i64 1381122626, i64* %214, align 16
  %215 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %216 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %215, i32 0, i32 6
  store i32 1381122626, i32* %216, align 8
  %217 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 11
  store i64 2852831232, i64* %217, align 8
  %218 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %219 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 0
  %220 = load i32, i32* @AUTO_INCREMENT, align 4
  %221 = call i32 @Wb35Reg_BurstWrite(%struct.hw_data* %218, i32 4144, i64* %219, i32 12, i32 %220)
  %222 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %223 = call i32 @Wb35Reg_Write(%struct.hw_data* %222, i32 4208, i32 69)
  br label %361

224:                                              ; preds = %1
  %225 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 0
  store i64 376851063, i64* %225, align 16
  %226 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 1
  store i64 2600447922, i64* %226, align 8
  %227 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 2
  store i64 1439697412, i64* %227, align 16
  %228 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 3
  store i64 4294778940, i64* %228, align 8
  %229 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %230 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %229, i32 0, i32 0
  store i32 -188356, i32* %230, align 8
  %231 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 4
  store i64 264232133, i64* %231, align 16
  %232 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 5
  store i64 13280050, i64* %232, align 8
  %233 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 6
  store i64 4133691665, i64* %233, align 16
  %234 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 7
  store i64 262402285, i64* %234, align 8
  %235 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 8
  store i64 79967808, i64* %235, align 16
  %236 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 9
  store i64 10873, i64* %236, align 8
  %237 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 10
  store i64 1073743144, i64* %237, align 16
  %238 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 11
  store i64 590217008, i64* %238, align 8
  %239 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %240 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %239, i32 0, i32 1
  store i32 590217008, i32* %240, align 4
  %241 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %242 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 0
  %243 = load i32, i32* @AUTO_INCREMENT, align 4
  %244 = call i32 @Wb35Reg_BurstWrite(%struct.hw_data* %241, i32 4096, i64* %242, i32 12, i32 %243)
  %245 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 0
  store i64 11348, i64* %245, align 16
  %246 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %247 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %246, i32 0, i32 2
  store i32 11348, i32* %247, align 8
  %248 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 1
  store i64 12637893, i64* %248, align 8
  %249 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 2
  store i64 1529644905, i64* %249, align 16
  %250 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 3
  store i64 0, i64* %250, align 8
  %251 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %252 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %251, i32 0, i32 3
  store i32 0, i32* %252, align 4
  %253 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 4
  store i64 16169, i64* %253, align 16
  %254 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 5
  store i64 251591678, i64* %254, align 8
  %255 = load i8*, i8** @BB48_DEFAULT_AL2230_11G, align 8
  %256 = ptrtoint i8* %255 to i64
  %257 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 6
  store i64 %256, i64* %257, align 16
  %258 = load i8*, i8** @BB48_DEFAULT_AL2230_11G, align 8
  %259 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %260 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %259, i32 0, i32 10
  store i8* %258, i8** %260, align 8
  %261 = load i8*, i8** @BB4C_DEFAULT_AL2230_11G, align 8
  %262 = ptrtoint i8* %261 to i64
  %263 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 7
  store i64 %262, i64* %263, align 8
  %264 = load i8*, i8** @BB4C_DEFAULT_AL2230_11G, align 8
  %265 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %266 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %265, i32 0, i32 9
  store i8* %264, i8** %266, align 8
  %267 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 8
  store i64 655385088, i64* %267, align 16
  %268 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %269 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %268, i32 0, i32 4
  store i32 655385088, i32* %269, align 8
  %270 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 9
  store i64 0, i64* %270, align 8
  %271 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %272 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %271, i32 0, i32 5
  store i32 0, i32* %272, align 4
  %273 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 10
  store i64 1381118514, i64* %273, align 16
  %274 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %275 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %274, i32 0, i32 6
  store i32 1381118514, i32* %275, align 8
  %276 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 11
  store i64 2852831232, i64* %276, align 8
  %277 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %278 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 0
  %279 = load i32, i32* @AUTO_INCREMENT, align 4
  %280 = call i32 @Wb35Reg_BurstWrite(%struct.hw_data* %277, i32 4144, i64* %278, i32 12, i32 %279)
  %281 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %282 = call i32 @Wb35Reg_Write(%struct.hw_data* %281, i32 4208, i32 69)
  br label %361

283:                                              ; preds = %1
  %284 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %285 = call i32 @BBProcessor_AL7230_2400(%struct.hw_data* %284)
  %286 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %287 = call i32 @Wb35Reg_Write(%struct.hw_data* %286, i32 4208, i32 69)
  br label %361

288:                                              ; preds = %1, %1
  %289 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 0
  store i64 380129885, i64* %289, align 16
  %290 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 1
  store i64 2600442554, i64* %290, align 8
  %291 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 2
  store i64 1439697412, i64* %291, align 16
  %292 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 3
  store i64 4008254514, i64* %292, align 8
  %293 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %294 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %293, i32 0, i32 0
  store i32 -286712782, i32* %294, align 8
  %295 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 4
  store i64 262986949, i64* %295, align 16
  %296 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 5
  store i64 697156, i64* %296, align 8
  %297 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 6
  store i64 572662305, i64* %297, align 16
  %298 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 7
  store i64 262402285, i64* %298, align 8
  %299 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 8
  store i64 80491584, i64* %299, align 16
  %300 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 9
  store i64 2835360377, i64* %300, align 8
  %301 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 10
  store i64 1073743144, i64* %301, align 16
  %302 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 11
  store i64 591757104, i64* %302, align 8
  %303 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %304 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %303, i32 0, i32 1
  store i32 591757104, i32* %304, align 4
  %305 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %306 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 0
  %307 = load i32, i32* @AUTO_INCREMENT, align 4
  %308 = call i32 @Wb35Reg_BurstWrite(%struct.hw_data* %305, i32 4096, i64* %306, i32 12, i32 %307)
  %309 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 0
  store i64 11348, i64* %309, align 16
  %310 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %311 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %310, i32 0, i32 2
  store i32 11348, i32* %311, align 8
  %312 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 1
  store i64 12637893, i64* %312, align 8
  %313 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 2
  store i64 1529644905, i64* %313, align 16
  %314 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %315 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %314, i32 0, i32 1
  %316 = load i64, i64* %315, align 8
  %317 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 3
  store i64 %316, i64* %317, align 8
  %318 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %319 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %318, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = trunc i64 %320 to i32
  %322 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %323 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %322, i32 0, i32 3
  store i32 %321, i32* %323, align 4
  %324 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 4
  store i64 16169, i64* %324, align 16
  %325 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 5
  store i64 251591678, i64* %325, align 8
  %326 = load i8*, i8** @BB48_DEFAULT_WB242_11G, align 8
  %327 = ptrtoint i8* %326 to i64
  %328 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 6
  store i64 %327, i64* %328, align 16
  %329 = load i8*, i8** @BB48_DEFAULT_WB242_11G, align 8
  %330 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %331 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %330, i32 0, i32 10
  store i8* %329, i8** %331, align 8
  %332 = load i8*, i8** @BB4C_DEFAULT_WB242_11G, align 8
  %333 = ptrtoint i8* %332 to i64
  %334 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 7
  store i64 %333, i64* %334, align 8
  %335 = load i8*, i8** @BB4C_DEFAULT_WB242_11G, align 8
  %336 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %337 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %336, i32 0, i32 9
  store i8* %335, i8** %337, align 8
  %338 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 8
  store i64 655385096, i64* %338, align 16
  %339 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %340 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %339, i32 0, i32 4
  store i32 655385096, i32* %340, align 8
  %341 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %342 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %341, i32 0, i32 2
  %343 = load i64, i64* %342, align 8
  %344 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 9
  store i64 %343, i64* %344, align 8
  %345 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %346 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %345, i32 0, i32 2
  %347 = load i64, i64* %346, align 8
  %348 = trunc i64 %347 to i32
  %349 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %350 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %349, i32 0, i32 5
  store i32 %348, i32* %350, align 4
  %351 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 10
  store i64 1381118257, i64* %351, align 16
  %352 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %353 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %352, i32 0, i32 6
  store i32 1381118257, i32* %353, align 8
  %354 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 11
  store i64 2852831232, i64* %354, align 8
  %355 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %356 = getelementptr inbounds [12 x i64], [12 x i64]* %5, i64 0, i64 0
  %357 = load i32, i32* @AUTO_INCREMENT, align 4
  %358 = call i32 @Wb35Reg_BurstWrite(%struct.hw_data* %355, i32 4144, i64* %356, i32 12, i32 %357)
  %359 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %360 = call i32 @Wb35Reg_Write(%struct.hw_data* %359, i32 4208, i32 69)
  br label %361

361:                                              ; preds = %1, %288, %283, %224, %165, %116, %67, %11
  %362 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %363 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = and i32 %364, 255
  %366 = sext i32 %365 to i64
  %367 = inttoptr i64 %366 to i8*
  %368 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %369 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %368, i32 0, i32 8
  %370 = load i8**, i8*** %369, align 8
  %371 = getelementptr inbounds i8*, i8** %370, i64 0
  store i8* %367, i8** %371, align 8
  %372 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %373 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %372, i32 0, i32 8
  %374 = load i8**, i8*** %373, align 8
  %375 = getelementptr inbounds i8*, i8** %374, i64 1
  store i8* null, i8** %375, align 8
  %376 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %377 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = and i32 %378, 65280
  %380 = ashr i32 %379, 8
  %381 = sext i32 %380 to i64
  %382 = inttoptr i64 %381 to i8*
  %383 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %384 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %383, i32 0, i32 8
  %385 = load i8**, i8*** %384, align 8
  %386 = getelementptr inbounds i8*, i8** %385, i64 2
  store i8* %382, i8** %386, align 8
  %387 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %388 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %387, i32 0, i32 8
  %389 = load i8**, i8*** %388, align 8
  %390 = getelementptr inbounds i8*, i8** %389, i64 3
  store i8* null, i8** %390, align 8
  store i64 0, i64* %4, align 8
  br label %391

391:                                              ; preds = %401, %361
  %392 = load i64, i64* %4, align 8
  %393 = load i64, i64* @MAX_SQ3_FILTER_SIZE, align 8
  %394 = icmp ult i64 %392, %393
  br i1 %394, label %395, label %404

395:                                              ; preds = %391
  %396 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %397 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %396, i32 0, i32 7
  %398 = load i32*, i32** %397, align 8
  %399 = load i64, i64* %4, align 8
  %400 = getelementptr inbounds i32, i32* %398, i64 %399
  store i32 47, i32* %400, align 4
  br label %401

401:                                              ; preds = %395
  %402 = load i64, i64* %4, align 8
  %403 = add i64 %402, 1
  store i64 %403, i64* %4, align 8
  br label %391

404:                                              ; preds = %391
  ret void
}

declare dso_local i32 @Wb35Reg_BurstWrite(%struct.hw_data*, i32, i64*, i32, i32) #1

declare dso_local i32 @Wb35Reg_Write(%struct.hw_data*, i32, i32) #1

declare dso_local i32 @BBProcessor_AL7230_2400(%struct.hw_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
