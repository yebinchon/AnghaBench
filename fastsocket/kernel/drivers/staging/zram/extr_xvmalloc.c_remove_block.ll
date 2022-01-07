; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/zram/extr_xvmalloc.c_remove_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/zram/extr_xvmalloc.c_remove_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xv_pool = type { i32, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.page* }
%struct.page = type { i32 }
%struct.block_header = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, %struct.page*, %struct.page* }

@BITS_PER_LONG = common dso_local global i64 0, align 8
@KM_USER1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xv_pool*, %struct.page*, i64, %struct.block_header*, i64)* @remove_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_block(%struct.xv_pool* %0, %struct.page* %1, i64 %2, %struct.block_header* %3, i64 %4) #0 {
  %6 = alloca %struct.xv_pool*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.block_header*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.block_header*, align 8
  %13 = alloca %struct.block_header*, align 8
  store %struct.xv_pool* %0, %struct.xv_pool** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.block_header* %3, %struct.block_header** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* @BITS_PER_LONG, align 8
  %16 = udiv i64 %14, %15
  store i64 %16, i64* %11, align 8
  %17 = load %struct.block_header*, %struct.block_header** %9, align 8
  %18 = getelementptr inbounds %struct.block_header, %struct.block_header* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  %20 = load %struct.page*, %struct.page** %19, align 8
  %21 = icmp ne %struct.page* %20, null
  br i1 %21, label %22, label %50

22:                                               ; preds = %5
  %23 = load %struct.block_header*, %struct.block_header** %9, align 8
  %24 = getelementptr inbounds %struct.block_header, %struct.block_header* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = load %struct.page*, %struct.page** %25, align 8
  %27 = load %struct.block_header*, %struct.block_header** %9, align 8
  %28 = getelementptr inbounds %struct.block_header, %struct.block_header* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @KM_USER1, align 4
  %32 = call %struct.block_header* @get_ptr_atomic(%struct.page* %26, i64 %30, i32 %31)
  store %struct.block_header* %32, %struct.block_header** %12, align 8
  %33 = load %struct.block_header*, %struct.block_header** %9, align 8
  %34 = getelementptr inbounds %struct.block_header, %struct.block_header* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load %struct.page*, %struct.page** %35, align 8
  %37 = load %struct.block_header*, %struct.block_header** %12, align 8
  %38 = getelementptr inbounds %struct.block_header, %struct.block_header* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  store %struct.page* %36, %struct.page** %39, align 8
  %40 = load %struct.block_header*, %struct.block_header** %9, align 8
  %41 = getelementptr inbounds %struct.block_header, %struct.block_header* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.block_header*, %struct.block_header** %12, align 8
  %45 = getelementptr inbounds %struct.block_header, %struct.block_header* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i64 %43, i64* %46, align 8
  %47 = load %struct.block_header*, %struct.block_header** %12, align 8
  %48 = load i32, i32* @KM_USER1, align 4
  %49 = call i32 @put_ptr_atomic(%struct.block_header* %47, i32 %48)
  br label %50

50:                                               ; preds = %22, %5
  %51 = load %struct.block_header*, %struct.block_header** %9, align 8
  %52 = getelementptr inbounds %struct.block_header, %struct.block_header* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load %struct.page*, %struct.page** %53, align 8
  %55 = icmp ne %struct.page* %54, null
  br i1 %55, label %56, label %84

56:                                               ; preds = %50
  %57 = load %struct.block_header*, %struct.block_header** %9, align 8
  %58 = getelementptr inbounds %struct.block_header, %struct.block_header* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load %struct.page*, %struct.page** %59, align 8
  %61 = load %struct.block_header*, %struct.block_header** %9, align 8
  %62 = getelementptr inbounds %struct.block_header, %struct.block_header* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* @KM_USER1, align 4
  %66 = call %struct.block_header* @get_ptr_atomic(%struct.page* %60, i64 %64, i32 %65)
  store %struct.block_header* %66, %struct.block_header** %12, align 8
  %67 = load %struct.block_header*, %struct.block_header** %9, align 8
  %68 = getelementptr inbounds %struct.block_header, %struct.block_header* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  %70 = load %struct.page*, %struct.page** %69, align 8
  %71 = load %struct.block_header*, %struct.block_header** %12, align 8
  %72 = getelementptr inbounds %struct.block_header, %struct.block_header* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  store %struct.page* %70, %struct.page** %73, align 8
  %74 = load %struct.block_header*, %struct.block_header** %9, align 8
  %75 = getelementptr inbounds %struct.block_header, %struct.block_header* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.block_header*, %struct.block_header** %12, align 8
  %79 = getelementptr inbounds %struct.block_header, %struct.block_header* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i64 %77, i64* %80, align 8
  %81 = load %struct.block_header*, %struct.block_header** %12, align 8
  %82 = load i32, i32* @KM_USER1, align 4
  %83 = call i32 @put_ptr_atomic(%struct.block_header* %81, i32 %82)
  br label %84

84:                                               ; preds = %56, %50
  %85 = load %struct.xv_pool*, %struct.xv_pool** %6, align 8
  %86 = getelementptr inbounds %struct.xv_pool, %struct.xv_pool* %85, i32 0, i32 2
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = load i64, i64* %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load %struct.page*, %struct.page** %90, align 8
  %92 = load %struct.page*, %struct.page** %7, align 8
  %93 = icmp eq %struct.page* %91, %92
  br i1 %93, label %94, label %183

94:                                               ; preds = %84
  %95 = load %struct.xv_pool*, %struct.xv_pool** %6, align 8
  %96 = getelementptr inbounds %struct.xv_pool, %struct.xv_pool* %95, i32 0, i32 2
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = load i64, i64* %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %8, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %183

104:                                              ; preds = %94
  %105 = load %struct.block_header*, %struct.block_header** %9, align 8
  %106 = getelementptr inbounds %struct.block_header, %struct.block_header* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load %struct.page*, %struct.page** %107, align 8
  %109 = load %struct.xv_pool*, %struct.xv_pool** %6, align 8
  %110 = getelementptr inbounds %struct.xv_pool, %struct.xv_pool* %109, i32 0, i32 2
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = load i64, i64* %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  store %struct.page* %108, %struct.page** %114, align 8
  %115 = load %struct.block_header*, %struct.block_header** %9, align 8
  %116 = getelementptr inbounds %struct.block_header, %struct.block_header* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.xv_pool*, %struct.xv_pool** %6, align 8
  %120 = getelementptr inbounds %struct.xv_pool, %struct.xv_pool* %119, i32 0, i32 2
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = load i64, i64* %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  store i64 %118, i64* %124, align 8
  %125 = load %struct.xv_pool*, %struct.xv_pool** %6, align 8
  %126 = getelementptr inbounds %struct.xv_pool, %struct.xv_pool* %125, i32 0, i32 2
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = load i64, i64* %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load %struct.page*, %struct.page** %130, align 8
  %132 = icmp ne %struct.page* %131, null
  br i1 %132, label %133, label %159

133:                                              ; preds = %104
  %134 = load %struct.xv_pool*, %struct.xv_pool** %6, align 8
  %135 = getelementptr inbounds %struct.xv_pool, %struct.xv_pool* %134, i32 0, i32 2
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = load i64, i64* %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  %140 = load %struct.page*, %struct.page** %139, align 8
  %141 = load %struct.xv_pool*, %struct.xv_pool** %6, align 8
  %142 = getelementptr inbounds %struct.xv_pool, %struct.xv_pool* %141, i32 0, i32 2
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %142, align 8
  %144 = load i64, i64* %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i32, i32* @KM_USER1, align 4
  %149 = call %struct.block_header* @get_ptr_atomic(%struct.page* %140, i64 %147, i32 %148)
  store %struct.block_header* %149, %struct.block_header** %13, align 8
  %150 = load %struct.block_header*, %struct.block_header** %13, align 8
  %151 = getelementptr inbounds %struct.block_header, %struct.block_header* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 3
  store %struct.page* null, %struct.page** %152, align 8
  %153 = load %struct.block_header*, %struct.block_header** %13, align 8
  %154 = getelementptr inbounds %struct.block_header, %struct.block_header* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  store i64 0, i64* %155, align 8
  %156 = load %struct.block_header*, %struct.block_header** %13, align 8
  %157 = load i32, i32* @KM_USER1, align 4
  %158 = call i32 @put_ptr_atomic(%struct.block_header* %156, i32 %157)
  br label %182

159:                                              ; preds = %104
  %160 = load i64, i64* %10, align 8
  %161 = load i64, i64* @BITS_PER_LONG, align 8
  %162 = urem i64 %160, %161
  %163 = load %struct.xv_pool*, %struct.xv_pool** %6, align 8
  %164 = getelementptr inbounds %struct.xv_pool, %struct.xv_pool* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = load i64, i64* %11, align 8
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  %168 = call i32 @__clear_bit(i64 %162, i32* %167)
  %169 = load %struct.xv_pool*, %struct.xv_pool** %6, align 8
  %170 = getelementptr inbounds %struct.xv_pool, %struct.xv_pool* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = load i64, i64* %11, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %181, label %176

176:                                              ; preds = %159
  %177 = load i64, i64* %11, align 8
  %178 = load %struct.xv_pool*, %struct.xv_pool** %6, align 8
  %179 = getelementptr inbounds %struct.xv_pool, %struct.xv_pool* %178, i32 0, i32 0
  %180 = call i32 @__clear_bit(i64 %177, i32* %179)
  br label %181

181:                                              ; preds = %176, %159
  br label %182

182:                                              ; preds = %181, %133
  br label %183

183:                                              ; preds = %182, %94, %84
  %184 = load %struct.block_header*, %struct.block_header** %9, align 8
  %185 = getelementptr inbounds %struct.block_header, %struct.block_header* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 3
  store %struct.page* null, %struct.page** %186, align 8
  %187 = load %struct.block_header*, %struct.block_header** %9, align 8
  %188 = getelementptr inbounds %struct.block_header, %struct.block_header* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  store i64 0, i64* %189, align 8
  %190 = load %struct.block_header*, %struct.block_header** %9, align 8
  %191 = getelementptr inbounds %struct.block_header, %struct.block_header* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 2
  store %struct.page* null, %struct.page** %192, align 8
  %193 = load %struct.block_header*, %struct.block_header** %9, align 8
  %194 = getelementptr inbounds %struct.block_header, %struct.block_header* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 1
  store i64 0, i64* %195, align 8
  ret void
}

declare dso_local %struct.block_header* @get_ptr_atomic(%struct.page*, i64, i32) #1

declare dso_local i32 @put_ptr_atomic(%struct.block_header*, i32) #1

declare dso_local i32 @__clear_bit(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
