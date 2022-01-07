; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_cache.c_v9fs_cache_session_get_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_cache.c_v9fs_cache_session_get_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v9fs_session_info = type { i32 }

@P9_DEBUG_FSC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"session %p buf %p size %u\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"cache session tag %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i64)* @v9fs_cache_session_get_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @v9fs_cache_session_get_key(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.v9fs_session_info*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %9, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.v9fs_session_info*
  store %struct.v9fs_session_info* %11, %struct.v9fs_session_info** %8, align 8
  %12 = load i32, i32* @P9_DEBUG_FSC, align 4
  %13 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32 (i32, i8*, %struct.v9fs_session_info*, ...) @P9_DPRINTK(i32 %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.v9fs_session_info* %13, i8* %14, i64 %15)
  %17 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %8, align 8
  %18 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %8, align 8
  %23 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @strlen(i32 %24)
  store i64 %25, i64* %9, align 8
  br label %26

26:                                               ; preds = %21, %3
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i64 0, i64* %4, align 8
  br label %46

31:                                               ; preds = %26
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %8, align 8
  %34 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @memcpy(i8* %32, i32 %35, i64 %36)
  %38 = load i32, i32* @P9_DEBUG_FSC, align 4
  %39 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %8, align 8
  %40 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to %struct.v9fs_session_info*
  %44 = call i32 (i32, i8*, %struct.v9fs_session_info*, ...) @P9_DPRINTK(i32 %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), %struct.v9fs_session_info* %43)
  %45 = load i64, i64* %9, align 8
  store i64 %45, i64* %4, align 8
  br label %46

46:                                               ; preds = %31, %30
  %47 = load i64, i64* %4, align 8
  ret i64 %47
}

declare dso_local i32 @P9_DPRINTK(i32, i8*, %struct.v9fs_session_info*, ...) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
