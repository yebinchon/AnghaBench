; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc_misc.c_read_znode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc_misc.c_read_znode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i64, i64, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.ubifs_znode = type { i32, i32, %struct.ubifs_zbranch* }
%struct.ubifs_zbranch = type { i64, i32, i64, %union.ubifs_key, i32* }
%union.ubifs_key = type { i32 }
%struct.ubifs_idx_node = type { i32, i32 }
%struct.ubifs_branch = type { i32, i32, i32, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UBIFS_IDX_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"LEB %d:%d, level %d, %d branch\00", align 1
@UBIFS_MAX_LEVELS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"current fanout %d, branch count %d\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"max levels %d, znode level %d\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"bad branch %d\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"bad key type at slot %d: %s\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"bad target node (type %d) length (%d)\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"have to be %d\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"have to be in range of %d-%d\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"bad key order (keys %d and %d)\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"keys %d and %d are not hashed but equivalent\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"bad indexing node at LEB %d:%d, error %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i32, i32, i32, %struct.ubifs_znode*)* @read_znode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_znode(%struct.ubifs_info* %0, i32 %1, i32 %2, i32 %3, %struct.ubifs_znode* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ubifs_znode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ubifs_idx_node*, align 8
  %17 = alloca %struct.ubifs_branch*, align 8
  %18 = alloca %struct.ubifs_zbranch*, align 8
  %19 = alloca %union.ubifs_key*, align 8
  %20 = alloca %union.ubifs_key*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.ubifs_znode* %4, %struct.ubifs_znode** %11, align 8
  %21 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %22 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @GFP_NOFS, align 4
  %25 = call %struct.ubifs_idx_node* @kmalloc(i32 %23, i32 %24)
  store %struct.ubifs_idx_node* %25, %struct.ubifs_idx_node** %16, align 8
  %26 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %16, align 8
  %27 = icmp ne %struct.ubifs_idx_node* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %5
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %369

31:                                               ; preds = %5
  %32 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %33 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %16, align 8
  %34 = load i32, i32* @UBIFS_IDX_NODE, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @ubifs_read_node(%struct.ubifs_info* %32, %struct.ubifs_idx_node* %33, i32 %34, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %31
  %42 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %16, align 8
  %43 = call i32 @kfree(%struct.ubifs_idx_node* %42)
  %44 = load i32, i32* %13, align 4
  store i32 %44, i32* %6, align 4
  br label %369

45:                                               ; preds = %31
  %46 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %16, align 8
  %47 = getelementptr inbounds %struct.ubifs_idx_node, %struct.ubifs_idx_node* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @le16_to_cpu(i32 %48)
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %52 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %16, align 8
  %54 = getelementptr inbounds %struct.ubifs_idx_node, %struct.ubifs_idx_node* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @le16_to_cpu(i32 %55)
  %57 = ptrtoint i8* %56 to i32
  %58 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %59 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %63 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %66 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dbg_tnc(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61, i32 %64, i32 %67)
  %69 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %70 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %73 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp sgt i32 %71, %74
  br i1 %75, label %82, label %76

76:                                               ; preds = %45
  %77 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %78 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @UBIFS_MAX_LEVELS, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %76, %45
  %83 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %84 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %87 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (i8*, i32, ...) @dbg_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 %88)
  %90 = load i32, i32* @UBIFS_MAX_LEVELS, align 4
  %91 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %92 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i8*, i32, ...) @dbg_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %93)
  store i32 1, i32* %13, align 4
  br label %357

95:                                               ; preds = %76
  store i32 0, i32* %12, align 4
  br label %96

96:                                               ; preds = %298, %95
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %99 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %301

102:                                              ; preds = %96
  %103 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %104 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %16, align 8
  %105 = load i32, i32* %12, align 4
  %106 = call %struct.ubifs_branch* @ubifs_idx_branch(%struct.ubifs_info* %103, %struct.ubifs_idx_node* %104, i32 %105)
  store %struct.ubifs_branch* %106, %struct.ubifs_branch** %17, align 8
  %107 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %108 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %107, i32 0, i32 2
  %109 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %108, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %109, i64 %111
  store %struct.ubifs_zbranch* %112, %struct.ubifs_zbranch** %18, align 8
  %113 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %114 = load %struct.ubifs_branch*, %struct.ubifs_branch** %17, align 8
  %115 = getelementptr inbounds %struct.ubifs_branch, %struct.ubifs_branch* %114, i32 0, i32 3
  %116 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %117 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %116, i32 0, i32 3
  %118 = call i32 @key_read(%struct.ubifs_info* %113, i32* %115, %union.ubifs_key* %117)
  %119 = load %struct.ubifs_branch*, %struct.ubifs_branch** %17, align 8
  %120 = getelementptr inbounds %struct.ubifs_branch, %struct.ubifs_branch* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i8* @le32_to_cpu(i32 %121)
  %123 = ptrtoint i8* %122 to i64
  %124 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %125 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %124, i32 0, i32 0
  store i64 %123, i64* %125, align 8
  %126 = load %struct.ubifs_branch*, %struct.ubifs_branch** %17, align 8
  %127 = getelementptr inbounds %struct.ubifs_branch, %struct.ubifs_branch* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i8* @le32_to_cpu(i32 %128)
  %130 = ptrtoint i8* %129 to i32
  %131 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %132 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 8
  %133 = load %struct.ubifs_branch*, %struct.ubifs_branch** %17, align 8
  %134 = getelementptr inbounds %struct.ubifs_branch, %struct.ubifs_branch* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @le32_to_cpu(i32 %135)
  %137 = ptrtoint i8* %136 to i64
  %138 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %139 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %138, i32 0, i32 2
  store i64 %137, i64* %139, align 8
  %140 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %141 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %140, i32 0, i32 4
  store i32* null, i32** %141, align 8
  %142 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %143 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %146 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp slt i64 %144, %147
  br i1 %148, label %181, label %149

149:                                              ; preds = %102
  %150 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %151 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %154 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = icmp sge i64 %152, %155
  br i1 %156, label %181, label %157

157:                                              ; preds = %149
  %158 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %159 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %181, label %162

162:                                              ; preds = %157
  %163 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %164 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = sext i32 %165 to i64
  %167 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %168 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = add nsw i64 %166, %169
  %171 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %172 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = icmp sgt i64 %170, %173
  br i1 %174, label %181, label %175

175:                                              ; preds = %162
  %176 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %177 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = and i32 %178, 7
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %175, %162, %157, %149, %102
  %182 = load i32, i32* %12, align 4
  %183 = call i32 (i8*, i32, ...) @dbg_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %182)
  store i32 2, i32* %13, align 4
  br label %357

184:                                              ; preds = %175
  %185 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %186 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %187 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %186, i32 0, i32 3
  %188 = call i32 @key_type(%struct.ubifs_info* %185, %union.ubifs_key* %187)
  switch i32 %188, label %190 [
    i32 129, label %189
    i32 131, label %189
    i32 130, label %189
    i32 128, label %189
  ]

189:                                              ; preds = %184, %184, %184, %184
  br label %196

190:                                              ; preds = %184
  %191 = load i32, i32* %12, align 4
  %192 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %193 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %192, i32 0, i32 3
  %194 = call i32 @DBGKEY(%union.ubifs_key* %193)
  %195 = call i32 @dbg_msg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %191, i32 %194)
  store i32 3, i32* %13, align 4
  br label %357

196:                                              ; preds = %189
  %197 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %198 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %196
  br label %298

202:                                              ; preds = %196
  %203 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %204 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %205 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %204, i32 0, i32 3
  %206 = call i32 @key_type(%struct.ubifs_info* %203, %union.ubifs_key* %205)
  store i32 %206, i32* %14, align 4
  %207 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %208 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %207, i32 0, i32 4
  %209 = load %struct.TYPE_2__*, %struct.TYPE_2__** %208, align 8
  %210 = load i32, i32* %14, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %246

216:                                              ; preds = %202
  %217 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %218 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %221 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %220, i32 0, i32 4
  %222 = load %struct.TYPE_2__*, %struct.TYPE_2__** %221, align 8
  %223 = load i32, i32* %14, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %219, %227
  br i1 %228, label %229, label %245

229:                                              ; preds = %216
  %230 = load i32, i32* %14, align 4
  %231 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %232 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %231, i32 0, i32 2
  %233 = load i64, i64* %232, align 8
  %234 = call i32 (i8*, i32, ...) @dbg_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %230, i64 %233)
  %235 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %236 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %235, i32 0, i32 4
  %237 = load %struct.TYPE_2__*, %struct.TYPE_2__** %236, align 8
  %238 = load i32, i32* %14, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = trunc i64 %242 to i32
  %244 = call i32 (i8*, i32, ...) @dbg_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %243)
  store i32 4, i32* %13, align 4
  br label %357

245:                                              ; preds = %216
  br label %297

246:                                              ; preds = %202
  %247 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %248 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %251 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %250, i32 0, i32 4
  %252 = load %struct.TYPE_2__*, %struct.TYPE_2__** %251, align 8
  %253 = load i32, i32* %14, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = sext i32 %257 to i64
  %259 = icmp slt i64 %249, %258
  br i1 %259, label %273, label %260

260:                                              ; preds = %246
  %261 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %262 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %261, i32 0, i32 2
  %263 = load i64, i64* %262, align 8
  %264 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %265 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %264, i32 0, i32 4
  %266 = load %struct.TYPE_2__*, %struct.TYPE_2__** %265, align 8
  %267 = load i32, i32* %14, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = icmp sgt i64 %263, %271
  br i1 %272, label %273, label %296

273:                                              ; preds = %260, %246
  %274 = load i32, i32* %14, align 4
  %275 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %276 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %275, i32 0, i32 2
  %277 = load i64, i64* %276, align 8
  %278 = call i32 (i8*, i32, ...) @dbg_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %274, i64 %277)
  %279 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %280 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %279, i32 0, i32 4
  %281 = load %struct.TYPE_2__*, %struct.TYPE_2__** %280, align 8
  %282 = load i32, i32* %14, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 8
  %287 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %288 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %287, i32 0, i32 4
  %289 = load %struct.TYPE_2__*, %struct.TYPE_2__** %288, align 8
  %290 = load i32, i32* %14, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = call i32 (i8*, i32, ...) @dbg_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %286, i64 %294)
  store i32 5, i32* %13, align 4
  br label %357

296:                                              ; preds = %260
  br label %297

297:                                              ; preds = %296, %245
  br label %298

298:                                              ; preds = %297, %201
  %299 = load i32, i32* %12, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %12, align 4
  br label %96

301:                                              ; preds = %96
  store i32 0, i32* %12, align 4
  br label %302

302:                                              ; preds = %351, %301
  %303 = load i32, i32* %12, align 4
  %304 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %305 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = sub nsw i32 %306, 1
  %308 = icmp slt i32 %303, %307
  br i1 %308, label %309, label %354

309:                                              ; preds = %302
  %310 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %311 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %310, i32 0, i32 2
  %312 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %311, align 8
  %313 = load i32, i32* %12, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %312, i64 %314
  %316 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %315, i32 0, i32 3
  store %union.ubifs_key* %316, %union.ubifs_key** %19, align 8
  %317 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %318 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %317, i32 0, i32 2
  %319 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %318, align 8
  %320 = load i32, i32* %12, align 4
  %321 = add nsw i32 %320, 1
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %319, i64 %322
  %324 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %323, i32 0, i32 3
  store %union.ubifs_key* %324, %union.ubifs_key** %20, align 8
  %325 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %326 = load %union.ubifs_key*, %union.ubifs_key** %19, align 8
  %327 = load %union.ubifs_key*, %union.ubifs_key** %20, align 8
  %328 = call i32 @keys_cmp(%struct.ubifs_info* %325, %union.ubifs_key* %326, %union.ubifs_key* %327)
  store i32 %328, i32* %15, align 4
  %329 = load i32, i32* %15, align 4
  %330 = icmp sgt i32 %329, 0
  br i1 %330, label %331, label %336

331:                                              ; preds = %309
  %332 = load i32, i32* %12, align 4
  %333 = load i32, i32* %12, align 4
  %334 = add nsw i32 %333, 1
  %335 = call i32 (i8*, i32, ...) @dbg_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %332, i32 %334)
  store i32 6, i32* %13, align 4
  br label %357

336:                                              ; preds = %309
  %337 = load i32, i32* %15, align 4
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %349

339:                                              ; preds = %336
  %340 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %341 = load %union.ubifs_key*, %union.ubifs_key** %19, align 8
  %342 = call i32 @is_hash_key(%struct.ubifs_info* %340, %union.ubifs_key* %341)
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %349, label %344

344:                                              ; preds = %339
  %345 = load i32, i32* %12, align 4
  %346 = load i32, i32* %12, align 4
  %347 = add nsw i32 %346, 1
  %348 = call i32 (i8*, i32, ...) @dbg_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 %345, i32 %347)
  store i32 7, i32* %13, align 4
  br label %357

349:                                              ; preds = %339, %336
  br label %350

350:                                              ; preds = %349
  br label %351

351:                                              ; preds = %350
  %352 = load i32, i32* %12, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %12, align 4
  br label %302

354:                                              ; preds = %302
  %355 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %16, align 8
  %356 = call i32 @kfree(%struct.ubifs_idx_node* %355)
  store i32 0, i32* %6, align 4
  br label %369

357:                                              ; preds = %344, %331, %273, %229, %190, %181, %82
  %358 = load i32, i32* %8, align 4
  %359 = load i32, i32* %9, align 4
  %360 = load i32, i32* %13, align 4
  %361 = call i32 @ubifs_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i32 %358, i32 %359, i32 %360)
  %362 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %363 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %16, align 8
  %364 = call i32 @dbg_dump_node(%struct.ubifs_info* %362, %struct.ubifs_idx_node* %363)
  %365 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %16, align 8
  %366 = call i32 @kfree(%struct.ubifs_idx_node* %365)
  %367 = load i32, i32* @EINVAL, align 4
  %368 = sub nsw i32 0, %367
  store i32 %368, i32* %6, align 4
  br label %369

369:                                              ; preds = %357, %354, %41, %28
  %370 = load i32, i32* %6, align 4
  ret i32 %370
}

declare dso_local %struct.ubifs_idx_node* @kmalloc(i32, i32) #1

declare dso_local i32 @ubifs_read_node(%struct.ubifs_info*, %struct.ubifs_idx_node*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.ubifs_idx_node*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @dbg_tnc(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dbg_err(i8*, i32, ...) #1

declare dso_local %struct.ubifs_branch* @ubifs_idx_branch(%struct.ubifs_info*, %struct.ubifs_idx_node*, i32) #1

declare dso_local i32 @key_read(%struct.ubifs_info*, i32*, %union.ubifs_key*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @key_type(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i32 @dbg_msg(i8*, i32, i32) #1

declare dso_local i32 @DBGKEY(%union.ubifs_key*) #1

declare dso_local i32 @keys_cmp(%struct.ubifs_info*, %union.ubifs_key*, %union.ubifs_key*) #1

declare dso_local i32 @is_hash_key(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i32 @ubifs_err(i8*, i32, i32, i32) #1

declare dso_local i32 @dbg_dump_node(%struct.ubifs_info*, %struct.ubifs_idx_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
