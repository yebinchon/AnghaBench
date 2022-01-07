; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_xattr.c_ext4_xattr_hash_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_xattr.c_ext4_xattr_hash_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_xattr_header = type { i32 }
%struct.ext4_xattr_entry = type { i8*, i32, i64, i64, i32, i32 }

@NAME_HASH_SHIFT = common dso_local global i32 0, align 4
@EXT4_XATTR_ROUND = common dso_local global i32 0, align 4
@EXT4_XATTR_PAD_BITS = common dso_local global i32 0, align 4
@VALUE_HASH_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ext4_xattr_header*, %struct.ext4_xattr_entry*)* @ext4_xattr_hash_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_xattr_hash_entry(%struct.ext4_xattr_header* %0, %struct.ext4_xattr_entry* %1) #0 {
  %3 = alloca %struct.ext4_xattr_header*, align 8
  %4 = alloca %struct.ext4_xattr_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.ext4_xattr_header* %0, %struct.ext4_xattr_header** %3, align 8
  store %struct.ext4_xattr_entry* %1, %struct.ext4_xattr_entry** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %4, align 8
  %10 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %34, %2
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %4, align 8
  %15 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @NAME_HASH_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @NAME_HASH_SHIFT, align 4
  %24 = sext i32 %23 to i64
  %25 = sub i64 32, %24
  %26 = trunc i64 %25 to i32
  %27 = ashr i32 %22, %26
  %28 = xor i32 %21, %27
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %6, align 8
  %31 = load i8, i8* %29, align 1
  %32 = sext i8 %31 to i32
  %33 = xor i32 %28, %32
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %18
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %12

37:                                               ; preds = %12
  %38 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %4, align 8
  %39 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %89

42:                                               ; preds = %37
  %43 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %4, align 8
  %44 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %89

47:                                               ; preds = %42
  %48 = load %struct.ext4_xattr_header*, %struct.ext4_xattr_header** %3, align 8
  %49 = bitcast %struct.ext4_xattr_header* %48 to i8*
  %50 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %4, align 8
  %51 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le16_to_cpu(i32 %52)
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %49, i64 %54
  %56 = bitcast i8* %55 to i32*
  store i32* %56, i32** %8, align 8
  %57 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %4, align 8
  %58 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @le32_to_cpu(i64 %59)
  %61 = load i32, i32* @EXT4_XATTR_ROUND, align 4
  %62 = add nsw i32 %60, %61
  %63 = load i32, i32* @EXT4_XATTR_PAD_BITS, align 4
  %64 = ashr i32 %62, %63
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %85, %47
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %88

68:                                               ; preds = %65
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @VALUE_HASH_SHIFT, align 4
  %71 = shl i32 %69, %70
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @VALUE_HASH_SHIFT, align 4
  %74 = sext i32 %73 to i64
  %75 = sub i64 32, %74
  %76 = trunc i64 %75 to i32
  %77 = ashr i32 %72, %76
  %78 = xor i32 %71, %77
  %79 = load i32*, i32** %8, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %8, align 8
  %81 = load i32, i32* %79, align 4
  %82 = sext i32 %81 to i64
  %83 = call i32 @le32_to_cpu(i64 %82)
  %84 = xor i32 %78, %83
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %68
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %7, align 4
  br label %65

88:                                               ; preds = %65
  br label %89

89:                                               ; preds = %88, %42, %37
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @cpu_to_le32(i32 %90)
  %92 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %4, align 8
  %93 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 8
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
