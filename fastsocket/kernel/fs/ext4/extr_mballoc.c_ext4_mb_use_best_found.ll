; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_mballoc.c_ext4_mb_use_best_found.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_mballoc.c_ext4_mb_use_best_found.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_allocation_context = type { i64, i32, i32, i32, %struct.TYPE_4__, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ext4_buddy = type { i64, i32, i32 }
%struct.ext4_sb_info = type { i64, i32, i32 }

@AC_STATUS_FOUND = common dso_local global i64 0, align 8
@EXT4_MB_STREAM_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ext4_allocation_context*, %struct.ext4_buddy*)* @ext4_mb_use_best_found to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_mb_use_best_found(%struct.ext4_allocation_context* %0, %struct.ext4_buddy* %1) #0 {
  %3 = alloca %struct.ext4_allocation_context*, align 8
  %4 = alloca %struct.ext4_buddy*, align 8
  %5 = alloca %struct.ext4_sb_info*, align 8
  %6 = alloca i32, align 4
  store %struct.ext4_allocation_context* %0, %struct.ext4_allocation_context** %3, align 8
  store %struct.ext4_buddy* %1, %struct.ext4_buddy** %4, align 8
  %7 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %3, align 8
  %8 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %7, i32 0, i32 9
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.ext4_sb_info* @EXT4_SB(i32 %9)
  store %struct.ext4_sb_info* %10, %struct.ext4_sb_info** %5, align 8
  %11 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %3, align 8
  %12 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %11, i32 0, i32 7
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.ext4_buddy*, %struct.ext4_buddy** %4, align 8
  %16 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %3, align 8
  %22 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AC_STATUS_FOUND, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %3, align 8
  %29 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %28, i32 0, i32 7
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %3, align 8
  %33 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %32, i32 0, i32 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @min(i32 %31, i32 %35)
  %37 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %3, align 8
  %38 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %37, i32 0, i32 7
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  store i32 %36, i32* %39, align 8
  %40 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %3, align 8
  %41 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %40, i32 0, i32 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %3, align 8
  %45 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %44, i32 0, i32 7
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  store i32 %43, i32* %46, align 4
  %47 = load %struct.ext4_buddy*, %struct.ext4_buddy** %4, align 8
  %48 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %3, align 8
  %49 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %48, i32 0, i32 7
  %50 = call i32 @mb_mark_used(%struct.ext4_buddy* %47, %struct.TYPE_4__* %49)
  store i32 %50, i32* %6, align 4
  %51 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %3, align 8
  %52 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %51, i32 0, i32 4
  %53 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %3, align 8
  %54 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %53, i32 0, i32 7
  %55 = bitcast %struct.TYPE_4__* %52 to i8*
  %56 = bitcast %struct.TYPE_4__* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 24, i1 false)
  %57 = load i64, i64* @AC_STATUS_FOUND, align 8
  %58 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %3, align 8
  %59 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %60, 65535
  %62 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %3, align 8
  %63 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %6, align 4
  %65 = ashr i32 %64, 16
  %66 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %3, align 8
  %67 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load %struct.ext4_buddy*, %struct.ext4_buddy** %4, align 8
  %69 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %3, align 8
  %72 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 4
  %73 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %3, align 8
  %74 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @get_page(i32 %75)
  %77 = load %struct.ext4_buddy*, %struct.ext4_buddy** %4, align 8
  %78 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %3, align 8
  %81 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 8
  %82 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %3, align 8
  %83 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @get_page(i32 %84)
  %86 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %3, align 8
  %87 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @EXT4_MB_STREAM_ALLOC, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %111

92:                                               ; preds = %2
  %93 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %94 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %93, i32 0, i32 1
  %95 = call i32 @spin_lock(i32* %94)
  %96 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %3, align 8
  %97 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %101 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %3, align 8
  %103 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %107 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  %108 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %109 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %108, i32 0, i32 1
  %110 = call i32 @spin_unlock(i32* %109)
  br label %111

111:                                              ; preds = %92, %2
  ret void
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @mb_mark_used(%struct.ext4_buddy*, %struct.TYPE_4__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @get_page(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
