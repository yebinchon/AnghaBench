; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35reg.c_Wb35Reg_Update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35reg.c_Wb35Reg_Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_data = type { %struct.wb35_reg }
%struct.wb35_reg = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Wb35Reg_Update(%struct.hw_data* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.hw_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wb35_reg*, align 8
  store %struct.hw_data* %0, %struct.hw_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %9 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %8, i32 0, i32 0
  store %struct.wb35_reg* %9, %struct.wb35_reg** %7, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %151 [
    i32 944, label %11
    i32 956, label %15
    i32 1024, label %19
    i32 2048, label %23
    i32 2052, label %27
    i32 2056, label %31
    i32 2084, label %35
    i32 2088, label %39
    i32 2092, label %43
    i32 2104, label %47
    i32 2112, label %51
    i32 2116, label %55
    i32 2120, label %59
    i32 2124, label %63
    i32 2144, label %67
    i32 2152, label %71
    i32 2160, label %75
    i32 2164, label %79
    i32 2168, label %83
    i32 2172, label %87
    i32 2176, label %91
    i32 2180, label %95
    i32 2184, label %99
    i32 2200, label %103
    i32 4108, label %107
    i32 4140, label %111
    i32 4144, label %115
    i32 4156, label %119
    i32 4168, label %123
    i32 4172, label %127
    i32 4176, label %131
    i32 4180, label %135
    i32 4184, label %139
    i32 4188, label %143
    i32 4192, label %147
  ]

11:                                               ; preds = %3
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.wb35_reg*, %struct.wb35_reg** %7, align 8
  %14 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %13, i32 0, i32 34
  store i8* %12, i8** %14, align 8
  br label %151

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.wb35_reg*, %struct.wb35_reg** %7, align 8
  %18 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %17, i32 0, i32 33
  store i8* %16, i8** %18, align 8
  br label %151

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.wb35_reg*, %struct.wb35_reg** %7, align 8
  %22 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %21, i32 0, i32 32
  store i8* %20, i8** %22, align 8
  br label %151

23:                                               ; preds = %3
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.wb35_reg*, %struct.wb35_reg** %7, align 8
  %26 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %25, i32 0, i32 31
  store i8* %24, i8** %26, align 8
  br label %151

27:                                               ; preds = %3
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.wb35_reg*, %struct.wb35_reg** %7, align 8
  %30 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %29, i32 0, i32 30
  store i8* %28, i8** %30, align 8
  br label %151

31:                                               ; preds = %3
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.wb35_reg*, %struct.wb35_reg** %7, align 8
  %34 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %33, i32 0, i32 29
  store i8* %32, i8** %34, align 8
  br label %151

35:                                               ; preds = %3
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.wb35_reg*, %struct.wb35_reg** %7, align 8
  %38 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %37, i32 0, i32 28
  store i8* %36, i8** %38, align 8
  br label %151

39:                                               ; preds = %3
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.wb35_reg*, %struct.wb35_reg** %7, align 8
  %42 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %41, i32 0, i32 27
  store i8* %40, i8** %42, align 8
  br label %151

43:                                               ; preds = %3
  %44 = load i8*, i8** %6, align 8
  %45 = load %struct.wb35_reg*, %struct.wb35_reg** %7, align 8
  %46 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %45, i32 0, i32 26
  store i8* %44, i8** %46, align 8
  br label %151

47:                                               ; preds = %3
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.wb35_reg*, %struct.wb35_reg** %7, align 8
  %50 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %49, i32 0, i32 25
  store i8* %48, i8** %50, align 8
  br label %151

51:                                               ; preds = %3
  %52 = load i8*, i8** %6, align 8
  %53 = load %struct.wb35_reg*, %struct.wb35_reg** %7, align 8
  %54 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %53, i32 0, i32 24
  store i8* %52, i8** %54, align 8
  br label %151

55:                                               ; preds = %3
  %56 = load i8*, i8** %6, align 8
  %57 = load %struct.wb35_reg*, %struct.wb35_reg** %7, align 8
  %58 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %57, i32 0, i32 23
  store i8* %56, i8** %58, align 8
  br label %151

59:                                               ; preds = %3
  %60 = load i8*, i8** %6, align 8
  %61 = load %struct.wb35_reg*, %struct.wb35_reg** %7, align 8
  %62 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %61, i32 0, i32 22
  store i8* %60, i8** %62, align 8
  br label %151

63:                                               ; preds = %3
  %64 = load i8*, i8** %6, align 8
  %65 = load %struct.wb35_reg*, %struct.wb35_reg** %7, align 8
  %66 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %65, i32 0, i32 21
  store i8* %64, i8** %66, align 8
  br label %151

67:                                               ; preds = %3
  %68 = load i8*, i8** %6, align 8
  %69 = load %struct.wb35_reg*, %struct.wb35_reg** %7, align 8
  %70 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %69, i32 0, i32 20
  store i8* %68, i8** %70, align 8
  br label %151

71:                                               ; preds = %3
  %72 = load i8*, i8** %6, align 8
  %73 = load %struct.wb35_reg*, %struct.wb35_reg** %7, align 8
  %74 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %73, i32 0, i32 19
  store i8* %72, i8** %74, align 8
  br label %151

75:                                               ; preds = %3
  %76 = load i8*, i8** %6, align 8
  %77 = load %struct.wb35_reg*, %struct.wb35_reg** %7, align 8
  %78 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %77, i32 0, i32 18
  store i8* %76, i8** %78, align 8
  br label %151

79:                                               ; preds = %3
  %80 = load i8*, i8** %6, align 8
  %81 = load %struct.wb35_reg*, %struct.wb35_reg** %7, align 8
  %82 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %81, i32 0, i32 17
  store i8* %80, i8** %82, align 8
  br label %151

83:                                               ; preds = %3
  %84 = load i8*, i8** %6, align 8
  %85 = load %struct.wb35_reg*, %struct.wb35_reg** %7, align 8
  %86 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %85, i32 0, i32 16
  store i8* %84, i8** %86, align 8
  br label %151

87:                                               ; preds = %3
  %88 = load i8*, i8** %6, align 8
  %89 = load %struct.wb35_reg*, %struct.wb35_reg** %7, align 8
  %90 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %89, i32 0, i32 15
  store i8* %88, i8** %90, align 8
  br label %151

91:                                               ; preds = %3
  %92 = load i8*, i8** %6, align 8
  %93 = load %struct.wb35_reg*, %struct.wb35_reg** %7, align 8
  %94 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %93, i32 0, i32 14
  store i8* %92, i8** %94, align 8
  br label %151

95:                                               ; preds = %3
  %96 = load i8*, i8** %6, align 8
  %97 = load %struct.wb35_reg*, %struct.wb35_reg** %7, align 8
  %98 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %97, i32 0, i32 13
  store i8* %96, i8** %98, align 8
  br label %151

99:                                               ; preds = %3
  %100 = load i8*, i8** %6, align 8
  %101 = load %struct.wb35_reg*, %struct.wb35_reg** %7, align 8
  %102 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %101, i32 0, i32 12
  store i8* %100, i8** %102, align 8
  br label %151

103:                                              ; preds = %3
  %104 = load i8*, i8** %6, align 8
  %105 = load %struct.wb35_reg*, %struct.wb35_reg** %7, align 8
  %106 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %105, i32 0, i32 11
  store i8* %104, i8** %106, align 8
  br label %151

107:                                              ; preds = %3
  %108 = load i8*, i8** %6, align 8
  %109 = load %struct.wb35_reg*, %struct.wb35_reg** %7, align 8
  %110 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %109, i32 0, i32 10
  store i8* %108, i8** %110, align 8
  br label %151

111:                                              ; preds = %3
  %112 = load i8*, i8** %6, align 8
  %113 = load %struct.wb35_reg*, %struct.wb35_reg** %7, align 8
  %114 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %113, i32 0, i32 9
  store i8* %112, i8** %114, align 8
  br label %151

115:                                              ; preds = %3
  %116 = load i8*, i8** %6, align 8
  %117 = load %struct.wb35_reg*, %struct.wb35_reg** %7, align 8
  %118 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %117, i32 0, i32 8
  store i8* %116, i8** %118, align 8
  br label %151

119:                                              ; preds = %3
  %120 = load i8*, i8** %6, align 8
  %121 = load %struct.wb35_reg*, %struct.wb35_reg** %7, align 8
  %122 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %121, i32 0, i32 7
  store i8* %120, i8** %122, align 8
  br label %151

123:                                              ; preds = %3
  %124 = load i8*, i8** %6, align 8
  %125 = load %struct.wb35_reg*, %struct.wb35_reg** %7, align 8
  %126 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %125, i32 0, i32 6
  store i8* %124, i8** %126, align 8
  br label %151

127:                                              ; preds = %3
  %128 = load i8*, i8** %6, align 8
  %129 = load %struct.wb35_reg*, %struct.wb35_reg** %7, align 8
  %130 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %129, i32 0, i32 5
  store i8* %128, i8** %130, align 8
  br label %151

131:                                              ; preds = %3
  %132 = load i8*, i8** %6, align 8
  %133 = load %struct.wb35_reg*, %struct.wb35_reg** %7, align 8
  %134 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %133, i32 0, i32 4
  store i8* %132, i8** %134, align 8
  br label %151

135:                                              ; preds = %3
  %136 = load i8*, i8** %6, align 8
  %137 = load %struct.wb35_reg*, %struct.wb35_reg** %7, align 8
  %138 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %137, i32 0, i32 3
  store i8* %136, i8** %138, align 8
  br label %151

139:                                              ; preds = %3
  %140 = load i8*, i8** %6, align 8
  %141 = load %struct.wb35_reg*, %struct.wb35_reg** %7, align 8
  %142 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %141, i32 0, i32 2
  store i8* %140, i8** %142, align 8
  br label %151

143:                                              ; preds = %3
  %144 = load i8*, i8** %6, align 8
  %145 = load %struct.wb35_reg*, %struct.wb35_reg** %7, align 8
  %146 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %145, i32 0, i32 1
  store i8* %144, i8** %146, align 8
  br label %151

147:                                              ; preds = %3
  %148 = load i8*, i8** %6, align 8
  %149 = load %struct.wb35_reg*, %struct.wb35_reg** %7, align 8
  %150 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %149, i32 0, i32 0
  store i8* %148, i8** %150, align 8
  br label %151

151:                                              ; preds = %3, %147, %143, %139, %135, %131, %127, %123, %119, %115, %111, %107, %103, %99, %95, %91, %87, %83, %79, %75, %71, %67, %63, %59, %55, %51, %47, %43, %39, %35, %31, %27, %23, %19, %15, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
