; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ak4xxx.c_snd_ice1712_akm4xxx_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ak4xxx.c_snd_ice1712_akm4xxx_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_akm4xxx = type { %struct.snd_ice1712**, i64* }
%struct.snd_ice1712 = type { i32 }
%struct.snd_ak4xxx_private = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_akm4xxx*, i32, i8, i8)* @snd_ice1712_akm4xxx_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ice1712_akm4xxx_write(%struct.snd_akm4xxx* %0, i32 %1, i8 zeroext %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.snd_akm4xxx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_ak4xxx_private*, align 8
  %13 = alloca %struct.snd_ice1712*, align 8
  store %struct.snd_akm4xxx* %0, %struct.snd_akm4xxx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  store i8 %3, i8* %8, align 1
  %14 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %5, align 8
  %15 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast i8* %19 to %struct.snd_ak4xxx_private*
  store %struct.snd_ak4xxx_private* %20, %struct.snd_ak4xxx_private** %12, align 8
  %21 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %5, align 8
  %22 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %21, i32 0, i32 0
  %23 = load %struct.snd_ice1712**, %struct.snd_ice1712*** %22, align 8
  %24 = getelementptr inbounds %struct.snd_ice1712*, %struct.snd_ice1712** %23, i64 0
  %25 = load %struct.snd_ice1712*, %struct.snd_ice1712** %24, align 8
  store %struct.snd_ice1712* %25, %struct.snd_ice1712** %13, align 8
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* %6, align 4
  %30 = icmp sge i32 %29, 4
  br label %31

31:                                               ; preds = %28, %4
  %32 = phi i1 [ true, %4 ], [ %30, %28 ]
  %33 = zext i1 %32 to i32
  %34 = call i64 @snd_BUG_ON(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %208

37:                                               ; preds = %31
  %38 = load %struct.snd_ice1712*, %struct.snd_ice1712** %13, align 8
  %39 = call i32 @snd_ice1712_gpio_read(%struct.snd_ice1712* %38)
  store i32 %39, i32* %9, align 4
  %40 = load %struct.snd_ak4xxx_private*, %struct.snd_ak4xxx_private** %12, align 8
  %41 = getelementptr inbounds %struct.snd_ak4xxx_private, %struct.snd_ak4xxx_private* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %9, align 4
  %45 = load %struct.snd_ak4xxx_private*, %struct.snd_ak4xxx_private** %12, align 8
  %46 = getelementptr inbounds %struct.snd_ak4xxx_private, %struct.snd_ak4xxx_private* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %9, align 4
  %51 = load %struct.snd_ak4xxx_private*, %struct.snd_ak4xxx_private** %12, align 8
  %52 = getelementptr inbounds %struct.snd_ak4xxx_private, %struct.snd_ak4xxx_private* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.snd_ak4xxx_private*, %struct.snd_ak4xxx_private** %12, align 8
  %55 = getelementptr inbounds %struct.snd_ak4xxx_private, %struct.snd_ak4xxx_private* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %53, %56
  br i1 %57, label %58, label %81

58:                                               ; preds = %37
  %59 = load %struct.snd_ak4xxx_private*, %struct.snd_ak4xxx_private** %12, align 8
  %60 = getelementptr inbounds %struct.snd_ak4xxx_private, %struct.snd_ak4xxx_private* %59, i32 0, i32 8
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load %struct.snd_ak4xxx_private*, %struct.snd_ak4xxx_private** %12, align 8
  %65 = getelementptr inbounds %struct.snd_ak4xxx_private, %struct.snd_ak4xxx_private* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %9, align 4
  br label %80

69:                                               ; preds = %58
  %70 = load %struct.snd_ak4xxx_private*, %struct.snd_ak4xxx_private** %12, align 8
  %71 = getelementptr inbounds %struct.snd_ak4xxx_private, %struct.snd_ak4xxx_private* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %9, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %9, align 4
  %76 = load %struct.snd_ice1712*, %struct.snd_ice1712** %13, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %76, i32 %77)
  %79 = call i32 @udelay(i32 1)
  br label %80

80:                                               ; preds = %69, %63
  br label %97

81:                                               ; preds = %37
  %82 = load %struct.snd_ak4xxx_private*, %struct.snd_ak4xxx_private** %12, align 8
  %83 = getelementptr inbounds %struct.snd_ak4xxx_private, %struct.snd_ak4xxx_private* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %9, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %9, align 4
  %88 = load %struct.snd_ak4xxx_private*, %struct.snd_ak4xxx_private** %12, align 8
  %89 = getelementptr inbounds %struct.snd_ak4xxx_private, %struct.snd_ak4xxx_private* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %9, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %9, align 4
  %93 = load %struct.snd_ice1712*, %struct.snd_ice1712** %13, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %93, i32 %94)
  %96 = call i32 @udelay(i32 1)
  br label %97

97:                                               ; preds = %81, %80
  %98 = load %struct.snd_ak4xxx_private*, %struct.snd_ak4xxx_private** %12, align 8
  %99 = getelementptr inbounds %struct.snd_ak4xxx_private, %struct.snd_ak4xxx_private* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = shl i32 %100, 6
  %102 = or i32 %101, 32
  %103 = load i8, i8* %7, align 1
  %104 = zext i8 %103 to i32
  %105 = and i32 %104, 31
  %106 = or i32 %102, %105
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = shl i32 %107, 8
  %109 = load i8, i8* %8, align 1
  %110 = zext i8 %109 to i32
  %111 = or i32 %108, %110
  store i32 %111, i32* %11, align 4
  store i32 15, i32* %10, align 4
  br label %112

112:                                              ; preds = %158, %97
  %113 = load i32, i32* %10, align 4
  %114 = icmp sge i32 %113, 0
  br i1 %114, label %115, label %161

115:                                              ; preds = %112
  %116 = load %struct.snd_ak4xxx_private*, %struct.snd_ak4xxx_private** %12, align 8
  %117 = getelementptr inbounds %struct.snd_ak4xxx_private, %struct.snd_ak4xxx_private* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %9, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %9, align 4
  %122 = load %struct.snd_ice1712*, %struct.snd_ice1712** %13, align 8
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %122, i32 %123)
  %125 = call i32 @udelay(i32 1)
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %10, align 4
  %128 = shl i32 1, %127
  %129 = and i32 %126, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %115
  %132 = load %struct.snd_ak4xxx_private*, %struct.snd_ak4xxx_private** %12, align 8
  %133 = getelementptr inbounds %struct.snd_ak4xxx_private, %struct.snd_ak4xxx_private* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %9, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %9, align 4
  br label %144

137:                                              ; preds = %115
  %138 = load %struct.snd_ak4xxx_private*, %struct.snd_ak4xxx_private** %12, align 8
  %139 = getelementptr inbounds %struct.snd_ak4xxx_private, %struct.snd_ak4xxx_private* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 8
  %141 = xor i32 %140, -1
  %142 = load i32, i32* %9, align 4
  %143 = and i32 %142, %141
  store i32 %143, i32* %9, align 4
  br label %144

144:                                              ; preds = %137, %131
  %145 = load %struct.snd_ice1712*, %struct.snd_ice1712** %13, align 8
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %145, i32 %146)
  %148 = call i32 @udelay(i32 1)
  %149 = load %struct.snd_ak4xxx_private*, %struct.snd_ak4xxx_private** %12, align 8
  %150 = getelementptr inbounds %struct.snd_ak4xxx_private, %struct.snd_ak4xxx_private* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %9, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %9, align 4
  %154 = load %struct.snd_ice1712*, %struct.snd_ice1712** %13, align 8
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %154, i32 %155)
  %157 = call i32 @udelay(i32 1)
  br label %158

158:                                              ; preds = %144
  %159 = load i32, i32* %10, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %10, align 4
  br label %112

161:                                              ; preds = %112
  %162 = load %struct.snd_ak4xxx_private*, %struct.snd_ak4xxx_private** %12, align 8
  %163 = getelementptr inbounds %struct.snd_ak4xxx_private, %struct.snd_ak4xxx_private* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.snd_ak4xxx_private*, %struct.snd_ak4xxx_private** %12, align 8
  %166 = getelementptr inbounds %struct.snd_ak4xxx_private, %struct.snd_ak4xxx_private* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %164, %167
  br i1 %168, label %169, label %191

169:                                              ; preds = %161
  %170 = load %struct.snd_ak4xxx_private*, %struct.snd_ak4xxx_private** %12, align 8
  %171 = getelementptr inbounds %struct.snd_ak4xxx_private, %struct.snd_ak4xxx_private* %170, i32 0, i32 8
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %185

174:                                              ; preds = %169
  %175 = load %struct.snd_ak4xxx_private*, %struct.snd_ak4xxx_private** %12, align 8
  %176 = getelementptr inbounds %struct.snd_ak4xxx_private, %struct.snd_ak4xxx_private* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = xor i32 %177, -1
  %179 = load i32, i32* %9, align 4
  %180 = and i32 %179, %178
  store i32 %180, i32* %9, align 4
  %181 = load %struct.snd_ice1712*, %struct.snd_ice1712** %13, align 8
  %182 = load i32, i32* %9, align 4
  %183 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %181, i32 %182)
  %184 = call i32 @udelay(i32 1)
  br label %185

185:                                              ; preds = %174, %169
  %186 = load %struct.snd_ak4xxx_private*, %struct.snd_ak4xxx_private** %12, align 8
  %187 = getelementptr inbounds %struct.snd_ak4xxx_private, %struct.snd_ak4xxx_private* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %9, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %9, align 4
  br label %203

191:                                              ; preds = %161
  %192 = load %struct.snd_ak4xxx_private*, %struct.snd_ak4xxx_private** %12, align 8
  %193 = getelementptr inbounds %struct.snd_ak4xxx_private, %struct.snd_ak4xxx_private* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = xor i32 %194, -1
  %196 = load i32, i32* %9, align 4
  %197 = and i32 %196, %195
  store i32 %197, i32* %9, align 4
  %198 = load %struct.snd_ak4xxx_private*, %struct.snd_ak4xxx_private** %12, align 8
  %199 = getelementptr inbounds %struct.snd_ak4xxx_private, %struct.snd_ak4xxx_private* %198, i32 0, i32 7
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %9, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %9, align 4
  br label %203

203:                                              ; preds = %191, %185
  %204 = load %struct.snd_ice1712*, %struct.snd_ice1712** %13, align 8
  %205 = load i32, i32* %9, align 4
  %206 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %204, i32 %205)
  %207 = call i32 @udelay(i32 1)
  br label %208

208:                                              ; preds = %203, %36
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_ice1712_gpio_read(%struct.snd_ice1712*) #1

declare dso_local i32 @snd_ice1712_gpio_write(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
