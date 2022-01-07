; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt.c_unpack_lsave.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt.c_unpack_lsave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i32*, i32, i32 }

@UBIFS_LPT_CRC_BYTES = common dso_local global i32 0, align 4
@UBIFS_LPT_LSAVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i8*)* @unpack_lsave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unpack_lsave(%struct.ubifs_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* @UBIFS_LPT_CRC_BYTES, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr i8, i8* %11, i64 %13
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %16 = load i32, i32* @UBIFS_LPT_LSAVE, align 4
  %17 = call i32 @check_lpt_type(i32** %6, i32* %8, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %3, align 4
  br label %66

22:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %56, %22
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %26 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %59

29:                                               ; preds = %23
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %31 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ubifs_unpack_bits(i32** %6, i32* %8, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %36 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %42 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp sge i32 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39, %29
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %66

48:                                               ; preds = %39
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %51 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  br label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %23

59:                                               ; preds = %23
  %60 = load i8*, i8** %5, align 8
  %61 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %62 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @check_lpt_crc(i8* %60, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %59, %45, %20
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @check_lpt_type(i32**, i32*, i32) #1

declare dso_local i32 @ubifs_unpack_bits(i32**, i32*, i32) #1

declare dso_local i32 @check_lpt_crc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
