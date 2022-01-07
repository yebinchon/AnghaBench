; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_ReadEFuse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_ReadEFuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"ReadEFuse(): Invalid offset with read bytes!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ReadEFuse(%struct.net_device* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [128 x i32], align 16
  %10 = alloca [1 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [16 x [4 x i32]], align 16
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %17

17:                                               ; preds = %35, %4
  %18 = load i32, i32* %14, align 4
  %19 = icmp slt i32 %18, 16
  br i1 %19, label %20, label %38

20:                                               ; preds = %17
  store i32 0, i32* %15, align 4
  br label %21

21:                                               ; preds = %31, %20
  %22 = load i32, i32* %15, align 4
  %23 = icmp slt i32 %22, 4
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i32, i32* %14, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [16 x [4 x i32]], [16 x [4 x i32]]* %16, i64 0, i64 %26
  %28 = load i32, i32* %15, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i64 0, i64 %29
  store i32 255, i32* %30, align 4
  br label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %15, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %15, align 4
  br label %21

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %14, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %14, align 4
  br label %17

38:                                               ; preds = %17
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %39, %40
  %42 = icmp sgt i32 %41, 128
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %228

45:                                               ; preds = %38
  store i32 0, i32* %14, align 4
  br label %46

46:                                               ; preds = %53, %45
  %47 = load i32, i32* %14, align 4
  %48 = icmp slt i32 %47, 128
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %51
  store i32 255, i32* %52, align 4
  br label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %14, align 4
  br label %46

56:                                               ; preds = %46
  %57 = load %struct.net_device*, %struct.net_device** %5, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @EFUSE_Read1Byte(%struct.net_device* %57, i32 %58)
  %60 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  store i32 %59, i32* %60, align 4
  %61 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 255
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %64, %56
  br label %68

68:                                               ; preds = %160, %67
  %69 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 255
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* %11, align 4
  %74 = icmp slt i32 %73, 512
  br label %75

75:                                               ; preds = %72, %68
  %76 = phi i1 [ false, %68 ], [ %74, %72 ]
  br i1 %76, label %77, label %161

77:                                               ; preds = %75
  %78 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 4
  %81 = and i32 %80, 15
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp sle i32 %82, 15
  br i1 %83, label %84, label %144

84:                                               ; preds = %77
  %85 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 15
  store i32 %87, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %88

88:                                               ; preds = %140, %84
  %89 = load i32, i32* %14, align 4
  %90 = icmp slt i32 %89, 4
  br i1 %90, label %91, label %143

91:                                               ; preds = %88
  %92 = load i32, i32* %13, align 4
  %93 = and i32 %92, 1
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %137, label %95

95:                                               ; preds = %91
  %96 = load %struct.net_device*, %struct.net_device** %5, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @EFUSE_Read1Byte(%struct.net_device* %96, i32 %97)
  %99 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  store i32 %98, i32* %99, align 4
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  %102 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 255
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [16 x [4 x i32]], [16 x [4 x i32]]* %16, i64 0, i64 %106
  %108 = load i32, i32* %14, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [4 x i32], [4 x i32]* %107, i64 0, i64 %109
  store i32 %104, i32* %110, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp sge i32 %111, 512
  br i1 %112, label %113, label %114

113:                                              ; preds = %95
  br label %143

114:                                              ; preds = %95
  %115 = load %struct.net_device*, %struct.net_device** %5, align 8
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @EFUSE_Read1Byte(%struct.net_device* %115, i32 %116)
  %118 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  store i32 %117, i32* %118, align 4
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %11, align 4
  %121 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = shl i32 %122, 8
  %124 = and i32 %123, 65280
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [16 x [4 x i32]], [16 x [4 x i32]]* %16, i64 0, i64 %126
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [4 x i32], [4 x i32]* %127, i64 0, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %124
  store i32 %132, i32* %130, align 4
  %133 = load i32, i32* %11, align 4
  %134 = icmp sge i32 %133, 512
  br i1 %134, label %135, label %136

135:                                              ; preds = %114
  br label %143

136:                                              ; preds = %114
  br label %137

137:                                              ; preds = %136, %91
  %138 = load i32, i32* %13, align 4
  %139 = ashr i32 %138, 1
  store i32 %139, i32* %13, align 4
  br label %140

140:                                              ; preds = %137
  %141 = load i32, i32* %14, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %14, align 4
  br label %88

143:                                              ; preds = %135, %113, %88
  br label %144

144:                                              ; preds = %143, %77
  %145 = load %struct.net_device*, %struct.net_device** %5, align 8
  %146 = load i32, i32* %11, align 4
  %147 = call i32 @EFUSE_Read1Byte(%struct.net_device* %145, i32 %146)
  %148 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  store i32 %147, i32* %148, align 4
  %149 = load i32, i32* %11, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %11, align 4
  %151 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 255
  br i1 %153, label %154, label %160

154:                                              ; preds = %144
  %155 = load i32, i32* %11, align 4
  %156 = icmp slt i32 %155, 512
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i32, i32* %11, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %11, align 4
  br label %160

160:                                              ; preds = %157, %154, %144
  br label %68

161:                                              ; preds = %75
  store i32 0, i32* %14, align 4
  br label %162

162:                                              ; preds = %206, %161
  %163 = load i32, i32* %14, align 4
  %164 = icmp slt i32 %163, 16
  br i1 %164, label %165, label %209

165:                                              ; preds = %162
  store i32 0, i32* %15, align 4
  br label %166

166:                                              ; preds = %202, %165
  %167 = load i32, i32* %15, align 4
  %168 = icmp slt i32 %167, 4
  br i1 %168, label %169, label %205

169:                                              ; preds = %166
  %170 = load i32, i32* %14, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [16 x [4 x i32]], [16 x [4 x i32]]* %16, i64 0, i64 %171
  %173 = load i32, i32* %15, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [4 x i32], [4 x i32]* %172, i64 0, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = and i32 %176, 255
  %178 = load i32, i32* %14, align 4
  %179 = mul nsw i32 %178, 8
  %180 = load i32, i32* %15, align 4
  %181 = mul nsw i32 %180, 2
  %182 = add nsw i32 %179, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %183
  store i32 %177, i32* %184, align 4
  %185 = load i32, i32* %14, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [16 x [4 x i32]], [16 x [4 x i32]]* %16, i64 0, i64 %186
  %188 = load i32, i32* %15, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [4 x i32], [4 x i32]* %187, i64 0, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = ashr i32 %191, 8
  %193 = and i32 %192, 255
  %194 = load i32, i32* %14, align 4
  %195 = mul nsw i32 %194, 8
  %196 = load i32, i32* %15, align 4
  %197 = mul nsw i32 %196, 2
  %198 = add nsw i32 %197, 1
  %199 = add nsw i32 %195, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %200
  store i32 %193, i32* %201, align 4
  br label %202

202:                                              ; preds = %169
  %203 = load i32, i32* %15, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %15, align 4
  br label %166

205:                                              ; preds = %166
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %14, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %14, align 4
  br label %162

209:                                              ; preds = %162
  store i32 0, i32* %14, align 4
  br label %210

210:                                              ; preds = %225, %209
  %211 = load i32, i32* %14, align 4
  %212 = load i32, i32* %7, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %228

214:                                              ; preds = %210
  %215 = load i32, i32* %6, align 4
  %216 = load i32, i32* %14, align 4
  %217 = add nsw i32 %215, %216
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = load i32*, i32** %8, align 8
  %222 = load i32, i32* %14, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  store i32 %220, i32* %224, align 4
  br label %225

225:                                              ; preds = %214
  %226 = load i32, i32* %14, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %14, align 4
  br label %210

228:                                              ; preds = %43, %210
  ret void
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @EFUSE_Read1Byte(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
