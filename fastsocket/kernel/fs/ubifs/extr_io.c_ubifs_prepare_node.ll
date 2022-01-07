; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_io.c_ubifs_prepare_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_io.c_ubifs_prepare_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_ch = type { i8*, i64*, i32, i32, i8*, i8* }

@UBIFS_CH_SZ = common dso_local global i32 0, align 4
@UBIFS_NODE_MAGIC = common dso_local global i32 0, align 4
@UBIFS_NO_NODE_GROUP = common dso_local global i32 0, align 4
@UBIFS_CRC32_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubifs_prepare_node(%struct.ubifs_info* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ubifs_ch*, align 8
  %11 = alloca i64, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.ubifs_ch*
  store %struct.ubifs_ch* %13, %struct.ubifs_ch** %10, align 8
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %15 = call i64 @next_sqnum(%struct.ubifs_info* %14)
  store i64 %15, i64* %11, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @UBIFS_CH_SZ, align 4
  %18 = icmp sge i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @ubifs_assert(i32 %19)
  %21 = load i32, i32* @UBIFS_NODE_MAGIC, align 4
  %22 = call i8* @cpu_to_le32(i32 %21)
  %23 = load %struct.ubifs_ch*, %struct.ubifs_ch** %10, align 8
  %24 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %23, i32 0, i32 5
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i8* @cpu_to_le32(i32 %25)
  %27 = load %struct.ubifs_ch*, %struct.ubifs_ch** %10, align 8
  %28 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* @UBIFS_NO_NODE_GROUP, align 4
  %30 = load %struct.ubifs_ch*, %struct.ubifs_ch** %10, align 8
  %31 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @cpu_to_le64(i64 %32)
  %34 = load %struct.ubifs_ch*, %struct.ubifs_ch** %10, align 8
  %35 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.ubifs_ch*, %struct.ubifs_ch** %10, align 8
  %37 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.ubifs_ch*, %struct.ubifs_ch** %10, align 8
  %41 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* @UBIFS_CRC32_INIT, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr i8, i8* %45, i64 8
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 %47, 8
  %49 = call i32 @crc32(i32 %44, i8* %46, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i8* @cpu_to_le32(i32 %50)
  %52 = load %struct.ubifs_ch*, %struct.ubifs_ch** %10, align 8
  %53 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @ALIGN(i32 %57, i32 8)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %61 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ALIGN(i32 %59, i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = sub nsw i32 %63, %64
  store i32 %65, i32* %8, align 4
  %66 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr i8, i8* %67, i64 %69
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @ubifs_pad(%struct.ubifs_info* %66, i8* %70, i32 %71)
  br label %73

73:                                               ; preds = %56, %4
  ret void
}

declare dso_local i64 @next_sqnum(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i32 @crc32(i32, i8*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @ubifs_pad(%struct.ubifs_info*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
