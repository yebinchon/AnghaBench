; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_lbalance.c_leaf_paste_in_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_lbalance.c_leaf_paste_in_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_info = type { i64, %struct.TYPE_3__*, i32, %struct.buffer_head* }
%struct.TYPE_3__ = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32, i32 }
%struct.block_head = type { i32 }
%struct.item_head = type { i32 }
%struct.disk_child = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"vs-10175: not enough free space: needed %d, available %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @leaf_paste_in_buffer(%struct.buffer_info* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.buffer_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.block_head*, align 8
  %17 = alloca %struct.item_head*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.disk_child*, align 8
  store %struct.buffer_info* %0, %struct.buffer_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %22 = load %struct.buffer_info*, %struct.buffer_info** %7, align 8
  %23 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %22, i32 0, i32 3
  %24 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  store %struct.buffer_head* %24, %struct.buffer_head** %13, align 8
  %25 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %26 = call %struct.block_head* @B_BLK_HEAD(%struct.buffer_head* %25)
  store %struct.block_head* %26, %struct.block_head** %16, align 8
  %27 = load %struct.block_head*, %struct.block_head** %16, align 8
  %28 = call i32 @blkh_nr_item(%struct.block_head* %27)
  store i32 %28, i32* %14, align 4
  %29 = load %struct.block_head*, %struct.block_head** %16, align 8
  %30 = call i32 @blkh_free_space(%struct.block_head* %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %15, align 4
  %37 = call i32 @RFALSE(i32 %34, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call %struct.item_head* @B_N_PITEM_HEAD(%struct.buffer_head* %38, i32 %39)
  store %struct.item_head* %40, %struct.item_head** %17, align 8
  %41 = load %struct.item_head*, %struct.item_head** %17, align 8
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %8, align 4
  %44 = sub nsw i32 %42, %43
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.item_head, %struct.item_head* %41, i64 %46
  %48 = call i32 @ih_location(%struct.item_head* %47)
  store i32 %48, i32* %19, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %6
  %52 = load %struct.item_head*, %struct.item_head** %17, align 8
  %53 = getelementptr inbounds %struct.item_head, %struct.item_head* %52, i64 -1
  %54 = call i32 @ih_location(%struct.item_head* %53)
  br label %59

55:                                               ; preds = %6
  %56 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %57 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  br label %59

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %54, %51 ], [ %58, %55 ]
  store i32 %60, i32* %20, align 4
  %61 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %62 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %19, align 4
  %65 = add nsw i32 %63, %64
  %66 = load i32, i32* %10, align 4
  %67 = sub nsw i32 %65, %66
  %68 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %69 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %19, align 4
  %72 = add nsw i32 %70, %71
  %73 = load i32, i32* %20, align 4
  %74 = load i32, i32* %19, align 4
  %75 = sub nsw i32 %73, %74
  %76 = call i32 @memmove(i32 %67, i32 %72, i32 %75)
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %18, align 4
  br label %78

78:                                               ; preds = %99, %59
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* %14, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %102

82:                                               ; preds = %78
  %83 = load %struct.item_head*, %struct.item_head** %17, align 8
  %84 = load i32, i32* %18, align 4
  %85 = load i32, i32* %8, align 4
  %86 = sub nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.item_head, %struct.item_head* %83, i64 %87
  %89 = load %struct.item_head*, %struct.item_head** %17, align 8
  %90 = load i32, i32* %18, align 4
  %91 = load i32, i32* %8, align 4
  %92 = sub nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.item_head, %struct.item_head* %89, i64 %93
  %95 = call i32 @ih_location(%struct.item_head* %94)
  %96 = load i32, i32* %10, align 4
  %97 = sub nsw i32 %95, %96
  %98 = call i32 @put_ih_location(%struct.item_head* %88, i32 %97)
  br label %99

99:                                               ; preds = %82
  %100 = load i32, i32* %18, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %18, align 4
  br label %78

102:                                              ; preds = %78
  %103 = load i8*, i8** %11, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %177

105:                                              ; preds = %102
  %106 = load %struct.item_head*, %struct.item_head** %17, align 8
  %107 = call i32 @is_direntry_le_ih(%struct.item_head* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %176, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %151, label %112

112:                                              ; preds = %109
  %113 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %114 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.item_head*, %struct.item_head** %17, align 8
  %117 = call i32 @ih_location(%struct.item_head* %116)
  %118 = add nsw i32 %115, %117
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %118, %119
  %121 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %122 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.item_head*, %struct.item_head** %17, align 8
  %125 = call i32 @ih_location(%struct.item_head* %124)
  %126 = add nsw i32 %123, %125
  %127 = load %struct.item_head*, %struct.item_head** %17, align 8
  %128 = call i32 @ih_item_len(%struct.item_head* %127)
  %129 = call i32 @memmove(i32 %120, i32 %126, i32 %128)
  %130 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %131 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.item_head*, %struct.item_head** %17, align 8
  %134 = call i32 @ih_location(%struct.item_head* %133)
  %135 = add nsw i32 %132, %134
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @memset(i32 %135, i8 signext 0, i32 %136)
  %138 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %139 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.item_head*, %struct.item_head** %17, align 8
  %142 = call i32 @ih_location(%struct.item_head* %141)
  %143 = add nsw i32 %140, %142
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %143, %144
  %146 = load i8*, i8** %11, align 8
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %12, align 4
  %149 = sub nsw i32 %147, %148
  %150 = call i32 @memcpy(i32 %145, i8* %146, i32 %149)
  br label %175

151:                                              ; preds = %109
  %152 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %153 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %20, align 4
  %156 = add nsw i32 %154, %155
  %157 = load i32, i32* %10, align 4
  %158 = sub nsw i32 %156, %157
  %159 = load i32, i32* %12, align 4
  %160 = call i32 @memset(i32 %158, i8 signext 0, i32 %159)
  %161 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %162 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %20, align 4
  %165 = add nsw i32 %163, %164
  %166 = load i32, i32* %10, align 4
  %167 = sub nsw i32 %165, %166
  %168 = load i32, i32* %12, align 4
  %169 = add nsw i32 %167, %168
  %170 = load i8*, i8** %11, align 8
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* %12, align 4
  %173 = sub nsw i32 %171, %172
  %174 = call i32 @memcpy(i32 %169, i8* %170, i32 %173)
  br label %175

175:                                              ; preds = %151, %112
  br label %176

176:                                              ; preds = %175, %105
  br label %187

177:                                              ; preds = %102
  %178 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %179 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %20, align 4
  %182 = add nsw i32 %180, %181
  %183 = load i32, i32* %10, align 4
  %184 = sub nsw i32 %182, %183
  %185 = load i32, i32* %10, align 4
  %186 = call i32 @memset(i32 %184, i8 signext 0, i32 %185)
  br label %187

187:                                              ; preds = %177, %176
  %188 = load %struct.item_head*, %struct.item_head** %17, align 8
  %189 = load %struct.item_head*, %struct.item_head** %17, align 8
  %190 = call i32 @ih_item_len(%struct.item_head* %189)
  %191 = load i32, i32* %10, align 4
  %192 = add nsw i32 %190, %191
  %193 = call i32 @put_ih_item_len(%struct.item_head* %188, i32 %192)
  %194 = load %struct.block_head*, %struct.block_head** %16, align 8
  %195 = load i32, i32* %15, align 4
  %196 = load i32, i32* %10, align 4
  %197 = sub nsw i32 %195, %196
  %198 = call i32 @set_blkh_free_space(%struct.block_head* %194, i32 %197)
  %199 = load %struct.buffer_info*, %struct.buffer_info** %7, align 8
  %200 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %199, i32 0, i32 1
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %200, align 8
  %202 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %203 = call i32 @do_balance_mark_leaf_dirty(%struct.TYPE_3__* %201, %struct.buffer_head* %202, i32 0)
  %204 = load %struct.buffer_info*, %struct.buffer_info** %7, align 8
  %205 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %230

208:                                              ; preds = %187
  %209 = load %struct.buffer_info*, %struct.buffer_info** %7, align 8
  %210 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.buffer_info*, %struct.buffer_info** %7, align 8
  %213 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = call %struct.disk_child* @B_N_CHILD(i64 %211, i32 %214)
  store %struct.disk_child* %215, %struct.disk_child** %21, align 8
  %216 = load %struct.disk_child*, %struct.disk_child** %21, align 8
  %217 = load %struct.disk_child*, %struct.disk_child** %21, align 8
  %218 = call i64 @dc_size(%struct.disk_child* %217)
  %219 = load i32, i32* %10, align 4
  %220 = sext i32 %219 to i64
  %221 = add nsw i64 %218, %220
  %222 = call i32 @put_dc_size(%struct.disk_child* %216, i64 %221)
  %223 = load %struct.buffer_info*, %struct.buffer_info** %7, align 8
  %224 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %223, i32 0, i32 1
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %224, align 8
  %226 = load %struct.buffer_info*, %struct.buffer_info** %7, align 8
  %227 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = call i32 @do_balance_mark_internal_dirty(%struct.TYPE_3__* %225, i64 %228, i32 0)
  br label %230

230:                                              ; preds = %208, %187
  ret void
}

declare dso_local %struct.block_head* @B_BLK_HEAD(%struct.buffer_head*) #1

declare dso_local i32 @blkh_nr_item(%struct.block_head*) #1

declare dso_local i32 @blkh_free_space(%struct.block_head*) #1

declare dso_local i32 @RFALSE(i32, i8*, i32, i32) #1

declare dso_local %struct.item_head* @B_N_PITEM_HEAD(%struct.buffer_head*, i32) #1

declare dso_local i32 @ih_location(%struct.item_head*) #1

declare dso_local i32 @memmove(i32, i32, i32) #1

declare dso_local i32 @put_ih_location(%struct.item_head*, i32) #1

declare dso_local i32 @is_direntry_le_ih(%struct.item_head*) #1

declare dso_local i32 @ih_item_len(%struct.item_head*) #1

declare dso_local i32 @memset(i32, i8 signext, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @put_ih_item_len(%struct.item_head*, i32) #1

declare dso_local i32 @set_blkh_free_space(%struct.block_head*, i32) #1

declare dso_local i32 @do_balance_mark_leaf_dirty(%struct.TYPE_3__*, %struct.buffer_head*, i32) #1

declare dso_local %struct.disk_child* @B_N_CHILD(i64, i32) #1

declare dso_local i32 @put_dc_size(%struct.disk_child*, i64) #1

declare dso_local i64 @dc_size(%struct.disk_child*) #1

declare dso_local i32 @do_balance_mark_internal_dirty(%struct.TYPE_3__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
