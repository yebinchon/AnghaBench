; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt.c_ubifs_pack_ltab.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt.c_ubifs_pack_ltab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32 }
%struct.ubifs_lpt_lprops = type { i32, i32 }

@UBIFS_LPT_CRC_BYTES = common dso_local global i32 0, align 4
@UBIFS_LPT_LTAB = common dso_local global i32 0, align 4
@UBIFS_LPT_TYPE_BITS = common dso_local global i32 0, align 4
@UBIFS_LPT_CRC_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubifs_pack_ltab(%struct.ubifs_info* %0, i8* %1, %struct.ubifs_lpt_lprops* %2) #0 {
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ubifs_lpt_lprops*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ubifs_lpt_lprops* %2, %struct.ubifs_lpt_lprops** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* @UBIFS_LPT_CRC_BYTES, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr i8, i8* %11, i64 %13
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* @UBIFS_LPT_LTAB, align 4
  %17 = load i32, i32* @UBIFS_LPT_TYPE_BITS, align 4
  %18 = call i32 @pack_bits(i32** %7, i32* %9, i32 %16, i32 %17)
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %46, %3
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %22 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %19
  %26 = load %struct.ubifs_lpt_lprops*, %struct.ubifs_lpt_lprops** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ubifs_lpt_lprops, %struct.ubifs_lpt_lprops* %26, i64 %28
  %30 = getelementptr inbounds %struct.ubifs_lpt_lprops, %struct.ubifs_lpt_lprops* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %33 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pack_bits(i32** %7, i32* %9, i32 %31, i32 %34)
  %36 = load %struct.ubifs_lpt_lprops*, %struct.ubifs_lpt_lprops** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.ubifs_lpt_lprops, %struct.ubifs_lpt_lprops* %36, i64 %38
  %40 = getelementptr inbounds %struct.ubifs_lpt_lprops, %struct.ubifs_lpt_lprops* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %43 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pack_bits(i32** %7, i32* %9, i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %25
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %19

49:                                               ; preds = %19
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* @UBIFS_LPT_CRC_BYTES, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr i8, i8* %50, i64 %52
  %54 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %55 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @UBIFS_LPT_CRC_BYTES, align 4
  %58 = sub nsw i32 %56, %57
  %59 = call i32 @crc16(i32 -1, i8* %53, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i8*, i8** %5, align 8
  %61 = bitcast i8* %60 to i32*
  store i32* %61, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @UBIFS_LPT_CRC_BITS, align 4
  %64 = call i32 @pack_bits(i32** %7, i32* %9, i32 %62, i32 %63)
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
