; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_btrfs_end_bio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_btrfs_end_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, %struct.block_device*, i32, i32 }
%struct.block_device = type { i32 }
%struct.btrfs_bio = type { i32, i64, i32, i64, i32, i32, %struct.bio*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.btrfs_device* }
%struct.btrfs_device = type { i64 }

@EIO = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@BTRFS_DEV_STAT_WRITE_ERRS = common dso_local global i32 0, align 4
@BTRFS_DEV_STAT_READ_ERRS = common dso_local global i32 0, align 4
@WRITE_FLUSH = common dso_local global i32 0, align 4
@BTRFS_DEV_STAT_FLUSH_ERRS = common dso_local global i32 0, align 4
@BIO_UPTODATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*, i32)* @btrfs_end_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_end_bio(%struct.bio* %0, i32 %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_bio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_device*, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.bio*, %struct.bio** %3, align 8
  %10 = getelementptr inbounds %struct.bio, %struct.bio* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.btrfs_bio* @extract_bbio_from_bio_private(i32 %11)
  store %struct.btrfs_bio* %12, %struct.btrfs_bio** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %84

15:                                               ; preds = %2
  %16 = load %struct.btrfs_bio*, %struct.btrfs_bio** %5, align 8
  %17 = getelementptr inbounds %struct.btrfs_bio, %struct.btrfs_bio* %16, i32 0, i32 2
  %18 = call i32 @atomic_inc(i32* %17)
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %15
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @EREMOTEIO, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %83

28:                                               ; preds = %23, %15
  %29 = load %struct.bio*, %struct.bio** %3, align 8
  %30 = getelementptr inbounds %struct.bio, %struct.bio* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @extract_stripe_index_from_bio_private(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.btrfs_bio*, %struct.btrfs_bio** %5, align 8
  %35 = getelementptr inbounds %struct.btrfs_bio, %struct.btrfs_bio* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp uge i32 %33, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load %struct.btrfs_bio*, %struct.btrfs_bio** %5, align 8
  %41 = getelementptr inbounds %struct.btrfs_bio, %struct.btrfs_bio* %40, i32 0, i32 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load %struct.btrfs_device*, %struct.btrfs_device** %46, align 8
  store %struct.btrfs_device* %47, %struct.btrfs_device** %8, align 8
  %48 = load %struct.btrfs_device*, %struct.btrfs_device** %8, align 8
  %49 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %82

52:                                               ; preds = %28
  %53 = load %struct.bio*, %struct.bio** %3, align 8
  %54 = getelementptr inbounds %struct.bio, %struct.bio* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @WRITE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load %struct.btrfs_device*, %struct.btrfs_device** %8, align 8
  %61 = load i32, i32* @BTRFS_DEV_STAT_WRITE_ERRS, align 4
  %62 = call i32 @btrfs_dev_stat_inc(%struct.btrfs_device* %60, i32 %61)
  br label %67

63:                                               ; preds = %52
  %64 = load %struct.btrfs_device*, %struct.btrfs_device** %8, align 8
  %65 = load i32, i32* @BTRFS_DEV_STAT_READ_ERRS, align 4
  %66 = call i32 @btrfs_dev_stat_inc(%struct.btrfs_device* %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %59
  %68 = load %struct.bio*, %struct.bio** %3, align 8
  %69 = getelementptr inbounds %struct.bio, %struct.bio* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @WRITE_FLUSH, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* @WRITE_FLUSH, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = load %struct.btrfs_device*, %struct.btrfs_device** %8, align 8
  %77 = load i32, i32* @BTRFS_DEV_STAT_FLUSH_ERRS, align 4
  %78 = call i32 @btrfs_dev_stat_inc(%struct.btrfs_device* %76, i32 %77)
  br label %79

79:                                               ; preds = %75, %67
  %80 = load %struct.btrfs_device*, %struct.btrfs_device** %8, align 8
  %81 = call i32 @btrfs_dev_stat_print_on_error(%struct.btrfs_device* %80)
  br label %82

82:                                               ; preds = %79, %28
  br label %83

83:                                               ; preds = %82, %23
  br label %84

84:                                               ; preds = %83, %2
  %85 = load %struct.bio*, %struct.bio** %3, align 8
  %86 = load %struct.btrfs_bio*, %struct.btrfs_bio** %5, align 8
  %87 = getelementptr inbounds %struct.btrfs_bio, %struct.btrfs_bio* %86, i32 0, i32 6
  %88 = load %struct.bio*, %struct.bio** %87, align 8
  %89 = icmp eq %struct.bio* %85, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  store i32 1, i32* %6, align 4
  br label %91

91:                                               ; preds = %90, %84
  %92 = load %struct.btrfs_bio*, %struct.btrfs_bio** %5, align 8
  %93 = getelementptr inbounds %struct.btrfs_bio, %struct.btrfs_bio* %92, i32 0, i32 7
  %94 = call i64 @atomic_dec_and_test(i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %143

96:                                               ; preds = %91
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %96
  %100 = load %struct.bio*, %struct.bio** %3, align 8
  %101 = call i32 @bio_put(%struct.bio* %100)
  %102 = load %struct.btrfs_bio*, %struct.btrfs_bio** %5, align 8
  %103 = getelementptr inbounds %struct.btrfs_bio, %struct.btrfs_bio* %102, i32 0, i32 6
  %104 = load %struct.bio*, %struct.bio** %103, align 8
  store %struct.bio* %104, %struct.bio** %3, align 8
  br label %105

105:                                              ; preds = %99, %96
  %106 = load %struct.btrfs_bio*, %struct.btrfs_bio** %5, align 8
  %107 = getelementptr inbounds %struct.btrfs_bio, %struct.btrfs_bio* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.bio*, %struct.bio** %3, align 8
  %110 = getelementptr inbounds %struct.bio, %struct.bio* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 4
  %111 = load %struct.btrfs_bio*, %struct.btrfs_bio** %5, align 8
  %112 = getelementptr inbounds %struct.btrfs_bio, %struct.btrfs_bio* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.bio*, %struct.bio** %3, align 8
  %115 = getelementptr inbounds %struct.bio, %struct.bio* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 8
  %116 = load %struct.btrfs_bio*, %struct.btrfs_bio** %5, align 8
  %117 = getelementptr inbounds %struct.btrfs_bio, %struct.btrfs_bio* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = inttoptr i64 %118 to %struct.block_device*
  %120 = load %struct.bio*, %struct.bio** %3, align 8
  %121 = getelementptr inbounds %struct.bio, %struct.bio* %120, i32 0, i32 2
  store %struct.block_device* %119, %struct.block_device** %121, align 8
  %122 = load %struct.btrfs_bio*, %struct.btrfs_bio** %5, align 8
  %123 = getelementptr inbounds %struct.btrfs_bio, %struct.btrfs_bio* %122, i32 0, i32 2
  %124 = call i64 @atomic_read(i32* %123)
  %125 = load %struct.btrfs_bio*, %struct.btrfs_bio** %5, align 8
  %126 = getelementptr inbounds %struct.btrfs_bio, %struct.btrfs_bio* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp sgt i64 %124, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %105
  %130 = load i32, i32* @EIO, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %4, align 4
  br label %137

132:                                              ; preds = %105
  %133 = load i32, i32* @BIO_UPTODATE, align 4
  %134 = load %struct.bio*, %struct.bio** %3, align 8
  %135 = getelementptr inbounds %struct.bio, %struct.bio* %134, i32 0, i32 1
  %136 = call i32 @set_bit(i32 %133, i32* %135)
  store i32 0, i32* %4, align 4
  br label %137

137:                                              ; preds = %132, %129
  %138 = load %struct.btrfs_bio*, %struct.btrfs_bio** %5, align 8
  %139 = call i32 @kfree(%struct.btrfs_bio* %138)
  %140 = load %struct.bio*, %struct.bio** %3, align 8
  %141 = load i32, i32* %4, align 4
  %142 = call i32 @bio_endio(%struct.bio* %140, i32 %141)
  br label %150

143:                                              ; preds = %91
  %144 = load i32, i32* %6, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = load %struct.bio*, %struct.bio** %3, align 8
  %148 = call i32 @bio_put(%struct.bio* %147)
  br label %149

149:                                              ; preds = %146, %143
  br label %150

150:                                              ; preds = %149, %137
  ret void
}

declare dso_local %struct.btrfs_bio* @extract_bbio_from_bio_private(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @extract_stripe_index_from_bio_private(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @btrfs_dev_stat_inc(%struct.btrfs_device*, i32) #1

declare dso_local i32 @btrfs_dev_stat_print_on_error(%struct.btrfs_device*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @kfree(%struct.btrfs_bio*) #1

declare dso_local i32 @bio_endio(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
