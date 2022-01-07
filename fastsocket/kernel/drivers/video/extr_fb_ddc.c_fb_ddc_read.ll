; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fb_ddc.c_fb_ddc_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fb_ddc.c_fb_ddc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, %struct.i2c_algo_bit_data* }
%struct.i2c_algo_bit_data = type { i32, i32 (i32, i32)*, i32 (i32, i32)*, i64 (i32)* }

@I2C_CLASS_DDC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fb_ddc_read(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca %struct.i2c_algo_bit_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %2, align 8
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %7, i32 0, i32 1
  %9 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %8, align 8
  store %struct.i2c_algo_bit_data* %9, %struct.i2c_algo_bit_data** %3, align 8
  store i8* null, i8** %4, align 8
  %10 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %11 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %10, i32 0, i32 1
  %12 = load i32 (i32, i32)*, i32 (i32, i32)** %11, align 8
  %13 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %14 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 %12(i32 %15, i32 1)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %152, %1
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 3
  br i1 %19, label %20, label %155

20:                                               ; preds = %17
  %21 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %22 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %21, i32 0, i32 2
  %23 = load i32 (i32, i32)*, i32 (i32, i32)** %22, align 8
  %24 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %25 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 %23(i32 %26, i32 1)
  %28 = call i32 @msleep(i32 13)
  %29 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %30 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %29, i32 0, i32 1
  %31 = load i32 (i32, i32)*, i32 (i32, i32)** %30, align 8
  %32 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %33 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 %31(i32 %34, i32 1)
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %51, %20
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 5
  br i1 %38, label %39, label %54

39:                                               ; preds = %36
  %40 = call i32 @msleep(i32 10)
  %41 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %42 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %41, i32 0, i32 3
  %43 = load i64 (i32)*, i64 (i32)** %42, align 8
  %44 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %45 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i64 %43(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %54

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %36

54:                                               ; preds = %49, %36
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, 5
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %152

58:                                               ; preds = %54
  %59 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %60 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %59, i32 0, i32 2
  %61 = load i32 (i32, i32)*, i32 (i32, i32)** %60, align 8
  %62 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %63 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 %61(i32 %64, i32 0)
  %66 = call i32 @msleep(i32 15)
  %67 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %68 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %67, i32 0, i32 1
  %69 = load i32 (i32, i32)*, i32 (i32, i32)** %68, align 8
  %70 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %71 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 %69(i32 %72, i32 0)
  %74 = call i32 @msleep(i32 15)
  %75 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %76 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %75, i32 0, i32 2
  %77 = load i32 (i32, i32)*, i32 (i32, i32)** %76, align 8
  %78 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %79 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 %77(i32 %80, i32 1)
  %82 = call i32 @msleep(i32 15)
  %83 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %84 = call i8* @fb_do_probe_ddc_edid(%struct.i2c_adapter* %83)
  store i8* %84, i8** %4, align 8
  %85 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %86 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %85, i32 0, i32 2
  %87 = load i32 (i32, i32)*, i32 (i32, i32)** %86, align 8
  %88 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %89 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 %87(i32 %90, i32 0)
  %92 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %93 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %92, i32 0, i32 1
  %94 = load i32 (i32, i32)*, i32 (i32, i32)** %93, align 8
  %95 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %96 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 %94(i32 %97, i32 0)
  %99 = call i32 @msleep(i32 15)
  %100 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %101 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %100, i32 0, i32 1
  %102 = load i32 (i32, i32)*, i32 (i32, i32)** %101, align 8
  %103 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %104 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 %102(i32 %105, i32 1)
  store i32 0, i32* %6, align 4
  br label %107

107:                                              ; preds = %122, %58
  %108 = load i32, i32* %6, align 4
  %109 = icmp slt i32 %108, 10
  br i1 %109, label %110, label %125

110:                                              ; preds = %107
  %111 = call i32 @msleep(i32 10)
  %112 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %113 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %112, i32 0, i32 3
  %114 = load i64 (i32)*, i64 (i32)** %113, align 8
  %115 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %116 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i64 %114(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %110
  br label %125

121:                                              ; preds = %110
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %6, align 4
  br label %107

125:                                              ; preds = %120, %107
  %126 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %127 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %126, i32 0, i32 2
  %128 = load i32 (i32, i32)*, i32 (i32, i32)** %127, align 8
  %129 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %130 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 %128(i32 %131, i32 1)
  %133 = call i32 @msleep(i32 15)
  %134 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %135 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %134, i32 0, i32 1
  %136 = load i32 (i32, i32)*, i32 (i32, i32)** %135, align 8
  %137 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %138 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 %136(i32 %139, i32 0)
  %141 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %142 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %141, i32 0, i32 2
  %143 = load i32 (i32, i32)*, i32 (i32, i32)** %142, align 8
  %144 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %145 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 %143(i32 %146, i32 0)
  %148 = load i8*, i8** %4, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %125
  br label %155

151:                                              ; preds = %125
  br label %152

152:                                              ; preds = %151, %57
  %153 = load i32, i32* %5, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %5, align 4
  br label %17

155:                                              ; preds = %150, %17
  %156 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %157 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %156, i32 0, i32 2
  %158 = load i32 (i32, i32)*, i32 (i32, i32)** %157, align 8
  %159 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %160 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 %158(i32 %161, i32 1)
  %163 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %164 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %163, i32 0, i32 1
  %165 = load i32 (i32, i32)*, i32 (i32, i32)** %164, align 8
  %166 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %167 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 %165(i32 %168, i32 1)
  %170 = load i32, i32* @I2C_CLASS_DDC, align 4
  %171 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %172 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 8
  %175 = load i8*, i8** %4, align 8
  ret i8* %175
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i8* @fb_do_probe_ddc_edid(%struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
