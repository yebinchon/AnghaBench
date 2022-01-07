; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dominance.c_link_roots.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dominance.c_link_roots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dom_info = type { i64*, i64*, i64*, i32*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dom_info*, i64, i64)* @link_roots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_roots(%struct.dom_info* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.dom_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.dom_info* %0, %struct.dom_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  store i64 %9, i64* %7, align 8
  br label %10

10:                                               ; preds = %132, %3
  %11 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %12 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %15 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i64, i64* %13, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %23 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %26 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %29 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %28, i32 0, i32 2
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i64, i64* %27, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i64, i64* %24, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %21, %37
  br i1 %38, label %39, label %133

39:                                               ; preds = %10
  %40 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %41 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %47 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %50 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %49, i32 0, i32 2
  %51 = load i64*, i64** %50, align 8
  %52 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %53 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %52, i32 0, i32 2
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* %7, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i64, i64* %51, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i32, i32* %48, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %45, %61
  %63 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %64 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %67 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %66, i32 0, i32 2
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* %7, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i32, i32* %65, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 2, %73
  %75 = icmp sge i32 %62, %74
  br i1 %75, label %76, label %104

76:                                               ; preds = %39
  %77 = load i64, i64* %7, align 8
  %78 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %79 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %78, i32 0, i32 4
  %80 = load i64*, i64** %79, align 8
  %81 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %82 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %81, i32 0, i32 2
  %83 = load i64*, i64** %82, align 8
  %84 = load i64, i64* %7, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i64, i64* %80, i64 %86
  store i64 %77, i64* %87, align 8
  %88 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %89 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %88, i32 0, i32 2
  %90 = load i64*, i64** %89, align 8
  %91 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %92 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %91, i32 0, i32 2
  %93 = load i64*, i64** %92, align 8
  %94 = load i64, i64* %7, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i64, i64* %90, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %100 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %99, i32 0, i32 2
  %101 = load i64*, i64** %100, align 8
  %102 = load i64, i64* %7, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  store i64 %98, i64* %103, align 8
  br label %132

104:                                              ; preds = %39
  %105 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %106 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* %7, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %112 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %115 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %114, i32 0, i32 2
  %116 = load i64*, i64** %115, align 8
  %117 = load i64, i64* %7, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds i32, i32* %113, i64 %119
  store i32 %110, i32* %120, align 4
  %121 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %122 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %121, i32 0, i32 2
  %123 = load i64*, i64** %122, align 8
  %124 = load i64, i64* %7, align 8
  %125 = getelementptr inbounds i64, i64* %123, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %128 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %127, i32 0, i32 4
  %129 = load i64*, i64** %128, align 8
  %130 = load i64, i64* %7, align 8
  %131 = getelementptr inbounds i64, i64* %129, i64 %130
  store i64 %126, i64* %131, align 8
  store i64 %126, i64* %7, align 8
  br label %132

132:                                              ; preds = %104, %76
  br label %10

133:                                              ; preds = %10
  %134 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %135 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %134, i32 0, i32 1
  %136 = load i64*, i64** %135, align 8
  %137 = load i64, i64* %6, align 8
  %138 = getelementptr inbounds i64, i64* %136, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %141 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %140, i32 0, i32 1
  %142 = load i64*, i64** %141, align 8
  %143 = load i64, i64* %7, align 8
  %144 = getelementptr inbounds i64, i64* %142, i64 %143
  store i64 %139, i64* %144, align 8
  %145 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %146 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %145, i32 0, i32 3
  %147 = load i32*, i32** %146, align 8
  %148 = load i64, i64* %6, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %152 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %151, i32 0, i32 3
  %153 = load i32*, i32** %152, align 8
  %154 = load i64, i64* %5, align 8
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, %150
  store i32 %157, i32* %155, align 4
  %158 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %159 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %158, i32 0, i32 3
  %160 = load i32*, i32** %159, align 8
  %161 = load i64, i64* %5, align 8
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %165 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %164, i32 0, i32 3
  %166 = load i32*, i32** %165, align 8
  %167 = load i64, i64* %6, align 8
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = mul nsw i32 2, %169
  %171 = icmp slt i32 %163, %170
  br i1 %171, label %172, label %186

172:                                              ; preds = %133
  %173 = load i64, i64* %7, align 8
  store i64 %173, i64* %8, align 8
  %174 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %175 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %174, i32 0, i32 2
  %176 = load i64*, i64** %175, align 8
  %177 = load i64, i64* %5, align 8
  %178 = getelementptr inbounds i64, i64* %176, i64 %177
  %179 = load i64, i64* %178, align 8
  store i64 %179, i64* %7, align 8
  %180 = load i64, i64* %8, align 8
  %181 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %182 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %181, i32 0, i32 2
  %183 = load i64*, i64** %182, align 8
  %184 = load i64, i64* %5, align 8
  %185 = getelementptr inbounds i64, i64* %183, i64 %184
  store i64 %180, i64* %185, align 8
  br label %186

186:                                              ; preds = %172, %133
  br label %187

187:                                              ; preds = %190, %186
  %188 = load i64, i64* %7, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %203

190:                                              ; preds = %187
  %191 = load i64, i64* %5, align 8
  %192 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %193 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %192, i32 0, i32 4
  %194 = load i64*, i64** %193, align 8
  %195 = load i64, i64* %7, align 8
  %196 = getelementptr inbounds i64, i64* %194, i64 %195
  store i64 %191, i64* %196, align 8
  %197 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %198 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %197, i32 0, i32 2
  %199 = load i64*, i64** %198, align 8
  %200 = load i64, i64* %7, align 8
  %201 = getelementptr inbounds i64, i64* %199, i64 %200
  %202 = load i64, i64* %201, align 8
  store i64 %202, i64* %7, align 8
  br label %187

203:                                              ; preds = %187
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
