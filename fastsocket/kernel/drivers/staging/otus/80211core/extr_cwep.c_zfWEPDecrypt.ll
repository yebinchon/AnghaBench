; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cwep.c_zfWEPDecrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cwep.c_zfWEPDecrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crc32_tab = common dso_local global i32* null, align 8
@ZM_ICV_FAILURE = common dso_local global i32 0, align 4
@ZM_ICV_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfWEPDecrypt(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca [256 x i32], align 16
  %15 = alloca [256 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [32 x i32], align 16
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [32 x i32], [32 x i32]* %25, i64 0, i64 0
  store i32 %30, i32* %31, align 16
  %32 = load i32*, i32** %13, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [32 x i32], [32 x i32]* %25, i64 0, i64 1
  store i32 %34, i32* %35, align 4
  %36 = load i32*, i32** %13, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds [32 x i32], [32 x i32]* %25, i64 0, i64 2
  store i32 %38, i32* %39, align 8
  %40 = getelementptr inbounds [32 x i32], [32 x i32]* %25, i64 0, i64 3
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @zfMemoryCopy(i32* %40, i32* %41, i32 %42)
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 3
  store i32 %45, i32* %11, align 4
  store i32 0, i32* %17, align 4
  br label %46

46:                                               ; preds = %64, %6
  %47 = load i32, i32* %17, align 4
  %48 = icmp slt i32 %47, 256
  br i1 %48, label %49, label %67

49:                                               ; preds = %46
  %50 = load i32, i32* %17, align 4
  %51 = load i32, i32* %17, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i64 0, i64 %52
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* %11, align 4
  %56 = sub nsw i32 %55, 1
  %57 = and i32 %54, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [32 x i32], [32 x i32]* %25, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %17, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [256 x i32], [256 x i32]* %15, i64 0, i64 %62
  store i32 %60, i32* %63, align 4
  br label %64

64:                                               ; preds = %49
  %65 = load i32, i32* %17, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %17, align 4
  br label %46

67:                                               ; preds = %46
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %68

68:                                               ; preds = %100, %67
  %69 = load i32, i32* %17, align 4
  %70 = icmp slt i32 %69, 256
  br i1 %70, label %71, label %103

71:                                               ; preds = %68
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* %17, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %72, %76
  %78 = load i32, i32* %17, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [256 x i32], [256 x i32]* %15, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %77, %81
  store i32 %82, i32* %18, align 4
  %83 = load i32, i32* %18, align 4
  %84 = and i32 %83, 255
  store i32 %84, i32* %18, align 4
  %85 = load i32, i32* %17, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %22, align 4
  %89 = load i32, i32* %18, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %17, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i64 0, i64 %94
  store i32 %92, i32* %95, align 4
  %96 = load i32, i32* %22, align 4
  %97 = load i32, i32* %18, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i64 0, i64 %98
  store i32 %96, i32* %99, align 4
  br label %100

100:                                              ; preds = %71
  %101 = load i32, i32* %17, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %17, align 4
  br label %68

103:                                              ; preds = %68
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  %104 = load i32*, i32** %8, align 8
  %105 = load i32*, i32** %9, align 8
  %106 = call i32 @zfwBufGetSize(i32* %104, i32* %105)
  store i32 %106, i32* %24, align 4
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %16, align 4
  br label %108

108:                                              ; preds = %163, %103
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %24, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %166

112:                                              ; preds = %108
  %113 = load i32, i32* %17, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %17, align 4
  %115 = load i32, i32* %17, align 4
  %116 = and i32 %115, 255
  store i32 %116, i32* %17, align 4
  %117 = load i32, i32* %17, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i64 0, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %18, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %18, align 4
  %123 = load i32, i32* %18, align 4
  %124 = and i32 %123, 255
  store i32 %124, i32* %18, align 4
  %125 = load i32, i32* %17, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i64 0, i64 %126
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %22, align 4
  %129 = load i32, i32* %18, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i64 0, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %17, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i64 0, i64 %134
  store i32 %132, i32* %135, align 4
  %136 = load i32, i32* %22, align 4
  %137 = load i32, i32* %18, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i64 0, i64 %138
  store i32 %136, i32* %139, align 4
  %140 = load i32, i32* %17, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i64 0, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %22, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %22, align 4
  %146 = load i32, i32* %22, align 4
  %147 = and i32 %146, 255
  store i32 %147, i32* %22, align 4
  %148 = load i32, i32* %22, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i64 0, i64 %149
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %23, align 4
  %152 = load i32*, i32** %8, align 8
  %153 = load i32*, i32** %9, align 8
  %154 = load i32, i32* %16, align 4
  %155 = call i32 @zmw_rx_buf_readb(i32* %152, i32* %153, i32 %154)
  store i32 %155, i32* %26, align 4
  %156 = load i32*, i32** %8, align 8
  %157 = load i32*, i32** %9, align 8
  %158 = load i32, i32* %16, align 4
  %159 = load i32, i32* %26, align 4
  %160 = load i32, i32* %23, align 4
  %161 = xor i32 %159, %160
  %162 = call i32 @zmw_rx_buf_writeb(i32* %156, i32* %157, i32 %158, i32 %161)
  br label %163

163:                                              ; preds = %112
  %164 = load i32, i32* %16, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %16, align 4
  br label %108

166:                                              ; preds = %108
  store i32* %19, i32** %20, align 8
  %167 = load i32*, i32** %20, align 8
  store i32 -1, i32* %167, align 4
  %168 = load i32, i32* %10, align 4
  store i32 %168, i32* %16, align 4
  br label %169

169:                                              ; preds = %193, %166
  %170 = load i32, i32* %16, align 4
  %171 = load i32, i32* %24, align 4
  %172 = sub nsw i32 %171, 4
  %173 = icmp slt i32 %170, %172
  br i1 %173, label %174, label %196

174:                                              ; preds = %169
  %175 = load i32*, i32** %8, align 8
  %176 = load i32*, i32** %9, align 8
  %177 = load i32, i32* %16, align 4
  %178 = call i32 @zmw_rx_buf_readb(i32* %175, i32* %176, i32 %177)
  store i32 %178, i32* %27, align 4
  %179 = load i32*, i32** %20, align 8
  %180 = load i32, i32* %179, align 4
  %181 = ashr i32 %180, 8
  %182 = load i32*, i32** @crc32_tab, align 8
  %183 = load i32*, i32** %20, align 8
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %27, align 4
  %186 = xor i32 %184, %185
  %187 = and i32 %186, 255
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %182, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = xor i32 %181, %190
  %192 = load i32*, i32** %20, align 8
  store i32 %191, i32* %192, align 4
  br label %193

193:                                              ; preds = %174
  %194 = load i32, i32* %16, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %16, align 4
  br label %169

196:                                              ; preds = %169
  %197 = load i32*, i32** %20, align 8
  %198 = load i32, i32* %197, align 4
  %199 = xor i32 %198, -1
  %200 = load i32*, i32** %20, align 8
  store i32 %199, i32* %200, align 4
  %201 = load i32*, i32** %8, align 8
  %202 = load i32*, i32** %9, align 8
  %203 = load i32, i32* %24, align 4
  %204 = sub nsw i32 %203, 4
  %205 = call i32 @zmw_rx_buf_readb(i32* %201, i32* %202, i32 %204)
  %206 = load i32*, i32** %8, align 8
  %207 = load i32*, i32** %9, align 8
  %208 = load i32, i32* %24, align 4
  %209 = sub nsw i32 %208, 3
  %210 = call i32 @zmw_rx_buf_readb(i32* %206, i32* %207, i32 %209)
  %211 = shl i32 %210, 8
  %212 = or i32 %205, %211
  %213 = load i32*, i32** %8, align 8
  %214 = load i32*, i32** %9, align 8
  %215 = load i32, i32* %24, align 4
  %216 = sub nsw i32 %215, 2
  %217 = call i32 @zmw_rx_buf_readb(i32* %213, i32* %214, i32 %216)
  %218 = shl i32 %217, 16
  %219 = or i32 %212, %218
  %220 = load i32*, i32** %8, align 8
  %221 = load i32*, i32** %9, align 8
  %222 = load i32, i32* %24, align 4
  %223 = sub nsw i32 %222, 1
  %224 = call i32 @zmw_rx_buf_readb(i32* %220, i32* %221, i32 %223)
  %225 = shl i32 %224, 24
  %226 = or i32 %219, %225
  store i32 %226, i32* %21, align 4
  %227 = load i32*, i32** %20, align 8
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %21, align 4
  %230 = icmp ne i32 %228, %229
  br i1 %230, label %231, label %233

231:                                              ; preds = %196
  %232 = load i32, i32* @ZM_ICV_FAILURE, align 4
  store i32 %232, i32* %7, align 4
  br label %235

233:                                              ; preds = %196
  %234 = load i32, i32* @ZM_ICV_SUCCESS, align 4
  store i32 %234, i32* %7, align 4
  br label %235

235:                                              ; preds = %233, %231
  %236 = load i32, i32* %7, align 4
  ret i32 %236
}

declare dso_local i32 @zfMemoryCopy(i32*, i32*, i32) #1

declare dso_local i32 @zfwBufGetSize(i32*, i32*) #1

declare dso_local i32 @zmw_rx_buf_readb(i32*, i32*, i32) #1

declare dso_local i32 @zmw_rx_buf_writeb(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
