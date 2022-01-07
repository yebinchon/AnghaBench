; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_super.c_detect_xenix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_super.c_detect_xenix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysv_sb_info = type { i8*, i32 }
%struct.buffer_head = type { i64 }
%struct.xenix_super_block = type { i32, i32 }

@BYTESEX_LE = common dso_local global i32 0, align 4
@BYTESEX_BE = common dso_local global i32 0, align 4
@FSTYPE_XENIX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysv_sb_info*, %struct.buffer_head*)* @detect_xenix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detect_xenix(%struct.sysv_sb_info* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sysv_sb_info*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.xenix_super_block*, align 8
  store %struct.sysv_sb_info* %0, %struct.sysv_sb_info** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  %7 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %8 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.xenix_super_block*
  store %struct.xenix_super_block* %10, %struct.xenix_super_block** %6, align 8
  %11 = load %struct.xenix_super_block*, %struct.xenix_super_block** %6, align 8
  %12 = getelementptr inbounds %struct.xenix_super_block, %struct.xenix_super_block* %11, i32 0, i32 1
  %13 = bitcast i32* %12 to i64*
  %14 = load i64, i64* %13, align 4
  %15 = call i64 @cpu_to_le32(i32 2839876)
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @BYTESEX_LE, align 4
  %19 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %20 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  br label %34

21:                                               ; preds = %2
  %22 = load %struct.xenix_super_block*, %struct.xenix_super_block** %6, align 8
  %23 = getelementptr inbounds %struct.xenix_super_block, %struct.xenix_super_block* %22, i32 0, i32 1
  %24 = bitcast i32* %23 to i64*
  %25 = load i64, i64* %24, align 4
  %26 = call i64 @cpu_to_be32(i32 2839876)
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* @BYTESEX_BE, align 4
  %30 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %31 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  br label %33

32:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %49

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33, %17
  %35 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %36 = load %struct.xenix_super_block*, %struct.xenix_super_block** %6, align 8
  %37 = getelementptr inbounds %struct.xenix_super_block, %struct.xenix_super_block* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @fs32_to_cpu(%struct.sysv_sb_info* %35, i32 %38)
  switch i32 %39, label %48 [
    i32 1, label %40
    i32 2, label %44
  ]

40:                                               ; preds = %34
  %41 = load i8*, i8** @FSTYPE_XENIX, align 8
  %42 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %43 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  store i32 1, i32* %3, align 4
  br label %49

44:                                               ; preds = %34
  %45 = load i8*, i8** @FSTYPE_XENIX, align 8
  %46 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %47 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  store i32 2, i32* %3, align 4
  br label %49

48:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %44, %40, %32
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @fs32_to_cpu(%struct.sysv_sb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
