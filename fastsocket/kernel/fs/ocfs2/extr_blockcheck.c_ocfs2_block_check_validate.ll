; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_blockcheck.c_ocfs2_block_check_validate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_blockcheck.c_ocfs2_block_check_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_block_check = type { i64, i64 }
%struct.ocfs2_blockcheck_stats = type { i32 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"CRC32 failed: stored: %u, computed %u.  Applying ECC.\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Fixed CRC32 failed: stored: %u, computed %u\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_block_check_validate(i8* %0, i64 %1, %struct.ocfs2_block_check* %2, %struct.ocfs2_blockcheck_stats* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ocfs2_block_check*, align 8
  %8 = alloca %struct.ocfs2_blockcheck_stats*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ocfs2_block_check, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.ocfs2_block_check* %2, %struct.ocfs2_block_check** %7, align 8
  store %struct.ocfs2_blockcheck_stats* %3, %struct.ocfs2_blockcheck_stats** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.ocfs2_blockcheck_stats*, %struct.ocfs2_blockcheck_stats** %8, align 8
  %14 = call i32 @ocfs2_blockcheck_inc_check(%struct.ocfs2_blockcheck_stats* %13)
  %15 = load %struct.ocfs2_block_check*, %struct.ocfs2_block_check** %7, align 8
  %16 = getelementptr inbounds %struct.ocfs2_block_check, %struct.ocfs2_block_check* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @le32_to_cpu(i64 %17)
  %19 = getelementptr inbounds %struct.ocfs2_block_check, %struct.ocfs2_block_check* %10, i32 0, i32 0
  store i64 %18, i64* %19, align 8
  %20 = load %struct.ocfs2_block_check*, %struct.ocfs2_block_check** %7, align 8
  %21 = getelementptr inbounds %struct.ocfs2_block_check, %struct.ocfs2_block_check* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @le16_to_cpu(i64 %22)
  %24 = getelementptr inbounds %struct.ocfs2_block_check, %struct.ocfs2_block_check* %10, i32 0, i32 1
  store i64 %23, i64* %24, align 8
  %25 = load %struct.ocfs2_block_check*, %struct.ocfs2_block_check** %7, align 8
  %26 = call i32 @memset(%struct.ocfs2_block_check* %25, i32 0, i32 16)
  %27 = load i8*, i8** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @crc32_le(i32 -1, i8* %27, i64 %28)
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = getelementptr inbounds %struct.ocfs2_block_check, %struct.ocfs2_block_check* %10, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %4
  br label %75

35:                                               ; preds = %4
  %36 = load %struct.ocfs2_blockcheck_stats*, %struct.ocfs2_blockcheck_stats** %8, align 8
  %37 = call i32 @ocfs2_blockcheck_inc_failure(%struct.ocfs2_blockcheck_stats* %36)
  %38 = load i32, i32* @ML_ERROR, align 4
  %39 = getelementptr inbounds %struct.ocfs2_block_check, %struct.ocfs2_block_check* %10, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i64, i64* %11, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @mlog(i32 %38, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %43)
  %45 = load i8*, i8** %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i64 @ocfs2_hamming_encode_block(i8* %45, i64 %46)
  store i64 %47, i64* %12, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %12, align 8
  %51 = getelementptr inbounds %struct.ocfs2_block_check, %struct.ocfs2_block_check* %10, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = xor i64 %50, %52
  %54 = call i32 @ocfs2_hamming_fix_block(i8* %48, i64 %49, i64 %53)
  %55 = load i8*, i8** %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i64 @crc32_le(i32 -1, i8* %55, i64 %56)
  store i64 %57, i64* %11, align 8
  %58 = load i64, i64* %11, align 8
  %59 = getelementptr inbounds %struct.ocfs2_block_check, %struct.ocfs2_block_check* %10, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %58, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %35
  %63 = load %struct.ocfs2_blockcheck_stats*, %struct.ocfs2_blockcheck_stats** %8, align 8
  %64 = call i32 @ocfs2_blockcheck_inc_recover(%struct.ocfs2_blockcheck_stats* %63)
  br label %75

65:                                               ; preds = %35
  %66 = load i32, i32* @ML_ERROR, align 4
  %67 = getelementptr inbounds %struct.ocfs2_block_check, %struct.ocfs2_block_check* %10, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = load i64, i64* %11, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @mlog(i32 %66, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %71)
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %65, %62, %34
  %76 = getelementptr inbounds %struct.ocfs2_block_check, %struct.ocfs2_block_check* %10, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @cpu_to_le32(i64 %77)
  %79 = load %struct.ocfs2_block_check*, %struct.ocfs2_block_check** %7, align 8
  %80 = getelementptr inbounds %struct.ocfs2_block_check, %struct.ocfs2_block_check* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = getelementptr inbounds %struct.ocfs2_block_check, %struct.ocfs2_block_check* %10, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @cpu_to_le16(i64 %82)
  %84 = load %struct.ocfs2_block_check*, %struct.ocfs2_block_check** %7, align 8
  %85 = getelementptr inbounds %struct.ocfs2_block_check, %struct.ocfs2_block_check* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  %86 = load i32, i32* %9, align 4
  ret i32 %86
}

declare dso_local i32 @ocfs2_blockcheck_inc_check(%struct.ocfs2_blockcheck_stats*) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i64 @le16_to_cpu(i64) #1

declare dso_local i32 @memset(%struct.ocfs2_block_check*, i32, i32) #1

declare dso_local i64 @crc32_le(i32, i8*, i64) #1

declare dso_local i32 @ocfs2_blockcheck_inc_failure(%struct.ocfs2_blockcheck_stats*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32) #1

declare dso_local i64 @ocfs2_hamming_encode_block(i8*, i64) #1

declare dso_local i32 @ocfs2_hamming_fix_block(i8*, i64, i64) #1

declare dso_local i32 @ocfs2_blockcheck_inc_recover(%struct.ocfs2_blockcheck_stats*) #1

declare dso_local i64 @cpu_to_le32(i64) #1

declare dso_local i64 @cpu_to_le16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
