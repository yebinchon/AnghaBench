; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_ubifs_tnc_add_nm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_ubifs_tnc_add_nm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qstr = type { i8*, i32 }
%struct.ubifs_info = type { i32, i64 }
%union.ubifs_key = type { i32 }
%struct.ubifs_znode = type { %struct.ubifs_zbranch*, i64 }
%struct.ubifs_zbranch = type { i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [31 x i8] c"LEB %d:%d, name '%.*s', key %s\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"rc returned %d, znode %p, n %d\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__const.ubifs_tnc_add_nm.noname = private unnamed_addr constant %struct.qstr { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i32 0 }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_tnc_add_nm(%struct.ubifs_info* %0, %union.ubifs_key* %1, i32 %2, i32 %3, i32 %4, %struct.qstr* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_info*, align 8
  %9 = alloca %union.ubifs_key*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.qstr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ubifs_znode*, align 8
  %18 = alloca %struct.ubifs_zbranch*, align 8
  %19 = alloca %struct.ubifs_zbranch, align 8
  %20 = alloca %struct.qstr, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %8, align 8
  store %union.ubifs_key* %1, %union.ubifs_key** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.qstr* %5, %struct.qstr** %13, align 8
  store i32 0, i32* %16, align 4
  %21 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %22 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.qstr*, %struct.qstr** %13, align 8
  %27 = getelementptr inbounds %struct.qstr, %struct.qstr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.qstr*, %struct.qstr** %13, align 8
  %30 = getelementptr inbounds %struct.qstr, %struct.qstr* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %union.ubifs_key*, %union.ubifs_key** %9, align 8
  %33 = call i32 @DBGKEY(%union.ubifs_key* %32)
  %34 = call i32 (i8*, i32, ...) @dbg_tnc(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25, i32 %28, i8* %31, i32 %33)
  %35 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %36 = load %union.ubifs_key*, %union.ubifs_key** %9, align 8
  %37 = call i32 @lookup_level0_dirty(%struct.ubifs_info* %35, %union.ubifs_key* %36, %struct.ubifs_znode** %17, i32* %15)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %6
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %16, align 4
  br label %164

42:                                               ; preds = %6
  %43 = load i32, i32* %14, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %119

45:                                               ; preds = %42
  %46 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %47 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %52 = load %union.ubifs_key*, %union.ubifs_key** %9, align 8
  %53 = load %struct.qstr*, %struct.qstr** %13, align 8
  %54 = call i32 @fallible_resolve_collision(%struct.ubifs_info* %51, %union.ubifs_key* %52, %struct.ubifs_znode** %17, i32* %15, %struct.qstr* %53, i32 1)
  store i32 %54, i32* %14, align 4
  br label %60

55:                                               ; preds = %45
  %56 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %57 = load %union.ubifs_key*, %union.ubifs_key** %9, align 8
  %58 = load %struct.qstr*, %struct.qstr** %13, align 8
  %59 = call i32 @resolve_collision(%struct.ubifs_info* %56, %union.ubifs_key* %57, %struct.ubifs_znode** %17, i32* %15, %struct.qstr* %58)
  store i32 %59, i32* %14, align 4
  br label %60

60:                                               ; preds = %55, %50
  %61 = load i32, i32* %14, align 4
  %62 = load %struct.ubifs_znode*, %struct.ubifs_znode** %17, align 8
  %63 = load i32, i32* %15, align 4
  %64 = call i32 (i8*, i32, ...) @dbg_tnc(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %61, %struct.ubifs_znode* %62, i32 %63)
  %65 = load i32, i32* %14, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* %14, align 4
  store i32 %68, i32* %16, align 4
  br label %164

69:                                               ; preds = %60
  %70 = load %struct.ubifs_znode*, %struct.ubifs_znode** %17, align 8
  %71 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %69
  %75 = load %struct.ubifs_znode*, %struct.ubifs_znode** %17, align 8
  %76 = call i32 @ubifs_zn_dirty(%struct.ubifs_znode* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %89, label %78

78:                                               ; preds = %74, %69
  %79 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %80 = load %struct.ubifs_znode*, %struct.ubifs_znode** %17, align 8
  %81 = call %struct.ubifs_znode* @dirty_cow_bottom_up(%struct.ubifs_info* %79, %struct.ubifs_znode* %80)
  store %struct.ubifs_znode* %81, %struct.ubifs_znode** %17, align 8
  %82 = load %struct.ubifs_znode*, %struct.ubifs_znode** %17, align 8
  %83 = call i64 @IS_ERR(%struct.ubifs_znode* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load %struct.ubifs_znode*, %struct.ubifs_znode** %17, align 8
  %87 = call i32 @PTR_ERR(%struct.ubifs_znode* %86)
  store i32 %87, i32* %16, align 4
  br label %164

88:                                               ; preds = %78
  br label %89

89:                                               ; preds = %88, %74
  %90 = load i32, i32* %14, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %118

92:                                               ; preds = %89
  %93 = load %struct.ubifs_znode*, %struct.ubifs_znode** %17, align 8
  %94 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %93, i32 0, i32 0
  %95 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %94, align 8
  %96 = load i32, i32* %15, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %95, i64 %97
  store %struct.ubifs_zbranch* %98, %struct.ubifs_zbranch** %18, align 8
  %99 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %100 = call i32 @lnc_free(%struct.ubifs_zbranch* %99)
  %101 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %102 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %103 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %106 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @ubifs_add_dirt(%struct.ubifs_info* %101, i32 %104, i32 %107)
  store i32 %108, i32* %16, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %111 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* %11, align 4
  %113 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %114 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* %12, align 4
  %116 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %117 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  br label %164

118:                                              ; preds = %89
  br label %119

119:                                              ; preds = %118, %42
  %120 = load i32, i32* %14, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %163, label %122

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %19, i32 0, i32 4
  store i32* null, i32** %123, align 8
  %124 = load i32, i32* %10, align 4
  %125 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %19, i32 0, i32 0
  store i32 %124, i32* %125, align 8
  %126 = load i32, i32* %11, align 4
  %127 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %19, i32 0, i32 2
  store i32 %126, i32* %127, align 8
  %128 = load i32, i32* %12, align 4
  %129 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %19, i32 0, i32 1
  store i32 %128, i32* %129, align 4
  %130 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %131 = load %union.ubifs_key*, %union.ubifs_key** %9, align 8
  %132 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %19, i32 0, i32 3
  %133 = call i32 @key_copy(%struct.ubifs_info* %130, %union.ubifs_key* %131, i32* %132)
  %134 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %135 = load %struct.ubifs_znode*, %struct.ubifs_znode** %17, align 8
  %136 = load i32, i32* %15, align 4
  %137 = add nsw i32 %136, 1
  %138 = call i32 @tnc_insert(%struct.ubifs_info* %134, %struct.ubifs_znode* %135, %struct.ubifs_zbranch* %19, i32 %137)
  store i32 %138, i32* %16, align 4
  %139 = load i32, i32* %16, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %122
  br label %164

142:                                              ; preds = %122
  %143 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %144 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %162

147:                                              ; preds = %142
  %148 = bitcast %struct.qstr* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %148, i8* align 8 bitcast (%struct.qstr* @__const.ubifs_tnc_add_nm.noname to i8*), i64 16, i1 false)
  %149 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %150 = call i32 @dbg_check_tnc(%struct.ubifs_info* %149, i32 0)
  store i32 %150, i32* %16, align 4
  %151 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %152 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %151, i32 0, i32 0
  %153 = call i32 @mutex_unlock(i32* %152)
  %154 = load i32, i32* %16, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %147
  %157 = load i32, i32* %16, align 4
  store i32 %157, i32* %7, align 4
  br label %175

158:                                              ; preds = %147
  %159 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %160 = load %union.ubifs_key*, %union.ubifs_key** %9, align 8
  %161 = call i32 @ubifs_tnc_remove_nm(%struct.ubifs_info* %159, %union.ubifs_key* %160, %struct.qstr* %20)
  store i32 %161, i32* %7, align 4
  br label %175

162:                                              ; preds = %142
  br label %163

163:                                              ; preds = %162, %119
  br label %164

164:                                              ; preds = %163, %141, %92, %85, %67, %40
  %165 = load i32, i32* %16, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %164
  %168 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %169 = call i32 @dbg_check_tnc(%struct.ubifs_info* %168, i32 0)
  store i32 %169, i32* %16, align 4
  br label %170

170:                                              ; preds = %167, %164
  %171 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %172 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %171, i32 0, i32 0
  %173 = call i32 @mutex_unlock(i32* %172)
  %174 = load i32, i32* %16, align 4
  store i32 %174, i32* %7, align 4
  br label %175

175:                                              ; preds = %170, %158, %156
  %176 = load i32, i32* %7, align 4
  ret i32 %176
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dbg_tnc(i8*, i32, ...) #1

declare dso_local i32 @DBGKEY(%union.ubifs_key*) #1

declare dso_local i32 @lookup_level0_dirty(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_znode**, i32*) #1

declare dso_local i32 @fallible_resolve_collision(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_znode**, i32*, %struct.qstr*, i32) #1

declare dso_local i32 @resolve_collision(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_znode**, i32*, %struct.qstr*) #1

declare dso_local i32 @ubifs_zn_dirty(%struct.ubifs_znode*) #1

declare dso_local %struct.ubifs_znode* @dirty_cow_bottom_up(%struct.ubifs_info*, %struct.ubifs_znode*) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_znode*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_znode*) #1

declare dso_local i32 @lnc_free(%struct.ubifs_zbranch*) #1

declare dso_local i32 @ubifs_add_dirt(%struct.ubifs_info*, i32, i32) #1

declare dso_local i32 @key_copy(%struct.ubifs_info*, %union.ubifs_key*, i32*) #1

declare dso_local i32 @tnc_insert(%struct.ubifs_info*, %struct.ubifs_znode*, %struct.ubifs_zbranch*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dbg_check_tnc(%struct.ubifs_info*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ubifs_tnc_remove_nm(%struct.ubifs_info*, %union.ubifs_key*, %struct.qstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
