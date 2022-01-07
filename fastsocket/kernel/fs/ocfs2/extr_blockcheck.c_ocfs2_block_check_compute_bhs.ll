; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_blockcheck.c_ocfs2_block_check_compute_bhs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_blockcheck.c_ocfs2_block_check_compute_bhs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32, i32 }
%struct.ocfs2_block_check = type { i32, i32 }

@USHORT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_block_check_compute_bhs(%struct.buffer_head** %0, i32 %1, %struct.ocfs2_block_check* %2) #0 {
  %4 = alloca %struct.buffer_head**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_block_check*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.buffer_head** %0, %struct.buffer_head*** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ocfs2_block_check* %2, %struct.ocfs2_block_check** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %85

17:                                               ; preds = %3
  %18 = load %struct.ocfs2_block_check*, %struct.ocfs2_block_check** %6, align 8
  %19 = call i32 @memset(%struct.ocfs2_block_check* %18, i32 0, i32 8)
  store i32 0, i32* %7, align 4
  store i64 -1, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %20

20:                                               ; preds = %68, %17
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %71

24:                                               ; preds = %20
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.buffer_head**, %struct.buffer_head*** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %26, i64 %28
  %30 = load %struct.buffer_head*, %struct.buffer_head** %29, align 8
  %31 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.buffer_head**, %struct.buffer_head*** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %33, i64 %35
  %37 = load %struct.buffer_head*, %struct.buffer_head** %36, align 8
  %38 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @crc32_le(i64 %25, i32 %32, i32 %39)
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.buffer_head**, %struct.buffer_head*** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %42, i64 %44
  %46 = load %struct.buffer_head*, %struct.buffer_head** %45, align 8
  %47 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.buffer_head**, %struct.buffer_head*** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %49, i64 %51
  %53 = load %struct.buffer_head*, %struct.buffer_head** %52, align 8
  %54 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %55, 8
  %57 = load %struct.buffer_head**, %struct.buffer_head*** %4, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %57, i64 %59
  %61 = load %struct.buffer_head*, %struct.buffer_head** %60, align 8
  %62 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %63, 8
  %65 = load i32, i32* %7, align 4
  %66 = mul nsw i32 %64, %65
  %67 = call i64 @ocfs2_hamming_encode(i64 %41, i32 %48, i32 %56, i32 %66)
  store i64 %67, i64* %9, align 8
  br label %68

68:                                               ; preds = %24
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %20

71:                                               ; preds = %20
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* @USHORT_MAX, align 8
  %74 = icmp sgt i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @BUG_ON(i32 %75)
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @cpu_to_le32(i64 %77)
  %79 = load %struct.ocfs2_block_check*, %struct.ocfs2_block_check** %6, align 8
  %80 = getelementptr inbounds %struct.ocfs2_block_check, %struct.ocfs2_block_check* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load i64, i64* %9, align 8
  %82 = call i32 @cpu_to_le16(i64 %81)
  %83 = load %struct.ocfs2_block_check*, %struct.ocfs2_block_check** %6, align 8
  %84 = getelementptr inbounds %struct.ocfs2_block_check, %struct.ocfs2_block_check* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %71, %16
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(%struct.ocfs2_block_check*, i32, i32) #1

declare dso_local i64 @crc32_le(i64, i32, i32) #1

declare dso_local i64 @ocfs2_hamming_encode(i64, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @cpu_to_le16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
