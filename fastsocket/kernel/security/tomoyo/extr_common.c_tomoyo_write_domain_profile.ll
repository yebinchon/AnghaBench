; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_common.c_tomoyo_write_domain_profile.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_common.c_tomoyo_write_domain_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_io_buffer = type { i8* }
%struct.tomoyo_domain_info = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@tomoyo_domain_list_lock = common dso_local global i32 0, align 4
@TOMOYO_MAX_PROFILES = common dso_local global i64 0, align 8
@tomoyo_profile_ptr = common dso_local global i64* null, align 8
@tomoyo_policy_loaded = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tomoyo_io_buffer*)* @tomoyo_write_domain_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_write_domain_profile(%struct.tomoyo_io_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tomoyo_io_buffer*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tomoyo_domain_info*, align 8
  %7 = alloca i64, align 8
  store %struct.tomoyo_io_buffer* %0, %struct.tomoyo_io_buffer** %3, align 8
  %8 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %9 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @strchr(i8* %11, i8 signext 32)
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %52

18:                                               ; preds = %1
  %19 = load i8*, i8** %5, align 8
  store i8 0, i8* %19, align 1
  %20 = call i32 @down_read(i32* @tomoyo_domain_list_lock)
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = call %struct.tomoyo_domain_info* @tomoyo_find_domain(i8* %22)
  store %struct.tomoyo_domain_info* %23, %struct.tomoyo_domain_info** %6, align 8
  %24 = call i32 @up_read(i32* @tomoyo_domain_list_lock)
  %25 = load i8*, i8** %4, align 8
  %26 = call i64 @strict_strtoul(i8* %25, i32 10, i64* %7)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %52

31:                                               ; preds = %18
  %32 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %6, align 8
  %33 = icmp ne %struct.tomoyo_domain_info* %32, null
  br i1 %33, label %34, label %51

34:                                               ; preds = %31
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @TOMOYO_MAX_PROFILES, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = load i64*, i64** @tomoyo_profile_ptr, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @tomoyo_policy_loaded, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44, %38
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %6, align 8
  %50 = getelementptr inbounds %struct.tomoyo_domain_info, %struct.tomoyo_domain_info* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %47, %44, %34, %31
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %28, %15
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.tomoyo_domain_info* @tomoyo_find_domain(i8*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i64 @strict_strtoul(i8*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
