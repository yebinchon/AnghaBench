; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_io.c_ubifs_prep_grp_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_io.c_ubifs_prep_grp_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_ch = type { i8*, i64*, i32, i32, i8*, i8* }

@UBIFS_CH_SZ = common dso_local global i32 0, align 4
@UBIFS_NODE_MAGIC = common dso_local global i32 0, align 4
@UBIFS_LAST_OF_NODE_GROUP = common dso_local global i32 0, align 4
@UBIFS_IN_NODE_GROUP = common dso_local global i32 0, align 4
@UBIFS_CRC32_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubifs_prep_grp_node(%struct.ubifs_info* %0, i8* %1, i32 %2, i32 %3) #0 {
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
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %4
  %32 = load i32, i32* @UBIFS_LAST_OF_NODE_GROUP, align 4
  %33 = load %struct.ubifs_ch*, %struct.ubifs_ch** %10, align 8
  %34 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  br label %39

35:                                               ; preds = %4
  %36 = load i32, i32* @UBIFS_IN_NODE_GROUP, align 4
  %37 = load %struct.ubifs_ch*, %struct.ubifs_ch** %10, align 8
  %38 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %35, %31
  %40 = load i64, i64* %11, align 8
  %41 = call i32 @cpu_to_le64(i64 %40)
  %42 = load %struct.ubifs_ch*, %struct.ubifs_ch** %10, align 8
  %43 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.ubifs_ch*, %struct.ubifs_ch** %10, align 8
  %45 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.ubifs_ch*, %struct.ubifs_ch** %10, align 8
  %49 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* @UBIFS_CRC32_INIT, align 4
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr i8, i8* %53, i64 8
  %55 = load i32, i32* %7, align 4
  %56 = sub nsw i32 %55, 8
  %57 = call i32 @crc32(i32 %52, i8* %54, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i8* @cpu_to_le32(i32 %58)
  %60 = load %struct.ubifs_ch*, %struct.ubifs_ch** %10, align 8
  %61 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  ret void
}

declare dso_local i64 @next_sqnum(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i32 @crc32(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
