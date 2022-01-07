; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lprops.c_adjust_lpt_heap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lprops.c_adjust_lpt_heap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_lpt_heap = type { i32, %struct.ubifs_lprops** }
%struct.ubifs_lprops = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubifs_info*, %struct.ubifs_lpt_heap*, %struct.ubifs_lprops*, i32, i32)* @adjust_lpt_heap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_lpt_heap(%struct.ubifs_info* %0, %struct.ubifs_lpt_heap* %1, %struct.ubifs_lprops* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca %struct.ubifs_lpt_heap*, align 8
  %8 = alloca %struct.ubifs_lprops*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store %struct.ubifs_lpt_heap* %1, %struct.ubifs_lpt_heap** %7, align 8
  store %struct.ubifs_lprops* %2, %struct.ubifs_lprops** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %8, align 8
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @get_heap_comp_val(%struct.ubifs_lprops* %16, i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %94

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sdiv i32 %23, 2
  store i32 %24, i32* %15, align 4
  %25 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %26 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %25, i32 0, i32 1
  %27 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %26, align 8
  %28 = load i32, i32* %15, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %27, i64 %29
  %31 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @get_heap_comp_val(%struct.ubifs_lprops* %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %93

37:                                               ; preds = %21
  br label %38

38:                                               ; preds = %37, %92
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %41 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %40, i32 0, i32 1
  %42 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %41, align 8
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %42, i64 %44
  %46 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %45, align 8
  %47 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %46, i32 0, i32 0
  store i32 %39, i32* %47, align 4
  %48 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %49 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %48, i32 0, i32 1
  %50 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %49, align 8
  %51 = load i32, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %50, i64 %52
  %54 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %53, align 8
  %55 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %56 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %55, i32 0, i32 1
  %57 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %57, i64 %59
  store %struct.ubifs_lprops* %54, %struct.ubifs_lprops** %60, align 8
  %61 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %8, align 8
  %62 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %63 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %62, i32 0, i32 1
  %64 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %63, align 8
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %64, i64 %66
  store %struct.ubifs_lprops* %61, %struct.ubifs_lprops** %67, align 8
  %68 = load i32, i32* %15, align 4
  %69 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %8, align 8
  %70 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %15, align 4
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %38
  br label %234

75:                                               ; preds = %38
  %76 = load i32, i32* %9, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sdiv i32 %77, 2
  store i32 %78, i32* %15, align 4
  %79 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %80 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %79, i32 0, i32 1
  %81 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %80, align 8
  %82 = load i32, i32* %15, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %81, i64 %83
  %85 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @get_heap_comp_val(%struct.ubifs_lprops* %85, i32 %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp sle i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %75
  br label %234

92:                                               ; preds = %75
  br label %38

93:                                               ; preds = %21
  br label %94

94:                                               ; preds = %93, %5
  br label %95

95:                                               ; preds = %94, %143, %199
  %96 = load i32, i32* %9, align 4
  %97 = mul nsw i32 %96, 2
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %101 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp sge i32 %99, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  br label %234

105:                                              ; preds = %95
  %106 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %107 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %106, i32 0, i32 1
  %108 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %107, align 8
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %108, i64 %110
  %112 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @get_heap_comp_val(%struct.ubifs_lprops* %112, i32 %113)
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %177

118:                                              ; preds = %105
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %119, 1
  %121 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %122 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %143

125:                                              ; preds = %118
  %126 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %127 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %126, i32 0, i32 1
  %128 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %127, align 8
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %128, i64 %131
  %133 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = call i32 @get_heap_comp_val(%struct.ubifs_lprops* %133, i32 %134)
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* %12, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %125
  %140 = load i32, i32* %14, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %14, align 4
  br label %142

142:                                              ; preds = %139, %125
  br label %143

143:                                              ; preds = %142, %118
  %144 = load i32, i32* %9, align 4
  %145 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %146 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %145, i32 0, i32 1
  %147 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %146, align 8
  %148 = load i32, i32* %14, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %147, i64 %149
  %151 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %150, align 8
  %152 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %151, i32 0, i32 0
  store i32 %144, i32* %152, align 4
  %153 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %154 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %153, i32 0, i32 1
  %155 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %154, align 8
  %156 = load i32, i32* %14, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %155, i64 %157
  %159 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %158, align 8
  %160 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %161 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %160, i32 0, i32 1
  %162 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %161, align 8
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %162, i64 %164
  store %struct.ubifs_lprops* %159, %struct.ubifs_lprops** %165, align 8
  %166 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %8, align 8
  %167 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %168 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %167, i32 0, i32 1
  %169 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %168, align 8
  %170 = load i32, i32* %14, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %169, i64 %171
  store %struct.ubifs_lprops* %166, %struct.ubifs_lprops** %172, align 8
  %173 = load i32, i32* %14, align 4
  %174 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %8, align 8
  %175 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 4
  %176 = load i32, i32* %14, align 4
  store i32 %176, i32* %9, align 4
  br label %95

177:                                              ; preds = %105
  %178 = load i32, i32* %14, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %14, align 4
  %180 = load i32, i32* %14, align 4
  %181 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %182 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp sge i32 %180, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %177
  br label %234

186:                                              ; preds = %177
  %187 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %188 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %187, i32 0, i32 1
  %189 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %188, align 8
  %190 = load i32, i32* %14, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %189, i64 %191
  %193 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %192, align 8
  %194 = load i32, i32* %10, align 4
  %195 = call i32 @get_heap_comp_val(%struct.ubifs_lprops* %193, i32 %194)
  store i32 %195, i32* %13, align 4
  %196 = load i32, i32* %11, align 4
  %197 = load i32, i32* %13, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %233

199:                                              ; preds = %186
  %200 = load i32, i32* %9, align 4
  %201 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %202 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %201, i32 0, i32 1
  %203 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %202, align 8
  %204 = load i32, i32* %14, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %203, i64 %205
  %207 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %206, align 8
  %208 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %207, i32 0, i32 0
  store i32 %200, i32* %208, align 4
  %209 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %210 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %209, i32 0, i32 1
  %211 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %210, align 8
  %212 = load i32, i32* %14, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %211, i64 %213
  %215 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %214, align 8
  %216 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %217 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %216, i32 0, i32 1
  %218 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %217, align 8
  %219 = load i32, i32* %9, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %218, i64 %220
  store %struct.ubifs_lprops* %215, %struct.ubifs_lprops** %221, align 8
  %222 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %8, align 8
  %223 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %224 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %223, i32 0, i32 1
  %225 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %224, align 8
  %226 = load i32, i32* %14, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %225, i64 %227
  store %struct.ubifs_lprops* %222, %struct.ubifs_lprops** %228, align 8
  %229 = load i32, i32* %14, align 4
  %230 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %8, align 8
  %231 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %230, i32 0, i32 0
  store i32 %229, i32* %231, align 4
  %232 = load i32, i32* %14, align 4
  store i32 %232, i32* %9, align 4
  br label %95

233:                                              ; preds = %186
  br label %234

234:                                              ; preds = %233, %185, %104, %91, %74
  ret void
}

declare dso_local i32 @get_heap_comp_val(%struct.ubifs_lprops*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
