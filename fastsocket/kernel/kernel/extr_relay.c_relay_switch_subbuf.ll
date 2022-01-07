; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_relay.c_relay_switch_subbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_relay.c_relay_switch_subbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rchan_buf = type { i32, i32, i64, i32*, %struct.TYPE_8__*, i8*, i8*, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64, i64, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.rchan_buf*, i8*, i8*, i32)* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @relay_switch_subbuf(%struct.rchan_buf* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.rchan_buf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.rchan_buf* %0, %struct.rchan_buf** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %12 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %11, i32 0, i32 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ugt i64 %10, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %207

21:                                               ; preds = %2
  %22 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %23 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %27 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %26, i32 0, i32 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, 1
  %32 = icmp ne i64 %25, %31
  br i1 %32, label %33, label %129

33:                                               ; preds = %21
  %34 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %35 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %34, i32 0, i32 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %40 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = sub i64 %38, %42
  %44 = trunc i64 %43 to i32
  %45 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %46 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %48 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %51 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %50, i32 0, i32 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = urem i64 %49, %54
  store i64 %55, i64* %8, align 8
  %56 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %57 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %60 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32 %58, i32* %63, align 4
  %64 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %65 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %65, align 8
  %68 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %69 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %68, i32 0, i32 10
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = icmp ne %struct.TYPE_6__* %70, null
  br i1 %71, label %72, label %96

72:                                               ; preds = %33
  %73 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %74 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %73, i32 0, i32 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %79 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* %8, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = sub i64 %77, %84
  %86 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %87 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %86, i32 0, i32 10
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = add i64 %93, %85
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %91, align 4
  br label %116

96:                                               ; preds = %33
  %97 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %98 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %97, i32 0, i32 4
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %103 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* %8, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = sub i64 %101, %108
  %110 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %111 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %110, i32 0, i32 9
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = add i64 %113, %109
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %111, align 8
  br label %116

116:                                              ; preds = %96, %72
  %117 = call i32 (...) @smp_mb()
  %118 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %119 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %118, i32 0, i32 8
  %120 = call i64 @waitqueue_active(i32* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %116
  %123 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %124 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %123, i32 0, i32 7
  %125 = load i64, i64* @jiffies, align 8
  %126 = add nsw i64 %125, 1
  %127 = call i32 @mod_timer(i32* %124, i64 %126)
  br label %128

128:                                              ; preds = %122, %116
  br label %129

129:                                              ; preds = %128, %21
  %130 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %131 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %130, i32 0, i32 5
  %132 = load i8*, i8** %131, align 8
  store i8* %132, i8** %6, align 8
  %133 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %134 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %137 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %136, i32 0, i32 4
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = urem i64 %135, %140
  store i64 %141, i64* %9, align 8
  %142 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %143 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %142, i32 0, i32 6
  %144 = load i8*, i8** %143, align 8
  %145 = load i64, i64* %9, align 8
  %146 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %147 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %146, i32 0, i32 4
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = mul i64 %145, %150
  %152 = getelementptr i8, i8* %144, i64 %151
  store i8* %152, i8** %7, align 8
  %153 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %154 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %153, i32 0, i32 0
  store i32 0, i32* %154, align 8
  %155 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %156 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %155, i32 0, i32 4
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 3
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i32 (%struct.rchan_buf*, i8*, i8*, i32)*, i32 (%struct.rchan_buf*, i8*, i8*, i32)** %160, align 8
  %162 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %163 = load i8*, i8** %7, align 8
  %164 = load i8*, i8** %6, align 8
  %165 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %166 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 %161(%struct.rchan_buf* %162, i8* %163, i8* %164, i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %180, label %170

170:                                              ; preds = %129
  %171 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %172 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %171, i32 0, i32 4
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = add i64 %175, 1
  %177 = trunc i64 %176 to i32
  %178 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %179 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 8
  store i64 0, i64* %3, align 8
  br label %213

180:                                              ; preds = %129
  %181 = load i8*, i8** %7, align 8
  %182 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %183 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %182, i32 0, i32 5
  store i8* %181, i8** %183, align 8
  %184 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %185 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %184, i32 0, i32 3
  %186 = load i32*, i32** %185, align 8
  %187 = load i64, i64* %9, align 8
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  store i32 0, i32* %188, align 4
  %189 = load i64, i64* %5, align 8
  %190 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %191 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = sext i32 %192 to i64
  %194 = add i64 %189, %193
  %195 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %196 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %195, i32 0, i32 4
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp ugt i64 %194, %199
  %201 = zext i1 %200 to i32
  %202 = call i64 @unlikely(i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %180
  br label %207

205:                                              ; preds = %180
  %206 = load i64, i64* %5, align 8
  store i64 %206, i64* %3, align 8
  br label %213

207:                                              ; preds = %204, %20
  %208 = load i64, i64* %5, align 8
  %209 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %210 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %209, i32 0, i32 4
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 2
  store i64 %208, i64* %212, align 8
  store i64 0, i64* %3, align 8
  br label %213

213:                                              ; preds = %207, %205, %170
  %214 = load i64, i64* %3, align 8
  ret i64 %214
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
