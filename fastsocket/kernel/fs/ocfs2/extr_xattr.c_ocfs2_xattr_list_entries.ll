; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_list_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_list_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_xattr_header = type { %struct.ocfs2_xattr_entry*, i32 }
%struct.ocfs2_xattr_entry = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_xattr_header*, i8*, i64)* @ocfs2_xattr_list_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_list_entries(%struct.inode* %0, %struct.ocfs2_xattr_header* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ocfs2_xattr_header*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.ocfs2_xattr_entry*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.ocfs2_xattr_header* %1, %struct.ocfs2_xattr_header** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %60, %4
  %18 = load i32, i32* %11, align 4
  %19 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %7, align 8
  %20 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @le16_to_cpu(i32 %21)
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %63

24:                                               ; preds = %17
  %25 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %7, align 8
  %26 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %25, i32 0, i32 0
  %27 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %27, i64 %29
  store %struct.ocfs2_xattr_entry* %30, %struct.ocfs2_xattr_entry** %16, align 8
  %31 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %16, align 8
  %32 = call i32 @ocfs2_xattr_get_type(%struct.ocfs2_xattr_entry* %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call i8* @ocfs2_xattr_prefix(i32 %33)
  store i8* %34, i8** %14, align 8
  %35 = load i8*, i8** %14, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %59

37:                                               ; preds = %24
  %38 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %7, align 8
  %39 = bitcast %struct.ocfs2_xattr_header* %38 to i8*
  %40 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %16, align 8
  %41 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le16_to_cpu(i32 %42)
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %39, i64 %44
  store i8* %45, i8** %15, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = load i8*, i8** %15, align 8
  %50 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %16, align 8
  %51 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ocfs2_xattr_list_entry(i8* %46, i64 %47, i64* %10, i8* %48, i8* %49, i32 %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %37
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %5, align 4
  br label %66

58:                                               ; preds = %37
  br label %59

59:                                               ; preds = %58, %24
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %17

63:                                               ; preds = %17
  %64 = load i64, i64* %10, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %63, %56
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_xattr_get_type(%struct.ocfs2_xattr_entry*) #1

declare dso_local i8* @ocfs2_xattr_prefix(i32) #1

declare dso_local i32 @ocfs2_xattr_list_entry(i8*, i64, i64*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
