; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_engine.c_recvrec_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_engine.c_recvrec_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i8*, i8*, i64, i64, i32, i8, i32, i32, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8* (%struct.TYPE_10__**, i8, i32, i8*, i64*)*, i32 (%struct.TYPE_10__**, i32)* }

@BR_IO_INOUT = common dso_local global i64 0, align 8
@BR_IO_IN = common dso_local global i64 0, align 8
@BR_ERR_UNSUPPORTED_VERSION = common dso_local global i32 0, align 4
@BR_ERR_BAD_VERSION = common dso_local global i32 0, align 4
@BR_ERR_BAD_LENGTH = common dso_local global i32 0, align 4
@BR_ERR_TOO_LARGE = common dso_local global i32 0, align 4
@BR_ERR_BAD_MAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i64)* @recvrec_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recvrec_ack(%struct.TYPE_9__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BR_IO_INOUT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = icmp eq i8* %17, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = load i64, i64* @BR_IO_IN, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  br label %26

26:                                               ; preds = %22, %14, %2
  %27 = load i64, i64* %4, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, %27
  store i64 %31, i64* %29, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 3
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = zext i32 %37 to i64
  %39 = sub i64 %38, %34
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ult i64 %43, 5
  br i1 %44, label %45, label %46

45:                                               ; preds = %26
  br label %223

46:                                               ; preds = %26
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 5
  br i1 %50, label %51, label %151

51:                                               ; preds = %46
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 6
  store i8 %56, i8* %58, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = call i32 @br_dec16be(i8* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = lshr i32 %64, 8
  %66 = icmp ne i32 %65, 3
  br i1 %66, label %67, label %71

67:                                               ; preds = %51
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %69 = load i32, i32* @BR_ERR_UNSUPPORTED_VERSION, align 4
  %70 = call i32 @br_ssl_engine_fail(%struct.TYPE_9__* %68, i32 %69)
  br label %223

71:                                               ; preds = %51
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %71
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %84 = load i32, i32* @BR_ERR_BAD_VERSION, align 4
  %85 = call i32 @br_ssl_engine_fail(%struct.TYPE_9__* %83, i32 %84)
  br label %223

86:                                               ; preds = %76, %71
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 7
  store i32 %87, i32* %89, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 3
  %94 = call i32 @br_dec16be(i8* %93)
  store i32 %94, i32* %8, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 10
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %128

99:                                               ; preds = %86
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 9
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i32 (%struct.TYPE_10__**, i32)*, i32 (%struct.TYPE_10__**, i32)** %104, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 9
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %8, align 4
  %110 = call i32 %105(%struct.TYPE_10__** %108, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %99
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %114 = load i32, i32* @BR_ERR_BAD_LENGTH, align 4
  %115 = call i32 @br_ssl_engine_fail(%struct.TYPE_9__* %113, i32 %114)
  br label %223

116:                                              ; preds = %99
  %117 = load i32, i32* %8, align 4
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 8
  %120 = load i32, i32* %119, align 4
  %121 = sub nsw i32 %120, 5
  %122 = icmp ugt i32 %117, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %116
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %125 = load i32, i32* @BR_ERR_TOO_LARGE, align 4
  %126 = call i32 @br_ssl_engine_fail(%struct.TYPE_9__* %124, i32 %125)
  br label %223

127:                                              ; preds = %116
  br label %136

128:                                              ; preds = %86
  %129 = load i32, i32* %8, align 4
  %130 = icmp ugt i32 %129, 16384
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %133 = load i32, i32* @BR_ERR_BAD_LENGTH, align 4
  %134 = call i32 @br_ssl_engine_fail(%struct.TYPE_9__* %132, i32 %133)
  br label %223

135:                                              ; preds = %128
  br label %136

136:                                              ; preds = %135, %127
  %137 = load i32, i32* %8, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %141 = call i32 @make_ready_in(%struct.TYPE_9__* %140)
  br label %150

142:                                              ; preds = %136
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 3
  store i64 5, i64* %144, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 4
  store i64 5, i64* %146, align 8
  %147 = load i32, i32* %8, align 4
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 5
  store i32 %147, i32* %149, align 8
  br label %150

150:                                              ; preds = %142, %139
  br label %223

151:                                              ; preds = %46
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 10
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %151
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 4
  store i64 5, i64* %158, align 8
  br label %223

159:                                              ; preds = %151
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  br label %223

165:                                              ; preds = %159
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = sub i64 %168, 5
  store i64 %169, i64* %6, align 8
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 9
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = load i8* (%struct.TYPE_10__**, i8, i32, i8*, i64*)*, i8* (%struct.TYPE_10__**, i8, i32, i8*, i64*)** %174, align 8
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 9
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 6
  %181 = load i8, i8* %180, align 4
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 7
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 1
  %187 = load i8*, i8** %186, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 5
  %189 = call i8* %175(%struct.TYPE_10__** %178, i8 zeroext %181, i32 %184, i8* %188, i64* %6)
  store i8* %189, i8** %5, align 8
  %190 = load i8*, i8** %5, align 8
  %191 = icmp eq i8* %190, null
  br i1 %191, label %192, label %196

192:                                              ; preds = %165
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %194 = load i32, i32* @BR_ERR_BAD_MAC, align 4
  %195 = call i32 @br_ssl_engine_fail(%struct.TYPE_9__* %193, i32 %194)
  br label %223

196:                                              ; preds = %165
  %197 = load i8*, i8** %5, align 8
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 1
  %200 = load i8*, i8** %199, align 8
  %201 = ptrtoint i8* %197 to i64
  %202 = ptrtoint i8* %200 to i64
  %203 = sub i64 %201, %202
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 4
  store i64 %203, i64* %205, align 8
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 4
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* %6, align 8
  %210 = add i64 %208, %209
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 3
  store i64 %210, i64* %212, align 8
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 4
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 3
  %218 = load i64, i64* %217, align 8
  %219 = icmp eq i64 %215, %218
  br i1 %219, label %220, label %223

220:                                              ; preds = %196
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %222 = call i32 @make_ready_in(%struct.TYPE_9__* %221)
  br label %223

223:                                              ; preds = %45, %67, %82, %112, %123, %131, %150, %156, %164, %192, %220, %196
  ret void
}

declare dso_local i32 @br_dec16be(i8*) #1

declare dso_local i32 @br_ssl_engine_fail(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @make_ready_in(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
