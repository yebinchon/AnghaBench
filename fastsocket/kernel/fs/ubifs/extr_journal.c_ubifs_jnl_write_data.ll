; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_journal.c_ubifs_jnl_write_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_journal.c_ubifs_jnl_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.inode = type { i32 }
%union.ubifs_key = type { i32 }
%struct.ubifs_data_node = type { i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ubifs_inode = type { i32, i32 }

@UBIFS_DATA_NODE_SZ = common dso_local global i32 0, align 4
@UBIFS_BLOCK_SIZE = common dso_local global i32 0, align 4
@WORST_COMPR_FACTOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ino %lu, blk %u, len %d, key %s\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UBIFS_DATA_NODE = common dso_local global i32 0, align 4
@UBIFS_COMPR_FL = common dso_local global i32 0, align 4
@UBIFS_COMPR_NONE = common dso_local global i32 0, align 4
@DATAHD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_jnl_write_data(%struct.ubifs_info* %0, %struct.inode* %1, %union.ubifs_key* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_info*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %union.ubifs_key*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ubifs_data_node*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ubifs_inode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %union.ubifs_key* %2, %union.ubifs_key** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load i32, i32* @UBIFS_DATA_NODE_SZ, align 4
  %21 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %22 = load i32, i32* @WORST_COMPR_FACTOR, align 4
  %23 = mul nsw i32 %21, %22
  %24 = add nsw i32 %20, %23
  store i32 %24, i32* %18, align 4
  %25 = load %struct.inode*, %struct.inode** %8, align 8
  %26 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %25)
  store %struct.ubifs_inode* %26, %struct.ubifs_inode** %19, align 8
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %28 = load %union.ubifs_key*, %union.ubifs_key** %9, align 8
  %29 = call i64 @key_inum(%struct.ubifs_info* %27, %union.ubifs_key* %28)
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %31 = load %union.ubifs_key*, %union.ubifs_key** %9, align 8
  %32 = call i32 @key_block(%struct.ubifs_info* %30, %union.ubifs_key* %31)
  %33 = load i32, i32* %11, align 4
  %34 = load %union.ubifs_key*, %union.ubifs_key** %9, align 8
  %35 = call i32 @DBGKEY(%union.ubifs_key* %34)
  %36 = call i32 @dbg_jnl(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %29, i32 %32, i32 %33, i32 %35)
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %39 = icmp sle i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @ubifs_assert(i32 %40)
  %42 = load i32, i32* %18, align 4
  %43 = load i32, i32* @GFP_NOFS, align 4
  %44 = call %struct.ubifs_data_node* @kmalloc(i32 %42, i32 %43)
  store %struct.ubifs_data_node* %44, %struct.ubifs_data_node** %12, align 8
  %45 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %12, align 8
  %46 = icmp ne %struct.ubifs_data_node* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %5
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %157

50:                                               ; preds = %5
  %51 = load i32, i32* @UBIFS_DATA_NODE, align 4
  %52 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %12, align 8
  %53 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  %55 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %56 = load %union.ubifs_key*, %union.ubifs_key** %9, align 8
  %57 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %12, align 8
  %58 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %57, i32 0, i32 3
  %59 = call i32 @key_write(%struct.ubifs_info* %55, %union.ubifs_key* %56, i32* %58)
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @cpu_to_le32(i32 %60)
  %62 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %12, align 8
  %63 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %12, align 8
  %65 = call i32 @zero_data_node_unused(%struct.ubifs_data_node* %64)
  %66 = load %struct.ubifs_inode*, %struct.ubifs_inode** %19, align 8
  %67 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @UBIFS_COMPR_FL, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %50
  %73 = load i32, i32* @UBIFS_COMPR_NONE, align 4
  store i32 %73, i32* %16, align 4
  br label %78

74:                                               ; preds = %50
  %75 = load %struct.ubifs_inode*, %struct.ubifs_inode** %19, align 8
  %76 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %16, align 4
  br label %78

78:                                               ; preds = %74, %72
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* @UBIFS_DATA_NODE_SZ, align 4
  %81 = sub nsw i32 %79, %80
  store i32 %81, i32* %17, align 4
  %82 = load i8*, i8** %10, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %12, align 8
  %85 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %84, i32 0, i32 1
  %86 = call i32 @ubifs_compress(i8* %82, i32 %83, i32* %85, i32* %17, i32* %16)
  %87 = load i32, i32* %17, align 4
  %88 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %89 = icmp sle i32 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @ubifs_assert(i32 %90)
  %92 = load i32, i32* @UBIFS_DATA_NODE_SZ, align 4
  %93 = load i32, i32* %17, align 4
  %94 = add nsw i32 %92, %93
  store i32 %94, i32* %18, align 4
  %95 = load i32, i32* %16, align 4
  %96 = call i32 @cpu_to_le16(i32 %95)
  %97 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %12, align 8
  %98 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %100 = load i64, i64* @DATAHD, align 8
  %101 = load i32, i32* %18, align 4
  %102 = call i32 @make_reservation(%struct.ubifs_info* %99, i64 %100, i32 %101)
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %78
  br label %153

106:                                              ; preds = %78
  %107 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %108 = load i64, i64* @DATAHD, align 8
  %109 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %12, align 8
  %110 = load i32, i32* %18, align 4
  %111 = call i32 @write_node(%struct.ubifs_info* %107, i64 %108, %struct.ubifs_data_node* %109, i32 %110, i32* %14, i32* %15)
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  br label %143

115:                                              ; preds = %106
  %116 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %117 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %116, i32 0, i32 0
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = load i64, i64* @DATAHD, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %123 = load %union.ubifs_key*, %union.ubifs_key** %9, align 8
  %124 = call i64 @key_inum(%struct.ubifs_info* %122, %union.ubifs_key* %123)
  %125 = call i32 @ubifs_wbuf_add_ino_nolock(i32* %121, i64 %124)
  %126 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %127 = load i64, i64* @DATAHD, align 8
  %128 = call i32 @release_head(%struct.ubifs_info* %126, i64 %127)
  %129 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %130 = load %union.ubifs_key*, %union.ubifs_key** %9, align 8
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* %18, align 4
  %134 = call i32 @ubifs_tnc_add(%struct.ubifs_info* %129, %union.ubifs_key* %130, i32 %131, i32 %132, i32 %133)
  store i32 %134, i32* %13, align 4
  %135 = load i32, i32* %13, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %115
  br label %147

138:                                              ; preds = %115
  %139 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %140 = call i32 @finish_reservation(%struct.ubifs_info* %139)
  %141 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %12, align 8
  %142 = call i32 @kfree(%struct.ubifs_data_node* %141)
  store i32 0, i32* %6, align 4
  br label %157

143:                                              ; preds = %114
  %144 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %145 = load i64, i64* @DATAHD, align 8
  %146 = call i32 @release_head(%struct.ubifs_info* %144, i64 %145)
  br label %147

147:                                              ; preds = %143, %137
  %148 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %149 = load i32, i32* %13, align 4
  %150 = call i32 @ubifs_ro_mode(%struct.ubifs_info* %148, i32 %149)
  %151 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %152 = call i32 @finish_reservation(%struct.ubifs_info* %151)
  br label %153

153:                                              ; preds = %147, %105
  %154 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %12, align 8
  %155 = call i32 @kfree(%struct.ubifs_data_node* %154)
  %156 = load i32, i32* %13, align 4
  store i32 %156, i32* %6, align 4
  br label %157

157:                                              ; preds = %153, %138, %47
  %158 = load i32, i32* %6, align 4
  ret i32 %158
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @dbg_jnl(i8*, i64, i32, i32, i32) #1

declare dso_local i64 @key_inum(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i32 @key_block(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i32 @DBGKEY(%union.ubifs_key*) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local %struct.ubifs_data_node* @kmalloc(i32, i32) #1

declare dso_local i32 @key_write(%struct.ubifs_info*, %union.ubifs_key*, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @zero_data_node_unused(%struct.ubifs_data_node*) #1

declare dso_local i32 @ubifs_compress(i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @make_reservation(%struct.ubifs_info*, i64, i32) #1

declare dso_local i32 @write_node(%struct.ubifs_info*, i64, %struct.ubifs_data_node*, i32, i32*, i32*) #1

declare dso_local i32 @ubifs_wbuf_add_ino_nolock(i32*, i64) #1

declare dso_local i32 @release_head(%struct.ubifs_info*, i64) #1

declare dso_local i32 @ubifs_tnc_add(%struct.ubifs_info*, %union.ubifs_key*, i32, i32, i32) #1

declare dso_local i32 @finish_reservation(%struct.ubifs_info*) #1

declare dso_local i32 @kfree(%struct.ubifs_data_node*) #1

declare dso_local i32 @ubifs_ro_mode(%struct.ubifs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
