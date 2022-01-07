; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_main.c_vacm_compare_access_rule.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_main.c_vacm_compare_access_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vacm_access = type { i64*, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vacm_access*, %struct.vacm_access*)* @vacm_compare_access_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vacm_compare_access_rule(%struct.vacm_access* %0, %struct.vacm_access* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vacm_access*, align 8
  %5 = alloca %struct.vacm_access*, align 8
  %6 = alloca i64, align 8
  store %struct.vacm_access* %0, %struct.vacm_access** %4, align 8
  store %struct.vacm_access* %1, %struct.vacm_access** %5, align 8
  %7 = load %struct.vacm_access*, %struct.vacm_access** %4, align 8
  %8 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = call i64 @strlen(i64* %11)
  %13 = load %struct.vacm_access*, %struct.vacm_access** %5, align 8
  %14 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = call i64 @strlen(i64* %17)
  %19 = icmp ult i64 %12, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %189

21:                                               ; preds = %2
  %22 = load %struct.vacm_access*, %struct.vacm_access** %4, align 8
  %23 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = call i64 @strlen(i64* %26)
  %28 = load %struct.vacm_access*, %struct.vacm_access** %5, align 8
  %29 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = call i64 @strlen(i64* %32)
  %34 = icmp ugt i64 %27, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %189

36:                                               ; preds = %21
  store i64 0, i64* %6, align 8
  br label %37

37:                                               ; preds = %85, %36
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.vacm_access*, %struct.vacm_access** %4, align 8
  %40 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %39, i32 0, i32 3
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = call i64 @strlen(i64* %43)
  %45 = icmp ult i64 %38, %44
  br i1 %45, label %46, label %88

46:                                               ; preds = %37
  %47 = load %struct.vacm_access*, %struct.vacm_access** %4, align 8
  %48 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %47, i32 0, i32 3
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.vacm_access*, %struct.vacm_access** %5, align 8
  %56 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %55, i32 0, i32 3
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* %6, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %54, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %46
  store i32 -1, i32* %3, align 4
  br label %189

65:                                               ; preds = %46
  %66 = load %struct.vacm_access*, %struct.vacm_access** %4, align 8
  %67 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %66, i32 0, i32 3
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* %6, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.vacm_access*, %struct.vacm_access** %5, align 8
  %75 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %74, i32 0, i32 3
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = load i64, i64* %6, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %73, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %65
  store i32 1, i32* %3, align 4
  br label %189

84:                                               ; preds = %65
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %6, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %6, align 8
  br label %37

88:                                               ; preds = %37
  %89 = load %struct.vacm_access*, %struct.vacm_access** %4, align 8
  %90 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = call i64 @strlen(i64* %91)
  %93 = load %struct.vacm_access*, %struct.vacm_access** %5, align 8
  %94 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = call i64 @strlen(i64* %95)
  %97 = icmp ult i64 %92, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %88
  store i32 -1, i32* %3, align 4
  br label %189

99:                                               ; preds = %88
  %100 = load %struct.vacm_access*, %struct.vacm_access** %4, align 8
  %101 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %100, i32 0, i32 0
  %102 = load i64*, i64** %101, align 8
  %103 = call i64 @strlen(i64* %102)
  %104 = load %struct.vacm_access*, %struct.vacm_access** %5, align 8
  %105 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = call i64 @strlen(i64* %106)
  %108 = icmp ugt i64 %103, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  store i32 1, i32* %3, align 4
  br label %189

110:                                              ; preds = %99
  store i64 0, i64* %6, align 8
  br label %111

111:                                              ; preds = %149, %110
  %112 = load i64, i64* %6, align 8
  %113 = load %struct.vacm_access*, %struct.vacm_access** %4, align 8
  %114 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %113, i32 0, i32 0
  %115 = load i64*, i64** %114, align 8
  %116 = call i64 @strlen(i64* %115)
  %117 = icmp ult i64 %112, %116
  br i1 %117, label %118, label %152

118:                                              ; preds = %111
  %119 = load %struct.vacm_access*, %struct.vacm_access** %4, align 8
  %120 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %119, i32 0, i32 0
  %121 = load i64*, i64** %120, align 8
  %122 = load i64, i64* %6, align 8
  %123 = getelementptr inbounds i64, i64* %121, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.vacm_access*, %struct.vacm_access** %5, align 8
  %126 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %125, i32 0, i32 0
  %127 = load i64*, i64** %126, align 8
  %128 = load i64, i64* %6, align 8
  %129 = getelementptr inbounds i64, i64* %127, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = icmp slt i64 %124, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %118
  store i32 -1, i32* %3, align 4
  br label %189

133:                                              ; preds = %118
  %134 = load %struct.vacm_access*, %struct.vacm_access** %4, align 8
  %135 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %134, i32 0, i32 0
  %136 = load i64*, i64** %135, align 8
  %137 = load i64, i64* %6, align 8
  %138 = getelementptr inbounds i64, i64* %136, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.vacm_access*, %struct.vacm_access** %5, align 8
  %141 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %140, i32 0, i32 0
  %142 = load i64*, i64** %141, align 8
  %143 = load i64, i64* %6, align 8
  %144 = getelementptr inbounds i64, i64* %142, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = icmp sgt i64 %139, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %133
  store i32 1, i32* %3, align 4
  br label %189

148:                                              ; preds = %133
  br label %149

149:                                              ; preds = %148
  %150 = load i64, i64* %6, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %6, align 8
  br label %111

152:                                              ; preds = %111
  %153 = load %struct.vacm_access*, %struct.vacm_access** %4, align 8
  %154 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.vacm_access*, %struct.vacm_access** %5, align 8
  %157 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp slt i64 %155, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %152
  store i32 -1, i32* %3, align 4
  br label %189

161:                                              ; preds = %152
  %162 = load %struct.vacm_access*, %struct.vacm_access** %4, align 8
  %163 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.vacm_access*, %struct.vacm_access** %5, align 8
  %166 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp sgt i64 %164, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %161
  store i32 1, i32* %3, align 4
  br label %189

170:                                              ; preds = %161
  %171 = load %struct.vacm_access*, %struct.vacm_access** %4, align 8
  %172 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.vacm_access*, %struct.vacm_access** %5, align 8
  %175 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = icmp slt i64 %173, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %170
  store i32 -1, i32* %3, align 4
  br label %189

179:                                              ; preds = %170
  %180 = load %struct.vacm_access*, %struct.vacm_access** %4, align 8
  %181 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.vacm_access*, %struct.vacm_access** %5, align 8
  %184 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = icmp sgt i64 %182, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %179
  store i32 1, i32* %3, align 4
  br label %189

188:                                              ; preds = %179
  store i32 0, i32* %3, align 4
  br label %189

189:                                              ; preds = %188, %187, %178, %169, %160, %147, %132, %109, %98, %83, %64, %35, %20
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local i64 @strlen(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
