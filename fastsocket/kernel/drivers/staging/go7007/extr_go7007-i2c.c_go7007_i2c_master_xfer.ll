; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-i2c.c_go7007_i2c_master_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-i2c.c_go7007_i2c_master_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i64, i32, i32* }
%struct.go7007 = type { i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @go7007_i2c_master_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @go7007_i2c_master_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.go7007*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %11 = call %struct.go7007* @i2c_get_adapdata(%struct.i2c_adapter* %10)
  store %struct.go7007* %11, %struct.go7007** %8, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %183, %3
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %186

16:                                               ; preds = %12
  %17 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i64 %19
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %115

24:                                               ; preds = %16
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, 1
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %74, label %29

29:                                               ; preds = %24
  %30 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i64 %32
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %36, i64 %39
  %41 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %35, %42
  br i1 %43, label %74, label %44

44:                                               ; preds = %29
  %45 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %45, i64 %47
  %49 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @I2C_M_RD, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %74, label %54

54:                                               ; preds = %44
  %55 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %55, i64 %58
  %60 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @I2C_M_RD, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %54
  %66 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %66, i64 %69
  %71 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 1
  br i1 %73, label %74, label %75

74:                                               ; preds = %65, %54, %44, %29, %24
  store i32 -1, i32* %4, align 4
  br label %187

75:                                               ; preds = %65
  %76 = load %struct.go7007*, %struct.go7007** %8, align 8
  %77 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %77, i64 %79
  %81 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %83, i64 %85
  %87 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %90, 8
  %92 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %92, i64 %94
  %96 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %91, %99
  %101 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %101, i64 %104
  %106 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = call i64 @go7007_i2c_xfer(%struct.go7007* %76, i64 %82, i32 1, i32 %100, i32 1, i32* %108)
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %75
  store i32 -1, i32* %4, align 4
  br label %187

112:                                              ; preds = %75
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  br label %182

115:                                              ; preds = %16
  %116 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %116, i64 %118
  %120 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp eq i32 %121, 3
  br i1 %122, label %123, label %180

123:                                              ; preds = %115
  %124 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %124, i64 %126
  %128 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @I2C_M_RD, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %123
  store i32 -1, i32* %4, align 4
  br label %187

134:                                              ; preds = %123
  %135 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %135, i64 %137
  %139 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 3
  br i1 %141, label %142, label %143

142:                                              ; preds = %134
  store i32 -1, i32* %4, align 4
  br label %187

143:                                              ; preds = %134
  %144 = load %struct.go7007*, %struct.go7007** %8, align 8
  %145 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %145, i64 %147
  %149 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %152 = load i32, i32* %9, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %151, i64 %153
  %155 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %154, i32 0, i32 3
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = shl i32 %158, 8
  %160 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %160, i64 %162
  %164 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %163, i32 0, i32 3
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %159, %167
  %169 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %169, i64 %171
  %173 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %172, i32 0, i32 3
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 2
  %176 = call i64 @go7007_i2c_xfer(%struct.go7007* %144, i64 %150, i32 0, i32 %168, i32 1, i32* %175)
  %177 = icmp slt i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %143
  store i32 -1, i32* %4, align 4
  br label %187

179:                                              ; preds = %143
  br label %181

180:                                              ; preds = %115
  store i32 -1, i32* %4, align 4
  br label %187

181:                                              ; preds = %179
  br label %182

182:                                              ; preds = %181, %112
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %9, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %9, align 4
  br label %12

186:                                              ; preds = %12
  store i32 0, i32* %4, align 4
  br label %187

187:                                              ; preds = %186, %180, %178, %142, %133, %111, %74
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local %struct.go7007* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i64 @go7007_i2c_xfer(%struct.go7007*, i64, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
