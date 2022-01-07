; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_xattr.c_ext4_xattr_list_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_xattr.c_ext4_xattr_list_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_xattr_entry = type { i32, i32, i32 }
%struct.xattr_handler = type { i64 (%struct.inode.0*, i8*, i64, i32, i32)* }
%struct.inode.0 = type opaque

@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ext4_xattr_entry*, i8*, i64)* @ext4_xattr_list_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_xattr_list_entries(%struct.inode* %0, %struct.ext4_xattr_entry* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ext4_xattr_entry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.xattr_handler*, align 8
  %12 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.ext4_xattr_entry* %1, %struct.ext4_xattr_entry** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  store i64 %13, i64* %10, align 8
  br label %14

14:                                               ; preds = %59, %4
  %15 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %7, align 8
  %16 = call i32 @IS_LAST_ENTRY(%struct.ext4_xattr_entry* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %62

19:                                               ; preds = %14
  %20 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %7, align 8
  %21 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.xattr_handler* @ext4_xattr_handler(i32 %22)
  store %struct.xattr_handler* %23, %struct.xattr_handler** %11, align 8
  %24 = load %struct.xattr_handler*, %struct.xattr_handler** %11, align 8
  %25 = icmp ne %struct.xattr_handler* %24, null
  br i1 %25, label %26, label %58

26:                                               ; preds = %19
  %27 = load %struct.xattr_handler*, %struct.xattr_handler** %11, align 8
  %28 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %27, i32 0, i32 0
  %29 = load i64 (%struct.inode.0*, i8*, i64, i32, i32)*, i64 (%struct.inode.0*, i8*, i64, i32, i32)** %28, align 8
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = bitcast %struct.inode* %30 to %struct.inode.0*
  %32 = load i8*, i8** %8, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %7, align 8
  %35 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %7, align 8
  %38 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 %29(%struct.inode.0* %31, i8* %32, i64 %33, i32 %36, i32 %39)
  store i64 %40, i64* %12, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %26
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* %10, align 8
  %46 = icmp ugt i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @ERANGE, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %67

50:                                               ; preds = %43
  %51 = load i64, i64* %12, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 %51
  store i8* %53, i8** %8, align 8
  br label %54

54:                                               ; preds = %50, %26
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* %10, align 8
  %57 = sub i64 %56, %55
  store i64 %57, i64* %10, align 8
  br label %58

58:                                               ; preds = %54, %19
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %7, align 8
  %61 = call %struct.ext4_xattr_entry* @EXT4_XATTR_NEXT(%struct.ext4_xattr_entry* %60)
  store %struct.ext4_xattr_entry* %61, %struct.ext4_xattr_entry** %7, align 8
  br label %14

62:                                               ; preds = %14
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %10, align 8
  %65 = sub i64 %63, %64
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %62, %47
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @IS_LAST_ENTRY(%struct.ext4_xattr_entry*) #1

declare dso_local %struct.xattr_handler* @ext4_xattr_handler(i32) #1

declare dso_local %struct.ext4_xattr_entry* @EXT4_XATTR_NEXT(%struct.ext4_xattr_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
