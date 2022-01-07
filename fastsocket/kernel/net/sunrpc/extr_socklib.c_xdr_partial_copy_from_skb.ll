; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_socklib.c_xdr_partial_copy_from_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_socklib.c_xdr_partial_copy_from_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_buf = type { i32, %struct.TYPE_4__*, i64, %struct.TYPE_3__*, %struct.page** }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.page = type { i32 }
%struct.xdr_skb_reader = type { i32 }
%struct.xdr_skb_reader.0 = type opaque

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_MASK = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@KM_SKB_SUNRPC_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xdr_partial_copy_from_skb(%struct.xdr_buf* %0, i32 %1, %struct.xdr_skb_reader* %2, i64 (%struct.xdr_skb_reader.0*, i8*, i32)* %3) #0 {
  %5 = alloca %struct.xdr_buf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xdr_skb_reader*, align 8
  %8 = alloca i64 (%struct.xdr_skb_reader.0*, i8*, i32)*, align 8
  %9 = alloca %struct.page**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store %struct.xdr_buf* %0, %struct.xdr_buf** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.xdr_skb_reader* %2, %struct.xdr_skb_reader** %7, align 8
  store i64 (%struct.xdr_skb_reader.0*, i8*, i32)* %3, i64 (%struct.xdr_skb_reader.0*, i8*, i32)** %8, align 8
  %15 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %16 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %15, i32 0, i32 4
  %17 = load %struct.page**, %struct.page*** %16, align 8
  store %struct.page** %17, %struct.page*** %9, align 8
  %18 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %19 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %21 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %22 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %21, i32 0, i32 3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %63

30:                                               ; preds = %4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %10, align 4
  %33 = sub i32 %32, %31
  store i32 %33, i32* %10, align 4
  %34 = load i64 (%struct.xdr_skb_reader.0*, i8*, i32)*, i64 (%struct.xdr_skb_reader.0*, i8*, i32)** %8, align 8
  %35 = load %struct.xdr_skb_reader*, %struct.xdr_skb_reader** %7, align 8
  %36 = bitcast %struct.xdr_skb_reader* %35 to %struct.xdr_skb_reader.0*
  %37 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %38 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %37, i32 0, i32 3
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = load i32, i32* %6, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i32, i32* %10, align 4
  %48 = call i64 %34(%struct.xdr_skb_reader.0* %36, i8* %46, i32 %47)
  store i64 %48, i64* %13, align 8
  %49 = load i64, i64* %13, align 8
  %50 = load i64, i64* %12, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %12, align 8
  %52 = load i64, i64* %13, align 8
  %53 = load i32, i32* %10, align 4
  %54 = zext i32 %53 to i64
  %55 = icmp ne i64 %52, %54
  br i1 %55, label %61, label %56

56:                                               ; preds = %30
  %57 = load %struct.xdr_skb_reader*, %struct.xdr_skb_reader** %7, align 8
  %58 = getelementptr inbounds %struct.xdr_skb_reader, %struct.xdr_skb_reader* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56, %30
  br label %240

62:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %67

63:                                               ; preds = %4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %6, align 4
  %66 = sub i32 %65, %64
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %63, %62
  %68 = load i32, i32* %11, align 4
  %69 = icmp eq i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %209

74:                                               ; preds = %67
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp uge i32 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %6, align 4
  %84 = sub i32 %83, %82
  store i32 %84, i32* %6, align 4
  br label %209

85:                                               ; preds = %74
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %85
  %89 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %90 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %114

93:                                               ; preds = %88, %85
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %11, align 4
  %96 = sub i32 %95, %94
  store i32 %96, i32* %11, align 4
  %97 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %98 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = zext i32 %100 to i64
  %102 = add nsw i64 %101, %99
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %106 = lshr i32 %104, %105
  %107 = load %struct.page**, %struct.page*** %9, align 8
  %108 = zext i32 %106 to i64
  %109 = getelementptr inbounds %struct.page*, %struct.page** %107, i64 %108
  store %struct.page** %109, %struct.page*** %9, align 8
  %110 = load i32, i32* @PAGE_CACHE_MASK, align 4
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %6, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %93, %88
  br label %115

115:                                              ; preds = %203, %114
  %116 = load %struct.page**, %struct.page*** %9, align 8
  %117 = load %struct.page*, %struct.page** %116, align 8
  %118 = icmp eq %struct.page* %117, null
  %119 = zext i1 %118 to i32
  %120 = call i64 @unlikely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %140

122:                                              ; preds = %115
  %123 = load i32, i32* @GFP_ATOMIC, align 4
  %124 = call %struct.page* @alloc_page(i32 %123)
  %125 = load %struct.page**, %struct.page*** %9, align 8
  store %struct.page* %124, %struct.page** %125, align 8
  %126 = load %struct.page**, %struct.page*** %9, align 8
  %127 = load %struct.page*, %struct.page** %126, align 8
  %128 = icmp eq %struct.page* %127, null
  %129 = zext i1 %128 to i32
  %130 = call i64 @unlikely(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %122
  %133 = load i64, i64* %12, align 8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load i64, i64* @ENOMEM, align 8
  %137 = sub i64 0, %136
  store i64 %137, i64* %12, align 8
  br label %138

138:                                              ; preds = %135, %132
  br label %240

139:                                              ; preds = %122
  br label %140

140:                                              ; preds = %139, %115
  %141 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  store i32 %141, i32* %10, align 4
  %142 = load %struct.page**, %struct.page*** %9, align 8
  %143 = load %struct.page*, %struct.page** %142, align 8
  %144 = load i32, i32* @KM_SKB_SUNRPC_DATA, align 4
  %145 = call i8* @kmap_atomic(%struct.page* %143, i32 %144)
  store i8* %145, i8** %14, align 8
  %146 = load i32, i32* %6, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %167

148:                                              ; preds = %140
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* %10, align 4
  %151 = sub i32 %150, %149
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* %10, align 4
  %154 = icmp ult i32 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %148
  %156 = load i32, i32* %11, align 4
  store i32 %156, i32* %10, align 4
  br label %157

157:                                              ; preds = %155, %148
  %158 = load i64 (%struct.xdr_skb_reader.0*, i8*, i32)*, i64 (%struct.xdr_skb_reader.0*, i8*, i32)** %8, align 8
  %159 = load %struct.xdr_skb_reader*, %struct.xdr_skb_reader** %7, align 8
  %160 = bitcast %struct.xdr_skb_reader* %159 to %struct.xdr_skb_reader.0*
  %161 = load i8*, i8** %14, align 8
  %162 = load i32, i32* %6, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %161, i64 %163
  %165 = load i32, i32* %10, align 4
  %166 = call i64 %158(%struct.xdr_skb_reader.0* %160, i8* %164, i32 %165)
  store i64 %166, i64* %13, align 8
  store i32 0, i32* %6, align 4
  br label %180

167:                                              ; preds = %140
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* %10, align 4
  %170 = icmp ult i32 %168, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %167
  %172 = load i32, i32* %11, align 4
  store i32 %172, i32* %10, align 4
  br label %173

173:                                              ; preds = %171, %167
  %174 = load i64 (%struct.xdr_skb_reader.0*, i8*, i32)*, i64 (%struct.xdr_skb_reader.0*, i8*, i32)** %8, align 8
  %175 = load %struct.xdr_skb_reader*, %struct.xdr_skb_reader** %7, align 8
  %176 = bitcast %struct.xdr_skb_reader* %175 to %struct.xdr_skb_reader.0*
  %177 = load i8*, i8** %14, align 8
  %178 = load i32, i32* %10, align 4
  %179 = call i64 %174(%struct.xdr_skb_reader.0* %176, i8* %177, i32 %178)
  store i64 %179, i64* %13, align 8
  br label %180

180:                                              ; preds = %173, %157
  %181 = load %struct.page**, %struct.page*** %9, align 8
  %182 = load %struct.page*, %struct.page** %181, align 8
  %183 = call i32 @flush_dcache_page(%struct.page* %182)
  %184 = load i8*, i8** %14, align 8
  %185 = load i32, i32* @KM_SKB_SUNRPC_DATA, align 4
  %186 = call i32 @kunmap_atomic(i8* %184, i32 %185)
  %187 = load i64, i64* %13, align 8
  %188 = load i64, i64* %12, align 8
  %189 = add i64 %188, %187
  store i64 %189, i64* %12, align 8
  %190 = load i64, i64* %13, align 8
  %191 = load i32, i32* %10, align 4
  %192 = zext i32 %191 to i64
  %193 = icmp ne i64 %190, %192
  br i1 %193, label %199, label %194

194:                                              ; preds = %180
  %195 = load %struct.xdr_skb_reader*, %struct.xdr_skb_reader** %7, align 8
  %196 = getelementptr inbounds %struct.xdr_skb_reader, %struct.xdr_skb_reader* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %200, label %199

199:                                              ; preds = %194, %180
  br label %240

200:                                              ; preds = %194
  %201 = load %struct.page**, %struct.page*** %9, align 8
  %202 = getelementptr inbounds %struct.page*, %struct.page** %201, i32 1
  store %struct.page** %202, %struct.page*** %9, align 8
  br label %203

203:                                              ; preds = %200
  %204 = load i32, i32* %10, align 4
  %205 = load i32, i32* %11, align 4
  %206 = sub i32 %205, %204
  store i32 %206, i32* %11, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %115, label %208

208:                                              ; preds = %203
  br label %209

209:                                              ; preds = %208, %81, %73
  %210 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %211 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %210, i32 0, i32 1
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i64 0
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  store i32 %215, i32* %10, align 4
  %216 = load i32, i32* %6, align 4
  %217 = load i32, i32* %10, align 4
  %218 = icmp ult i32 %216, %217
  br i1 %218, label %219, label %239

219:                                              ; preds = %209
  %220 = load i64 (%struct.xdr_skb_reader.0*, i8*, i32)*, i64 (%struct.xdr_skb_reader.0*, i8*, i32)** %8, align 8
  %221 = load %struct.xdr_skb_reader*, %struct.xdr_skb_reader** %7, align 8
  %222 = bitcast %struct.xdr_skb_reader* %221 to %struct.xdr_skb_reader.0*
  %223 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %224 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %223, i32 0, i32 1
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i64 0
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = inttoptr i64 %228 to i8*
  %230 = load i32, i32* %6, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* %229, i64 %231
  %233 = load i32, i32* %10, align 4
  %234 = load i32, i32* %6, align 4
  %235 = sub i32 %233, %234
  %236 = call i64 %220(%struct.xdr_skb_reader.0* %222, i8* %232, i32 %235)
  %237 = load i64, i64* %12, align 8
  %238 = add i64 %237, %236
  store i64 %238, i64* %12, align 8
  br label %239

239:                                              ; preds = %219, %209
  br label %240

240:                                              ; preds = %239, %199, %138, %61
  %241 = load i64, i64* %12, align 8
  ret i64 %241
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
