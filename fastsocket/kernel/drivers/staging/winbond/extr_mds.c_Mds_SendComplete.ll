; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_mds.c_Mds_SendComplete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_mds.c_Mds_SendComplete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbsoft_priv = type { %struct.hw_data, %struct.wb35_mds }
%struct.hw_data = type { i64, i64*, i64, i32, i32, i32, i32 }
%struct.wb35_mds = type { i64**, i32* }
%struct.TYPE_3__ = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@FLAG_ERROR_TX_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Mds_SendComplete(%struct.wbsoft_priv* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.wbsoft_priv*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.wb35_mds*, align 8
  %6 = alloca %struct.hw_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.wbsoft_priv* %0, %struct.wbsoft_priv** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %11 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %3, align 8
  %12 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %11, i32 0, i32 1
  store %struct.wb35_mds* %12, %struct.wb35_mds** %5, align 8
  %13 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %3, align 8
  %14 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %13, i32 0, i32 0
  store %struct.hw_data* %14, %struct.hw_data** %6, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 10
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  store i8 1, i8* %8, align 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 9
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %157

23:                                               ; preds = %2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %145

28:                                               ; preds = %23
  %29 = load %struct.wb35_mds*, %struct.wb35_mds** %5, align 8
  %30 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %29, i32 0, i32 0
  %31 = load i64**, i64*** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds i64*, i64** %31, i64 %32
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %10, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 7
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %9, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @FLAG_ERROR_TX_MASK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %124

46:                                               ; preds = %28
  store i8 0, i8* %8, align 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %87

56:                                               ; preds = %51, %46
  %57 = load i64, i64* %9, align 8
  %58 = add i64 %57, 1
  %59 = load %struct.hw_data*, %struct.hw_data** %6, align 8
  %60 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, %58
  store i64 %62, i64* %60, align 8
  %63 = load i64, i64* %9, align 8
  %64 = icmp ult i64 %63, 7
  br i1 %64, label %65, label %74

65:                                               ; preds = %56
  %66 = load i64, i64* %9, align 8
  %67 = load %struct.hw_data*, %struct.hw_data** %6, align 8
  %68 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %72, %66
  store i64 %73, i64* %71, align 8
  br label %82

74:                                               ; preds = %56
  %75 = load i64, i64* %9, align 8
  %76 = load %struct.hw_data*, %struct.hw_data** %6, align 8
  %77 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %76, i32 0, i32 1
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 7
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, %75
  store i64 %81, i64* %79, align 8
  br label %82

82:                                               ; preds = %74, %65
  %83 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %3, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* %9, align 8
  %86 = call i32 @MTO_SetTxCount(%struct.wbsoft_priv* %83, i64 %84, i64 %85)
  br label %87

87:                                               ; preds = %82, %51
  %88 = load i64, i64* %9, align 8
  %89 = add i64 %88, 1
  %90 = load %struct.hw_data*, %struct.hw_data** %6, align 8
  %91 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %92, %89
  store i64 %93, i64* %91, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %87
  %99 = load %struct.hw_data*, %struct.hw_data** %6, align 8
  %100 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %98, %87
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load %struct.hw_data*, %struct.hw_data** %6, align 8
  %110 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %108, %103
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load %struct.hw_data*, %struct.hw_data** %6, align 8
  %120 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %118, %113
  br label %139

124:                                              ; preds = %28
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load %struct.hw_data*, %struct.hw_data** %6, align 8
  %131 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 8
  br label %134

134:                                              ; preds = %129, %124
  %135 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %3, align 8
  %136 = load i64, i64* %10, align 8
  %137 = load i64, i64* %9, align 8
  %138 = call i32 @MTO_SetTxCount(%struct.wbsoft_priv* %135, i64 %136, i64 %137)
  br label %139

139:                                              ; preds = %134, %123
  %140 = load %struct.wb35_mds*, %struct.wb35_mds** %5, align 8
  %141 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* %7, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  store i32 0, i32* %144, align 4
  br label %157

145:                                              ; preds = %23
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = and i32 %148, 65535
  %150 = load %struct.wb35_mds*, %struct.wb35_mds** %5, align 8
  %151 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load i64, i64* %7, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %149
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %22, %145, %139
  ret void
}

declare dso_local i32 @MTO_SetTxCount(%struct.wbsoft_priv*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
