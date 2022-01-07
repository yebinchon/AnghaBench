; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_fadvise.c_SYSCALL_DEFINE.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_fadvise.c_SYSCALL_DEFINE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32, %struct.TYPE_10__, %struct.address_space*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 }
%struct.address_space = type { %struct.backing_dev_info*, %struct.TYPE_9__* }
%struct.backing_dev_info = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@EBADF = common dso_local global i32 0, align 4
@ESPIPE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FMODE_RANDOM = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i64 0, align 8
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fadvise64_64(i32 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.file*, align 8
  %11 = alloca %struct.address_space*, align 8
  %12 = alloca %struct.backing_dev_info*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call %struct.file* @fget(i32 %19)
  store %struct.file* %20, %struct.file** %10, align 8
  store i32 0, i32* %17, align 4
  %21 = load %struct.file*, %struct.file** %10, align 8
  %22 = icmp ne %struct.file* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @EBADF, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %207

26:                                               ; preds = %4
  %27 = load %struct.file*, %struct.file** %10, align 8
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @S_ISFIFO(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load i32, i32* @ESPIPE, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %17, align 4
  br label %203

40:                                               ; preds = %26
  %41 = load %struct.file*, %struct.file** %10, align 8
  %42 = getelementptr inbounds %struct.file, %struct.file* %41, i32 0, i32 3
  %43 = load %struct.address_space*, %struct.address_space** %42, align 8
  store %struct.address_space* %43, %struct.address_space** %11, align 8
  %44 = load %struct.address_space*, %struct.address_space** %11, align 8
  %45 = icmp ne %struct.address_space* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i64, i64* %8, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46, %40
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %17, align 4
  br label %203

52:                                               ; preds = %46
  %53 = load %struct.address_space*, %struct.address_space** %11, align 8
  %54 = getelementptr inbounds %struct.address_space, %struct.address_space* %53, i32 0, i32 1
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load i32, i32* %9, align 4
  switch i32 %60, label %62 [
    i32 131, label %61
    i32 130, label %61
    i32 129, label %61
    i32 128, label %61
    i32 132, label %61
    i32 133, label %61
  ]

61:                                               ; preds = %59, %59, %59, %59, %59, %59
  br label %65

62:                                               ; preds = %59
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %17, align 4
  br label %65

65:                                               ; preds = %62, %61
  br label %203

66:                                               ; preds = %52
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* %8, align 8
  %69 = add nsw i64 %67, %68
  store i64 %69, i64* %13, align 8
  %70 = load i64, i64* %8, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* %8, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72, %66
  store i64 -1, i64* %13, align 8
  br label %80

77:                                               ; preds = %72
  %78 = load i64, i64* %13, align 8
  %79 = add nsw i64 %78, -1
  store i64 %79, i64* %13, align 8
  br label %80

80:                                               ; preds = %77, %76
  %81 = load %struct.address_space*, %struct.address_space** %11, align 8
  %82 = getelementptr inbounds %struct.address_space, %struct.address_space* %81, i32 0, i32 0
  %83 = load %struct.backing_dev_info*, %struct.backing_dev_info** %82, align 8
  store %struct.backing_dev_info* %83, %struct.backing_dev_info** %12, align 8
  %84 = load i32, i32* %9, align 4
  switch i32 %84, label %199 [
    i32 131, label %85
    i32 130, label %104
    i32 129, label %116
    i32 128, label %136
    i32 132, label %156
    i32 133, label %157
  ]

85:                                               ; preds = %80
  %86 = load %struct.backing_dev_info*, %struct.backing_dev_info** %12, align 8
  %87 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.file*, %struct.file** %10, align 8
  %90 = getelementptr inbounds %struct.file, %struct.file* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  %92 = load %struct.file*, %struct.file** %10, align 8
  %93 = getelementptr inbounds %struct.file, %struct.file* %92, i32 0, i32 0
  %94 = call i32 @spin_lock(i32* %93)
  %95 = load i32, i32* @FMODE_RANDOM, align 4
  %96 = xor i32 %95, -1
  %97 = load %struct.file*, %struct.file** %10, align 8
  %98 = getelementptr inbounds %struct.file, %struct.file* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, %96
  store i32 %100, i32* %98, align 4
  %101 = load %struct.file*, %struct.file** %10, align 8
  %102 = getelementptr inbounds %struct.file, %struct.file* %101, i32 0, i32 0
  %103 = call i32 @spin_unlock(i32* %102)
  br label %202

104:                                              ; preds = %80
  %105 = load %struct.file*, %struct.file** %10, align 8
  %106 = getelementptr inbounds %struct.file, %struct.file* %105, i32 0, i32 0
  %107 = call i32 @spin_lock(i32* %106)
  %108 = load i32, i32* @FMODE_RANDOM, align 4
  %109 = load %struct.file*, %struct.file** %10, align 8
  %110 = getelementptr inbounds %struct.file, %struct.file* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  %113 = load %struct.file*, %struct.file** %10, align 8
  %114 = getelementptr inbounds %struct.file, %struct.file* %113, i32 0, i32 0
  %115 = call i32 @spin_unlock(i32* %114)
  br label %202

116:                                              ; preds = %80
  %117 = load %struct.backing_dev_info*, %struct.backing_dev_info** %12, align 8
  %118 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = mul nsw i32 %119, 2
  %121 = load %struct.file*, %struct.file** %10, align 8
  %122 = getelementptr inbounds %struct.file, %struct.file* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  store i32 %120, i32* %123, align 8
  %124 = load %struct.file*, %struct.file** %10, align 8
  %125 = getelementptr inbounds %struct.file, %struct.file* %124, i32 0, i32 0
  %126 = call i32 @spin_lock(i32* %125)
  %127 = load i32, i32* @FMODE_RANDOM, align 4
  %128 = xor i32 %127, -1
  %129 = load %struct.file*, %struct.file** %10, align 8
  %130 = getelementptr inbounds %struct.file, %struct.file* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, %128
  store i32 %132, i32* %130, align 4
  %133 = load %struct.file*, %struct.file** %10, align 8
  %134 = getelementptr inbounds %struct.file, %struct.file* %133, i32 0, i32 0
  %135 = call i32 @spin_unlock(i32* %134)
  br label %202

136:                                              ; preds = %80
  %137 = load i64, i64* %7, align 8
  %138 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %139 = ashr i64 %137, %138
  store i64 %139, i64* %14, align 8
  %140 = load i64, i64* %13, align 8
  %141 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %142 = ashr i64 %140, %141
  store i64 %142, i64* %15, align 8
  %143 = load i64, i64* %15, align 8
  %144 = load i64, i64* %14, align 8
  %145 = sub nsw i64 %143, %144
  %146 = add nsw i64 %145, 1
  store i64 %146, i64* %16, align 8
  %147 = load i64, i64* %16, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %136
  store i64 -1, i64* %16, align 8
  br label %150

150:                                              ; preds = %149, %136
  %151 = load %struct.address_space*, %struct.address_space** %11, align 8
  %152 = load %struct.file*, %struct.file** %10, align 8
  %153 = load i64, i64* %14, align 8
  %154 = load i64, i64* %16, align 8
  %155 = call i32 @force_page_cache_readahead(%struct.address_space* %151, %struct.file* %152, i64 %153, i64 %154)
  br label %202

156:                                              ; preds = %80
  br label %202

157:                                              ; preds = %80
  %158 = load %struct.address_space*, %struct.address_space** %11, align 8
  %159 = getelementptr inbounds %struct.address_space, %struct.address_space* %158, i32 0, i32 0
  %160 = load %struct.backing_dev_info*, %struct.backing_dev_info** %159, align 8
  %161 = call i32 @bdi_write_congested(%struct.backing_dev_info* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %157
  %164 = load %struct.address_space*, %struct.address_space** %11, align 8
  %165 = call i32 @filemap_flush(%struct.address_space* %164)
  br label %166

166:                                              ; preds = %163, %157
  %167 = load i64, i64* %7, align 8
  %168 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %169 = sub nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = add nsw i64 %167, %170
  %172 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %173 = ashr i64 %171, %172
  store i64 %173, i64* %14, align 8
  %174 = load i64, i64* %13, align 8
  %175 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %176 = ashr i64 %174, %175
  store i64 %176, i64* %15, align 8
  %177 = load i64, i64* %15, align 8
  %178 = load i64, i64* %14, align 8
  %179 = icmp sge i64 %177, %178
  br i1 %179, label %180, label %198

180:                                              ; preds = %166
  %181 = load %struct.address_space*, %struct.address_space** %11, align 8
  %182 = load i64, i64* %14, align 8
  %183 = load i64, i64* %15, align 8
  %184 = call i64 @invalidate_mapping_pages(%struct.address_space* %181, i64 %182, i64 %183)
  store i64 %184, i64* %18, align 8
  %185 = load i64, i64* %18, align 8
  %186 = load i64, i64* %15, align 8
  %187 = load i64, i64* %14, align 8
  %188 = sub nsw i64 %186, %187
  %189 = add nsw i64 %188, 1
  %190 = icmp ult i64 %185, %189
  br i1 %190, label %191, label %197

191:                                              ; preds = %180
  %192 = call i32 (...) @lru_add_drain_all()
  %193 = load %struct.address_space*, %struct.address_space** %11, align 8
  %194 = load i64, i64* %14, align 8
  %195 = load i64, i64* %15, align 8
  %196 = call i64 @invalidate_mapping_pages(%struct.address_space* %193, i64 %194, i64 %195)
  br label %197

197:                                              ; preds = %191, %180
  br label %198

198:                                              ; preds = %197, %166
  br label %202

199:                                              ; preds = %80
  %200 = load i32, i32* @EINVAL, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %17, align 4
  br label %202

202:                                              ; preds = %199, %198, %156, %150, %116, %104, %85
  br label %203

203:                                              ; preds = %202, %65, %49, %37
  %204 = load %struct.file*, %struct.file** %10, align 8
  %205 = call i32 @fput(%struct.file* %204)
  %206 = load i32, i32* %17, align 4
  store i32 %206, i32* %5, align 4
  br label %207

207:                                              ; preds = %203, %23
  %208 = load i32, i32* %5, align 4
  ret i32 %208
}

declare dso_local %struct.file* @fget(i32) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @force_page_cache_readahead(%struct.address_space*, %struct.file*, i64, i64) #1

declare dso_local i32 @bdi_write_congested(%struct.backing_dev_info*) #1

declare dso_local i32 @filemap_flush(%struct.address_space*) #1

declare dso_local i64 @invalidate_mapping_pages(%struct.address_space*, i64, i64) #1

declare dso_local i32 @lru_add_drain_all(...) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
