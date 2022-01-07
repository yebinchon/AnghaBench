; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_xattr.c_ext3_xattr_check_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_xattr.c_ext3_xattr_check_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext3_xattr_entry = type { i64, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext3_xattr_entry*, i64)* @ext3_xattr_check_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_xattr_check_entry(%struct.ext3_xattr_entry* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ext3_xattr_entry*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ext3_xattr_entry* %0, %struct.ext3_xattr_entry** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.ext3_xattr_entry*, %struct.ext3_xattr_entry** %4, align 8
  %8 = getelementptr inbounds %struct.ext3_xattr_entry, %struct.ext3_xattr_entry* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @le32_to_cpu(i32 %9)
  store i64 %10, i64* %6, align 8
  %11 = load %struct.ext3_xattr_entry*, %struct.ext3_xattr_entry** %4, align 8
  %12 = getelementptr inbounds %struct.ext3_xattr_entry, %struct.ext3_xattr_entry* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = load %struct.ext3_xattr_entry*, %struct.ext3_xattr_entry** %4, align 8
  %21 = getelementptr inbounds %struct.ext3_xattr_entry, %struct.ext3_xattr_entry* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @le16_to_cpu(i32 %22)
  %24 = load i64, i64* %6, align 8
  %25 = add i64 %23, %24
  %26 = load i64, i64* %5, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %19, %15, %2
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %32

31:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %28
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
