; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/echo/extr_echo.c_oslec_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/echo/extr_echo.c_oslec_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oslec_state = type { i32, i32, i32, i32, i32, %struct.oslec_state**, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8*, i64*, i64*, i64*, i64*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.oslec_state* @oslec_create(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.oslec_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.oslec_state*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.oslec_state* @kzalloc(i32 216, i32 %8)
  store %struct.oslec_state* %9, %struct.oslec_state** %6, align 8
  %10 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %11 = icmp ne %struct.oslec_state* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.oslec_state* null, %struct.oslec_state** %3, align 8
  br label %189

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %16 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @top_bit(i32 %17)
  %19 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %20 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %19, i32 0, i32 29
  store i32 %18, i32* %20, align 8
  %21 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %22 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  %25 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %26 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %53, %13
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %56

30:                                               ; preds = %27
  %31 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %32 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @kcalloc(i32 %33, i32 4, i32 %34)
  %36 = bitcast i8* %35 to %struct.oslec_state*
  %37 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %38 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %37, i32 0, i32 5
  %39 = load %struct.oslec_state**, %struct.oslec_state*** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.oslec_state*, %struct.oslec_state** %39, i64 %41
  store %struct.oslec_state* %36, %struct.oslec_state** %42, align 8
  %43 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %44 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %43, i32 0, i32 5
  %45 = load %struct.oslec_state**, %struct.oslec_state*** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.oslec_state*, %struct.oslec_state** %45, i64 %47
  %49 = load %struct.oslec_state*, %struct.oslec_state** %48, align 8
  %50 = icmp ne %struct.oslec_state* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %30
  br label %170

52:                                               ; preds = %30
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %27

56:                                               ; preds = %27
  %57 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %58 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %57, i32 0, i32 28
  %59 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %60 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %59, i32 0, i32 5
  %61 = load %struct.oslec_state**, %struct.oslec_state*** %60, align 8
  %62 = getelementptr inbounds %struct.oslec_state*, %struct.oslec_state** %61, i64 0
  %63 = load %struct.oslec_state*, %struct.oslec_state** %62, align 8
  %64 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %65 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @fir16_create(i32* %58, %struct.oslec_state* %63, i32 %66)
  %68 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %69 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %68, i32 0, i32 27
  %70 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %71 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %70, i32 0, i32 5
  %72 = load %struct.oslec_state**, %struct.oslec_state*** %71, align 8
  %73 = getelementptr inbounds %struct.oslec_state*, %struct.oslec_state** %72, i64 1
  %74 = load %struct.oslec_state*, %struct.oslec_state** %73, align 8
  %75 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %76 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @fir16_create(i32* %69, %struct.oslec_state* %74, i32 %77)
  store i32 0, i32* %7, align 4
  br label %79

79:                                               ; preds = %107, %56
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %80, 5
  br i1 %81, label %82, label %110

82:                                               ; preds = %79
  %83 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %84 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %83, i32 0, i32 23
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  store i64 0, i64* %88, align 8
  %89 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %90 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %89, i32 0, i32 24
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  store i64 0, i64* %94, align 8
  %95 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %96 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %95, i32 0, i32 25
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  store i64 0, i64* %100, align 8
  %101 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %102 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %101, i32 0, i32 26
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  store i64 0, i64* %106, align 8
  br label %107

107:                                              ; preds = %82
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %79

110:                                              ; preds = %79
  %111 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %112 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %111, i32 0, i32 2
  store i32 1000, i32* %112, align 8
  %113 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @oslec_adaption_mode(%struct.oslec_state* %113, i32 %114)
  %116 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %117 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @GFP_KERNEL, align 4
  %120 = call i8* @kcalloc(i32 %118, i32 4, i32 %119)
  %121 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %122 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %121, i32 0, i32 22
  store i8* %120, i8** %122, align 8
  %123 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %124 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %123, i32 0, i32 22
  %125 = load i8*, i8** %124, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %110
  br label %170

128:                                              ; preds = %110
  %129 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %130 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %129, i32 0, i32 21
  store i64 0, i64* %130, align 8
  %131 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %132 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %131, i32 0, i32 20
  store i64 0, i64* %132, align 8
  %133 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %134 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %133, i32 0, i32 16
  store i64 0, i64* %134, align 8
  %135 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %136 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %135, i32 0, i32 17
  store i64 0, i64* %136, align 8
  %137 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %138 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %137, i32 0, i32 18
  store i64 0, i64* %138, align 8
  %139 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %140 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %139, i32 0, i32 19
  store i64 0, i64* %140, align 8
  %141 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %142 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %141, i32 0, i32 12
  store i64 0, i64* %142, align 8
  %143 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %144 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %143, i32 0, i32 13
  store i64 0, i64* %144, align 8
  %145 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %146 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %145, i32 0, i32 14
  store i64 0, i64* %146, align 8
  %147 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %148 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %147, i32 0, i32 15
  store i64 0, i64* %148, align 8
  %149 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %150 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %149, i32 0, i32 8
  store i64 0, i64* %150, align 8
  %151 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %152 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %151, i32 0, i32 9
  store i64 0, i64* %152, align 8
  %153 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %154 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %153, i32 0, i32 10
  store i64 0, i64* %154, align 8
  %155 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %156 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %155, i32 0, i32 11
  store i64 0, i64* %156, align 8
  %157 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %158 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %157, i32 0, i32 6
  store i64 0, i64* %158, align 8
  %159 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %160 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %159, i32 0, i32 7
  store i64 0, i64* %160, align 8
  %161 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %162 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %161, i32 0, i32 3
  store i32 200, i32* %162, align 4
  %163 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %164 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = shl i32 %165, 13
  %167 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %168 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %167, i32 0, i32 4
  store i32 %166, i32* %168, align 8
  %169 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  store %struct.oslec_state* %169, %struct.oslec_state** %3, align 8
  br label %189

170:                                              ; preds = %127, %51
  store i32 0, i32* %7, align 4
  br label %171

171:                                              ; preds = %183, %170
  %172 = load i32, i32* %7, align 4
  %173 = icmp slt i32 %172, 2
  br i1 %173, label %174, label %186

174:                                              ; preds = %171
  %175 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %176 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %175, i32 0, i32 5
  %177 = load %struct.oslec_state**, %struct.oslec_state*** %176, align 8
  %178 = load i32, i32* %7, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.oslec_state*, %struct.oslec_state** %177, i64 %179
  %181 = load %struct.oslec_state*, %struct.oslec_state** %180, align 8
  %182 = call i32 @kfree(%struct.oslec_state* %181)
  br label %183

183:                                              ; preds = %174
  %184 = load i32, i32* %7, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %7, align 4
  br label %171

186:                                              ; preds = %171
  %187 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %188 = call i32 @kfree(%struct.oslec_state* %187)
  store %struct.oslec_state* null, %struct.oslec_state** %3, align 8
  br label %189

189:                                              ; preds = %186, %128, %12
  %190 = load %struct.oslec_state*, %struct.oslec_state** %3, align 8
  ret %struct.oslec_state* %190
}

declare dso_local %struct.oslec_state* @kzalloc(i32, i32) #1

declare dso_local i32 @top_bit(i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @fir16_create(i32*, %struct.oslec_state*, i32) #1

declare dso_local i32 @oslec_adaption_mode(%struct.oslec_state*, i32) #1

declare dso_local i32 @kfree(%struct.oslec_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
