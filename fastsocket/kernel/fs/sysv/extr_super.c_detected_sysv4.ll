; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_super.c_detected_sysv4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_super.c_detected_sysv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysv_sb_info = type { i8*, i8*, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, %struct.buffer_head*, %struct.buffer_head* }
%struct.buffer_head = type { i64 }
%struct.sysv4_super_block = type { i32, i32, i32, i32, i32, i32*, i32, i32, i32*, i32 }

@BLOCK_SIZE = common dso_local global i32 0, align 4
@SYSV_LINK_MAX = common dso_local global i32 0, align 4
@SYSV_NICINOD = common dso_local global i32 0, align 4
@SYSV_NICFREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysv_sb_info*)* @detected_sysv4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @detected_sysv4(%struct.sysv_sb_info* %0) #0 {
  %2 = alloca %struct.sysv_sb_info*, align 8
  %3 = alloca %struct.sysv4_super_block*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  store %struct.sysv_sb_info* %0, %struct.sysv_sb_info** %2, align 8
  %6 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %7 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %6, i32 0, i32 16
  %8 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* %8, %struct.buffer_head** %4, align 8
  %9 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %10 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %9, i32 0, i32 15
  %11 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  store %struct.buffer_head* %11, %struct.buffer_head** %5, align 8
  %12 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %13 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %14 = icmp eq %struct.buffer_head* %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %17 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @BLOCK_SIZE, align 4
  %20 = sdiv i32 %19, 2
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %18, %21
  %23 = inttoptr i64 %22 to %struct.sysv4_super_block*
  store %struct.sysv4_super_block* %23, %struct.sysv4_super_block** %3, align 8
  br label %29

24:                                               ; preds = %1
  %25 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %26 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.sysv4_super_block*
  store %struct.sysv4_super_block* %28, %struct.sysv4_super_block** %3, align 8
  br label %29

29:                                               ; preds = %24, %15
  %30 = load i32, i32* @SYSV_LINK_MAX, align 4
  %31 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %32 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %31, i32 0, i32 14
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @SYSV_NICINOD, align 4
  %34 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %35 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %34, i32 0, i32 13
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @SYSV_NICFREE, align 4
  %37 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %38 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %37, i32 0, i32 12
  store i32 %36, i32* %38, align 8
  %39 = load %struct.sysv4_super_block*, %struct.sysv4_super_block** %3, align 8
  %40 = bitcast %struct.sysv4_super_block* %39 to i8*
  %41 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %42 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load %struct.sysv4_super_block*, %struct.sysv4_super_block** %3, align 8
  %44 = bitcast %struct.sysv4_super_block* %43 to i8*
  %45 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %46 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.sysv4_super_block*, %struct.sysv4_super_block** %3, align 8
  %48 = getelementptr inbounds %struct.sysv4_super_block, %struct.sysv4_super_block* %47, i32 0, i32 9
  %49 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %50 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %49, i32 0, i32 11
  store i32* %48, i32** %50, align 8
  %51 = load %struct.sysv4_super_block*, %struct.sysv4_super_block** %3, align 8
  %52 = getelementptr inbounds %struct.sysv4_super_block, %struct.sysv4_super_block* %51, i32 0, i32 8
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %56 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %55, i32 0, i32 10
  store i32* %54, i32** %56, align 8
  %57 = load %struct.sysv4_super_block*, %struct.sysv4_super_block** %3, align 8
  %58 = getelementptr inbounds %struct.sysv4_super_block, %struct.sysv4_super_block* %57, i32 0, i32 7
  %59 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %60 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %59, i32 0, i32 9
  store i32* %58, i32** %60, align 8
  %61 = load %struct.sysv4_super_block*, %struct.sysv4_super_block** %3, align 8
  %62 = getelementptr inbounds %struct.sysv4_super_block, %struct.sysv4_super_block* %61, i32 0, i32 6
  %63 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %64 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %63, i32 0, i32 8
  store i32* %62, i32** %64, align 8
  %65 = load %struct.sysv4_super_block*, %struct.sysv4_super_block** %3, align 8
  %66 = getelementptr inbounds %struct.sysv4_super_block, %struct.sysv4_super_block* %65, i32 0, i32 5
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %70 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %69, i32 0, i32 7
  store i32* %68, i32** %70, align 8
  %71 = load %struct.sysv4_super_block*, %struct.sysv4_super_block** %3, align 8
  %72 = getelementptr inbounds %struct.sysv4_super_block, %struct.sysv4_super_block* %71, i32 0, i32 4
  %73 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %74 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %73, i32 0, i32 6
  store i32* %72, i32** %74, align 8
  %75 = load %struct.sysv4_super_block*, %struct.sysv4_super_block** %3, align 8
  %76 = getelementptr inbounds %struct.sysv4_super_block, %struct.sysv4_super_block* %75, i32 0, i32 3
  %77 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %78 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %77, i32 0, i32 5
  store i32* %76, i32** %78, align 8
  %79 = load %struct.sysv4_super_block*, %struct.sysv4_super_block** %3, align 8
  %80 = getelementptr inbounds %struct.sysv4_super_block, %struct.sysv4_super_block* %79, i32 0, i32 2
  %81 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %82 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %81, i32 0, i32 4
  store i32* %80, i32** %82, align 8
  %83 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %84 = load %struct.sysv4_super_block*, %struct.sysv4_super_block** %3, align 8
  %85 = getelementptr inbounds %struct.sysv4_super_block, %struct.sysv4_super_block* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @fs16_to_cpu(%struct.sysv_sb_info* %83, i32 %86)
  %88 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %89 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %91 = load %struct.sysv4_super_block*, %struct.sysv4_super_block** %3, align 8
  %92 = getelementptr inbounds %struct.sysv4_super_block, %struct.sysv4_super_block* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @fs32_to_cpu(%struct.sysv_sb_info* %90, i32 %93)
  %95 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %96 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  ret void
}

declare dso_local i32 @fs16_to_cpu(%struct.sysv_sb_info*, i32) #1

declare dso_local i32 @fs32_to_cpu(%struct.sysv_sb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
