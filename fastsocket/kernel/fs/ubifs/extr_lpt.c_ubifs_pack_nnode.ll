; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt.c_ubifs_pack_nnode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt.c_ubifs_pack_nnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i32, i64, i32, i64 }
%struct.ubifs_nnode = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i64 }

@UBIFS_LPT_CRC_BYTES = common dso_local global i32 0, align 4
@UBIFS_LPT_NNODE = common dso_local global i64 0, align 8
@UBIFS_LPT_TYPE_BITS = common dso_local global i32 0, align 4
@UBIFS_LPT_FANOUT = common dso_local global i32 0, align 4
@UBIFS_LPT_CRC_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubifs_pack_nnode(%struct.ubifs_info* %0, i8* %1, %struct.ubifs_nnode* %2) #0 {
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ubifs_nnode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ubifs_nnode* %2, %struct.ubifs_nnode** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @UBIFS_LPT_CRC_BYTES, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr i8, i8* %12, i64 %14
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %17 = load i64, i64* @UBIFS_LPT_NNODE, align 8
  %18 = load i32, i32* @UBIFS_LPT_TYPE_BITS, align 4
  %19 = call i32 @pack_bits(i32** %7, i32* %9, i64 %17, i32 %18)
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %21 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %3
  %25 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %26 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %29 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @pack_bits(i32** %7, i32* %9, i64 %27, i32 %30)
  br label %32

32:                                               ; preds = %24, %3
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %76, %32
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %79

37:                                               ; preds = %33
  %38 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %39 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %37
  %49 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %50 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %48, %37
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %57 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %55, %58
  %60 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %61 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @pack_bits(i32** %7, i32* %9, i64 %59, i32 %62)
  %64 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %65 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %73 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @pack_bits(i32** %7, i32* %9, i64 %71, i32 %74)
  br label %76

76:                                               ; preds = %53
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %33

79:                                               ; preds = %33
  %80 = load i8*, i8** %5, align 8
  %81 = load i32, i32* @UBIFS_LPT_CRC_BYTES, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr i8, i8* %80, i64 %82
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %85 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @UBIFS_LPT_CRC_BYTES, align 4
  %88 = sub nsw i32 %86, %87
  %89 = call i64 @crc16(i32 -1, i8* %83, i32 %88)
  store i64 %89, i64* %10, align 8
  %90 = load i8*, i8** %5, align 8
  %91 = bitcast i8* %90 to i32*
  store i32* %91, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %92 = load i64, i64* %10, align 8
  %93 = load i32, i32* @UBIFS_LPT_CRC_BITS, align 4
  %94 = call i32 @pack_bits(i32** %7, i32* %9, i64 %92, i32 %93)
  ret void
}

declare dso_local i32 @pack_bits(i32**, i32*, i64, i32) #1

declare dso_local i64 @crc16(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
