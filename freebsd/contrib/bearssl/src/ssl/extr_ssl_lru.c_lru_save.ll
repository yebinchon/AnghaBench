; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_lru.c_lru_save.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_lru.c_lru_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i8*, i32, i32, i32 }
%struct.TYPE_18__ = type { i64, i32, i64, i64, i64, i64, i32, i32 }

@SESSION_ID_LEN = common dso_local global i32 0, align 4
@LRU_ENTRY_LEN = common dso_local global i64 0, align 8
@ADDR_NULL = common dso_local global i64 0, align 8
@SESSION_ID_OFF = common dso_local global i64 0, align 8
@MASTER_SECRET_OFF = common dso_local global i64 0, align 8
@MASTER_SECRET_LEN = common dso_local global i32 0, align 4
@VERSION_OFF = common dso_local global i64 0, align 8
@CIPHER_SUITE_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, %struct.TYPE_19__*, %struct.TYPE_17__*)* @lru_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lru_save(i32** %0, %struct.TYPE_19__* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %6, align 8
  %13 = load i32, i32* @SESSION_ID_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i32**, i32*** %4, align 8
  %18 = bitcast i32** %17 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %7, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @LRU_ENTRY_LEN, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 1, i32* %12, align 4
  br label %193

25:                                               ; preds = %3
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @br_hmac_drbg_generate(i32* %33, i32 %36, i32 4)
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = call i32 @br_hmac_drbg_get_hash(i32* %40)
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 1
  store i32 1, i32* %45, align 8
  br label %46

46:                                               ; preds = %30, %25
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @mask_id(%struct.TYPE_18__* %47, i32 %50, i8* %16)
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %53 = call i64 @find_node(%struct.TYPE_18__* %52, i8* %16, i64* null)
  %54 = load i64, i64* @ADDR_NULL, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  store i32 1, i32* %12, align 4
  br label %193

57:                                               ; preds = %46
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @LRU_ENTRY_LEN, align 8
  %65 = sub nsw i64 %63, %64
  %66 = icmp sgt i64 %60, %65
  br i1 %66, label %67, label %96

67:                                               ; preds = %57
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %10, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %72 = load i64, i64* %10, align 8
  %73 = call i64 @get_prev(%struct.TYPE_18__* %71, i64 %72)
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 3
  store i64 %73, i64* %75, align 8
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @ADDR_NULL, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %67
  %82 = load i64, i64* @ADDR_NULL, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 4
  store i64 %82, i64* %84, align 8
  br label %92

85:                                               ; preds = %67
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ADDR_NULL, align 8
  %91 = call i32 @set_next(%struct.TYPE_18__* %86, i64 %89, i64 %90)
  br label %92

92:                                               ; preds = %85, %81
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %94 = load i64, i64* %10, align 8
  %95 = call i32 @remove_node(%struct.TYPE_18__* %93, i64 %94)
  br label %105

96:                                               ; preds = %57
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %10, align 8
  %100 = load i64, i64* @LRU_ENTRY_LEN, align 8
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, %100
  store i64 %104, i64* %102, align 8
  br label %105

105:                                              ; preds = %96, %92
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %107 = call i64 @find_node(%struct.TYPE_18__* %106, i8* %16, i64* %11)
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %109 = load i64, i64* %11, align 8
  %110 = load i64, i64* %10, align 8
  %111 = call i32 @set_link(%struct.TYPE_18__* %108, i64 %109, i64 %110)
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %113 = load i64, i64* %10, align 8
  %114 = load i64, i64* @ADDR_NULL, align 8
  %115 = call i32 @set_left(%struct.TYPE_18__* %112, i64 %113, i64 %114)
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %117 = load i64, i64* %10, align 8
  %118 = load i64, i64* @ADDR_NULL, align 8
  %119 = call i32 @set_right(%struct.TYPE_18__* %116, i64 %117, i64 %118)
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @ADDR_NULL, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %105
  %126 = load i64, i64* %10, align 8
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 3
  store i64 %126, i64* %128, align 8
  br label %136

129:                                              ; preds = %105
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %10, align 8
  %135 = call i32 @set_prev(%struct.TYPE_18__* %130, i64 %133, i64 %134)
  br label %136

136:                                              ; preds = %129, %125
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %138 = load i64, i64* %10, align 8
  %139 = load i64, i64* @ADDR_NULL, align 8
  %140 = call i32 @set_prev(%struct.TYPE_18__* %137, i64 %138, i64 %139)
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %142 = load i64, i64* %10, align 8
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @set_next(%struct.TYPE_18__* %141, i64 %142, i64 %145)
  %147 = load i64, i64* %10, align 8
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 4
  store i64 %147, i64* %149, align 8
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 5
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* %10, align 8
  %154 = add nsw i64 %152, %153
  %155 = load i64, i64* @SESSION_ID_OFF, align 8
  %156 = add nsw i64 %154, %155
  %157 = load i32, i32* @SESSION_ID_LEN, align 4
  %158 = call i32 @memcpy(i64 %156, i8* %16, i32 %157)
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* %10, align 8
  %163 = add nsw i64 %161, %162
  %164 = load i64, i64* @MASTER_SECRET_OFF, align 8
  %165 = add nsw i64 %163, %164
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = load i32, i32* @MASTER_SECRET_LEN, align 4
  %170 = call i32 @memcpy(i64 %165, i8* %168, i32 %169)
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 5
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* %10, align 8
  %175 = add nsw i64 %173, %174
  %176 = load i64, i64* @VERSION_OFF, align 8
  %177 = add nsw i64 %175, %176
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @br_enc16be(i64 %177, i32 %180)
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 5
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* %10, align 8
  %186 = add nsw i64 %184, %185
  %187 = load i64, i64* @CIPHER_SUITE_OFF, align 8
  %188 = add nsw i64 %186, %187
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @br_enc16be(i64 %188, i32 %191)
  store i32 0, i32* %12, align 4
  br label %193

193:                                              ; preds = %136, %56, %24
  %194 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %194)
  %195 = load i32, i32* %12, align 4
  switch i32 %195, label %197 [
    i32 0, label %196
    i32 1, label %196
  ]

196:                                              ; preds = %193, %193
  ret void

197:                                              ; preds = %193
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @br_hmac_drbg_generate(i32*, i32, i32) #2

declare dso_local i32 @br_hmac_drbg_get_hash(i32*) #2

declare dso_local i32 @mask_id(%struct.TYPE_18__*, i32, i8*) #2

declare dso_local i64 @find_node(%struct.TYPE_18__*, i8*, i64*) #2

declare dso_local i64 @get_prev(%struct.TYPE_18__*, i64) #2

declare dso_local i32 @set_next(%struct.TYPE_18__*, i64, i64) #2

declare dso_local i32 @remove_node(%struct.TYPE_18__*, i64) #2

declare dso_local i32 @set_link(%struct.TYPE_18__*, i64, i64) #2

declare dso_local i32 @set_left(%struct.TYPE_18__*, i64, i64) #2

declare dso_local i32 @set_right(%struct.TYPE_18__*, i64, i64) #2

declare dso_local i32 @set_prev(%struct.TYPE_18__*, i64, i64) #2

declare dso_local i32 @memcpy(i64, i8*, i32) #2

declare dso_local i32 @br_enc16be(i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
