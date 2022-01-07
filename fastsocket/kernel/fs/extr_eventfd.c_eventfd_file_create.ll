; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_eventfd.c_eventfd_file_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_eventfd.c_eventfd_file_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.eventfd_ctx = type { i32, i32, i32, i32 }

@EFD_CLOEXEC = common dso_local global i64 0, align 8
@O_CLOEXEC = common dso_local global i64 0, align 8
@EFD_NONBLOCK = common dso_local global i64 0, align 8
@O_NONBLOCK = common dso_local global i64 0, align 8
@EFD_FLAGS_SET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"[eventfd]\00", align 1
@eventfd_fops = common dso_local global i32 0, align 4
@EFD_SHARED_FCNTL_FLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file* @eventfd_file_create(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.eventfd_ctx*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* @EFD_CLOEXEC, align 8
  %9 = load i64, i64* @O_CLOEXEC, align 8
  %10 = icmp ne i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUILD_BUG_ON(i32 %11)
  %13 = load i64, i64* @EFD_NONBLOCK, align 8
  %14 = load i64, i64* @O_NONBLOCK, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUILD_BUG_ON(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @EFD_FLAGS_SET, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.file* @ERR_PTR(i32 %25)
  store %struct.file* %26, %struct.file** %3, align 8
  br label %62

27:                                               ; preds = %2
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.eventfd_ctx* @kmalloc(i32 16, i32 %28)
  store %struct.eventfd_ctx* %29, %struct.eventfd_ctx** %7, align 8
  %30 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %7, align 8
  %31 = icmp ne %struct.eventfd_ctx* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.file* @ERR_PTR(i32 %34)
  store %struct.file* %35, %struct.file** %3, align 8
  br label %62

36:                                               ; preds = %27
  %37 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %7, align 8
  %38 = getelementptr inbounds %struct.eventfd_ctx, %struct.eventfd_ctx* %37, i32 0, i32 3
  %39 = call i32 @kref_init(i32* %38)
  %40 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %7, align 8
  %41 = getelementptr inbounds %struct.eventfd_ctx, %struct.eventfd_ctx* %40, i32 0, i32 2
  %42 = call i32 @init_waitqueue_head(i32* %41)
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %7, align 8
  %45 = getelementptr inbounds %struct.eventfd_ctx, %struct.eventfd_ctx* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %7, align 8
  %48 = getelementptr inbounds %struct.eventfd_ctx, %struct.eventfd_ctx* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %7, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @EFD_SHARED_FCNTL_FLAGS, align 4
  %52 = and i32 %50, %51
  %53 = call %struct.file* @anon_inode_getfile(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* @eventfd_fops, %struct.eventfd_ctx* %49, i32 %52)
  store %struct.file* %53, %struct.file** %6, align 8
  %54 = load %struct.file*, %struct.file** %6, align 8
  %55 = call i64 @IS_ERR(%struct.file* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %36
  %58 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %7, align 8
  %59 = call i32 @eventfd_free_ctx(%struct.eventfd_ctx* %58)
  br label %60

60:                                               ; preds = %57, %36
  %61 = load %struct.file*, %struct.file** %6, align 8
  store %struct.file* %61, %struct.file** %3, align 8
  br label %62

62:                                               ; preds = %60, %32, %23
  %63 = load %struct.file*, %struct.file** %3, align 8
  ret %struct.file* %63
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local %struct.file* @ERR_PTR(i32) #1

declare dso_local %struct.eventfd_ctx* @kmalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local %struct.file* @anon_inode_getfile(i8*, i32*, %struct.eventfd_ctx*, i32) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @eventfd_free_ctx(%struct.eventfd_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
