; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt_commit.c_is_a_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt_commit.c_is_a_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }

@UBIFS_LPT_CRC_BYTES = common dso_local global i32 0, align 4
@UBIFS_LPT_TYPE_BITS = common dso_local global i32 0, align 4
@UBIFS_LPT_NOT_A_NODE = common dso_local global i32 0, align 4
@UBIFS_LPT_CRC_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i32*, i32)* @is_a_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_a_node(%struct.ubifs_info* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* @UBIFS_LPT_CRC_BYTES, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  store i32* %17, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @UBIFS_LPT_CRC_BYTES, align 4
  %20 = load i32, i32* @UBIFS_LPT_TYPE_BITS, align 4
  %21 = add nsw i32 %20, 7
  %22 = sdiv i32 %21, 8
  %23 = add nsw i32 %19, %22
  %24 = icmp slt i32 %18, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %62

26:                                               ; preds = %3
  %27 = load i32, i32* @UBIFS_LPT_TYPE_BITS, align 4
  %28 = call i8* @ubifs_unpack_bits(i32** %8, i32* %9, i32 %27)
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @UBIFS_LPT_NOT_A_NODE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %62

34:                                               ; preds = %26
  %35 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @get_lpt_node_len(%struct.ubifs_info* %35, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %34
  store i32 0, i32* %4, align 4
  br label %62

45:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  %46 = load i32*, i32** %6, align 8
  store i32* %46, i32** %8, align 8
  %47 = load i32, i32* @UBIFS_LPT_CRC_BITS, align 4
  %48 = call i8* @ubifs_unpack_bits(i32** %8, i32* %9, i32 %47)
  store i8* %48, i8** %12, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* @UBIFS_LPT_CRC_BYTES, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @UBIFS_LPT_CRC_BYTES, align 4
  %55 = sub nsw i32 %53, %54
  %56 = call i8* @crc16(i32 -1, i32* %52, i32 %55)
  store i8* %56, i8** %13, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = icmp ne i8* %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %62

61:                                               ; preds = %45
  store i32 1, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %60, %44, %33, %25
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i8* @ubifs_unpack_bits(i32**, i32*, i32) #1

declare dso_local i32 @get_lpt_node_len(%struct.ubifs_info*, i32) #1

declare dso_local i8* @crc16(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
