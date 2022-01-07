; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/zram/extr_xvmalloc.c_xv_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/zram/extr_xvmalloc.c_xv_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xv_pool = type { i32, i32 }
%struct.page = type { i32 }
%struct.block_header = type { i32 }

@XV_ALIGN = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4
@BLOCK_FREE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@XV_MIN_ALLOC_SIZE = common dso_local global i64 0, align 8
@PREV_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xv_free(%struct.xv_pool* %0, %struct.page* %1, i32 %2) #0 {
  %4 = alloca %struct.xv_pool*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.block_header*, align 8
  %9 = alloca %struct.block_header*, align 8
  store %struct.xv_pool* %0, %struct.xv_pool** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @XV_ALIGN, align 4
  %11 = load i32, i32* %6, align 4
  %12 = sub nsw i32 %11, %10
  store i32 %12, i32* %6, align 4
  %13 = load %struct.xv_pool*, %struct.xv_pool** %4, align 8
  %14 = getelementptr inbounds %struct.xv_pool, %struct.xv_pool* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.page*, %struct.page** %5, align 8
  %17 = load i32, i32* @KM_USER0, align 4
  %18 = call i8* @get_ptr_atomic(%struct.page* %16, i32 0, i32 %17)
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = bitcast i8* %22 to %struct.block_header*
  store %struct.block_header* %23, %struct.block_header** %8, align 8
  %24 = load %struct.block_header*, %struct.block_header** %8, align 8
  %25 = load i32, i32* @BLOCK_FREE, align 4
  %26 = call i64 @test_flag(%struct.block_header* %24, i32 %25)
  %27 = call i32 @BUG_ON(i64 %26)
  %28 = load %struct.block_header*, %struct.block_header** %8, align 8
  %29 = getelementptr inbounds %struct.block_header, %struct.block_header* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @XV_ALIGN, align 4
  %32 = call i32 @ALIGN(i32 %30, i32 %31)
  %33 = load %struct.block_header*, %struct.block_header** %8, align 8
  %34 = getelementptr inbounds %struct.block_header, %struct.block_header* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.block_header*, %struct.block_header** %8, align 8
  %36 = call %struct.block_header* @BLOCK_NEXT(%struct.block_header* %35)
  store %struct.block_header* %36, %struct.block_header** %9, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.block_header*, %struct.block_header** %8, align 8
  %39 = getelementptr inbounds %struct.block_header, %struct.block_header* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %37, %40
  %42 = load i32, i32* @XV_ALIGN, align 4
  %43 = add nsw i32 %41, %42
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %3
  store %struct.block_header* null, %struct.block_header** %9, align 8
  br label %47

47:                                               ; preds = %46, %3
  %48 = load %struct.block_header*, %struct.block_header** %9, align 8
  %49 = icmp ne %struct.block_header* %48, null
  br i1 %49, label %50, label %88

50:                                               ; preds = %47
  %51 = load %struct.block_header*, %struct.block_header** %9, align 8
  %52 = load i32, i32* @BLOCK_FREE, align 4
  %53 = call i64 @test_flag(%struct.block_header* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %88

55:                                               ; preds = %50
  %56 = load %struct.block_header*, %struct.block_header** %9, align 8
  %57 = getelementptr inbounds %struct.block_header, %struct.block_header* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* @XV_MIN_ALLOC_SIZE, align 8
  %61 = icmp sge i64 %59, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %55
  %63 = load %struct.xv_pool*, %struct.xv_pool** %4, align 8
  %64 = load %struct.page*, %struct.page** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.block_header*, %struct.block_header** %8, align 8
  %67 = getelementptr inbounds %struct.block_header, %struct.block_header* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %65, %68
  %70 = load i32, i32* @XV_ALIGN, align 4
  %71 = add nsw i32 %69, %70
  %72 = load %struct.block_header*, %struct.block_header** %9, align 8
  %73 = load %struct.block_header*, %struct.block_header** %9, align 8
  %74 = getelementptr inbounds %struct.block_header, %struct.block_header* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @get_index_for_insert(i32 %75)
  %77 = call i32 @remove_block(%struct.xv_pool* %63, %struct.page* %64, i32 %71, %struct.block_header* %72, i32 %76)
  br label %78

78:                                               ; preds = %62, %55
  %79 = load %struct.block_header*, %struct.block_header** %9, align 8
  %80 = getelementptr inbounds %struct.block_header, %struct.block_header* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @XV_ALIGN, align 4
  %83 = add nsw i32 %81, %82
  %84 = load %struct.block_header*, %struct.block_header** %8, align 8
  %85 = getelementptr inbounds %struct.block_header, %struct.block_header* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %78, %50, %47
  %89 = load %struct.block_header*, %struct.block_header** %8, align 8
  %90 = load i32, i32* @PREV_FREE, align 4
  %91 = call i64 @test_flag(%struct.block_header* %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %133

93:                                               ; preds = %88
  %94 = load i8*, i8** %7, align 8
  %95 = load %struct.block_header*, %struct.block_header** %8, align 8
  %96 = call i64 @get_blockprev(%struct.block_header* %95)
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = bitcast i8* %97 to %struct.block_header*
  store %struct.block_header* %98, %struct.block_header** %9, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.block_header*, %struct.block_header** %9, align 8
  %101 = getelementptr inbounds %struct.block_header, %struct.block_header* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %99, %102
  %104 = load i32, i32* @XV_ALIGN, align 4
  %105 = sub nsw i32 %103, %104
  store i32 %105, i32* %6, align 4
  %106 = load %struct.block_header*, %struct.block_header** %9, align 8
  %107 = getelementptr inbounds %struct.block_header, %struct.block_header* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* @XV_MIN_ALLOC_SIZE, align 8
  %111 = icmp sge i64 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %93
  %113 = load %struct.xv_pool*, %struct.xv_pool** %4, align 8
  %114 = load %struct.page*, %struct.page** %5, align 8
  %115 = load i32, i32* %6, align 4
  %116 = load %struct.block_header*, %struct.block_header** %9, align 8
  %117 = load %struct.block_header*, %struct.block_header** %9, align 8
  %118 = getelementptr inbounds %struct.block_header, %struct.block_header* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @get_index_for_insert(i32 %119)
  %121 = call i32 @remove_block(%struct.xv_pool* %113, %struct.page* %114, i32 %115, %struct.block_header* %116, i32 %120)
  br label %122

122:                                              ; preds = %112, %93
  %123 = load %struct.block_header*, %struct.block_header** %8, align 8
  %124 = getelementptr inbounds %struct.block_header, %struct.block_header* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @XV_ALIGN, align 4
  %127 = add nsw i32 %125, %126
  %128 = load %struct.block_header*, %struct.block_header** %9, align 8
  %129 = getelementptr inbounds %struct.block_header, %struct.block_header* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, %127
  store i32 %131, i32* %129, align 4
  %132 = load %struct.block_header*, %struct.block_header** %9, align 8
  store %struct.block_header* %132, %struct.block_header** %8, align 8
  br label %133

133:                                              ; preds = %122, %88
  %134 = load %struct.block_header*, %struct.block_header** %8, align 8
  %135 = getelementptr inbounds %struct.block_header, %struct.block_header* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @PAGE_SIZE, align 4
  %138 = load i32, i32* @XV_ALIGN, align 4
  %139 = sub nsw i32 %137, %138
  %140 = icmp eq i32 %136, %139
  br i1 %140, label %141, label %153

141:                                              ; preds = %133
  %142 = load i8*, i8** %7, align 8
  %143 = load i32, i32* @KM_USER0, align 4
  %144 = call i32 @put_ptr_atomic(i8* %142, i32 %143)
  %145 = load %struct.xv_pool*, %struct.xv_pool** %4, align 8
  %146 = getelementptr inbounds %struct.xv_pool, %struct.xv_pool* %145, i32 0, i32 0
  %147 = call i32 @spin_unlock(i32* %146)
  %148 = load %struct.page*, %struct.page** %5, align 8
  %149 = call i32 @__free_page(%struct.page* %148)
  %150 = load %struct.xv_pool*, %struct.xv_pool** %4, align 8
  %151 = getelementptr inbounds %struct.xv_pool, %struct.xv_pool* %150, i32 0, i32 1
  %152 = call i32 @stat_dec(i32* %151)
  br label %195

153:                                              ; preds = %133
  %154 = load %struct.block_header*, %struct.block_header** %8, align 8
  %155 = load i32, i32* @BLOCK_FREE, align 4
  %156 = call i32 @set_flag(%struct.block_header* %154, i32 %155)
  %157 = load %struct.block_header*, %struct.block_header** %8, align 8
  %158 = getelementptr inbounds %struct.block_header, %struct.block_header* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = load i64, i64* @XV_MIN_ALLOC_SIZE, align 8
  %162 = icmp sge i64 %160, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %153
  %164 = load %struct.xv_pool*, %struct.xv_pool** %4, align 8
  %165 = load %struct.page*, %struct.page** %5, align 8
  %166 = load i32, i32* %6, align 4
  %167 = load %struct.block_header*, %struct.block_header** %8, align 8
  %168 = call i32 @insert_block(%struct.xv_pool* %164, %struct.page* %165, i32 %166, %struct.block_header* %167)
  br label %169

169:                                              ; preds = %163, %153
  %170 = load i32, i32* %6, align 4
  %171 = load %struct.block_header*, %struct.block_header** %8, align 8
  %172 = getelementptr inbounds %struct.block_header, %struct.block_header* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %170, %173
  %175 = load i32, i32* @XV_ALIGN, align 4
  %176 = add nsw i32 %174, %175
  %177 = load i32, i32* @PAGE_SIZE, align 4
  %178 = icmp ne i32 %176, %177
  br i1 %178, label %179, label %188

179:                                              ; preds = %169
  %180 = load %struct.block_header*, %struct.block_header** %8, align 8
  %181 = call %struct.block_header* @BLOCK_NEXT(%struct.block_header* %180)
  store %struct.block_header* %181, %struct.block_header** %9, align 8
  %182 = load %struct.block_header*, %struct.block_header** %9, align 8
  %183 = load i32, i32* @PREV_FREE, align 4
  %184 = call i32 @set_flag(%struct.block_header* %182, i32 %183)
  %185 = load %struct.block_header*, %struct.block_header** %9, align 8
  %186 = load i32, i32* %6, align 4
  %187 = call i32 @set_blockprev(%struct.block_header* %185, i32 %186)
  br label %188

188:                                              ; preds = %179, %169
  %189 = load i8*, i8** %7, align 8
  %190 = load i32, i32* @KM_USER0, align 4
  %191 = call i32 @put_ptr_atomic(i8* %189, i32 %190)
  %192 = load %struct.xv_pool*, %struct.xv_pool** %4, align 8
  %193 = getelementptr inbounds %struct.xv_pool, %struct.xv_pool* %192, i32 0, i32 0
  %194 = call i32 @spin_unlock(i32* %193)
  br label %195

195:                                              ; preds = %188, %141
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i8* @get_ptr_atomic(%struct.page*, i32, i32) #1

declare dso_local i32 @BUG_ON(i64) #1

declare dso_local i64 @test_flag(%struct.block_header*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local %struct.block_header* @BLOCK_NEXT(%struct.block_header*) #1

declare dso_local i32 @remove_block(%struct.xv_pool*, %struct.page*, i32, %struct.block_header*, i32) #1

declare dso_local i32 @get_index_for_insert(i32) #1

declare dso_local i64 @get_blockprev(%struct.block_header*) #1

declare dso_local i32 @put_ptr_atomic(i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @stat_dec(i32*) #1

declare dso_local i32 @set_flag(%struct.block_header*, i32) #1

declare dso_local i32 @insert_block(%struct.xv_pool*, %struct.page*, i32, %struct.block_header*) #1

declare dso_local i32 @set_blockprev(%struct.block_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
