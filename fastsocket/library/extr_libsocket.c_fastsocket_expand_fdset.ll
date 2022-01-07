; ModuleID = '/home/carl/AnghaBench/fastsocket/library/extr_libsocket.c_fastsocket_expand_fdset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/library/extr_libsocket.c_fastsocket_expand_fdset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsocket_ioctl_arg = type { i32 }

@fsocket_fd_set = common dso_local global i32* null, align 8
@fsocket_fd_num = common dso_local global i32 0, align 4
@INIT_FDSET_NUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Re allocate memory for listen fd set failed\0A\00", align 1
@fsocket_channel_fd = common dso_local global i32 0, align 4
@FSOCKET_IOC_CLOSE = common dso_local global i32 0, align 4
@EMFILE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fastsocket_expand_fdset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsocket_ioctl_arg, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32*, i32** @fsocket_fd_set, align 8
  store i32* %6, i32** %3, align 8
  %7 = load i32, i32* %2, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @fsocket_fd_num, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %43

11:                                               ; preds = %1
  %12 = load i32, i32* @fsocket_fd_num, align 4
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* @INIT_FDSET_NUM, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32* @calloc(i64 %15, i32 4)
  store i32* %16, i32** @fsocket_fd_set, align 8
  %17 = load i32*, i32** @fsocket_fd_set, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %11
  %20 = call i32 @FSOCKET_ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %2, align 4
  %22 = getelementptr inbounds %struct.fsocket_ioctl_arg, %struct.fsocket_ioctl_arg* %5, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @fsocket_channel_fd, align 4
  %24 = load i32, i32* @FSOCKET_IOC_CLOSE, align 4
  %25 = call i32 @ioctl(i32 %23, i32 %24, %struct.fsocket_ioctl_arg* %5)
  %26 = load i32, i32* @EMFILE, align 4
  store i32 %26, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %42

27:                                               ; preds = %11
  %28 = load i32*, i32** @fsocket_fd_set, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @fsocket_fd_num, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = call i32 @memcpy(i32* %28, i32* %29, i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @free(i32* %35)
  %37 = load i64, i64* @INIT_FDSET_NUM, align 8
  %38 = load i32, i32* @fsocket_fd_num, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* @fsocket_fd_num, align 4
  br label %42

42:                                               ; preds = %27, %19
  br label %43

43:                                               ; preds = %42, %1
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32* @calloc(i64, i32) #1

declare dso_local i32 @FSOCKET_ERR(i8*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.fsocket_ioctl_arg*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
