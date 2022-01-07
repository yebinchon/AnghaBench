; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_inode.c_fuse_bdi_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_inode.c_fuse_bdi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i8*, i32, i32, i32 }
%struct.super_block = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"fuse\00", align 1
@VM_MAX_READAHEAD = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@default_unplug_io_fn = common dso_local global i32 0, align 4
@BDI_CAP_NO_ACCT_WB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"%u:%u-fuseblk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuse_conn*, %struct.super_block*)* @fuse_bdi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_bdi_init(%struct.fuse_conn* %0, %struct.super_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fuse_conn*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  store %struct.fuse_conn* %0, %struct.fuse_conn** %4, align 8
  store %struct.super_block* %1, %struct.super_block** %5, align 8
  %7 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %8 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %10 = load i32, i32* @VM_MAX_READAHEAD, align 4
  %11 = mul nsw i32 %10, 1024
  %12 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %13 = sdiv i32 %11, %12
  %14 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %15 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 8
  %17 = load i32, i32* @default_unplug_io_fn, align 4
  %18 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %19 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 3
  store i32 %17, i32* %20, align 8
  %21 = load i32, i32* @BDI_CAP_NO_ACCT_WB, align 4
  %22 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %23 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 4
  %25 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %26 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %25, i32 0, i32 1
  %27 = call i32 @bdi_init(%struct.TYPE_5__* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %67

32:                                               ; preds = %2
  %33 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %34 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.super_block*, %struct.super_block** %5, align 8
  %36 = getelementptr inbounds %struct.super_block, %struct.super_block* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %32
  %40 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %41 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %40, i32 0, i32 1
  %42 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %43 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @MAJOR(i32 %44)
  %46 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %47 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @MINOR(i32 %48)
  %50 = call i32 @bdi_register(%struct.TYPE_5__* %41, i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %49)
  store i32 %50, i32* %6, align 4
  br label %58

51:                                               ; preds = %32
  %52 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %53 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %52, i32 0, i32 1
  %54 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %55 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @bdi_register_dev(%struct.TYPE_5__* %53, i32 %56)
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %51, %39
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %67

63:                                               ; preds = %58
  %64 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %65 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %64, i32 0, i32 1
  %66 = call i32 @bdi_set_max_ratio(%struct.TYPE_5__* %65, i32 1)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %61, %30
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @bdi_init(%struct.TYPE_5__*) #1

declare dso_local i32 @bdi_register(%struct.TYPE_5__*, i32*, i8*, i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @bdi_register_dev(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @bdi_set_max_ratio(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
