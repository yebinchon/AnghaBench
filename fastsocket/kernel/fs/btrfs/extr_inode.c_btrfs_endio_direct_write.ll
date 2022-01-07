; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_endio_direct_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_endio_direct_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.btrfs_dio_private* }
%struct.btrfs_dio_private = type { i64, i64, %struct.btrfs_dio_private*, %struct.inode* }
%struct.inode = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.btrfs_ordered_extent = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_6__ = type { %struct.btrfs_root* }

@finish_ordered_fn = common dso_local global i32 0, align 4
@BIO_UPTODATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*, i32)* @btrfs_endio_direct_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_endio_direct_write(%struct.bio* %0, i32 %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_dio_private*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca %struct.btrfs_ordered_extent*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.bio*, %struct.bio** %3, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 1
  %14 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %13, align 8
  store %struct.btrfs_dio_private* %14, %struct.btrfs_dio_private** %5, align 8
  %15 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %5, align 8
  %16 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %15, i32 0, i32 3
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %6, align 8
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %18)
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.btrfs_root*, %struct.btrfs_root** %20, align 8
  store %struct.btrfs_root* %21, %struct.btrfs_root** %7, align 8
  store %struct.btrfs_ordered_extent* null, %struct.btrfs_ordered_extent** %8, align 8
  %22 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %5, align 8
  %23 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %9, align 8
  %25 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %5, align 8
  %26 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %10, align 8
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %79

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %68, %31
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @btrfs_dec_test_first_ordered_pending(%struct.inode* %33, %struct.btrfs_ordered_extent** %8, i64* %9, i64 %34, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %32
  br label %58

43:                                               ; preds = %32
  %44 = load i32, i32* @finish_ordered_fn, align 4
  %45 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %8, align 8
  %46 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 8
  %48 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %8, align 8
  %49 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %52 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %8, align 8
  %56 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %55, i32 0, i32 0
  %57 = call i32 @btrfs_queue_worker(i32* %54, %struct.TYPE_5__* %56)
  br label %58

58:                                               ; preds = %43, %42
  %59 = load i64, i64* %9, align 8
  %60 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %5, align 8
  %61 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %5, align 8
  %64 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %62, %65
  %67 = icmp slt i64 %59, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %58
  %69 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %5, align 8
  %70 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %5, align 8
  %73 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %71, %74
  %76 = load i64, i64* %9, align 8
  %77 = sub nsw i64 %75, %76
  store i64 %77, i64* %10, align 8
  store %struct.btrfs_ordered_extent* null, %struct.btrfs_ordered_extent** %8, align 8
  br label %32

78:                                               ; preds = %58
  br label %79

79:                                               ; preds = %78, %30
  %80 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %5, align 8
  %81 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %80, i32 0, i32 2
  %82 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %81, align 8
  %83 = load %struct.bio*, %struct.bio** %3, align 8
  %84 = getelementptr inbounds %struct.bio, %struct.bio* %83, i32 0, i32 1
  store %struct.btrfs_dio_private* %82, %struct.btrfs_dio_private** %84, align 8
  %85 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %5, align 8
  %86 = call i32 @kfree(%struct.btrfs_dio_private* %85)
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %79
  %90 = load i32, i32* @BIO_UPTODATE, align 4
  %91 = load %struct.bio*, %struct.bio** %3, align 8
  %92 = getelementptr inbounds %struct.bio, %struct.bio* %91, i32 0, i32 0
  %93 = call i32 @clear_bit(i32 %90, i32* %92)
  br label %94

94:                                               ; preds = %89, %79
  %95 = load %struct.bio*, %struct.bio** %3, align 8
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @dio_end_io(%struct.bio* %95, i32 %96)
  ret void
}

declare dso_local %struct.TYPE_6__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @btrfs_dec_test_first_ordered_pending(%struct.inode*, %struct.btrfs_ordered_extent**, i64*, i64, i32) #1

declare dso_local i32 @btrfs_queue_worker(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.btrfs_dio_private*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @dio_end_io(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
