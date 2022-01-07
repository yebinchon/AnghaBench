; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_scan.c_ubifs_scan_a_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_scan.c_ubifs_scan_a_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_ch = type { i64, i32, i32 }
%struct.ubifs_pad_node = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"hit empty space\00", align 1
@SCANNED_EMPTY_SPACE = common dso_local global i32 0, align 4
@UBIFS_NODE_MAGIC = common dso_local global i32 0, align 4
@UBIFS_CH_SZ = common dso_local global i32 0, align 4
@SCANNED_GARBAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"scanning %s\00", align 1
@SCANNED_A_CORRUPT_NODE = common dso_local global i32 0, align 4
@UBIFS_PAD_NODE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"bad pad node at LEB %d:%d\00", align 1
@SCANNED_A_BAD_PAD_NODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"bad padding length %d - %d\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"%d bytes padded, offset now %d\00", align 1
@SCANNED_A_NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_scan_a_node(%struct.ubifs_info* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ubifs_ch*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ubifs_pad_node*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to %struct.ubifs_ch*
  store %struct.ubifs_ch* %20, %struct.ubifs_ch** %14, align 8
  %21 = load %struct.ubifs_ch*, %struct.ubifs_ch** %14, align 8
  %22 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le32_to_cpu(i32 %23)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %30

27:                                               ; preds = %6
  %28 = call i32 (i8*, ...) @dbg_scan(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @SCANNED_EMPTY_SPACE, align 4
  store i32 %29, i32* %7, align 4
  br label %133

30:                                               ; preds = %6
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* @UBIFS_NODE_MAGIC, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @scan_padding_bytes(i8* %35, i32 %36)
  store i32 %37, i32* %7, align 4
  br label %133

38:                                               ; preds = %30
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @UBIFS_CH_SZ, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @SCANNED_GARBAGE, align 4
  store i32 %43, i32* %7, align 4
  br label %133

44:                                               ; preds = %38
  %45 = load %struct.ubifs_ch*, %struct.ubifs_ch** %14, align 8
  %46 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @dbg_ntype(i64 %47)
  %49 = call i32 (i8*, ...) @dbg_scan(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %13, align 4
  %55 = call i64 @ubifs_check_node(%struct.ubifs_info* %50, i8* %51, i32 %52, i32 %53, i32 %54, i32 1)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %44
  %58 = load i32, i32* @SCANNED_A_CORRUPT_NODE, align 4
  store i32 %58, i32* %7, align 4
  br label %133

59:                                               ; preds = %44
  %60 = load %struct.ubifs_ch*, %struct.ubifs_ch** %14, align 8
  %61 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @UBIFS_PAD_NODE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %131

65:                                               ; preds = %59
  %66 = load i8*, i8** %9, align 8
  %67 = bitcast i8* %66 to %struct.ubifs_pad_node*
  store %struct.ubifs_pad_node* %67, %struct.ubifs_pad_node** %16, align 8
  %68 = load %struct.ubifs_pad_node*, %struct.ubifs_pad_node** %16, align 8
  %69 = getelementptr inbounds %struct.ubifs_pad_node, %struct.ubifs_pad_node* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le32_to_cpu(i32 %70)
  store i32 %71, i32* %17, align 4
  %72 = load %struct.ubifs_ch*, %struct.ubifs_ch** %14, align 8
  %73 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @le32_to_cpu(i32 %74)
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* %17, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %65
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %18, align 4
  %81 = add nsw i32 %79, %80
  %82 = load i32, i32* %17, align 4
  %83 = add nsw i32 %81, %82
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %85 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp sgt i32 %83, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %78, %65
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @ubifs_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %92, i32 %93)
  %95 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %96 = load %struct.ubifs_pad_node*, %struct.ubifs_pad_node** %16, align 8
  %97 = call i32 @dbg_dump_node(%struct.ubifs_info* %95, %struct.ubifs_pad_node* %96)
  br label %98

98:                                               ; preds = %91, %88
  %99 = load i32, i32* @SCANNED_A_BAD_PAD_NODE, align 4
  store i32 %99, i32* %7, align 4
  br label %133

100:                                              ; preds = %78
  %101 = load i32, i32* %18, align 4
  %102 = load i32, i32* %17, align 4
  %103 = add nsw i32 %101, %102
  %104 = and i32 %103, 7
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %100
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %117, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %18, align 4
  %113 = add nsw i32 %111, %112
  %114 = load i32, i32* %17, align 4
  %115 = add nsw i32 %113, %114
  %116 = call i32 @dbg_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %110, i32 %115)
  br label %117

117:                                              ; preds = %109, %106
  %118 = load i32, i32* @SCANNED_A_BAD_PAD_NODE, align 4
  store i32 %118, i32* %7, align 4
  br label %133

119:                                              ; preds = %100
  %120 = load i32, i32* %17, align 4
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %18, align 4
  %123 = add nsw i32 %121, %122
  %124 = load i32, i32* %17, align 4
  %125 = add nsw i32 %123, %124
  %126 = call i32 @ALIGN(i32 %125, i32 8)
  %127 = call i32 (i8*, ...) @dbg_scan(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %120, i32 %126)
  %128 = load i32, i32* %18, align 4
  %129 = load i32, i32* %17, align 4
  %130 = add nsw i32 %128, %129
  store i32 %130, i32* %7, align 4
  br label %133

131:                                              ; preds = %59
  %132 = load i32, i32* @SCANNED_A_NODE, align 4
  store i32 %132, i32* %7, align 4
  br label %133

133:                                              ; preds = %131, %119, %117, %98, %57, %42, %34, %27
  %134 = load i32, i32* %7, align 4
  ret i32 %134
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dbg_scan(i8*, ...) #1

declare dso_local i32 @scan_padding_bytes(i8*, i32) #1

declare dso_local i32 @dbg_ntype(i64) #1

declare dso_local i64 @ubifs_check_node(%struct.ubifs_info*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ubifs_err(i8*, i32, i32) #1

declare dso_local i32 @dbg_dump_node(%struct.ubifs_info*, %struct.ubifs_pad_node*) #1

declare dso_local i32 @dbg_err(i8*, i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
