; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_file.c_read_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_file.c_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32 }
%struct.ubifs_data_node = type { i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%union.ubifs_key = type { i32 }
%struct.TYPE_6__ = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@UBIFS_BLOCK_SIZE = common dso_local global i32 0, align 4
@UBIFS_DATA_NODE_SZ = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"bad data node (block %u, inode %lu)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i32, %struct.ubifs_data_node*)* @read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_block(%struct.inode* %0, i8* %1, i32 %2, %struct.ubifs_data_node* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubifs_data_node*, align 8
  %10 = alloca %struct.ubifs_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %union.ubifs_key, align 4
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ubifs_data_node* %3, %struct.ubifs_data_node** %9, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %19, align 8
  store %struct.ubifs_info* %20, %struct.ubifs_info** %10, align 8
  %21 = load %struct.ubifs_info*, %struct.ubifs_info** %10, align 8
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @data_key_init(%struct.ubifs_info* %21, %union.ubifs_key* %14, i32 %24, i32 %25)
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %10, align 8
  %28 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %9, align 8
  %29 = call i32 @ubifs_tnc_lookup(%struct.ubifs_info* %27, %union.ubifs_key* %14, %struct.ubifs_data_node* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %40 = call i32 @memset(i8* %38, i32 0, i32 %39)
  br label %41

41:                                               ; preds = %37, %32
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %5, align 4
  br label %121

43:                                               ; preds = %4
  %44 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %9, align 8
  %45 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @le64_to_cpu(i32 %47)
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = call %struct.TYPE_6__* @ubifs_inode(%struct.inode* %49)
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %48, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @ubifs_assert(i32 %54)
  %56 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %9, align 8
  %57 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @le32_to_cpu(i32 %58)
  %60 = ptrtoint i8* %59 to i32
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp sle i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %43
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63, %43
  br label %110

68:                                               ; preds = %63
  %69 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %9, align 8
  %70 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @le32_to_cpu(i32 %72)
  %74 = load i8*, i8** @UBIFS_DATA_NODE_SZ, align 8
  %75 = ptrtoint i8* %73 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  store i32 %79, i32* %13, align 4
  %80 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %9, align 8
  %81 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %80, i32 0, i32 1
  %82 = load i32, i32* %15, align 4
  %83 = load i8*, i8** %7, align 8
  %84 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %9, align 8
  %85 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @le16_to_cpu(i32 %86)
  %88 = call i32 @ubifs_decompress(i32* %81, i32 %82, i8* %83, i32* %13, i32 %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %68
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91, %68
  br label %110

96:                                               ; preds = %91
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = load i8*, i8** %7, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr i8, i8* %101, i64 %103
  %105 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %106 = load i32, i32* %12, align 4
  %107 = sub nsw i32 %105, %106
  %108 = call i32 @memset(i8* %104, i32 0, i32 %107)
  br label %109

109:                                              ; preds = %100, %96
  store i32 0, i32* %5, align 4
  br label %121

110:                                              ; preds = %95, %67
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.inode*, %struct.inode** %6, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @ubifs_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %111, i32 %114)
  %116 = load %struct.ubifs_info*, %struct.ubifs_info** %10, align 8
  %117 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %9, align 8
  %118 = call i32 @dbg_dump_node(%struct.ubifs_info* %116, %struct.ubifs_data_node* %117)
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %110, %109, %41
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i32 @data_key_init(%struct.ubifs_info*, %union.ubifs_key*, i32, i32) #1

declare dso_local i32 @ubifs_tnc_lookup(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_data_node*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local %struct.TYPE_6__* @ubifs_inode(%struct.inode*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @ubifs_decompress(i32*, i32, i8*, i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ubifs_err(i8*, i32, i32) #1

declare dso_local i32 @dbg_dump_node(%struct.ubifs_info*, %struct.ubifs_data_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
