; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_super.c_ext4_li_request_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_super.c_ext4_li_request_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_li_request = type { i64, i32, %struct.ext4_sb_info*, %struct.super_block* }
%struct.ext4_sb_info = type { i32 }
%struct.super_block = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@EXT4_DEF_LI_MAX_START_DELAY = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ext4_li_request* (%struct.super_block*, i32)* @ext4_li_request_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ext4_li_request* @ext4_li_request_new(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.ext4_li_request*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ext4_sb_info*, align 8
  %7 = alloca %struct.ext4_li_request*, align 8
  %8 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.super_block*, %struct.super_block** %4, align 8
  %10 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %9)
  store %struct.ext4_sb_info* %10, %struct.ext4_sb_info** %6, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.ext4_li_request* @kzalloc(i32 32, i32 %11)
  store %struct.ext4_li_request* %12, %struct.ext4_li_request** %7, align 8
  %13 = load %struct.ext4_li_request*, %struct.ext4_li_request** %7, align 8
  %14 = icmp ne %struct.ext4_li_request* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.ext4_li_request* null, %struct.ext4_li_request** %3, align 8
  br label %37

16:                                               ; preds = %2
  %17 = load %struct.super_block*, %struct.super_block** %4, align 8
  %18 = load %struct.ext4_li_request*, %struct.ext4_li_request** %7, align 8
  %19 = getelementptr inbounds %struct.ext4_li_request, %struct.ext4_li_request* %18, i32 0, i32 3
  store %struct.super_block* %17, %struct.super_block** %19, align 8
  %20 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %21 = load %struct.ext4_li_request*, %struct.ext4_li_request** %7, align 8
  %22 = getelementptr inbounds %struct.ext4_li_request, %struct.ext4_li_request* %21, i32 0, i32 2
  store %struct.ext4_sb_info* %20, %struct.ext4_sb_info** %22, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.ext4_li_request*, %struct.ext4_li_request** %7, align 8
  %25 = getelementptr inbounds %struct.ext4_li_request, %struct.ext4_li_request* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = call i32 @get_random_bytes(i64* %8, i32 8)
  %27 = load i64, i64* @jiffies, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @EXT4_DEF_LI_MAX_START_DELAY, align 8
  %30 = load i64, i64* @HZ, align 8
  %31 = mul i64 %29, %30
  %32 = urem i64 %28, %31
  %33 = add i64 %27, %32
  %34 = load %struct.ext4_li_request*, %struct.ext4_li_request** %7, align 8
  %35 = getelementptr inbounds %struct.ext4_li_request, %struct.ext4_li_request* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.ext4_li_request*, %struct.ext4_li_request** %7, align 8
  store %struct.ext4_li_request* %36, %struct.ext4_li_request** %3, align 8
  br label %37

37:                                               ; preds = %16, %15
  %38 = load %struct.ext4_li_request*, %struct.ext4_li_request** %3, align 8
  ret %struct.ext4_li_request* %38
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local %struct.ext4_li_request* @kzalloc(i32, i32) #1

declare dso_local i32 @get_random_bytes(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
