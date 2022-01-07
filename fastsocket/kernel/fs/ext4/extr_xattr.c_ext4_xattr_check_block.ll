; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_xattr.c_ext4_xattr_check_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_xattr.c_ext4_xattr_check_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i64, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@EXT4_XATTR_MAGIC = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buffer_head*)* @ext4_xattr_check_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_xattr_check_block(%struct.buffer_head* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca i32, align 4
  store %struct.buffer_head* %0, %struct.buffer_head** %3, align 8
  %5 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %6 = call %struct.TYPE_2__* @BHDR(%struct.buffer_head* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i32, i32* @EXT4_XATTR_MAGIC, align 4
  %10 = call i64 @cpu_to_le32(i32 %9)
  %11 = icmp ne i64 %8, %10
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %14 = call %struct.TYPE_2__* @BHDR(%struct.buffer_head* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @cpu_to_le32(i32 1)
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %12, %1
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %34

22:                                               ; preds = %12
  %23 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %24 = call i32 @BFIRST(%struct.buffer_head* %23)
  %25 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %26 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %29 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = call i32 @ext4_xattr_check_names(i32 %24, i64 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %22, %19
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.TYPE_2__* @BHDR(%struct.buffer_head*) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @ext4_xattr_check_names(i32, i64) #1

declare dso_local i32 @BFIRST(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
