; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt.c_unpack_pnode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt.c_unpack_pnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i64 }
%struct.ubifs_pnode = type { %struct.ubifs_lprops*, i8* }
%struct.ubifs_lprops = type { i32, i32, i32 }

@UBIFS_LPT_CRC_BYTES = common dso_local global i32 0, align 4
@UBIFS_LPT_PNODE = common dso_local global i32 0, align 4
@UBIFS_LPT_FANOUT = common dso_local global i32 0, align 4
@LPROPS_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i8*, %struct.ubifs_pnode*)* @unpack_pnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unpack_pnode(%struct.ubifs_info* %0, i8* %1, %struct.ubifs_pnode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ubifs_pnode*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ubifs_lprops*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.ubifs_pnode* %2, %struct.ubifs_pnode** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* @UBIFS_LPT_CRC_BYTES, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr i8, i8* %13, i64 %15
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %8, align 8
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* @UBIFS_LPT_PNODE, align 4
  %19 = call i32 @check_lpt_type(i32** %8, i32* %10, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %4, align 4
  br label %97

24:                                               ; preds = %3
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %26 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %31 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i8* @ubifs_unpack_bits(i32** %8, i32* %10, i32 %32)
  %34 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %7, align 8
  %35 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  br label %36

36:                                               ; preds = %29, %24
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %87, %36
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %90

41:                                               ; preds = %37
  %42 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %7, align 8
  %43 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %42, i32 0, i32 0
  %44 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %44, i64 %46
  store %struct.ubifs_lprops* %47, %struct.ubifs_lprops** %12, align 8
  %48 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %49 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @ubifs_unpack_bits(i32** %8, i32* %10, i32 %50)
  %52 = ptrtoint i8* %51 to i32
  %53 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %12, align 8
  %54 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %12, align 8
  %56 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 3
  store i32 %58, i32* %56, align 4
  %59 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %60 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @ubifs_unpack_bits(i32** %8, i32* %10, i32 %61)
  %63 = ptrtoint i8* %62 to i32
  %64 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %12, align 8
  %65 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %12, align 8
  %67 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 3
  store i32 %69, i32* %67, align 4
  %70 = call i8* @ubifs_unpack_bits(i32** %8, i32* %10, i32 1)
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %41
  %73 = load i32, i32* @LPROPS_INDEX, align 4
  %74 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %12, align 8
  %75 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  br label %79

76:                                               ; preds = %41
  %77 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %12, align 8
  %78 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %77, i32 0, i32 2
  store i32 0, i32* %78, align 4
  br label %79

79:                                               ; preds = %76, %72
  %80 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %81 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %12, align 8
  %82 = call i32 @ubifs_categorize_lprops(%struct.ubifs_info* %80, %struct.ubifs_lprops* %81)
  %83 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %12, align 8
  %84 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %79
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %37

90:                                               ; preds = %37
  %91 = load i8*, i8** %6, align 8
  %92 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %93 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @check_lpt_crc(i8* %91, i32 %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %90, %22
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @check_lpt_type(i32**, i32*, i32) #1

declare dso_local i8* @ubifs_unpack_bits(i32**, i32*, i32) #1

declare dso_local i32 @ubifs_categorize_lprops(%struct.ubifs_info*, %struct.ubifs_lprops*) #1

declare dso_local i32 @check_lpt_crc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
