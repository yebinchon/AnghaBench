; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/zram/extr_xvmalloc.c_xv_malloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/zram/extr_xvmalloc.c_xv_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xv_pool = type { i32 }
%struct.page = type { i32 }
%struct.block_header = type { i64 }

@XV_MAX_ALLOC_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@XV_ALIGN = common dso_local global i64 0, align 8
@GFP_NOWAIT = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4
@BLOCK_FREE = common dso_local global i32 0, align 4
@PREV_FREE = common dso_local global i32 0, align 4
@XV_MIN_ALLOC_SIZE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xv_malloc(%struct.xv_pool* %0, i64 %1, %struct.page** %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xv_pool*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.page**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.block_header*, align 8
  %18 = alloca %struct.block_header*, align 8
  store %struct.xv_pool* %0, %struct.xv_pool** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.page** %2, %struct.page*** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.page**, %struct.page*** %9, align 8
  store %struct.page* null, %struct.page** %19, align 8
  %20 = load i64*, i64** %10, align 8
  store i64 0, i64* %20, align 8
  %21 = load i64, i64* %8, align 8
  store i64 %21, i64* %15, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %5
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @XV_MAX_ALLOC_SIZE, align 8
  %27 = icmp sgt i64 %25, %26
  br label %28

28:                                               ; preds = %24, %5
  %29 = phi i1 [ true, %5 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %196

36:                                               ; preds = %28
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @XV_ALIGN, align 8
  %39 = call i64 @ALIGN(i64 %37, i64 %38)
  store i64 %39, i64* %8, align 8
  %40 = load %struct.xv_pool*, %struct.xv_pool** %7, align 8
  %41 = getelementptr inbounds %struct.xv_pool, %struct.xv_pool* %40, i32 0, i32 0
  %42 = call i32 @spin_lock(i32* %41)
  %43 = load %struct.xv_pool*, %struct.xv_pool** %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.page**, %struct.page*** %9, align 8
  %46 = load i64*, i64** %10, align 8
  %47 = call i64 @find_block(%struct.xv_pool* %43, i64 %44, %struct.page** %45, i64* %46)
  store i64 %47, i64* %13, align 8
  %48 = load %struct.page**, %struct.page*** %9, align 8
  %49 = load %struct.page*, %struct.page** %48, align 8
  %50 = icmp ne %struct.page* %49, null
  br i1 %50, label %80, label %51

51:                                               ; preds = %36
  %52 = load %struct.xv_pool*, %struct.xv_pool** %7, align 8
  %53 = getelementptr inbounds %struct.xv_pool, %struct.xv_pool* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock(i32* %53)
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @GFP_NOWAIT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %196

62:                                               ; preds = %51
  %63 = load %struct.xv_pool*, %struct.xv_pool** %7, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @grow_pool(%struct.xv_pool* %63, i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %6, align 4
  br label %196

71:                                               ; preds = %62
  %72 = load %struct.xv_pool*, %struct.xv_pool** %7, align 8
  %73 = getelementptr inbounds %struct.xv_pool, %struct.xv_pool* %72, i32 0, i32 0
  %74 = call i32 @spin_lock(i32* %73)
  %75 = load %struct.xv_pool*, %struct.xv_pool** %7, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load %struct.page**, %struct.page*** %9, align 8
  %78 = load i64*, i64** %10, align 8
  %79 = call i64 @find_block(%struct.xv_pool* %75, i64 %76, %struct.page** %77, i64* %78)
  store i64 %79, i64* %13, align 8
  br label %80

80:                                               ; preds = %71, %36
  %81 = load %struct.page**, %struct.page*** %9, align 8
  %82 = load %struct.page*, %struct.page** %81, align 8
  %83 = icmp ne %struct.page* %82, null
  br i1 %83, label %90, label %84

84:                                               ; preds = %80
  %85 = load %struct.xv_pool*, %struct.xv_pool** %7, align 8
  %86 = getelementptr inbounds %struct.xv_pool, %struct.xv_pool* %85, i32 0, i32 0
  %87 = call i32 @spin_unlock(i32* %86)
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %6, align 4
  br label %196

90:                                               ; preds = %80
  %91 = load %struct.page**, %struct.page*** %9, align 8
  %92 = load %struct.page*, %struct.page** %91, align 8
  %93 = load i64*, i64** %10, align 8
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @KM_USER0, align 4
  %96 = call %struct.block_header* @get_ptr_atomic(%struct.page* %92, i64 %94, i32 %95)
  store %struct.block_header* %96, %struct.block_header** %17, align 8
  %97 = load %struct.xv_pool*, %struct.xv_pool** %7, align 8
  %98 = load %struct.page**, %struct.page*** %9, align 8
  %99 = load %struct.page*, %struct.page** %98, align 8
  %100 = load i64*, i64** %10, align 8
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.block_header*, %struct.block_header** %17, align 8
  %103 = load i64, i64* %13, align 8
  %104 = call i32 @remove_block(%struct.xv_pool* %97, %struct.page* %99, i64 %101, %struct.block_header* %102, i64 %103)
  %105 = load i64*, i64** %10, align 8
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %8, align 8
  %108 = add nsw i64 %106, %107
  %109 = load i64, i64* @XV_ALIGN, align 8
  %110 = add nsw i64 %108, %109
  store i64 %110, i64* %16, align 8
  %111 = load %struct.block_header*, %struct.block_header** %17, align 8
  %112 = getelementptr inbounds %struct.block_header, %struct.block_header* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %8, align 8
  %115 = sub nsw i64 %113, %114
  store i64 %115, i64* %14, align 8
  %116 = load %struct.block_header*, %struct.block_header** %17, align 8
  %117 = bitcast %struct.block_header* %116 to i8*
  %118 = load i64, i64* %8, align 8
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  %120 = load i64, i64* @XV_ALIGN, align 8
  %121 = getelementptr inbounds i8, i8* %119, i64 %120
  %122 = bitcast i8* %121 to %struct.block_header*
  store %struct.block_header* %122, %struct.block_header** %18, align 8
  %123 = load i64, i64* %14, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %170

125:                                              ; preds = %90
  %126 = load i64, i64* %14, align 8
  %127 = load i64, i64* @XV_ALIGN, align 8
  %128 = sub nsw i64 %126, %127
  %129 = load %struct.block_header*, %struct.block_header** %18, align 8
  %130 = getelementptr inbounds %struct.block_header, %struct.block_header* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  %131 = load %struct.block_header*, %struct.block_header** %18, align 8
  %132 = load i32, i32* @BLOCK_FREE, align 4
  %133 = call i32 @set_flag(%struct.block_header* %131, i32 %132)
  %134 = load %struct.block_header*, %struct.block_header** %18, align 8
  %135 = load i32, i32* @PREV_FREE, align 4
  %136 = call i32 @clear_flag(%struct.block_header* %134, i32 %135)
  %137 = load %struct.block_header*, %struct.block_header** %18, align 8
  %138 = load i64*, i64** %10, align 8
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @set_blockprev(%struct.block_header* %137, i64 %139)
  %141 = load %struct.block_header*, %struct.block_header** %18, align 8
  %142 = getelementptr inbounds %struct.block_header, %struct.block_header* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @XV_MIN_ALLOC_SIZE, align 8
  %145 = icmp sge i64 %143, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %125
  %147 = load %struct.xv_pool*, %struct.xv_pool** %7, align 8
  %148 = load %struct.page**, %struct.page*** %9, align 8
  %149 = load %struct.page*, %struct.page** %148, align 8
  %150 = load i64, i64* %16, align 8
  %151 = load %struct.block_header*, %struct.block_header** %18, align 8
  %152 = call i32 @insert_block(%struct.xv_pool* %147, %struct.page* %149, i64 %150, %struct.block_header* %151)
  br label %153

153:                                              ; preds = %146, %125
  %154 = load i64, i64* %16, align 8
  %155 = load i64, i64* @XV_ALIGN, align 8
  %156 = add nsw i64 %154, %155
  %157 = load %struct.block_header*, %struct.block_header** %18, align 8
  %158 = getelementptr inbounds %struct.block_header, %struct.block_header* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %156, %159
  %161 = load i64, i64* @PAGE_SIZE, align 8
  %162 = icmp ne i64 %160, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %153
  %164 = load %struct.block_header*, %struct.block_header** %18, align 8
  %165 = call %struct.block_header* @BLOCK_NEXT(%struct.block_header* %164)
  store %struct.block_header* %165, %struct.block_header** %18, align 8
  %166 = load %struct.block_header*, %struct.block_header** %18, align 8
  %167 = load i64, i64* %16, align 8
  %168 = call i32 @set_blockprev(%struct.block_header* %166, i64 %167)
  br label %169

169:                                              ; preds = %163, %153
  br label %179

170:                                              ; preds = %90
  %171 = load i64, i64* %16, align 8
  %172 = load i64, i64* @PAGE_SIZE, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %170
  %175 = load %struct.block_header*, %struct.block_header** %18, align 8
  %176 = load i32, i32* @PREV_FREE, align 4
  %177 = call i32 @clear_flag(%struct.block_header* %175, i32 %176)
  br label %178

178:                                              ; preds = %174, %170
  br label %179

179:                                              ; preds = %178, %169
  %180 = load i64, i64* %15, align 8
  %181 = load %struct.block_header*, %struct.block_header** %17, align 8
  %182 = getelementptr inbounds %struct.block_header, %struct.block_header* %181, i32 0, i32 0
  store i64 %180, i64* %182, align 8
  %183 = load %struct.block_header*, %struct.block_header** %17, align 8
  %184 = load i32, i32* @BLOCK_FREE, align 4
  %185 = call i32 @clear_flag(%struct.block_header* %183, i32 %184)
  %186 = load %struct.block_header*, %struct.block_header** %17, align 8
  %187 = load i32, i32* @KM_USER0, align 4
  %188 = call i32 @put_ptr_atomic(%struct.block_header* %186, i32 %187)
  %189 = load %struct.xv_pool*, %struct.xv_pool** %7, align 8
  %190 = getelementptr inbounds %struct.xv_pool, %struct.xv_pool* %189, i32 0, i32 0
  %191 = call i32 @spin_unlock(i32* %190)
  %192 = load i64, i64* @XV_ALIGN, align 8
  %193 = load i64*, i64** %10, align 8
  %194 = load i64, i64* %193, align 8
  %195 = add nsw i64 %194, %192
  store i64 %195, i64* %193, align 8
  store i32 0, i32* %6, align 4
  br label %196

196:                                              ; preds = %179, %84, %69, %59, %33
  %197 = load i32, i32* %6, align 4
  ret i32 %197
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ALIGN(i64, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @find_block(%struct.xv_pool*, i64, %struct.page**, i64*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @grow_pool(%struct.xv_pool*, i32) #1

declare dso_local %struct.block_header* @get_ptr_atomic(%struct.page*, i64, i32) #1

declare dso_local i32 @remove_block(%struct.xv_pool*, %struct.page*, i64, %struct.block_header*, i64) #1

declare dso_local i32 @set_flag(%struct.block_header*, i32) #1

declare dso_local i32 @clear_flag(%struct.block_header*, i32) #1

declare dso_local i32 @set_blockprev(%struct.block_header*, i64) #1

declare dso_local i32 @insert_block(%struct.xv_pool*, %struct.page*, i64, %struct.block_header*) #1

declare dso_local %struct.block_header* @BLOCK_NEXT(%struct.block_header*) #1

declare dso_local i32 @put_ptr_atomic(%struct.block_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
