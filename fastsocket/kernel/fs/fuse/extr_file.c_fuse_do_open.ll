; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_do_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_do_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i32 }
%struct.file = type { i32 }
%struct.fuse_open_out = type { i32, i32 }
%struct.fuse_file = type { i32, i32, i32 }

@FUSE_OPENDIR = common dso_local global i32 0, align 4
@FUSE_OPEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FOPEN_DIRECT_IO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_do_open(%struct.fuse_conn* %0, i32 %1, %struct.file* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fuse_conn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fuse_open_out, align 4
  %11 = alloca %struct.fuse_file*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.fuse_conn* %0, %struct.fuse_conn** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.file* %2, %struct.file** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @FUSE_OPENDIR, align 4
  br label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @FUSE_OPEN, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %13, align 4
  %22 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %23 = call %struct.fuse_file* @fuse_file_alloc(%struct.fuse_conn* %22)
  store %struct.fuse_file* %23, %struct.fuse_file** %11, align 8
  %24 = load %struct.fuse_file*, %struct.fuse_file** %11, align 8
  %25 = icmp ne %struct.fuse_file* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %66

29:                                               ; preds = %20
  %30 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.file*, %struct.file** %8, align 8
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @fuse_send_open(%struct.fuse_conn* %30, i32 %31, %struct.file* %32, i32 %33, %struct.fuse_open_out* %10)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load %struct.fuse_file*, %struct.fuse_file** %11, align 8
  %39 = call i32 @fuse_file_free(%struct.fuse_file* %38)
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %5, align 4
  br label %66

41:                                               ; preds = %29
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32, i32* @FOPEN_DIRECT_IO, align 4
  %46 = xor i32 %45, -1
  %47 = getelementptr inbounds %struct.fuse_open_out, %struct.fuse_open_out* %10, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %46
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %44, %41
  %51 = getelementptr inbounds %struct.fuse_open_out, %struct.fuse_open_out* %10, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.fuse_file*, %struct.fuse_file** %11, align 8
  %54 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.fuse_file*, %struct.fuse_file** %11, align 8
  %57 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = getelementptr inbounds %struct.fuse_open_out, %struct.fuse_open_out* %10, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.fuse_file*, %struct.fuse_file** %11, align 8
  %61 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.fuse_file*, %struct.fuse_file** %11, align 8
  %63 = call i32 @fuse_file_get(%struct.fuse_file* %62)
  %64 = load %struct.file*, %struct.file** %8, align 8
  %65 = getelementptr inbounds %struct.file, %struct.file* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %50, %37, %26
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local %struct.fuse_file* @fuse_file_alloc(%struct.fuse_conn*) #1

declare dso_local i32 @fuse_send_open(%struct.fuse_conn*, i32, %struct.file*, i32, %struct.fuse_open_out*) #1

declare dso_local i32 @fuse_file_free(%struct.fuse_file*) #1

declare dso_local i32 @fuse_file_get(%struct.fuse_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
