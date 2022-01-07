; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc_commit.c_make_idx_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc_commit.c_make_idx_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.ubifs_idx_node = type { i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ubifs_znode = type { i32, i32, i32, i32, i32, i64, i32, %struct.ubifs_zbranch*, %struct.ubifs_znode* }
%struct.ubifs_zbranch = type { i32, i32, i32, %struct.ubifs_znode*, i32 }
%struct.ubifs_branch = type { i8*, i8*, i8*, i32 }

@UBIFS_IDX_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"bad ref in znode\00", align 1
@COW_ZNODE = common dso_local global i32 0, align 4
@DIRTY_ZNODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.ubifs_idx_node*, %struct.ubifs_znode*, i32, i32, i32)* @make_idx_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_idx_node(%struct.ubifs_info* %0, %struct.ubifs_idx_node* %1, %struct.ubifs_znode* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ubifs_info*, align 8
  %8 = alloca %struct.ubifs_idx_node*, align 8
  %9 = alloca %struct.ubifs_znode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ubifs_znode*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ubifs_branch*, align 8
  %17 = alloca %struct.ubifs_zbranch*, align 8
  %18 = alloca %struct.ubifs_zbranch*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %7, align 8
  store %struct.ubifs_idx_node* %1, %struct.ubifs_idx_node** %8, align 8
  store %struct.ubifs_znode* %2, %struct.ubifs_znode** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = load i32, i32* @UBIFS_IDX_NODE, align 4
  %20 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %8, align 8
  %21 = getelementptr inbounds %struct.ubifs_idx_node, %struct.ubifs_idx_node* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.ubifs_znode*, %struct.ubifs_znode** %9, align 8
  %24 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i8* @cpu_to_le16(i32 %25)
  %27 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %8, align 8
  %28 = getelementptr inbounds %struct.ubifs_idx_node, %struct.ubifs_idx_node* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.ubifs_znode*, %struct.ubifs_znode** %9, align 8
  %30 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @cpu_to_le16(i32 %31)
  %33 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %8, align 8
  %34 = getelementptr inbounds %struct.ubifs_idx_node, %struct.ubifs_idx_node* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  store i32 0, i32* %14, align 4
  br label %35

35:                                               ; preds = %102, %6
  %36 = load i32, i32* %14, align 4
  %37 = load %struct.ubifs_znode*, %struct.ubifs_znode** %9, align 8
  %38 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %105

41:                                               ; preds = %35
  %42 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %43 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %8, align 8
  %44 = load i32, i32* %14, align 4
  %45 = call %struct.ubifs_branch* @ubifs_idx_branch(%struct.ubifs_info* %42, %struct.ubifs_idx_node* %43, i32 %44)
  store %struct.ubifs_branch* %45, %struct.ubifs_branch** %16, align 8
  %46 = load %struct.ubifs_znode*, %struct.ubifs_znode** %9, align 8
  %47 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %46, i32 0, i32 7
  %48 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %47, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %48, i64 %50
  store %struct.ubifs_zbranch* %51, %struct.ubifs_zbranch** %17, align 8
  %52 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %53 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %17, align 8
  %54 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %53, i32 0, i32 4
  %55 = load %struct.ubifs_branch*, %struct.ubifs_branch** %16, align 8
  %56 = getelementptr inbounds %struct.ubifs_branch, %struct.ubifs_branch* %55, i32 0, i32 3
  %57 = call i32 @key_write_idx(%struct.ubifs_info* %52, i32* %54, i32* %56)
  %58 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %17, align 8
  %59 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i8* @cpu_to_le32(i32 %60)
  %62 = load %struct.ubifs_branch*, %struct.ubifs_branch** %16, align 8
  %63 = getelementptr inbounds %struct.ubifs_branch, %struct.ubifs_branch* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  %64 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %17, align 8
  %65 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @cpu_to_le32(i32 %66)
  %68 = load %struct.ubifs_branch*, %struct.ubifs_branch** %16, align 8
  %69 = getelementptr inbounds %struct.ubifs_branch, %struct.ubifs_branch* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %17, align 8
  %71 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i8* @cpu_to_le32(i32 %72)
  %74 = load %struct.ubifs_branch*, %struct.ubifs_branch** %16, align 8
  %75 = getelementptr inbounds %struct.ubifs_branch, %struct.ubifs_branch* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  %76 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %17, align 8
  %77 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %41
  %81 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %17, align 8
  %82 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %101, label %85

85:                                               ; preds = %80, %41
  %86 = call i32 @ubifs_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %87 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %88 = load %struct.ubifs_znode*, %struct.ubifs_znode** %9, align 8
  %89 = call i32 @dbg_dump_znode(%struct.ubifs_info* %87, %struct.ubifs_znode* %88)
  %90 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %17, align 8
  %91 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %90, i32 0, i32 3
  %92 = load %struct.ubifs_znode*, %struct.ubifs_znode** %91, align 8
  %93 = icmp ne %struct.ubifs_znode* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %85
  %95 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %96 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %17, align 8
  %97 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %96, i32 0, i32 3
  %98 = load %struct.ubifs_znode*, %struct.ubifs_znode** %97, align 8
  %99 = call i32 @dbg_dump_znode(%struct.ubifs_info* %95, %struct.ubifs_znode* %98)
  br label %100

100:                                              ; preds = %94, %85
  br label %101

101:                                              ; preds = %100, %80
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %14, align 4
  br label %35

105:                                              ; preds = %35
  %106 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %107 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %8, align 8
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @ubifs_prepare_node(%struct.ubifs_info* %106, %struct.ubifs_idx_node* %107, i32 %108, i32 0)
  %110 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %111 = load %struct.ubifs_znode*, %struct.ubifs_znode** %9, align 8
  %112 = call i32 @insert_old_idx_znode(%struct.ubifs_info* %110, %struct.ubifs_znode* %111)
  store i32 %112, i32* %15, align 4
  %113 = load %struct.ubifs_znode*, %struct.ubifs_znode** %9, align 8
  %114 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %113, i32 0, i32 8
  %115 = load %struct.ubifs_znode*, %struct.ubifs_znode** %114, align 8
  store %struct.ubifs_znode* %115, %struct.ubifs_znode** %13, align 8
  %116 = load %struct.ubifs_znode*, %struct.ubifs_znode** %13, align 8
  %117 = icmp ne %struct.ubifs_znode* %116, null
  br i1 %117, label %118, label %135

118:                                              ; preds = %105
  %119 = load %struct.ubifs_znode*, %struct.ubifs_znode** %13, align 8
  %120 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %119, i32 0, i32 7
  %121 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %120, align 8
  %122 = load %struct.ubifs_znode*, %struct.ubifs_znode** %9, align 8
  %123 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %121, i64 %124
  store %struct.ubifs_zbranch* %125, %struct.ubifs_zbranch** %18, align 8
  %126 = load i32, i32* %10, align 4
  %127 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %128 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load i32, i32* %11, align 4
  %130 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %131 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* %12, align 4
  %133 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %134 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  br label %148

135:                                              ; preds = %105
  %136 = load i32, i32* %10, align 4
  %137 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %138 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  store i32 %136, i32* %139, align 4
  %140 = load i32, i32* %11, align 4
  %141 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %142 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  store i32 %140, i32* %143, align 4
  %144 = load i32, i32* %12, align 4
  %145 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %146 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 2
  store i32 %144, i32* %147, align 4
  br label %148

148:                                              ; preds = %135, %118
  %149 = load i32, i32* %12, align 4
  %150 = call i64 @ALIGN(i32 %149, i32 8)
  %151 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %152 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %154, %150
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %152, align 4
  %157 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %158 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %157, i32 0, i32 0
  %159 = call i32 @atomic_long_dec(i32* %158)
  %160 = load %struct.ubifs_znode*, %struct.ubifs_znode** %9, align 8
  %161 = call i32 @ubifs_zn_dirty(%struct.ubifs_znode* %160)
  %162 = call i32 @ubifs_assert(i32 %161)
  %163 = load i32, i32* @COW_ZNODE, align 4
  %164 = load %struct.ubifs_znode*, %struct.ubifs_znode** %9, align 8
  %165 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %164, i32 0, i32 6
  %166 = call i32 @test_bit(i32 %163, i32* %165)
  %167 = call i32 @ubifs_assert(i32 %166)
  %168 = load i32, i32* @DIRTY_ZNODE, align 4
  %169 = load %struct.ubifs_znode*, %struct.ubifs_znode** %9, align 8
  %170 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %169, i32 0, i32 6
  %171 = call i32 @__clear_bit(i32 %168, i32* %170)
  %172 = load i32, i32* @COW_ZNODE, align 4
  %173 = load %struct.ubifs_znode*, %struct.ubifs_znode** %9, align 8
  %174 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %173, i32 0, i32 6
  %175 = call i32 @__clear_bit(i32 %172, i32* %174)
  %176 = load i32, i32* %15, align 4
  ret i32 %176
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local %struct.ubifs_branch* @ubifs_idx_branch(%struct.ubifs_info*, %struct.ubifs_idx_node*, i32) #1

declare dso_local i32 @key_write_idx(%struct.ubifs_info*, i32*, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ubifs_err(i8*) #1

declare dso_local i32 @dbg_dump_znode(%struct.ubifs_info*, %struct.ubifs_znode*) #1

declare dso_local i32 @ubifs_prepare_node(%struct.ubifs_info*, %struct.ubifs_idx_node*, i32, i32) #1

declare dso_local i32 @insert_old_idx_znode(%struct.ubifs_info*, %struct.ubifs_znode*) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @atomic_long_dec(i32*) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @ubifs_zn_dirty(%struct.ubifs_znode*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @__clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
