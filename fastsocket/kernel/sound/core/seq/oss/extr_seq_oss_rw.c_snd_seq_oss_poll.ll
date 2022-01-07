; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/oss/extr_seq_oss_rw.c_snd_seq_oss_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/oss/extr_seq_oss_rw.c_snd_seq_oss_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_devinfo = type { i32, i32, i64, i64 }
%struct.file = type { i32 }

@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_oss_poll(%struct.seq_oss_devinfo* %0, %struct.file* %1, i32* %2) #0 {
  %4 = alloca %struct.seq_oss_devinfo*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.seq_oss_devinfo* %0, %struct.seq_oss_devinfo** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %4, align 8
  %9 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %3
  %13 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %4, align 8
  %14 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @is_read_mode(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %12
  %19 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %4, align 8
  %20 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.file*, %struct.file** %5, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i64 @snd_seq_oss_readq_poll(i64 %21, %struct.file* %22, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load i32, i32* @POLLIN, align 4
  %28 = load i32, i32* @POLLRDNORM, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %26, %18
  br label %33

33:                                               ; preds = %32, %12, %3
  %34 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %4, align 8
  %35 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %33
  %39 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %4, align 8
  %40 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @is_write_mode(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %38
  %45 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %4, align 8
  %46 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.file*, %struct.file** %5, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = call i64 @snd_seq_kernel_client_write_poll(i32 %47, %struct.file* %48, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = load i32, i32* @POLLOUT, align 4
  %54 = load i32, i32* @POLLWRNORM, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %52, %44
  br label %59

59:                                               ; preds = %58, %38, %33
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i64 @is_read_mode(i32) #1

declare dso_local i64 @snd_seq_oss_readq_poll(i64, %struct.file*, i32*) #1

declare dso_local i64 @is_write_mode(i32) #1

declare dso_local i64 @snd_seq_kernel_client_write_poll(i32, %struct.file*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
