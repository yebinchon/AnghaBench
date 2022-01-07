; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_fix_tx_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_fix_tx_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fix_tx_fifo(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8180_priv*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i64 @ieee80211_priv(%struct.net_device* %6)
  %8 = inttoptr i64 %7 to %struct.r8180_priv*
  store %struct.r8180_priv* %8, %struct.r8180_priv** %3, align 8
  %9 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %10 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %23, %1
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %15 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %12
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 2147483647
  %22 = load i32*, i32** %4, align 8
  store i32 %21, i32* %22, align 4
  br label %23

23:                                               ; preds = %18
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 8
  store i32* %25, i32** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %12

28:                                               ; preds = %12
  %29 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %30 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %43, %28
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %35 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 2147483647
  %42 = load i32*, i32** %4, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %38
  %44 = load i32*, i32** %4, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 8
  store i32* %45, i32** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %32

48:                                               ; preds = %32
  %49 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %50 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %63, %48
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %55 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %52
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 2147483647
  %62 = load i32*, i32** %4, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %58
  %64 = load i32*, i32** %4, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 8
  store i32* %65, i32** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %52

68:                                               ; preds = %52
  %69 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %70 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %83, %68
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %75 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %72
  %79 = load i32*, i32** %4, align 8
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 2147483647
  %82 = load i32*, i32** %4, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %78
  %84 = load i32*, i32** %4, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 8
  store i32* %85, i32** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %72

88:                                               ; preds = %72
  %89 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %90 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %89, i32 0, i32 5
  %91 = load i32*, i32** %90, align 8
  store i32* %91, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %103, %88
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %95 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %92
  %99 = load i32*, i32** %4, align 8
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 2147483647
  %102 = load i32*, i32** %4, align 8
  store i32 %101, i32* %102, align 4
  br label %103

103:                                              ; preds = %98
  %104 = load i32*, i32** %4, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 8
  store i32* %105, i32** %4, align 8
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %5, align 4
  br label %92

108:                                              ; preds = %92
  %109 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %110 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %109, i32 0, i32 6
  %111 = load i32*, i32** %110, align 8
  store i32* %111, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %123, %108
  %113 = load i32, i32* %5, align 4
  %114 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %115 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %128

118:                                              ; preds = %112
  %119 = load i32*, i32** %4, align 8
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, 2147483647
  %122 = load i32*, i32** %4, align 8
  store i32 %121, i32* %122, align 4
  br label %123

123:                                              ; preds = %118
  %124 = load i32*, i32** %4, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 8
  store i32* %125, i32** %4, align 8
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %5, align 4
  br label %112

128:                                              ; preds = %112
  %129 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %130 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %129, i32 0, i32 7
  %131 = load i32*, i32** %130, align 8
  store i32* %131, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %143, %128
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %135 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %134, i32 0, i32 8
  %136 = load i32, i32* %135, align 8
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %138, label %148

138:                                              ; preds = %132
  %139 = load i32*, i32** %4, align 8
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, 2147483647
  %142 = load i32*, i32** %4, align 8
  store i32 %141, i32* %142, align 4
  br label %143

143:                                              ; preds = %138
  %144 = load i32*, i32** %4, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 8
  store i32* %145, i32** %4, align 8
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %5, align 4
  br label %132

148:                                              ; preds = %132
  %149 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %150 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %153 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %152, i32 0, i32 9
  store i32* %151, i32** %153, align 8
  %154 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %155 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %158 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %157, i32 0, i32 10
  store i32* %156, i32** %158, align 8
  %159 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %160 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %159, i32 0, i32 36
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %163 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %162, i32 0, i32 37
  store i32 %161, i32* %163, align 8
  %164 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %165 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %168 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %167, i32 0, i32 11
  store i32* %166, i32** %168, align 8
  %169 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %170 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %173 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %172, i32 0, i32 12
  store i32* %171, i32** %173, align 8
  %174 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %175 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %174, i32 0, i32 34
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %178 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %177, i32 0, i32 35
  store i32 %176, i32* %178, align 8
  %179 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %180 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %179, i32 0, i32 3
  %181 = load i32*, i32** %180, align 8
  %182 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %183 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %182, i32 0, i32 13
  store i32* %181, i32** %183, align 8
  %184 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %185 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %184, i32 0, i32 3
  %186 = load i32*, i32** %185, align 8
  %187 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %188 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %187, i32 0, i32 14
  store i32* %186, i32** %188, align 8
  %189 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %190 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %189, i32 0, i32 32
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %193 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %192, i32 0, i32 33
  store i32 %191, i32* %193, align 8
  %194 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %195 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %194, i32 0, i32 4
  %196 = load i32*, i32** %195, align 8
  %197 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %198 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %197, i32 0, i32 15
  store i32* %196, i32** %198, align 8
  %199 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %200 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %199, i32 0, i32 4
  %201 = load i32*, i32** %200, align 8
  %202 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %203 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %202, i32 0, i32 16
  store i32* %201, i32** %203, align 8
  %204 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %205 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %204, i32 0, i32 30
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %208 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %207, i32 0, i32 31
  store i32 %206, i32* %208, align 8
  %209 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %210 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %209, i32 0, i32 5
  %211 = load i32*, i32** %210, align 8
  %212 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %213 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %212, i32 0, i32 17
  store i32* %211, i32** %213, align 8
  %214 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %215 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %214, i32 0, i32 5
  %216 = load i32*, i32** %215, align 8
  %217 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %218 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %217, i32 0, i32 18
  store i32* %216, i32** %218, align 8
  %219 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %220 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %219, i32 0, i32 28
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %223 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %222, i32 0, i32 29
  store i32 %221, i32* %223, align 8
  %224 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %225 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %224, i32 0, i32 6
  %226 = load i32*, i32** %225, align 8
  %227 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %228 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %227, i32 0, i32 19
  store i32* %226, i32** %228, align 8
  %229 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %230 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %229, i32 0, i32 6
  %231 = load i32*, i32** %230, align 8
  %232 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %233 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %232, i32 0, i32 20
  store i32* %231, i32** %233, align 8
  %234 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %235 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %234, i32 0, i32 26
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %238 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %237, i32 0, i32 27
  store i32 %236, i32* %238, align 8
  %239 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %240 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %239, i32 0, i32 7
  %241 = load i32*, i32** %240, align 8
  %242 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %243 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %242, i32 0, i32 21
  store i32* %241, i32** %243, align 8
  %244 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %245 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %244, i32 0, i32 24
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %248 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %247, i32 0, i32 25
  store i32 %246, i32* %248, align 8
  %249 = load %struct.net_device*, %struct.net_device** %2, align 8
  %250 = call i32 @set_nic_txring(%struct.net_device* %249)
  %251 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %252 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %251, i32 0, i32 23
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @ieee80211_reset_queue(i32 %253)
  %255 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %256 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %255, i32 0, i32 22
  store i64 0, i64* %256, align 8
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @set_nic_txring(%struct.net_device*) #1

declare dso_local i32 @ieee80211_reset_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
