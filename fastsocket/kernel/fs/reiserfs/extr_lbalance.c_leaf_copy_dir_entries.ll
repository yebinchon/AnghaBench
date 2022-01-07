; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_lbalance.c_leaf_copy_dir_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_lbalance.c_leaf_copy_dir_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_info = type { %struct.buffer_head* }
%struct.buffer_head = type { i8* }
%struct.item_head = type { i32 }
%struct.reiserfs_de_head = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"vs-10000: item must be directory item\00", align 1
@LAST_TO_FIRST = common dso_local global i32 0, align 4
@FIRST_TO_LAST = common dso_local global i32 0, align 4
@DOT_OFFSET = common dso_local global i64 0, align 8
@KEY_SIZE = common dso_local global i32 0, align 4
@KEY_FORMAT_3_5 = common dso_local global i32 0, align 4
@DEH_SIZE = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i32 0, align 4
@TYPE_DIRENTRY = common dso_local global i32 0, align 4
@MAX_US_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer_info*, %struct.buffer_head*, i32, i32, i32, i32)* @leaf_copy_dir_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @leaf_copy_dir_entries(%struct.buffer_info* %0, %struct.buffer_head* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.buffer_info*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.item_head*, align 8
  %16 = alloca %struct.reiserfs_de_head*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.item_head, align 4
  store %struct.buffer_info* %0, %struct.buffer_info** %7, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %20 = load %struct.buffer_info*, %struct.buffer_info** %7, align 8
  %21 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %20, i32 0, i32 0
  %22 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  store %struct.buffer_head* %22, %struct.buffer_head** %13, align 8
  %23 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call %struct.item_head* @B_N_PITEM_HEAD(%struct.buffer_head* %23, i32 %24)
  store %struct.item_head* %25, %struct.item_head** %15, align 8
  %26 = load %struct.item_head*, %struct.item_head** %15, align 8
  %27 = call i32 @is_direntry_le_ih(%struct.item_head* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @RFALSE(i32 %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %33 = load %struct.item_head*, %struct.item_head** %15, align 8
  %34 = call %struct.reiserfs_de_head* @B_I_DEH(%struct.buffer_head* %32, %struct.item_head* %33)
  store %struct.reiserfs_de_head* %34, %struct.reiserfs_de_head** %16, align 8
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %78

37:                                               ; preds = %6
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %16, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %41, i64 %44
  %46 = call i32 @deh_location(%struct.reiserfs_de_head* %45)
  br label %50

47:                                               ; preds = %37
  %48 = load %struct.item_head*, %struct.item_head** %15, align 8
  %49 = call i32 @ih_item_len(%struct.item_head* %48)
  br label %50

50:                                               ; preds = %47, %40
  %51 = phi i32 [ %46, %40 ], [ %49, %47 ]
  %52 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %16, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %53, %54
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %52, i64 %57
  %59 = call i32 @deh_location(%struct.reiserfs_de_head* %58)
  %60 = sub nsw i32 %51, %59
  store i32 %60, i32* %17, align 4
  %61 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %62 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.item_head*, %struct.item_head** %15, align 8
  %65 = call i32 @ih_location(%struct.item_head* %64)
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  %68 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %16, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %69, %70
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %68, i64 %73
  %75 = call i32 @deh_location(%struct.reiserfs_de_head* %74)
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %67, i64 %76
  store i8* %77, i8** %18, align 8
  br label %79

78:                                               ; preds = %6
  store i32 0, i32* %17, align 4
  store i8* null, i8** %18, align 8
  br label %79

79:                                               ; preds = %78, %50
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @LAST_TO_FIRST, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %85 = call i32 @B_NR_ITEMS(%struct.buffer_head* %84)
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 0, i32 -1
  br label %93

89:                                               ; preds = %79
  %90 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %91 = call i32 @B_NR_ITEMS(%struct.buffer_head* %90)
  %92 = sub nsw i32 %91, 1
  br label %93

93:                                               ; preds = %89, %83
  %94 = phi i32 [ %88, %83 ], [ %92, %89 ]
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %118, label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @FIRST_TO_LAST, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = load %struct.item_head*, %struct.item_head** %15, align 8
  %103 = call i64 @le_ih_k_offset(%struct.item_head* %102)
  %104 = load i64, i64* @DOT_OFFSET, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %118, label %106

106:                                              ; preds = %101, %97
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @LAST_TO_FIRST, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %168

110:                                              ; preds = %106
  %111 = load %struct.item_head*, %struct.item_head** %15, align 8
  %112 = getelementptr inbounds %struct.item_head, %struct.item_head* %111, i32 0, i32 0
  %113 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @B_N_PKEY(%struct.buffer_head* %113, i32 %114)
  %116 = call i64 @comp_short_le_keys(i32* %112, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %168

118:                                              ; preds = %110, %101, %93
  %119 = getelementptr inbounds %struct.item_head, %struct.item_head* %19, i32 0, i32 0
  %120 = load %struct.item_head*, %struct.item_head** %15, align 8
  %121 = getelementptr inbounds %struct.item_head, %struct.item_head* %120, i32 0, i32 0
  %122 = load i32, i32* @KEY_SIZE, align 4
  %123 = call i32 @memcpy(i32* %119, i32* %121, i32 %122)
  %124 = load i32, i32* @KEY_FORMAT_3_5, align 4
  %125 = call i32 @put_ih_version(%struct.item_head* %19, i32 %124)
  %126 = load i32, i32* @DEH_SIZE, align 4
  %127 = load i32, i32* %12, align 4
  %128 = mul nsw i32 %126, %127
  %129 = load i32, i32* %17, align 4
  %130 = add nsw i32 %128, %129
  %131 = call i32 @put_ih_item_len(%struct.item_head* %19, i32 %130)
  %132 = call i32 @put_ih_entry_count(%struct.item_head* %19, i32 0)
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @LAST_TO_FIRST, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %156

136:                                              ; preds = %118
  %137 = load i32, i32* %11, align 4
  %138 = load %struct.item_head*, %struct.item_head** %15, align 8
  %139 = call i32 @I_ENTRY_COUNT(%struct.item_head* %138)
  %140 = icmp slt i32 %137, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %136
  %142 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %16, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %142, i64 %144
  %146 = call i32 @deh_offset(%struct.reiserfs_de_head* %145)
  %147 = call i32 @set_le_ih_k_offset(%struct.item_head* %19, i32 %146)
  br label %151

148:                                              ; preds = %136
  %149 = load i32, i32* @U32_MAX, align 4
  %150 = call i32 @set_le_ih_k_offset(%struct.item_head* %19, i32 %149)
  br label %151

151:                                              ; preds = %148, %141
  %152 = load i32, i32* @KEY_FORMAT_3_5, align 4
  %153 = getelementptr inbounds %struct.item_head, %struct.item_head* %19, i32 0, i32 0
  %154 = load i32, i32* @TYPE_DIRENTRY, align 4
  %155 = call i32 @set_le_key_k_type(i32 %152, i32* %153, i32 %154)
  br label %156

156:                                              ; preds = %151, %118
  %157 = load %struct.buffer_info*, %struct.buffer_info** %7, align 8
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* @LAST_TO_FIRST, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  br label %165

162:                                              ; preds = %156
  %163 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %164 = call i32 @B_NR_ITEMS(%struct.buffer_head* %163)
  br label %165

165:                                              ; preds = %162, %161
  %166 = phi i32 [ 0, %161 ], [ %164, %162 ]
  %167 = call i32 @leaf_insert_into_buf(%struct.buffer_info* %157, i32 %166, %struct.item_head* %19, i32* null, i32 0)
  br label %188

168:                                              ; preds = %110, %106
  %169 = load %struct.buffer_info*, %struct.buffer_info** %7, align 8
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* @FIRST_TO_LAST, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %168
  %174 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %175 = call i32 @B_NR_ITEMS(%struct.buffer_head* %174)
  %176 = sub nsw i32 %175, 1
  br label %178

177:                                              ; preds = %168
  br label %178

178:                                              ; preds = %177, %173
  %179 = phi i32 [ %176, %173 ], [ 0, %177 ]
  %180 = load i32, i32* @MAX_US_INT, align 4
  %181 = load i32, i32* @DEH_SIZE, align 4
  %182 = load i32, i32* %12, align 4
  %183 = mul nsw i32 %181, %182
  %184 = load i32, i32* %17, align 4
  %185 = add nsw i32 %183, %184
  %186 = load i8*, i8** %18, align 8
  %187 = call i32 @leaf_paste_in_buffer(%struct.buffer_info* %169, i32 %179, i32 %180, i32 %185, i8* %186, i32 0)
  br label %188

188:                                              ; preds = %178, %165
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* @FIRST_TO_LAST, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %196

192:                                              ; preds = %188
  %193 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %194 = call i32 @B_NR_ITEMS(%struct.buffer_head* %193)
  %195 = sub nsw i32 %194, 1
  br label %197

196:                                              ; preds = %188
  br label %197

197:                                              ; preds = %196, %192
  %198 = phi i32 [ %195, %192 ], [ 0, %196 ]
  store i32 %198, i32* %14, align 4
  %199 = load %struct.buffer_info*, %struct.buffer_info** %7, align 8
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* @FIRST_TO_LAST, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %209

204:                                              ; preds = %197
  %205 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %206 = load i32, i32* %14, align 4
  %207 = call %struct.item_head* @B_N_PITEM_HEAD(%struct.buffer_head* %205, i32 %206)
  %208 = call i32 @I_ENTRY_COUNT(%struct.item_head* %207)
  br label %210

209:                                              ; preds = %197
  br label %210

210:                                              ; preds = %209, %204
  %211 = phi i32 [ %208, %204 ], [ 0, %209 ]
  %212 = load i32, i32* %12, align 4
  %213 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %16, align 8
  %214 = load i32, i32* %11, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %213, i64 %215
  %217 = load i8*, i8** %18, align 8
  %218 = load i32, i32* @DEH_SIZE, align 4
  %219 = load i32, i32* %12, align 4
  %220 = mul nsw i32 %218, %219
  %221 = load i32, i32* %17, align 4
  %222 = add nsw i32 %220, %221
  %223 = call i32 @leaf_paste_entries(%struct.buffer_info* %199, i32 %200, i32 %211, i32 %212, %struct.reiserfs_de_head* %216, i8* %217, i32 %222)
  ret void
}

declare dso_local %struct.item_head* @B_N_PITEM_HEAD(%struct.buffer_head*, i32) #1

declare dso_local i32 @RFALSE(i32, i8*) #1

declare dso_local i32 @is_direntry_le_ih(%struct.item_head*) #1

declare dso_local %struct.reiserfs_de_head* @B_I_DEH(%struct.buffer_head*, %struct.item_head*) #1

declare dso_local i32 @deh_location(%struct.reiserfs_de_head*) #1

declare dso_local i32 @ih_item_len(%struct.item_head*) #1

declare dso_local i32 @ih_location(%struct.item_head*) #1

declare dso_local i32 @B_NR_ITEMS(%struct.buffer_head*) #1

declare dso_local i64 @le_ih_k_offset(%struct.item_head*) #1

declare dso_local i64 @comp_short_le_keys(i32*, i32) #1

declare dso_local i32 @B_N_PKEY(%struct.buffer_head*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @put_ih_version(%struct.item_head*, i32) #1

declare dso_local i32 @put_ih_item_len(%struct.item_head*, i32) #1

declare dso_local i32 @put_ih_entry_count(%struct.item_head*, i32) #1

declare dso_local i32 @I_ENTRY_COUNT(%struct.item_head*) #1

declare dso_local i32 @set_le_ih_k_offset(%struct.item_head*, i32) #1

declare dso_local i32 @deh_offset(%struct.reiserfs_de_head*) #1

declare dso_local i32 @set_le_key_k_type(i32, i32*, i32) #1

declare dso_local i32 @leaf_insert_into_buf(%struct.buffer_info*, i32, %struct.item_head*, i32*, i32) #1

declare dso_local i32 @leaf_paste_in_buffer(%struct.buffer_info*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @leaf_paste_entries(%struct.buffer_info*, i32, i32, i32, %struct.reiserfs_de_head*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
