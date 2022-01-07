; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_attrib.c_load_attribute_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_attrib.c_load_attribute_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8, %struct.super_block* }
%struct.super_block = type { i64, i8 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64 }
%struct.buffer_head = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"Entering.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Cannot read attribute list since runlist is missing.\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Reading vcn = 0x%llx, lcn = 0x%llx.\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"ntfs_rl_vcn_to_lcn() failed.  Cannot read attribute list.\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"max_block = 0x%lx.\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Reading block = 0x%lx.\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"sb_bread() failed. Cannot read attribute list.\00", align 1
@.str.7 = private unnamed_addr constant [66 x i8] c"Attribute list buffer overflow. Read attribute list is truncated.\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_attribute_list(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca %struct.buffer_head*, align 8
  %17 = alloca %struct.super_block*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8, align 1
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %23 = load i32*, i32** %9, align 8
  store i32* %23, i32** %13, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32* %27, i32** %14, align 8
  store i32 0, i32* %21, align 4
  %28 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %30 = icmp ne %struct.TYPE_9__* %29, null
  br i1 %30, label %31, label %47

31:                                               ; preds = %5
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %33 = icmp ne %struct.TYPE_8__* %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load i32*, i32** %13, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43, %40, %37, %34, %31, %5
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %221

50:                                               ; preds = %43
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = load i32*, i32** %13, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @memset(i32* %54, i32 0, i32 %55)
  store i32 0, i32* %6, align 4
  br label %221

57:                                               ; preds = %50
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load %struct.super_block*, %struct.super_block** %59, align 8
  store %struct.super_block* %60, %struct.super_block** %17, align 8
  %61 = load %struct.super_block*, %struct.super_block** %17, align 8
  %62 = getelementptr inbounds %struct.super_block, %struct.super_block* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %18, align 8
  %64 = load %struct.super_block*, %struct.super_block** %17, align 8
  %65 = getelementptr inbounds %struct.super_block, %struct.super_block* %64, i32 0, i32 1
  %66 = load i8, i8* %65, align 8
  store i8 %66, i8* %22, align 1
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = call i32 @down_read(i32* %68)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  store %struct.TYPE_7__* %72, %struct.TYPE_7__** %15, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %74 = icmp ne %struct.TYPE_7__* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %57
  %76 = load %struct.super_block*, %struct.super_block** %17, align 8
  %77 = call i32 @ntfs_error(%struct.super_block* %76, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %218

78:                                               ; preds = %57
  br label %79

79:                                               ; preds = %166, %78
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %169

84:                                               ; preds = %79
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call zeroext i8 @ntfs_rl_vcn_to_lcn(%struct.TYPE_7__* %85, i64 %88)
  store i8 %89, i8* %12, align 1
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i8, i8* %12, align 1
  %94 = zext i8 %93 to i64
  %95 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %92, i64 %94)
  %96 = load i8, i8* %12, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %84
  %100 = load %struct.super_block*, %struct.super_block** %17, align 8
  %101 = call i32 @ntfs_error(%struct.super_block* %100, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  br label %218

102:                                              ; preds = %84
  %103 = load i8, i8* %12, align 1
  %104 = zext i8 %103 to i32
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i8, i8* %106, align 8
  %108 = zext i8 %107 to i32
  %109 = shl i32 %104, %108
  %110 = load i8, i8* %22, align 1
  %111 = zext i8 %110 to i32
  %112 = ashr i32 %109, %111
  %113 = sext i32 %112 to i64
  store i64 %113, i64* %19, align 8
  %114 = load i64, i64* %19, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i8, i8* %119, align 8
  %121 = zext i8 %120 to i32
  %122 = shl i32 %117, %121
  %123 = load i8, i8* %22, align 1
  %124 = zext i8 %123 to i32
  %125 = ashr i32 %122, %124
  %126 = sext i32 %125 to i64
  %127 = add i64 %114, %126
  store i64 %127, i64* %20, align 8
  %128 = load i64, i64* %20, align 8
  %129 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 %128)
  br label %130

130:                                              ; preds = %161, %102
  %131 = load i64, i64* %19, align 8
  %132 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i64 %131)
  %133 = load %struct.super_block*, %struct.super_block** %17, align 8
  %134 = load i64, i64* %19, align 8
  %135 = call %struct.buffer_head* @sb_bread(%struct.super_block* %133, i64 %134)
  store %struct.buffer_head* %135, %struct.buffer_head** %16, align 8
  %136 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %137 = icmp ne %struct.buffer_head* %136, null
  br i1 %137, label %141, label %138

138:                                              ; preds = %130
  %139 = load %struct.super_block*, %struct.super_block** %17, align 8
  %140 = call i32 @ntfs_error(%struct.super_block* %139, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  br label %218

141:                                              ; preds = %130
  %142 = load i32*, i32** %13, align 8
  %143 = load i64, i64* %18, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i32*, i32** %14, align 8
  %146 = icmp uge i32* %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  br label %189

148:                                              ; preds = %141
  %149 = load i32*, i32** %13, align 8
  %150 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %151 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i64, i64* %18, align 8
  %154 = trunc i64 %153 to i32
  %155 = call i32 @memcpy(i32* %149, i32 %152, i32 %154)
  %156 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %157 = call i32 @brelse(%struct.buffer_head* %156)
  %158 = load i64, i64* %18, align 8
  %159 = load i32*, i32** %13, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 %158
  store i32* %160, i32** %13, align 8
  br label %161

161:                                              ; preds = %148
  %162 = load i64, i64* %19, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %19, align 8
  %164 = load i64, i64* %20, align 8
  %165 = icmp ult i64 %163, %164
  br i1 %165, label %130, label %166

166:                                              ; preds = %161
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 1
  store %struct.TYPE_7__* %168, %struct.TYPE_7__** %15, align 8
  br label %79

169:                                              ; preds = %79
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* %10, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %183

173:                                              ; preds = %169
  br label %174

174:                                              ; preds = %211, %173
  %175 = load i32*, i32** %9, align 8
  %176 = load i32, i32* %11, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* %11, align 4
  %181 = sub nsw i32 %179, %180
  %182 = call i32 @memset(i32* %178, i32 0, i32 %181)
  br label %183

183:                                              ; preds = %174, %169
  br label %184

184:                                              ; preds = %218, %212, %183
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = call i32 @up_read(i32* %186)
  %188 = load i32, i32* %21, align 4
  store i32 %188, i32* %6, align 4
  br label %221

189:                                              ; preds = %147
  %190 = load i32*, i32** %13, align 8
  %191 = load i32*, i32** %14, align 8
  %192 = icmp ult i32* %190, %191
  br i1 %192, label %193, label %213

193:                                              ; preds = %189
  %194 = load i32*, i32** %13, align 8
  %195 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %196 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32*, i32** %14, align 8
  %199 = load i32*, i32** %13, align 8
  %200 = ptrtoint i32* %198 to i64
  %201 = ptrtoint i32* %199 to i64
  %202 = sub i64 %200, %201
  %203 = sdiv exact i64 %202, 4
  %204 = trunc i64 %203 to i32
  %205 = call i32 @memcpy(i32* %194, i32 %197, i32 %204)
  %206 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %207 = call i32 @brelse(%struct.buffer_head* %206)
  %208 = load i32, i32* %11, align 4
  %209 = load i32, i32* %10, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %193
  br label %174

212:                                              ; preds = %193
  br label %184

213:                                              ; preds = %189
  %214 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %215 = call i32 @brelse(%struct.buffer_head* %214)
  %216 = load %struct.super_block*, %struct.super_block** %17, align 8
  %217 = call i32 @ntfs_error(%struct.super_block* %216, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.7, i64 0, i64 0))
  br label %218

218:                                              ; preds = %213, %138, %99, %75
  %219 = load i32, i32* @EIO, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %21, align 4
  br label %184

221:                                              ; preds = %184, %53, %47
  %222 = load i32, i32* %6, align 4
  ret i32 %222
}

declare dso_local i32 @ntfs_debug(i8*, ...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @ntfs_error(%struct.super_block*, i8*) #1

declare dso_local zeroext i8 @ntfs_rl_vcn_to_lcn(%struct.TYPE_7__*, i64) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i64) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
