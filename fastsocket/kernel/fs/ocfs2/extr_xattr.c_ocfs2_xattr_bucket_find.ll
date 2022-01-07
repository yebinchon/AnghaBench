; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_bucket_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_bucket_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.ocfs2_xattr_search = type { %struct.ocfs2_xattr_bucket*, %struct.TYPE_3__*, i32*, i64, i64 }
%struct.ocfs2_xattr_bucket = type { i32 }
%struct.TYPE_3__ = type { i32* }
%struct.ocfs2_xattr_header = type { i64, %struct.ocfs2_xattr_entry*, i64 }
%struct.ocfs2_xattr_entry = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"find xattr %s in bucket %llu, entry = %u\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i8*, i64, i64, i64, i64, %struct.ocfs2_xattr_search*)* @ocfs2_xattr_bucket_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_bucket_find(%struct.inode* %0, i32 %1, i8* %2, i64 %3, i64 %4, i64 %5, i64 %6, %struct.ocfs2_xattr_search* %7) #0 {
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.ocfs2_xattr_search*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ocfs2_xattr_header*, align 8
  %20 = alloca %struct.ocfs2_xattr_entry*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.ocfs2_xattr_bucket*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store %struct.ocfs2_xattr_search* %7, %struct.ocfs2_xattr_search** %16, align 8
  store i32 0, i32* %18, align 4
  store %struct.ocfs2_xattr_header* null, %struct.ocfs2_xattr_header** %19, align 8
  store %struct.ocfs2_xattr_entry* null, %struct.ocfs2_xattr_entry** %20, align 8
  store i32 0, i32* %21, align 4
  %30 = load %struct.inode*, %struct.inode** %9, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = call i32 @ocfs2_blocks_per_xattr_bucket(%struct.TYPE_4__* %32)
  store i32 %33, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i64 0, i64* %29, align 8
  %34 = load %struct.inode*, %struct.inode** %9, align 8
  %35 = call %struct.ocfs2_xattr_bucket* @ocfs2_xattr_bucket_new(%struct.inode* %34)
  store %struct.ocfs2_xattr_bucket* %35, %struct.ocfs2_xattr_bucket** %26, align 8
  %36 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %26, align 8
  %37 = icmp ne %struct.ocfs2_xattr_bucket* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %8
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %17, align 4
  %42 = call i32 @mlog_errno(i32 %41)
  br label %212

43:                                               ; preds = %8
  %44 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %26, align 8
  %45 = load i64, i64* %13, align 8
  %46 = call i32 @ocfs2_read_xattr_bucket(%struct.ocfs2_xattr_bucket* %44, i64 %45)
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %17, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* %17, align 4
  %51 = call i32 @mlog_errno(i32 %50)
  br label %212

52:                                               ; preds = %43
  %53 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %26, align 8
  %54 = call i8* @bucket_xh(%struct.ocfs2_xattr_bucket* %53)
  %55 = bitcast i8* %54 to %struct.ocfs2_xattr_header*
  store %struct.ocfs2_xattr_header* %55, %struct.ocfs2_xattr_header** %19, align 8
  %56 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %19, align 8
  %57 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @le16_to_cpu(i64 %58)
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %25, align 4
  br label %61

61:                                               ; preds = %131, %100, %52
  %62 = load i32, i32* %23, align 4
  %63 = load i32, i32* %25, align 4
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %147

65:                                               ; preds = %61
  %66 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %26, align 8
  %67 = call i32 @ocfs2_xattr_bucket_relse(%struct.ocfs2_xattr_bucket* %66)
  %68 = load i32, i32* %23, align 4
  %69 = load i32, i32* %25, align 4
  %70 = add nsw i32 %68, %69
  %71 = sdiv i32 %70, 2
  store i32 %71, i32* %24, align 4
  %72 = load i64, i64* %13, align 8
  %73 = load i32, i32* %24, align 4
  %74 = load i32, i32* %22, align 4
  %75 = mul nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %72, %76
  store i64 %77, i64* %28, align 8
  %78 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %26, align 8
  %79 = load i64, i64* %28, align 8
  %80 = call i32 @ocfs2_read_xattr_bucket(%struct.ocfs2_xattr_bucket* %78, i64 %79)
  store i32 %80, i32* %17, align 4
  %81 = load i32, i32* %17, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %65
  %84 = load i32, i32* %17, align 4
  %85 = call i32 @mlog_errno(i32 %84)
  br label %212

86:                                               ; preds = %65
  %87 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %26, align 8
  %88 = call i8* @bucket_xh(%struct.ocfs2_xattr_bucket* %87)
  %89 = bitcast i8* %88 to %struct.ocfs2_xattr_header*
  store %struct.ocfs2_xattr_header* %89, %struct.ocfs2_xattr_header** %19, align 8
  %90 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %19, align 8
  %91 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %90, i32 0, i32 1
  %92 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %91, align 8
  %93 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %92, i64 0
  store %struct.ocfs2_xattr_entry* %93, %struct.ocfs2_xattr_entry** %20, align 8
  %94 = load i64, i64* %12, align 8
  %95 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %20, align 8
  %96 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @le32_to_cpu(i32 %97)
  %99 = icmp slt i64 %94, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %86
  %101 = load i32, i32* %24, align 4
  %102 = sub nsw i32 %101, 1
  store i32 %102, i32* %25, align 4
  br label %61

103:                                              ; preds = %86
  %104 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %19, align 8
  %105 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %103
  %109 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %19, align 8
  %110 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %109, i32 0, i32 1
  %111 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %110, align 8
  %112 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %19, align 8
  %113 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @le16_to_cpu(i64 %114)
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %111, i64 %117
  store %struct.ocfs2_xattr_entry* %118, %struct.ocfs2_xattr_entry** %20, align 8
  br label %119

119:                                              ; preds = %108, %103
  %120 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %20, align 8
  %121 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @le32_to_cpu(i32 %122)
  store i64 %123, i64* %27, align 8
  %124 = load i64, i64* %28, align 8
  store i64 %124, i64* %29, align 8
  %125 = load i64, i64* %12, align 8
  %126 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %20, align 8
  %127 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @le32_to_cpu(i32 %128)
  %130 = icmp sgt i64 %125, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %119
  %132 = load i32, i32* %24, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %23, align 4
  br label %61

134:                                              ; preds = %119
  %135 = load %struct.inode*, %struct.inode** %9, align 8
  %136 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %26, align 8
  %137 = load i32, i32* %10, align 4
  %138 = load i8*, i8** %11, align 8
  %139 = load i64, i64* %12, align 8
  %140 = call i32 @ocfs2_find_xe_in_bucket(%struct.inode* %135, %struct.ocfs2_xattr_bucket* %136, i32 %137, i8* %138, i64 %139, i32* %21, i32* %18)
  store i32 %140, i32* %17, align 4
  %141 = load i32, i32* %17, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %134
  %144 = load i32, i32* %17, align 4
  %145 = call i32 @mlog_errno(i32 %144)
  br label %212

146:                                              ; preds = %134
  br label %147

147:                                              ; preds = %146, %61
  %148 = load i64, i64* %29, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %147
  %151 = load i64, i64* %13, align 8
  store i64 %151, i64* %29, align 8
  br label %152

152:                                              ; preds = %150, %147
  %153 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %16, align 8
  %154 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %153, i32 0, i32 0
  %155 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %154, align 8
  %156 = load i64, i64* %29, align 8
  %157 = call i32 @ocfs2_read_xattr_bucket(%struct.ocfs2_xattr_bucket* %155, i64 %156)
  store i32 %157, i32* %17, align 4
  %158 = load i32, i32* %17, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %152
  %161 = load i32, i32* %17, align 4
  %162 = call i32 @mlog_errno(i32 %161)
  br label %212

163:                                              ; preds = %152
  %164 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %16, align 8
  %165 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %164, i32 0, i32 0
  %166 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %165, align 8
  %167 = call i8* @bucket_xh(%struct.ocfs2_xattr_bucket* %166)
  %168 = bitcast i8* %167 to %struct.TYPE_3__*
  %169 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %16, align 8
  %170 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %169, i32 0, i32 1
  store %struct.TYPE_3__* %168, %struct.TYPE_3__** %170, align 8
  %171 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %16, align 8
  %172 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %171, i32 0, i32 0
  %173 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %172, align 8
  %174 = call i64 @bucket_block(%struct.ocfs2_xattr_bucket* %173, i32 0)
  %175 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %16, align 8
  %176 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %175, i32 0, i32 3
  store i64 %174, i64* %176, align 8
  %177 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %16, align 8
  %178 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.inode*, %struct.inode** %9, align 8
  %181 = getelementptr inbounds %struct.inode, %struct.inode* %180, i32 0, i32 0
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = add nsw i64 %179, %184
  %186 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %16, align 8
  %187 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %186, i32 0, i32 4
  store i64 %185, i64* %187, align 8
  %188 = load i32, i32* %18, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %208

190:                                              ; preds = %163
  %191 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %16, align 8
  %192 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %191, i32 0, i32 1
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %21, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %16, align 8
  %200 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %199, i32 0, i32 2
  store i32* %198, i32** %200, align 8
  %201 = load i8*, i8** %11, align 8
  %202 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %16, align 8
  %203 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %202, i32 0, i32 0
  %204 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %203, align 8
  %205 = call i64 @bucket_blkno(%struct.ocfs2_xattr_bucket* %204)
  %206 = load i32, i32* %21, align 4
  %207 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %201, i64 %205, i32 %206)
  br label %211

208:                                              ; preds = %163
  %209 = load i32, i32* @ENODATA, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %17, align 4
  br label %211

211:                                              ; preds = %208, %190
  br label %212

212:                                              ; preds = %211, %160, %143, %83, %49, %38
  %213 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %26, align 8
  %214 = call i32 @ocfs2_xattr_bucket_free(%struct.ocfs2_xattr_bucket* %213)
  %215 = load i32, i32* %17, align 4
  ret i32 %215
}

declare dso_local i32 @ocfs2_blocks_per_xattr_bucket(%struct.TYPE_4__*) #1

declare dso_local %struct.ocfs2_xattr_bucket* @ocfs2_xattr_bucket_new(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_read_xattr_bucket(%struct.ocfs2_xattr_bucket*, i64) #1

declare dso_local i8* @bucket_xh(%struct.ocfs2_xattr_bucket*) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @ocfs2_xattr_bucket_relse(%struct.ocfs2_xattr_bucket*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_find_xe_in_bucket(%struct.inode*, %struct.ocfs2_xattr_bucket*, i32, i8*, i64, i32*, i32*) #1

declare dso_local i64 @bucket_block(%struct.ocfs2_xattr_bucket*, i32) #1

declare dso_local i32 @mlog(i32, i8*, i8*, i64, i32) #1

declare dso_local i64 @bucket_blkno(%struct.ocfs2_xattr_bucket*) #1

declare dso_local i32 @ocfs2_xattr_bucket_free(%struct.ocfs2_xattr_bucket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
