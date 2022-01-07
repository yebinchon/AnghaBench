; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt.c_ubifs_pack_pnode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt.c_ubifs_pack_pnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i64 }
%struct.ubifs_pnode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@UBIFS_LPT_CRC_BYTES = common dso_local global i32 0, align 4
@UBIFS_LPT_PNODE = common dso_local global i32 0, align 4
@UBIFS_LPT_TYPE_BITS = common dso_local global i32 0, align 4
@UBIFS_LPT_FANOUT = common dso_local global i32 0, align 4
@LPROPS_INDEX = common dso_local global i32 0, align 4
@UBIFS_LPT_CRC_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubifs_pack_pnode(%struct.ubifs_info* %0, i8* %1, %struct.ubifs_pnode* %2) #0 {
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ubifs_pnode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ubifs_pnode* %2, %struct.ubifs_pnode** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* @UBIFS_LPT_CRC_BYTES, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr i8, i8* %11, i64 %13
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* @UBIFS_LPT_PNODE, align 4
  %17 = load i32, i32* @UBIFS_LPT_TYPE_BITS, align 4
  %18 = call i32 @pack_bits(i32** %7, i32* %9, i32 %16, i32 %17)
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %20 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %3
  %24 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %6, align 8
  %25 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %28 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @pack_bits(i32** %7, i32* %9, i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %23, %3
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %79, %31
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %82

36:                                               ; preds = %32
  %37 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %6, align 8
  %38 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 3
  %46 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %47 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @pack_bits(i32** %7, i32* %9, i32 %45, i32 %48)
  %50 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %6, align 8
  %51 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 3
  %59 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %60 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @pack_bits(i32** %7, i32* %9, i32 %58, i32 %61)
  %63 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %6, align 8
  %64 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @LPROPS_INDEX, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %36
  %75 = call i32 @pack_bits(i32** %7, i32* %9, i32 1, i32 1)
  br label %78

76:                                               ; preds = %36
  %77 = call i32 @pack_bits(i32** %7, i32* %9, i32 0, i32 1)
  br label %78

78:                                               ; preds = %76, %74
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %32

82:                                               ; preds = %32
  %83 = load i8*, i8** %5, align 8
  %84 = load i32, i32* @UBIFS_LPT_CRC_BYTES, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr i8, i8* %83, i64 %85
  %87 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %88 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @UBIFS_LPT_CRC_BYTES, align 4
  %91 = sub nsw i32 %89, %90
  %92 = call i32 @crc16(i32 -1, i8* %86, i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load i8*, i8** %5, align 8
  %94 = bitcast i8* %93 to i32*
  store i32* %94, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @UBIFS_LPT_CRC_BITS, align 4
  %97 = call i32 @pack_bits(i32** %7, i32* %9, i32 %95, i32 %96)
  ret void
}

declare dso_local i32 @pack_bits(i32**, i32*, i32, i32) #1

declare dso_local i32 @crc16(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
