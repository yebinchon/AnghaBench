; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_mon.c_nsm_create_handle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_mon.c_nsm_create_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsm_handle = type { i8*, i64, i32, i32 }
%struct.sockaddr = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unsupported address family\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nsm_handle* (%struct.sockaddr*, i64, i8*, i64)* @nsm_create_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nsm_handle* @nsm_create_handle(%struct.sockaddr* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.nsm_handle*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nsm_handle*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %9, align 8
  %12 = add i64 24, %11
  %13 = add i64 %12, 1
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.nsm_handle* @kzalloc(i32 %14, i32 %15)
  store %struct.nsm_handle* %16, %struct.nsm_handle** %10, align 8
  %17 = load %struct.nsm_handle*, %struct.nsm_handle** %10, align 8
  %18 = icmp eq %struct.nsm_handle* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store %struct.nsm_handle* null, %struct.nsm_handle** %5, align 8
  br label %68

23:                                               ; preds = %4
  %24 = load %struct.nsm_handle*, %struct.nsm_handle** %10, align 8
  %25 = getelementptr inbounds %struct.nsm_handle, %struct.nsm_handle* %24, i32 0, i32 3
  %26 = call i32 @atomic_set(i32* %25, i32 1)
  %27 = load %struct.nsm_handle*, %struct.nsm_handle** %10, align 8
  %28 = getelementptr inbounds %struct.nsm_handle, %struct.nsm_handle* %27, i64 1
  %29 = bitcast %struct.nsm_handle* %28 to i8*
  %30 = load %struct.nsm_handle*, %struct.nsm_handle** %10, align 8
  %31 = getelementptr inbounds %struct.nsm_handle, %struct.nsm_handle* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load %struct.nsm_handle*, %struct.nsm_handle** %10, align 8
  %33 = call i8* @nsm_addr(%struct.nsm_handle* %32)
  %34 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %35 = bitcast %struct.sockaddr* %34 to i8*
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @memcpy(i8* %33, i8* %35, i64 %36)
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.nsm_handle*, %struct.nsm_handle** %10, align 8
  %40 = getelementptr inbounds %struct.nsm_handle, %struct.nsm_handle* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load %struct.nsm_handle*, %struct.nsm_handle** %10, align 8
  %42 = call i32 @nsm_init_private(%struct.nsm_handle* %41)
  %43 = load %struct.nsm_handle*, %struct.nsm_handle** %10, align 8
  %44 = call i8* @nsm_addr(%struct.nsm_handle* %43)
  %45 = load %struct.nsm_handle*, %struct.nsm_handle** %10, align 8
  %46 = getelementptr inbounds %struct.nsm_handle, %struct.nsm_handle* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @rpc_ntop(i8* %44, i32 %47, i32 4)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %23
  %51 = load %struct.nsm_handle*, %struct.nsm_handle** %10, align 8
  %52 = getelementptr inbounds %struct.nsm_handle, %struct.nsm_handle* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @snprintf(i32 %53, i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %50, %23
  %56 = load %struct.nsm_handle*, %struct.nsm_handle** %10, align 8
  %57 = getelementptr inbounds %struct.nsm_handle, %struct.nsm_handle* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @memcpy(i8* %58, i8* %59, i64 %60)
  %62 = load %struct.nsm_handle*, %struct.nsm_handle** %10, align 8
  %63 = getelementptr inbounds %struct.nsm_handle, %struct.nsm_handle* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i64, i64* %9, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8 0, i8* %66, align 1
  %67 = load %struct.nsm_handle*, %struct.nsm_handle** %10, align 8
  store %struct.nsm_handle* %67, %struct.nsm_handle** %5, align 8
  br label %68

68:                                               ; preds = %55, %22
  %69 = load %struct.nsm_handle*, %struct.nsm_handle** %5, align 8
  ret %struct.nsm_handle* %69
}

declare dso_local %struct.nsm_handle* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @nsm_addr(%struct.nsm_handle*) #1

declare dso_local i32 @nsm_init_private(%struct.nsm_handle*) #1

declare dso_local i64 @rpc_ntop(i8*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
