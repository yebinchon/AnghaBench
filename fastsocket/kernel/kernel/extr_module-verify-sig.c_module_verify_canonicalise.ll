; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_module-verify-sig.c_module_verify_canonicalise.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_module-verify-sig.c_module_verify_canonicalise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_verify_data = type { i32*, i32, i32*, i32, i8*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SHF_ALLOC = common dso_local global i32 0, align 4
@SHT_REL = common dso_local global i64 0, align 8
@SHT_RELA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_verify_data*)* @module_verify_canonicalise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @module_verify_canonicalise(%struct.module_verify_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.module_verify_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.module_verify_data* %0, %struct.module_verify_data** %3, align 8
  %11 = load %struct.module_verify_data*, %struct.module_verify_data** %3, align 8
  %12 = getelementptr inbounds %struct.module_verify_data, %struct.module_verify_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = mul i64 4, %14
  %16 = mul i64 %15, 2
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32* @kmalloc(i32 %17, i32 %18)
  %20 = load %struct.module_verify_data*, %struct.module_verify_data** %3, align 8
  %21 = getelementptr inbounds %struct.module_verify_data, %struct.module_verify_data* %20, i32 0, i32 0
  store i32* %19, i32** %21, align 8
  %22 = load %struct.module_verify_data*, %struct.module_verify_data** %3, align 8
  %23 = getelementptr inbounds %struct.module_verify_data, %struct.module_verify_data* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %233

29:                                               ; preds = %1
  %30 = load %struct.module_verify_data*, %struct.module_verify_data** %3, align 8
  %31 = getelementptr inbounds %struct.module_verify_data, %struct.module_verify_data* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.module_verify_data*, %struct.module_verify_data** %3, align 8
  %34 = getelementptr inbounds %struct.module_verify_data, %struct.module_verify_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  %38 = load %struct.module_verify_data*, %struct.module_verify_data** %3, align 8
  %39 = getelementptr inbounds %struct.module_verify_data, %struct.module_verify_data* %38, i32 0, i32 2
  store i32* %37, i32** %39, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %40

40:                                               ; preds = %111, %29
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.module_verify_data*, %struct.module_verify_data** %3, align 8
  %43 = getelementptr inbounds %struct.module_verify_data, %struct.module_verify_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %114

46:                                               ; preds = %40
  %47 = load %struct.module_verify_data*, %struct.module_verify_data** %3, align 8
  %48 = getelementptr inbounds %struct.module_verify_data, %struct.module_verify_data* %47, i32 0, i32 6
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  store %struct.TYPE_2__* %52, %struct.TYPE_2__** %8, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.module_verify_data*, %struct.module_verify_data** %3, align 8
  %55 = getelementptr inbounds %struct.module_verify_data, %struct.module_verify_data* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  br label %111

59:                                               ; preds = %46
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @SHF_ALLOC, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %59
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.module_verify_data*, %struct.module_verify_data** %3, align 8
  %69 = getelementptr inbounds %struct.module_verify_data, %struct.module_verify_data* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  store i32 %67, i32* %74, align 4
  br label %110

75:                                               ; preds = %59
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @SHT_REL, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @SHT_RELA, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %109

87:                                               ; preds = %81, %75
  %88 = load %struct.module_verify_data*, %struct.module_verify_data** %3, align 8
  %89 = getelementptr inbounds %struct.module_verify_data, %struct.module_verify_data* %88, i32 0, i32 6
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @SHF_ALLOC, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %87
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.module_verify_data*, %struct.module_verify_data** %3, align 8
  %103 = getelementptr inbounds %struct.module_verify_data, %struct.module_verify_data* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %4, align 4
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  store i32 %101, i32* %108, align 4
  br label %109

109:                                              ; preds = %100, %87, %81
  br label %110

110:                                              ; preds = %109, %66
  br label %111

111:                                              ; preds = %110, %58
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %5, align 4
  br label %40

114:                                              ; preds = %40
  br label %115

115:                                              ; preds = %203, %114
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %199, %115
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* %4, align 4
  %119 = sub nsw i32 %118, 1
  %120 = icmp slt i32 %117, %119
  br i1 %120, label %121, label %202

121:                                              ; preds = %116
  %122 = load %struct.module_verify_data*, %struct.module_verify_data** %3, align 8
  %123 = getelementptr inbounds %struct.module_verify_data, %struct.module_verify_data* %122, i32 0, i32 4
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.module_verify_data*, %struct.module_verify_data** %3, align 8
  %126 = getelementptr inbounds %struct.module_verify_data, %struct.module_verify_data* %125, i32 0, i32 6
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = load %struct.module_verify_data*, %struct.module_verify_data** %3, align 8
  %129 = getelementptr inbounds %struct.module_verify_data, %struct.module_verify_data* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %131, 0
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %124, i64 %140
  store i8* %141, i8** %9, align 8
  %142 = load %struct.module_verify_data*, %struct.module_verify_data** %3, align 8
  %143 = getelementptr inbounds %struct.module_verify_data, %struct.module_verify_data* %142, i32 0, i32 4
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.module_verify_data*, %struct.module_verify_data** %3, align 8
  %146 = getelementptr inbounds %struct.module_verify_data, %struct.module_verify_data* %145, i32 0, i32 6
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = load %struct.module_verify_data*, %struct.module_verify_data** %3, align 8
  %149 = getelementptr inbounds %struct.module_verify_data, %struct.module_verify_data* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %5, align 4
  %152 = add nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %144, i64 %160
  store i8* %161, i8** %10, align 8
  %162 = load i8*, i8** %9, align 8
  %163 = load i8*, i8** %10, align 8
  %164 = call i64 @strcmp(i8* %162, i8* %163)
  %165 = icmp sgt i64 %164, 0
  br i1 %165, label %166, label %198

166:                                              ; preds = %121
  %167 = load %struct.module_verify_data*, %struct.module_verify_data** %3, align 8
  %168 = getelementptr inbounds %struct.module_verify_data, %struct.module_verify_data* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %5, align 4
  %171 = add nsw i32 %170, 0
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %7, align 4
  %175 = load %struct.module_verify_data*, %struct.module_verify_data** %3, align 8
  %176 = getelementptr inbounds %struct.module_verify_data, %struct.module_verify_data* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %5, align 4
  %179 = add nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %177, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.module_verify_data*, %struct.module_verify_data** %3, align 8
  %184 = getelementptr inbounds %struct.module_verify_data, %struct.module_verify_data* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %5, align 4
  %187 = add nsw i32 %186, 0
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %185, i64 %188
  store i32 %182, i32* %189, align 4
  %190 = load i32, i32* %7, align 4
  %191 = load %struct.module_verify_data*, %struct.module_verify_data** %3, align 8
  %192 = getelementptr inbounds %struct.module_verify_data, %struct.module_verify_data* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %5, align 4
  %195 = add nsw i32 %194, 1
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %193, i64 %196
  store i32 %190, i32* %197, align 4
  store i32 1, i32* %6, align 4
  br label %198

198:                                              ; preds = %166, %121
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %5, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %5, align 4
  br label %116

202:                                              ; preds = %116
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %6, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %115, label %206

206:                                              ; preds = %203
  store i32 0, i32* %5, align 4
  br label %207

207:                                              ; preds = %226, %206
  %208 = load i32, i32* %5, align 4
  %209 = load i32, i32* %4, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %229

211:                                              ; preds = %207
  %212 = load i32, i32* %5, align 4
  %213 = add nsw i32 %212, 1
  %214 = load %struct.module_verify_data*, %struct.module_verify_data** %3, align 8
  %215 = getelementptr inbounds %struct.module_verify_data, %struct.module_verify_data* %214, i32 0, i32 2
  %216 = load i32*, i32** %215, align 8
  %217 = load %struct.module_verify_data*, %struct.module_verify_data** %3, align 8
  %218 = getelementptr inbounds %struct.module_verify_data, %struct.module_verify_data* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %5, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %216, i64 %224
  store i32 %213, i32* %225, align 4
  br label %226

226:                                              ; preds = %211
  %227 = load i32, i32* %5, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %5, align 4
  br label %207

229:                                              ; preds = %207
  %230 = load i32, i32* %4, align 4
  %231 = load %struct.module_verify_data*, %struct.module_verify_data** %3, align 8
  %232 = getelementptr inbounds %struct.module_verify_data, %struct.module_verify_data* %231, i32 0, i32 5
  store i32 %230, i32* %232, align 8
  store i32 0, i32* %2, align 4
  br label %233

233:                                              ; preds = %229, %26
  %234 = load i32, i32* %2, align 4
  ret i32 %234
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
