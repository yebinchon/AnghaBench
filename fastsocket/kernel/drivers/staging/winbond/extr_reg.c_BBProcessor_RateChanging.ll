; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_reg.c_BBProcessor_RateChanging.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_reg.c_BBProcessor_RateChanging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_data = type { i32, %struct.wb35_reg }
%struct.wb35_reg = type { i8*, i8* }

@BB48_DEFAULT_AL2230_11B = common dso_local global i8* null, align 8
@BB4C_DEFAULT_AL2230_11B = common dso_local global i8* null, align 8
@BB48_DEFAULT_AL2230_11G = common dso_local global i8* null, align 8
@BB4C_DEFAULT_AL2230_11G = common dso_local global i8* null, align 8
@BB48_DEFAULT_WB242_11B = common dso_local global i8* null, align 8
@BB4C_DEFAULT_WB242_11B = common dso_local global i8* null, align 8
@BB48_DEFAULT_WB242_11G = common dso_local global i8* null, align 8
@BB4C_DEFAULT_WB242_11G = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BBProcessor_RateChanging(%struct.hw_data* %0, i32 %1) #0 {
  %3 = alloca %struct.hw_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wb35_reg*, align 8
  %6 = alloca i8, align 1
  store %struct.hw_data* %0, %struct.hw_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %8 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %7, i32 0, i32 1
  store %struct.wb35_reg* %8, %struct.wb35_reg** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = srem i32 %9, 6
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 1, i32 0
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %6, align 1
  %15 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %16 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %118 [
    i32 130, label %18
    i32 129, label %18
    i32 128, label %62
  ]

18:                                               ; preds = %2, %2
  %19 = load i8, i8* %6, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %18
  %22 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %23 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i8*, i8** @BB48_DEFAULT_AL2230_11B, align 8
  %26 = icmp ne i8* %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  %28 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %29 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** @BB4C_DEFAULT_AL2230_11B, align 8
  %32 = icmp ne i8* %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %35 = load i8*, i8** @BB48_DEFAULT_AL2230_11B, align 8
  %36 = call i32 @Wb35Reg_Write(%struct.hw_data* %34, i32 4168, i8* %35)
  %37 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %38 = load i8*, i8** @BB4C_DEFAULT_AL2230_11B, align 8
  %39 = call i32 @Wb35Reg_Write(%struct.hw_data* %37, i32 4172, i8* %38)
  br label %40

40:                                               ; preds = %33, %27, %21
  br label %61

41:                                               ; preds = %18
  %42 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %43 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i8*, i8** @BB48_DEFAULT_AL2230_11G, align 8
  %46 = icmp ne i8* %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %41
  %48 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %49 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** @BB4C_DEFAULT_AL2230_11G, align 8
  %52 = icmp ne i8* %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %55 = load i8*, i8** @BB48_DEFAULT_AL2230_11G, align 8
  %56 = call i32 @Wb35Reg_Write(%struct.hw_data* %54, i32 4168, i8* %55)
  %57 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %58 = load i8*, i8** @BB4C_DEFAULT_AL2230_11G, align 8
  %59 = call i32 @Wb35Reg_Write(%struct.hw_data* %57, i32 4172, i8* %58)
  br label %60

60:                                               ; preds = %53, %47, %41
  br label %61

61:                                               ; preds = %60, %40
  br label %118

62:                                               ; preds = %2
  %63 = load i8, i8* %6, align 1
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %65, label %91

65:                                               ; preds = %62
  %66 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %67 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** @BB48_DEFAULT_WB242_11B, align 8
  %70 = icmp ne i8* %68, %69
  br i1 %70, label %71, label %90

71:                                               ; preds = %65
  %72 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %73 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load i8*, i8** @BB4C_DEFAULT_WB242_11B, align 8
  %76 = icmp ne i8* %74, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %71
  %78 = load i8*, i8** @BB48_DEFAULT_WB242_11B, align 8
  %79 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %80 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  %81 = load i8*, i8** @BB4C_DEFAULT_WB242_11B, align 8
  %82 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %83 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %85 = load i8*, i8** @BB48_DEFAULT_WB242_11B, align 8
  %86 = call i32 @Wb35Reg_Write(%struct.hw_data* %84, i32 4168, i8* %85)
  %87 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %88 = load i8*, i8** @BB4C_DEFAULT_WB242_11B, align 8
  %89 = call i32 @Wb35Reg_Write(%struct.hw_data* %87, i32 4172, i8* %88)
  br label %90

90:                                               ; preds = %77, %71, %65
  br label %117

91:                                               ; preds = %62
  %92 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %93 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load i8*, i8** @BB48_DEFAULT_WB242_11G, align 8
  %96 = icmp ne i8* %94, %95
  br i1 %96, label %97, label %116

97:                                               ; preds = %91
  %98 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %99 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = load i8*, i8** @BB4C_DEFAULT_WB242_11G, align 8
  %102 = icmp ne i8* %100, %101
  br i1 %102, label %103, label %116

103:                                              ; preds = %97
  %104 = load i8*, i8** @BB48_DEFAULT_WB242_11G, align 8
  %105 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %106 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  %107 = load i8*, i8** @BB4C_DEFAULT_WB242_11G, align 8
  %108 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %109 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  %110 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %111 = load i8*, i8** @BB48_DEFAULT_WB242_11G, align 8
  %112 = call i32 @Wb35Reg_Write(%struct.hw_data* %110, i32 4168, i8* %111)
  %113 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %114 = load i8*, i8** @BB4C_DEFAULT_WB242_11G, align 8
  %115 = call i32 @Wb35Reg_Write(%struct.hw_data* %113, i32 4172, i8* %114)
  br label %116

116:                                              ; preds = %103, %97, %91
  br label %117

117:                                              ; preds = %116, %90
  br label %118

118:                                              ; preds = %2, %117, %61
  ret void
}

declare dso_local i32 @Wb35Reg_Write(%struct.hw_data*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
