; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_io.c_ubifs_pad.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_io.c_ubifs_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_ch = type { i8*, i8*, i64, i64*, i32, i32, i8* }
%struct.ubifs_pad_node = type { i8* }

@UBIFS_PAD_NODE_SZ = common dso_local global i32 0, align 4
@UBIFS_NODE_MAGIC = common dso_local global i32 0, align 4
@UBIFS_PAD_NODE = common dso_local global i32 0, align 4
@UBIFS_NO_NODE_GROUP = common dso_local global i32 0, align 4
@UBIFS_CRC32_INIT = common dso_local global i32 0, align 4
@UBIFS_PADDING_BYTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubifs_pad(%struct.ubifs_info* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_ch*, align 8
  %9 = alloca %struct.ubifs_pad_node*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 7
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %12, %3
  %18 = phi i1 [ false, %3 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @ubifs_assert(i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @UBIFS_PAD_NODE_SZ, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %76

24:                                               ; preds = %17
  %25 = load i8*, i8** %5, align 8
  %26 = bitcast i8* %25 to %struct.ubifs_ch*
  store %struct.ubifs_ch* %26, %struct.ubifs_ch** %8, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = bitcast i8* %27 to %struct.ubifs_pad_node*
  store %struct.ubifs_pad_node* %28, %struct.ubifs_pad_node** %9, align 8
  %29 = load i32, i32* @UBIFS_NODE_MAGIC, align 4
  %30 = call i8* @cpu_to_le32(i32 %29)
  %31 = load %struct.ubifs_ch*, %struct.ubifs_ch** %8, align 8
  %32 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %31, i32 0, i32 6
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* @UBIFS_PAD_NODE, align 4
  %34 = load %struct.ubifs_ch*, %struct.ubifs_ch** %8, align 8
  %35 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @UBIFS_NO_NODE_GROUP, align 4
  %37 = load %struct.ubifs_ch*, %struct.ubifs_ch** %8, align 8
  %38 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ubifs_ch*, %struct.ubifs_ch** %8, align 8
  %40 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %39, i32 0, i32 3
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.ubifs_ch*, %struct.ubifs_ch** %8, align 8
  %44 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %43, i32 0, i32 3
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.ubifs_ch*, %struct.ubifs_ch** %8, align 8
  %48 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* @UBIFS_PAD_NODE_SZ, align 4
  %50 = call i8* @cpu_to_le32(i32 %49)
  %51 = load %struct.ubifs_ch*, %struct.ubifs_ch** %8, align 8
  %52 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* @UBIFS_PAD_NODE_SZ, align 4
  %54 = load i32, i32* %6, align 4
  %55 = sub nsw i32 %54, %53
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i8* @cpu_to_le32(i32 %56)
  %58 = load %struct.ubifs_pad_node*, %struct.ubifs_pad_node** %9, align 8
  %59 = getelementptr inbounds %struct.ubifs_pad_node, %struct.ubifs_pad_node* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* @UBIFS_CRC32_INIT, align 4
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr i8, i8* %61, i64 8
  %63 = load i32, i32* @UBIFS_PAD_NODE_SZ, align 4
  %64 = sub nsw i32 %63, 8
  %65 = call i32 @crc32(i32 %60, i8* %62, i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i8* @cpu_to_le32(i32 %66)
  %68 = load %struct.ubifs_ch*, %struct.ubifs_ch** %8, align 8
  %69 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = load i32, i32* @UBIFS_PAD_NODE_SZ, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr i8, i8* %70, i64 %72
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @memset(i8* %73, i32 0, i32 %74)
  br label %85

76:                                               ; preds = %17
  %77 = load i32, i32* %6, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i8*, i8** %5, align 8
  %81 = load i32, i32* @UBIFS_PADDING_BYTE, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @memset(i8* %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %79, %76
  br label %85

85:                                               ; preds = %84, %24
  ret void
}

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @crc32(i32, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
