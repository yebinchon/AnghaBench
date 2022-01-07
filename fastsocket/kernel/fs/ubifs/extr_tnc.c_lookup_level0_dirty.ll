; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_lookup_level0_dirty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_lookup_level0_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { %struct.ubifs_zbranch }
%struct.ubifs_zbranch = type { i32, %struct.ubifs_znode* }
%struct.ubifs_znode = type { i64, i32, i64, %struct.ubifs_zbranch* }
%union.ubifs_key = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"search and dirty key %s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"found %d, lvl %d, n %d\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"found 0, lvl %d, n -1\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"found 1, lvl %d, n %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_znode**, i32*)* @lookup_level0_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_level0_dirty(%struct.ubifs_info* %0, %union.ubifs_key* %1, %struct.ubifs_znode** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca %union.ubifs_key*, align 8
  %8 = alloca %struct.ubifs_znode**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ubifs_znode*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ubifs_zbranch*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store %union.ubifs_key* %1, %union.ubifs_key** %7, align 8
  store %struct.ubifs_znode** %2, %struct.ubifs_znode*** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = call i64 (...) @get_seconds()
  store i64 %15, i64* %13, align 8
  %16 = load %union.ubifs_key*, %union.ubifs_key** %7, align 8
  %17 = call i32 @DBGKEY(%union.ubifs_key* %16)
  %18 = call i32 (i8*, i32, ...) @dbg_tnc(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %20 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %20, i32 0, i32 1
  %22 = load %struct.ubifs_znode*, %struct.ubifs_znode** %21, align 8
  store %struct.ubifs_znode* %22, %struct.ubifs_znode** %12, align 8
  %23 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %24 = icmp ne %struct.ubifs_znode* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %4
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %32 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %31, i32 0, i32 0
  %33 = call %struct.ubifs_znode* @ubifs_load_znode(%struct.ubifs_info* %30, %struct.ubifs_zbranch* %32, %struct.ubifs_znode* null, i32 0)
  store %struct.ubifs_znode* %33, %struct.ubifs_znode** %12, align 8
  %34 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %35 = call i64 @IS_ERR(%struct.ubifs_znode* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %39 = call i32 @PTR_ERR(%struct.ubifs_znode* %38)
  store i32 %39, i32* %5, align 4
  br label %216

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %4
  %42 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %43 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %44 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %43, i32 0, i32 0
  %45 = call %struct.ubifs_znode* @dirty_cow_znode(%struct.ubifs_info* %42, %struct.ubifs_zbranch* %44)
  store %struct.ubifs_znode* %45, %struct.ubifs_znode** %12, align 8
  %46 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %47 = call i64 @IS_ERR(%struct.ubifs_znode* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %51 = call i32 @PTR_ERR(%struct.ubifs_znode* %50)
  store i32 %51, i32* %5, align 4
  br label %216

52:                                               ; preds = %41
  %53 = load i64, i64* %13, align 8
  %54 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %55 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %52, %98, %122
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %58 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %59 = load %union.ubifs_key*, %union.ubifs_key** %7, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @ubifs_search_zbranch(%struct.ubifs_info* %57, %struct.ubifs_znode* %58, %union.ubifs_key* %59, i32* %60)
  store i32 %61, i32* %11, align 4
  %62 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %63 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %123

67:                                               ; preds = %56
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32*, i32** %9, align 8
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %71, %67
  %74 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %75 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %74, i32 0, i32 3
  %76 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %75, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %76, i64 %79
  store %struct.ubifs_zbranch* %80, %struct.ubifs_zbranch** %14, align 8
  %81 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %14, align 8
  %82 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %81, i32 0, i32 1
  %83 = load %struct.ubifs_znode*, %struct.ubifs_znode** %82, align 8
  %84 = icmp ne %struct.ubifs_znode* %83, null
  br i1 %84, label %85, label %99

85:                                               ; preds = %73
  %86 = load i64, i64* %13, align 8
  %87 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %88 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %90 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %14, align 8
  %91 = call %struct.ubifs_znode* @dirty_cow_znode(%struct.ubifs_info* %89, %struct.ubifs_zbranch* %90)
  store %struct.ubifs_znode* %91, %struct.ubifs_znode** %12, align 8
  %92 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %93 = call i64 @IS_ERR(%struct.ubifs_znode* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %85
  %96 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %97 = call i32 @PTR_ERR(%struct.ubifs_znode* %96)
  store i32 %97, i32* %5, align 4
  br label %216

98:                                               ; preds = %85
  br label %56

99:                                               ; preds = %73
  %100 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %101 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %14, align 8
  %102 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = load i32, i32* %103, align 4
  %105 = call %struct.ubifs_znode* @ubifs_load_znode(%struct.ubifs_info* %100, %struct.ubifs_zbranch* %101, %struct.ubifs_znode* %102, i32 %104)
  store %struct.ubifs_znode* %105, %struct.ubifs_znode** %12, align 8
  %106 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %107 = call i64 @IS_ERR(%struct.ubifs_znode* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %99
  %110 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %111 = call i32 @PTR_ERR(%struct.ubifs_znode* %110)
  store i32 %111, i32* %5, align 4
  br label %216

112:                                              ; preds = %99
  %113 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %114 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %14, align 8
  %115 = call %struct.ubifs_znode* @dirty_cow_znode(%struct.ubifs_info* %113, %struct.ubifs_zbranch* %114)
  store %struct.ubifs_znode* %115, %struct.ubifs_znode** %12, align 8
  %116 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %117 = call i64 @IS_ERR(%struct.ubifs_znode* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %112
  %120 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %121 = call i32 @PTR_ERR(%struct.ubifs_znode* %120)
  store i32 %121, i32* %5, align 4
  br label %216

122:                                              ; preds = %112
  br label %56

123:                                              ; preds = %66
  %124 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %125 = load %struct.ubifs_znode**, %struct.ubifs_znode*** %8, align 8
  store %struct.ubifs_znode* %124, %struct.ubifs_znode** %125, align 8
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %137, label %128

128:                                              ; preds = %123
  %129 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %130 = load %union.ubifs_key*, %union.ubifs_key** %7, align 8
  %131 = call i32 @is_hash_key(%struct.ubifs_info* %129, %union.ubifs_key* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load i32*, i32** %9, align 8
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, -1
  br i1 %136, label %137, label %146

137:                                              ; preds = %133, %128, %123
  %138 = load i32, i32* %11, align 4
  %139 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %140 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load i32*, i32** %9, align 8
  %143 = load i32, i32* %142, align 4
  %144 = call i32 (i8*, i32, ...) @dbg_tnc(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %138, i32 %141, i32 %143)
  %145 = load i32, i32* %11, align 4
  store i32 %145, i32* %5, align 4
  br label %216

146:                                              ; preds = %133
  %147 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %148 = load i32*, i32** %9, align 8
  %149 = call i32 @tnc_prev(%struct.ubifs_info* %147, %struct.ubifs_znode** %12, i32* %148)
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* @ENOENT, align 4
  %152 = sub nsw i32 0, %151
  %153 = icmp eq i32 %150, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %146
  %155 = load i32*, i32** %9, align 8
  store i32 -1, i32* %155, align 4
  %156 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %157 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = call i32 (i8*, i32, ...) @dbg_tnc(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %158)
  store i32 0, i32* %5, align 4
  br label %216

160:                                              ; preds = %146
  %161 = load i32, i32* %10, align 4
  %162 = icmp slt i32 %161, 0
  %163 = zext i1 %162 to i32
  %164 = call i64 @unlikely(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %160
  %167 = load i32, i32* %10, align 4
  store i32 %167, i32* %5, align 4
  br label %216

168:                                              ; preds = %160
  %169 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %170 = load %union.ubifs_key*, %union.ubifs_key** %7, align 8
  %171 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %172 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %171, i32 0, i32 3
  %173 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %172, align 8
  %174 = load i32*, i32** %9, align 8
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %173, i64 %176
  %178 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %177, i32 0, i32 0
  %179 = call i64 @keys_cmp(%struct.ubifs_info* %169, %union.ubifs_key* %170, i32* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %168
  %182 = load i32*, i32** %9, align 8
  store i32 -1, i32* %182, align 4
  %183 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %184 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = call i32 (i8*, i32, ...) @dbg_tnc(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %185)
  store i32 0, i32* %5, align 4
  br label %216

187:                                              ; preds = %168
  %188 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %189 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %196, label %192

192:                                              ; preds = %187
  %193 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %194 = call i32 @ubifs_zn_dirty(%struct.ubifs_znode* %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %207, label %196

196:                                              ; preds = %192, %187
  %197 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %198 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %199 = call %struct.ubifs_znode* @dirty_cow_bottom_up(%struct.ubifs_info* %197, %struct.ubifs_znode* %198)
  store %struct.ubifs_znode* %199, %struct.ubifs_znode** %12, align 8
  %200 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %201 = call i64 @IS_ERR(%struct.ubifs_znode* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %196
  %204 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %205 = call i32 @PTR_ERR(%struct.ubifs_znode* %204)
  store i32 %205, i32* %5, align 4
  br label %216

206:                                              ; preds = %196
  br label %207

207:                                              ; preds = %206, %192
  %208 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %209 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = load i32*, i32** %9, align 8
  %212 = load i32, i32* %211, align 4
  %213 = call i32 (i8*, i32, ...) @dbg_tnc(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %210, i32 %212)
  %214 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %215 = load %struct.ubifs_znode**, %struct.ubifs_znode*** %8, align 8
  store %struct.ubifs_znode* %214, %struct.ubifs_znode** %215, align 8
  store i32 1, i32* %5, align 4
  br label %216

216:                                              ; preds = %207, %203, %181, %166, %154, %137, %119, %109, %95, %49, %37
  %217 = load i32, i32* %5, align 4
  ret i32 %217
}

declare dso_local i64 @get_seconds(...) #1

declare dso_local i32 @dbg_tnc(i8*, i32, ...) #1

declare dso_local i32 @DBGKEY(%union.ubifs_key*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.ubifs_znode* @ubifs_load_znode(%struct.ubifs_info*, %struct.ubifs_zbranch*, %struct.ubifs_znode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_znode*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_znode*) #1

declare dso_local %struct.ubifs_znode* @dirty_cow_znode(%struct.ubifs_info*, %struct.ubifs_zbranch*) #1

declare dso_local i32 @ubifs_search_zbranch(%struct.ubifs_info*, %struct.ubifs_znode*, %union.ubifs_key*, i32*) #1

declare dso_local i32 @is_hash_key(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i32 @tnc_prev(%struct.ubifs_info*, %struct.ubifs_znode**, i32*) #1

declare dso_local i64 @keys_cmp(%struct.ubifs_info*, %union.ubifs_key*, i32*) #1

declare dso_local i32 @ubifs_zn_dirty(%struct.ubifs_znode*) #1

declare dso_local %struct.ubifs_znode* @dirty_cow_bottom_up(%struct.ubifs_info*, %struct.ubifs_znode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
