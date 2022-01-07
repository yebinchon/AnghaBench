; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_super.c_detected_v7.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_super.c_detected_v7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysv_sb_info = type { i8*, i8*, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, %struct.buffer_head* }
%struct.buffer_head = type { i64 }
%struct.v7_super_block = type { i32, i32, i32, i32, i32*, i32, i32, i32*, i32 }

@V7_LINK_MAX = common dso_local global i32 0, align 4
@V7_NICINOD = common dso_local global i32 0, align 4
@V7_NICFREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysv_sb_info*)* @detected_v7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @detected_v7(%struct.sysv_sb_info* %0) #0 {
  %2 = alloca %struct.sysv_sb_info*, align 8
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca %struct.v7_super_block*, align 8
  store %struct.sysv_sb_info* %0, %struct.sysv_sb_info** %2, align 8
  %5 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %6 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %5, i32 0, i32 14
  %7 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  store %struct.buffer_head* %7, %struct.buffer_head** %3, align 8
  %8 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %9 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.v7_super_block*
  store %struct.v7_super_block* %11, %struct.v7_super_block** %4, align 8
  %12 = load i32, i32* @V7_LINK_MAX, align 4
  %13 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %14 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %13, i32 0, i32 13
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @V7_NICINOD, align 4
  %16 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %17 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %16, i32 0, i32 12
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @V7_NICFREE, align 4
  %19 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %20 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %19, i32 0, i32 11
  store i32 %18, i32* %20, align 8
  %21 = load %struct.v7_super_block*, %struct.v7_super_block** %4, align 8
  %22 = bitcast %struct.v7_super_block* %21 to i8*
  %23 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %24 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load %struct.v7_super_block*, %struct.v7_super_block** %4, align 8
  %26 = bitcast %struct.v7_super_block* %25 to i8*
  %27 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %28 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.v7_super_block*, %struct.v7_super_block** %4, align 8
  %30 = getelementptr inbounds %struct.v7_super_block, %struct.v7_super_block* %29, i32 0, i32 8
  %31 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %32 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %31, i32 0, i32 10
  store i32* %30, i32** %32, align 8
  %33 = load %struct.v7_super_block*, %struct.v7_super_block** %4, align 8
  %34 = getelementptr inbounds %struct.v7_super_block, %struct.v7_super_block* %33, i32 0, i32 7
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %38 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %37, i32 0, i32 9
  store i32* %36, i32** %38, align 8
  %39 = load %struct.v7_super_block*, %struct.v7_super_block** %4, align 8
  %40 = getelementptr inbounds %struct.v7_super_block, %struct.v7_super_block* %39, i32 0, i32 6
  %41 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %42 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %41, i32 0, i32 8
  store i32* %40, i32** %42, align 8
  %43 = load %struct.v7_super_block*, %struct.v7_super_block** %4, align 8
  %44 = getelementptr inbounds %struct.v7_super_block, %struct.v7_super_block* %43, i32 0, i32 5
  %45 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %46 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %45, i32 0, i32 7
  store i32* %44, i32** %46, align 8
  %47 = load %struct.v7_super_block*, %struct.v7_super_block** %4, align 8
  %48 = getelementptr inbounds %struct.v7_super_block, %struct.v7_super_block* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %52 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %51, i32 0, i32 6
  store i32* %50, i32** %52, align 8
  %53 = load %struct.v7_super_block*, %struct.v7_super_block** %4, align 8
  %54 = getelementptr inbounds %struct.v7_super_block, %struct.v7_super_block* %53, i32 0, i32 3
  %55 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %56 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %55, i32 0, i32 5
  store i32* %54, i32** %56, align 8
  %57 = load %struct.v7_super_block*, %struct.v7_super_block** %4, align 8
  %58 = getelementptr inbounds %struct.v7_super_block, %struct.v7_super_block* %57, i32 0, i32 2
  %59 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %60 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %59, i32 0, i32 4
  store i32* %58, i32** %60, align 8
  %61 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %62 = load %struct.v7_super_block*, %struct.v7_super_block** %4, align 8
  %63 = getelementptr inbounds %struct.v7_super_block, %struct.v7_super_block* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @fs16_to_cpu(%struct.sysv_sb_info* %61, i32 %64)
  %66 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %67 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %69 = load %struct.v7_super_block*, %struct.v7_super_block** %4, align 8
  %70 = getelementptr inbounds %struct.v7_super_block, %struct.v7_super_block* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @fs32_to_cpu(%struct.sysv_sb_info* %68, i32 %71)
  %73 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %2, align 8
  %74 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
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
