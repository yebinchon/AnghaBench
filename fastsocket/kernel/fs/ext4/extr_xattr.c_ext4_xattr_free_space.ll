; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_xattr.c_ext4_xattr_free_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_xattr.c_ext4_xattr_free_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_xattr_entry = type { i32, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ext4_xattr_entry*, i64*, i8*, i32*)* @ext4_xattr_free_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext4_xattr_free_space(%struct.ext4_xattr_entry* %0, i64* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.ext4_xattr_entry*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.ext4_xattr_entry* %0, %struct.ext4_xattr_entry** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  br label %10

10:                                               ; preds = %48, %4
  %11 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %5, align 8
  %12 = call i32 @IS_LAST_ENTRY(%struct.ext4_xattr_entry* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %51

15:                                               ; preds = %10
  %16 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %5, align 8
  %17 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @EXT4_XATTR_LEN(i32 %18)
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %19
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %20, align 4
  %25 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %5, align 8
  %26 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %47, label %29

29:                                               ; preds = %15
  %30 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %5, align 8
  %31 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %5, align 8
  %36 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @le16_to_cpu(i32 %37)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64*, i64** %6, align 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i64, i64* %9, align 8
  %45 = load i64*, i64** %6, align 8
  store i64 %44, i64* %45, align 8
  br label %46

46:                                               ; preds = %43, %34
  br label %47

47:                                               ; preds = %46, %29, %15
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %5, align 8
  %50 = call %struct.ext4_xattr_entry* @EXT4_XATTR_NEXT(%struct.ext4_xattr_entry* %49)
  store %struct.ext4_xattr_entry* %50, %struct.ext4_xattr_entry** %5, align 8
  br label %10

51:                                               ; preds = %10
  %52 = load i64*, i64** %6, align 8
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %5, align 8
  %55 = bitcast %struct.ext4_xattr_entry* %54 to i8*
  %56 = load i8*, i8** %7, align 8
  %57 = ptrtoint i8* %55 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = sub i64 %53, %59
  %61 = sub i64 %60, 4
  ret i64 %61
}

declare dso_local i32 @IS_LAST_ENTRY(%struct.ext4_xattr_entry*) #1

declare dso_local i64 @EXT4_XATTR_LEN(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local %struct.ext4_xattr_entry* @EXT4_XATTR_NEXT(%struct.ext4_xattr_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
