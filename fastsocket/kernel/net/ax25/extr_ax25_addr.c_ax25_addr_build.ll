; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ax25/extr_ax25_addr.c_ax25_addr_build.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ax25/extr_ax25_addr.c_ax25_addr_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64*, i32* }

@AX25_ADDR_LEN = common dso_local global i32 0, align 4
@AX25_EBIT = common dso_local global i8 0, align 1
@AX25_CBIT = common dso_local global i8 0, align 1
@AX25_SSSID_SPARE = common dso_local global i8 0, align 1
@AX25_COMMAND = common dso_local global i32 0, align 4
@AX25_MODULUS = common dso_local global i32 0, align 4
@AX25_ESSID_SPARE = common dso_local global i8 0, align 1
@AX25_RESPONSE = common dso_local global i32 0, align 4
@AX25_HBIT = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ax25_addr_build(i8* %0, i32* %1, i32* %2, %struct.TYPE_3__* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = load i32, i32* @AX25_ADDR_LEN, align 4
  %19 = call i32 @memcpy(i8* %16, i32* %17, i32 %18)
  %20 = load i8, i8* @AX25_EBIT, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* @AX25_CBIT, align 1
  %23 = zext i8 %22 to i32
  %24 = or i32 %21, %23
  %25 = xor i32 %24, -1
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 6
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, %25
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %27, align 1
  %32 = load i8, i8* @AX25_SSSID_SPARE, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 6
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %37, %33
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %35, align 1
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @AX25_COMMAND, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %6
  %44 = load i8, i8* @AX25_CBIT, align 1
  %45 = zext i8 %44 to i32
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 6
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = or i32 %49, %45
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %47, align 1
  br label %52

52:                                               ; preds = %43, %6
  %53 = load i32, i32* @AX25_ADDR_LEN, align 4
  %54 = load i8*, i8** %8, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %8, align 8
  %57 = load i32, i32* @AX25_ADDR_LEN, align 4
  %58 = load i32, i32* %14, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %14, align 4
  %60 = load i8*, i8** %8, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* @AX25_ADDR_LEN, align 4
  %63 = call i32 @memcpy(i8* %60, i32* %61, i32 %62)
  %64 = load i8, i8* @AX25_EBIT, align 1
  %65 = zext i8 %64 to i32
  %66 = load i8, i8* @AX25_CBIT, align 1
  %67 = zext i8 %66 to i32
  %68 = or i32 %65, %67
  %69 = xor i32 %68, -1
  %70 = load i8*, i8** %8, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 6
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = and i32 %73, %69
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %71, align 1
  %76 = load i8, i8* @AX25_SSSID_SPARE, align 1
  %77 = zext i8 %76 to i32
  %78 = xor i32 %77, -1
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 6
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = and i32 %82, %78
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %80, align 1
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* @AX25_MODULUS, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %52
  %89 = load i8, i8* @AX25_SSSID_SPARE, align 1
  %90 = zext i8 %89 to i32
  %91 = load i8*, i8** %8, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 6
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = or i32 %94, %90
  %96 = trunc i32 %95 to i8
  store i8 %96, i8* %92, align 1
  br label %106

97:                                               ; preds = %52
  %98 = load i8, i8* @AX25_ESSID_SPARE, align 1
  %99 = zext i8 %98 to i32
  %100 = load i8*, i8** %8, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 6
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = or i32 %103, %99
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %101, align 1
  br label %106

106:                                              ; preds = %97, %88
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* @AX25_RESPONSE, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %106
  %111 = load i8, i8* @AX25_CBIT, align 1
  %112 = zext i8 %111 to i32
  %113 = load i8*, i8** %8, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 6
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = or i32 %116, %112
  %118 = trunc i32 %117 to i8
  store i8 %118, i8* %114, align 1
  br label %119

119:                                              ; preds = %110, %106
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %121 = icmp eq %struct.TYPE_3__* %120, null
  br i1 %121, label %127, label %122

122:                                              ; preds = %119
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %122, %119
  %128 = load i8, i8* @AX25_EBIT, align 1
  %129 = zext i8 %128 to i32
  %130 = load i8*, i8** %8, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 6
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = or i32 %133, %129
  %135 = trunc i32 %134 to i8
  store i8 %135, i8* %131, align 1
  %136 = load i32, i32* @AX25_ADDR_LEN, align 4
  %137 = mul nsw i32 2, %136
  store i32 %137, i32* %7, align 4
  br label %226

138:                                              ; preds = %122
  %139 = load i32, i32* @AX25_ADDR_LEN, align 4
  %140 = load i8*, i8** %8, align 8
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  store i8* %142, i8** %8, align 8
  %143 = load i32, i32* @AX25_ADDR_LEN, align 4
  %144 = load i32, i32* %14, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %14, align 4
  br label %146

146:                                              ; preds = %189, %138
  %147 = load i32, i32* %15, align 4
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp slt i32 %147, %150
  br i1 %151, label %152, label %216

152:                                              ; preds = %146
  %153 = load i8*, i8** %8, align 8
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %15, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* @AX25_ADDR_LEN, align 4
  %161 = call i32 @memcpy(i8* %153, i32* %159, i32 %160)
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 1
  %164 = load i64*, i64** %163, align 8
  %165 = load i32, i32* %15, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i64, i64* %164, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %152
  %171 = load i8, i8* @AX25_HBIT, align 1
  %172 = zext i8 %171 to i32
  %173 = load i8*, i8** %8, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 6
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = or i32 %176, %172
  %178 = trunc i32 %177 to i8
  store i8 %178, i8* %174, align 1
  br label %189

179:                                              ; preds = %152
  %180 = load i8, i8* @AX25_HBIT, align 1
  %181 = zext i8 %180 to i32
  %182 = xor i32 %181, -1
  %183 = load i8*, i8** %8, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 6
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  %187 = and i32 %186, %182
  %188 = trunc i32 %187 to i8
  store i8 %188, i8* %184, align 1
  br label %189

189:                                              ; preds = %179, %170
  %190 = load i8, i8* @AX25_EBIT, align 1
  %191 = zext i8 %190 to i32
  %192 = xor i32 %191, -1
  %193 = load i8*, i8** %8, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 6
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i32
  %197 = and i32 %196, %192
  %198 = trunc i32 %197 to i8
  store i8 %198, i8* %194, align 1
  %199 = load i8, i8* @AX25_SSSID_SPARE, align 1
  %200 = zext i8 %199 to i32
  %201 = load i8*, i8** %8, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 6
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i32
  %205 = or i32 %204, %200
  %206 = trunc i32 %205 to i8
  store i8 %206, i8* %202, align 1
  %207 = load i32, i32* @AX25_ADDR_LEN, align 4
  %208 = load i8*, i8** %8, align 8
  %209 = sext i32 %207 to i64
  %210 = getelementptr inbounds i8, i8* %208, i64 %209
  store i8* %210, i8** %8, align 8
  %211 = load i32, i32* @AX25_ADDR_LEN, align 4
  %212 = load i32, i32* %14, align 4
  %213 = add nsw i32 %212, %211
  store i32 %213, i32* %14, align 4
  %214 = load i32, i32* %15, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %15, align 4
  br label %146

216:                                              ; preds = %146
  %217 = load i8, i8* @AX25_EBIT, align 1
  %218 = zext i8 %217 to i32
  %219 = load i8*, i8** %8, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 -1
  %221 = load i8, i8* %220, align 1
  %222 = zext i8 %221 to i32
  %223 = or i32 %222, %218
  %224 = trunc i32 %223 to i8
  store i8 %224, i8* %220, align 1
  %225 = load i32, i32* %14, align 4
  store i32 %225, i32* %7, align 4
  br label %226

226:                                              ; preds = %216, %127
  %227 = load i32, i32* %7, align 4
  ret i32 %227
}

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
