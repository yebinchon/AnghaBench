; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_xattr.c_ext4_xattr_shift_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_xattr.c_ext4_xattr_shift_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_xattr_entry = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ext4_xattr_entry*, i32, i8*, i8*, i64, i32)* @ext4_xattr_shift_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_xattr_shift_entries(%struct.ext4_xattr_entry* %0, i32 %1, i8* %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.ext4_xattr_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ext4_xattr_entry*, align 8
  %14 = alloca i32, align 4
  store %struct.ext4_xattr_entry* %0, %struct.ext4_xattr_entry** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %7, align 8
  store %struct.ext4_xattr_entry* %15, %struct.ext4_xattr_entry** %13, align 8
  br label %16

16:                                               ; preds = %53, %6
  %17 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %13, align 8
  %18 = call i32 @IS_LAST_ENTRY(%struct.ext4_xattr_entry* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %56

21:                                               ; preds = %16
  %22 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %13, align 8
  %23 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %52, label %26

26:                                               ; preds = %21
  %27 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %13, align 8
  %28 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %26
  %32 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %13, align 8
  %33 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @le16_to_cpu(i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %35, %36
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %13, align 8
  %40 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @le32_to_cpu(i64 %41)
  %43 = add nsw i32 %38, %42
  %44 = load i32, i32* %12, align 4
  %45 = icmp sgt i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @BUG_ON(i32 %46)
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @cpu_to_le16(i32 %48)
  %50 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %13, align 8
  %51 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %31, %26, %21
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %13, align 8
  %55 = call %struct.ext4_xattr_entry* @EXT4_XATTR_NEXT(%struct.ext4_xattr_entry* %54)
  store %struct.ext4_xattr_entry* %55, %struct.ext4_xattr_entry** %13, align 8
  br label %16

56:                                               ; preds = %16
  %57 = load i8*, i8** %9, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load i64, i64* %11, align 8
  %60 = call i32 @memmove(i8* %57, i8* %58, i64 %59)
  ret void
}

declare dso_local i32 @IS_LAST_ENTRY(%struct.ext4_xattr_entry*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local %struct.ext4_xattr_entry* @EXT4_XATTR_NEXT(%struct.ext4_xattr_entry*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
