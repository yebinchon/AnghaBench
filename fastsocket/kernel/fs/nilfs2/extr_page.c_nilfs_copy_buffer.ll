; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_page.c_nilfs_copy_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_page.c_nilfs_copy_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32, %struct.buffer_head*, i32, i32, i32, %struct.page* }
%struct.page = type { i32 }

@KM_USER0 = common dso_local global i32 0, align 4
@KM_USER1 = common dso_local global i32 0, align 4
@NILFS_BUFFER_INHERENT_BITS = common dso_local global i32 0, align 4
@BH_Uptodate = common dso_local global i64 0, align 8
@BH_Mapped = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_copy_buffer(%struct.buffer_head* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %11 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %12 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %11, i32 0, i32 5
  %13 = load %struct.page*, %struct.page** %12, align 8
  store %struct.page* %13, %struct.page** %8, align 8
  %14 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %15 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %14, i32 0, i32 5
  %16 = load %struct.page*, %struct.page** %15, align 8
  store %struct.page* %16, %struct.page** %9, align 8
  %17 = load %struct.page*, %struct.page** %8, align 8
  %18 = load i32, i32* @KM_USER0, align 4
  %19 = call i8* @kmap_atomic(%struct.page* %17, i32 %18)
  store i8* %19, i8** %5, align 8
  %20 = load %struct.page*, %struct.page** %9, align 8
  %21 = load i32, i32* @KM_USER1, align 4
  %22 = call i8* @kmap_atomic(%struct.page* %20, i32 %21)
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %25 = call i32 @bh_offset(%struct.buffer_head* %24)
  %26 = sext i32 %25 to i64
  %27 = getelementptr i8, i8* %23, i64 %26
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %30 = call i32 @bh_offset(%struct.buffer_head* %29)
  %31 = sext i32 %30 to i64
  %32 = getelementptr i8, i8* %28, i64 %31
  %33 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %34 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @memcpy(i8* %27, i8* %32, i32 %35)
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* @KM_USER1, align 4
  %39 = call i32 @kunmap_atomic(i8* %37, i32 %38)
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* @KM_USER0, align 4
  %42 = call i32 @kunmap_atomic(i8* %40, i32 %41)
  %43 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %44 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @NILFS_BUFFER_INHERENT_BITS, align 4
  %47 = and i32 %45, %46
  %48 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %49 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %51 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %54 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %56 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %59 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  store %struct.buffer_head* %60, %struct.buffer_head** %10, align 8
  %61 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %62 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* @BH_Uptodate, align 8
  %66 = shl i64 1, %65
  %67 = load i64, i64* @BH_Mapped, align 8
  %68 = shl i64 1, %67
  %69 = or i64 %66, %68
  %70 = and i64 %64, %69
  store i64 %70, i64* %7, align 8
  br label %71

71:                                               ; preds = %77, %2
  %72 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %73 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %72, i32 0, i32 1
  %74 = load %struct.buffer_head*, %struct.buffer_head** %73, align 8
  store %struct.buffer_head* %74, %struct.buffer_head** %10, align 8
  %75 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %76 = icmp ne %struct.buffer_head* %74, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %71
  %78 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %79 = call i32 @lock_buffer(%struct.buffer_head* %78)
  %80 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %81 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* %7, align 8
  %85 = and i64 %84, %83
  store i64 %85, i64* %7, align 8
  %86 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %87 = call i32 @unlock_buffer(%struct.buffer_head* %86)
  br label %71

88:                                               ; preds = %71
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* @BH_Uptodate, align 8
  %91 = shl i64 1, %90
  %92 = and i64 %89, %91
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load %struct.page*, %struct.page** %9, align 8
  %96 = call i32 @SetPageUptodate(%struct.page* %95)
  br label %100

97:                                               ; preds = %88
  %98 = load %struct.page*, %struct.page** %9, align 8
  %99 = call i32 @ClearPageUptodate(%struct.page* %98)
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i64, i64* %7, align 8
  %102 = load i64, i64* @BH_Mapped, align 8
  %103 = shl i64 1, %102
  %104 = and i64 %101, %103
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load %struct.page*, %struct.page** %9, align 8
  %108 = call i32 @SetPageMappedToDisk(%struct.page* %107)
  br label %112

109:                                              ; preds = %100
  %110 = load %struct.page*, %struct.page** %9, align 8
  %111 = call i32 @ClearPageMappedToDisk(%struct.page* %110)
  br label %112

112:                                              ; preds = %109, %106
  ret void
}

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @bh_offset(%struct.buffer_head*) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @ClearPageUptodate(%struct.page*) #1

declare dso_local i32 @SetPageMappedToDisk(%struct.page*) #1

declare dso_local i32 @ClearPageMappedToDisk(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
