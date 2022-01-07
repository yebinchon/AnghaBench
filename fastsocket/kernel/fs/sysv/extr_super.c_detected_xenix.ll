; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_super.c_detected_xenix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_super.c_detected_xenix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysv_sb_info = type { i8*, i8*, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, %struct.buffer_head*, %struct.buffer_head* }
%struct.buffer_head = type { i32 }
%struct.xenix_super_block = type { i32, i32, i32, i32, i32*, i32, i32, i32*, i32 }

@XENIX_LINK_MAX = common dso_local global i32 0, align 4
@XENIX_NICINOD = common dso_local global i32 0, align 4
@XENIX_NICFREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysv_sb_info*)* @detected_xenix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @detected_xenix(%struct.sysv_sb_info* %0) #0 {
  %2 = alloca %struct.sysv_sb_info*, align 8
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.xenix_super_block*, align 8
  %6 = alloca %struct.xenix_super_block*, align 8
  store %struct.sysv_sb_info* %0, %struct.sysv_sb_info** %2, align 8
  %7 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %8 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %7, i32 0, i32 15
  %9 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* %9, %struct.buffer_head** %3, align 8
  %10 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %11 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %10, i32 0, i32 14
  %12 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  store %struct.buffer_head* %12, %struct.buffer_head** %4, align 8
  %13 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %14 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %15 = icmp ne %struct.buffer_head* %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %18 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to %struct.xenix_super_block*
  store %struct.xenix_super_block* %21, %struct.xenix_super_block** %6, align 8
  store %struct.xenix_super_block* %21, %struct.xenix_super_block** %5, align 8
  br label %34

22:                                               ; preds = %1
  %23 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %24 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to %struct.xenix_super_block*
  store %struct.xenix_super_block* %27, %struct.xenix_super_block** %5, align 8
  %28 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %29 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 512
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to %struct.xenix_super_block*
  store %struct.xenix_super_block* %33, %struct.xenix_super_block** %6, align 8
  br label %34

34:                                               ; preds = %22, %16
  %35 = load i32, i32* @XENIX_LINK_MAX, align 4
  %36 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %37 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %36, i32 0, i32 13
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @XENIX_NICINOD, align 4
  %39 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %40 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %39, i32 0, i32 12
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @XENIX_NICFREE, align 4
  %42 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %43 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %42, i32 0, i32 11
  store i32 %41, i32* %43, align 8
  %44 = load %struct.xenix_super_block*, %struct.xenix_super_block** %5, align 8
  %45 = bitcast %struct.xenix_super_block* %44 to i8*
  %46 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %47 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load %struct.xenix_super_block*, %struct.xenix_super_block** %6, align 8
  %49 = bitcast %struct.xenix_super_block* %48 to i8*
  %50 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %51 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load %struct.xenix_super_block*, %struct.xenix_super_block** %5, align 8
  %53 = getelementptr inbounds %struct.xenix_super_block, %struct.xenix_super_block* %52, i32 0, i32 8
  %54 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %55 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %54, i32 0, i32 10
  store i32* %53, i32** %55, align 8
  %56 = load %struct.xenix_super_block*, %struct.xenix_super_block** %5, align 8
  %57 = getelementptr inbounds %struct.xenix_super_block, %struct.xenix_super_block* %56, i32 0, i32 7
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %61 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %60, i32 0, i32 9
  store i32* %59, i32** %61, align 8
  %62 = load %struct.xenix_super_block*, %struct.xenix_super_block** %6, align 8
  %63 = getelementptr inbounds %struct.xenix_super_block, %struct.xenix_super_block* %62, i32 0, i32 6
  %64 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %65 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %64, i32 0, i32 8
  store i32* %63, i32** %65, align 8
  %66 = load %struct.xenix_super_block*, %struct.xenix_super_block** %5, align 8
  %67 = getelementptr inbounds %struct.xenix_super_block, %struct.xenix_super_block* %66, i32 0, i32 5
  %68 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %69 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %68, i32 0, i32 7
  store i32* %67, i32** %69, align 8
  %70 = load %struct.xenix_super_block*, %struct.xenix_super_block** %5, align 8
  %71 = getelementptr inbounds %struct.xenix_super_block, %struct.xenix_super_block* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %75 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %74, i32 0, i32 6
  store i32* %73, i32** %75, align 8
  %76 = load %struct.xenix_super_block*, %struct.xenix_super_block** %6, align 8
  %77 = getelementptr inbounds %struct.xenix_super_block, %struct.xenix_super_block* %76, i32 0, i32 3
  %78 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %79 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %78, i32 0, i32 5
  store i32* %77, i32** %79, align 8
  %80 = load %struct.xenix_super_block*, %struct.xenix_super_block** %6, align 8
  %81 = getelementptr inbounds %struct.xenix_super_block, %struct.xenix_super_block* %80, i32 0, i32 2
  %82 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %83 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %82, i32 0, i32 4
  store i32* %81, i32** %83, align 8
  %84 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %85 = load %struct.xenix_super_block*, %struct.xenix_super_block** %5, align 8
  %86 = getelementptr inbounds %struct.xenix_super_block, %struct.xenix_super_block* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @fs16_to_cpu(%struct.sysv_sb_info* %84, i32 %87)
  %89 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %90 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %92 = load %struct.xenix_super_block*, %struct.xenix_super_block** %5, align 8
  %93 = getelementptr inbounds %struct.xenix_super_block, %struct.xenix_super_block* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @fs32_to_cpu(%struct.sysv_sb_info* %91, i32 %94)
  %96 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %97 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
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
