; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_xattr.c_create_xattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_xattr.c_create_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.inode = type { i32, i32, i32, i32*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.qstr = type { i64 }
%struct.ubifs_inode = type { i32, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.ubifs_budget_req = type { i32, i32, i32, i32, i32 }

@MAX_XATTRS_PER_INODE = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@XATTR_LIST_MAX = common dso_local global i64 0, align 8
@S_IFREG = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@none_address_operations = common dso_local global i32 0, align 4
@none_inode_operations = common dso_local global i32 0, align 4
@none_file_operations = common dso_local global i32 0, align 4
@S_SYNC = common dso_local global i32 0, align 4
@S_NOATIME = common dso_local global i32 0, align 4
@S_NOCMTIME = common dso_local global i32 0, align 4
@S_NOQUOTA = common dso_local global i32 0, align 4
@UBIFS_XATTR_FL = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.inode*, %struct.qstr*, i8*, i32)* @create_xattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_xattr(%struct.ubifs_info* %0, %struct.inode* %1, %struct.qstr* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_info*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.qstr*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.ubifs_inode*, align 8
  %15 = alloca %struct.ubifs_inode*, align 8
  %16 = alloca %struct.ubifs_budget_req, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.qstr* %2, %struct.qstr** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.inode*, %struct.inode** %8, align 8
  %18 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %17)
  store %struct.ubifs_inode* %18, %struct.ubifs_inode** %15, align 8
  %19 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %16, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %16, i32 0, i32 1
  store i32 1, i32* %20, align 4
  %21 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %16, i32 0, i32 2
  store i32 1, i32* %21, align 4
  %22 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %16, i32 0, i32 3
  %23 = load %struct.ubifs_inode*, %struct.ubifs_inode** %15, align 8
  %24 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ALIGN(i32 %25, i32 8)
  store i32 %26, i32* %22, align 4
  %27 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %16, i32 0, i32 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @ALIGN(i32 %28, i32 8)
  store i32 %29, i32* %27, align 4
  %30 = load %struct.ubifs_inode*, %struct.ubifs_inode** %15, align 8
  %31 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MAX_XATTRS_PER_INODE, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %5
  %36 = load i32, i32* @ENOSPC, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %221

38:                                               ; preds = %5
  %39 = load %struct.ubifs_inode*, %struct.ubifs_inode** %15, align 8
  %40 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ubifs_inode*, %struct.ubifs_inode** %15, align 8
  %43 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  %46 = load %struct.qstr*, %struct.qstr** %9, align 8
  %47 = getelementptr inbounds %struct.qstr, %struct.qstr* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = add nsw i64 %49, 1
  %51 = load i64, i64* @XATTR_LIST_MAX, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %38
  %54 = load i32, i32* @ENOSPC, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %221

56:                                               ; preds = %38
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %58 = call i32 @ubifs_budget_space(%struct.ubifs_info* %57, %struct.ubifs_budget_req* %16)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %6, align 4
  br label %221

63:                                               ; preds = %56
  %64 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %65 = load %struct.inode*, %struct.inode** %8, align 8
  %66 = load i32, i32* @S_IFREG, align 4
  %67 = load i32, i32* @S_IRWXUGO, align 4
  %68 = or i32 %66, %67
  %69 = call %struct.inode* @ubifs_new_inode(%struct.ubifs_info* %64, %struct.inode* %65, i32 %68)
  store %struct.inode* %69, %struct.inode** %13, align 8
  %70 = load %struct.inode*, %struct.inode** %13, align 8
  %71 = call i64 @IS_ERR(%struct.inode* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %63
  %74 = load %struct.inode*, %struct.inode** %13, align 8
  %75 = call i32 @PTR_ERR(%struct.inode* %74)
  store i32 %75, i32* %12, align 4
  br label %217

76:                                               ; preds = %63
  %77 = load %struct.inode*, %struct.inode** %13, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 5
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i32* @none_address_operations, i32** %80, align 8
  %81 = load %struct.inode*, %struct.inode** %13, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 4
  store i32* @none_inode_operations, i32** %82, align 8
  %83 = load %struct.inode*, %struct.inode** %13, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 3
  store i32* @none_file_operations, i32** %84, align 8
  %85 = load i32, i32* @S_SYNC, align 4
  %86 = load i32, i32* @S_NOATIME, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @S_NOCMTIME, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @S_NOQUOTA, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.inode*, %struct.inode** %13, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load %struct.inode*, %struct.inode** %13, align 8
  %97 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %96)
  store %struct.ubifs_inode* %97, %struct.ubifs_inode** %14, align 8
  %98 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %99 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %98, i32 0, i32 3
  store i32 1, i32* %99, align 8
  %100 = load i32, i32* @UBIFS_XATTR_FL, align 4
  %101 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %102 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %101, i32 0, i32 8
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @GFP_NOFS, align 4
  %107 = call i32 @kmalloc(i32 %105, i32 %106)
  %108 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %109 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %108, i32 0, i32 7
  store i32 %107, i32* %109, align 8
  %110 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %111 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %76
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %12, align 4
  br label %212

117:                                              ; preds = %76
  %118 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %119 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 8
  %121 = load i8*, i8** %10, align 8
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @memcpy(i32 %120, i8* %121, i32 %122)
  %124 = load i32, i32* %11, align 4
  %125 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %126 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 4
  %127 = load %struct.inode*, %struct.inode** %13, align 8
  %128 = getelementptr inbounds %struct.inode, %struct.inode* %127, i32 0, i32 1
  store i32 %124, i32* %128, align 4
  %129 = load i32, i32* %11, align 4
  %130 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %131 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load %struct.ubifs_inode*, %struct.ubifs_inode** %15, align 8
  %133 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %132, i32 0, i32 5
  %134 = call i32 @mutex_lock(i32* %133)
  %135 = load %struct.inode*, %struct.inode** %8, align 8
  %136 = call i32 @ubifs_current_time(%struct.inode* %135)
  %137 = load %struct.inode*, %struct.inode** %8, align 8
  %138 = getelementptr inbounds %struct.inode, %struct.inode* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  %139 = load %struct.ubifs_inode*, %struct.ubifs_inode** %15, align 8
  %140 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %141, 1
  store i64 %142, i64* %140, align 8
  %143 = load %struct.qstr*, %struct.qstr** %9, align 8
  %144 = getelementptr inbounds %struct.qstr, %struct.qstr* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = call i64 @CALC_DENT_SIZE(i64 %145)
  %147 = load %struct.ubifs_inode*, %struct.ubifs_inode** %15, align 8
  %148 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %150, %146
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %148, align 4
  %153 = load i32, i32* %11, align 4
  %154 = call i64 @CALC_XATTR_BYTES(i32 %153)
  %155 = load %struct.ubifs_inode*, %struct.ubifs_inode** %15, align 8
  %156 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = add nsw i64 %158, %154
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %156, align 4
  %161 = load %struct.qstr*, %struct.qstr** %9, align 8
  %162 = getelementptr inbounds %struct.qstr, %struct.qstr* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.ubifs_inode*, %struct.ubifs_inode** %15, align 8
  %165 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = add nsw i64 %166, %163
  store i64 %167, i64* %165, align 8
  %168 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %169 = load %struct.inode*, %struct.inode** %8, align 8
  %170 = load %struct.qstr*, %struct.qstr** %9, align 8
  %171 = load %struct.inode*, %struct.inode** %13, align 8
  %172 = call i32 @ubifs_jnl_update(%struct.ubifs_info* %168, %struct.inode* %169, %struct.qstr* %170, %struct.inode* %171, i32 0, i32 1)
  store i32 %172, i32* %12, align 4
  %173 = load i32, i32* %12, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %117
  br label %186

176:                                              ; preds = %117
  %177 = load %struct.ubifs_inode*, %struct.ubifs_inode** %15, align 8
  %178 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %177, i32 0, i32 5
  %179 = call i32 @mutex_unlock(i32* %178)
  %180 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %181 = call i32 @ubifs_release_budget(%struct.ubifs_info* %180, %struct.ubifs_budget_req* %16)
  %182 = load %struct.inode*, %struct.inode** %13, align 8
  %183 = call i32 @insert_inode_hash(%struct.inode* %182)
  %184 = load %struct.inode*, %struct.inode** %13, align 8
  %185 = call i32 @iput(%struct.inode* %184)
  store i32 0, i32* %6, align 4
  br label %221

186:                                              ; preds = %175
  %187 = load %struct.ubifs_inode*, %struct.ubifs_inode** %15, align 8
  %188 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = sub nsw i64 %189, 1
  store i64 %190, i64* %188, align 8
  %191 = load %struct.qstr*, %struct.qstr** %9, align 8
  %192 = getelementptr inbounds %struct.qstr, %struct.qstr* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = call i64 @CALC_DENT_SIZE(i64 %193)
  %195 = load %struct.ubifs_inode*, %struct.ubifs_inode** %15, align 8
  %196 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %195, i32 0, i32 6
  %197 = load i32, i32* %196, align 4
  %198 = sext i32 %197 to i64
  %199 = sub nsw i64 %198, %194
  %200 = trunc i64 %199 to i32
  store i32 %200, i32* %196, align 4
  %201 = load i32, i32* %11, align 4
  %202 = call i64 @CALC_XATTR_BYTES(i32 %201)
  %203 = load %struct.ubifs_inode*, %struct.ubifs_inode** %15, align 8
  %204 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %203, i32 0, i32 6
  %205 = load i32, i32* %204, align 4
  %206 = sext i32 %205 to i64
  %207 = sub nsw i64 %206, %202
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %204, align 4
  %209 = load %struct.ubifs_inode*, %struct.ubifs_inode** %15, align 8
  %210 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %209, i32 0, i32 5
  %211 = call i32 @mutex_unlock(i32* %210)
  br label %212

212:                                              ; preds = %186, %114
  %213 = load %struct.inode*, %struct.inode** %13, align 8
  %214 = call i32 @make_bad_inode(%struct.inode* %213)
  %215 = load %struct.inode*, %struct.inode** %13, align 8
  %216 = call i32 @iput(%struct.inode* %215)
  br label %217

217:                                              ; preds = %212, %73
  %218 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %219 = call i32 @ubifs_release_budget(%struct.ubifs_info* %218, %struct.ubifs_budget_req* %16)
  %220 = load i32, i32* %12, align 4
  store i32 %220, i32* %6, align 4
  br label %221

221:                                              ; preds = %217, %176, %61, %53, %35
  %222 = load i32, i32* %6, align 4
  ret i32 %222
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @ubifs_budget_space(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local %struct.inode* @ubifs_new_inode(%struct.ubifs_info*, %struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ubifs_current_time(%struct.inode*) #1

declare dso_local i64 @CALC_DENT_SIZE(i64) #1

declare dso_local i64 @CALC_XATTR_BYTES(i32) #1

declare dso_local i32 @ubifs_jnl_update(%struct.ubifs_info*, %struct.inode*, %struct.qstr*, %struct.inode*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ubifs_release_budget(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @insert_inode_hash(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
