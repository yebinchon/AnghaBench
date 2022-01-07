; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_lbalance.c_leaf_item_bottle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_lbalance.c_leaf_item_bottle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_info = type { %struct.buffer_head* }
%struct.buffer_head = type { i32 }
%struct.item_head = type { i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"vs-10170: bytes == - 1 means: do not split item\00", align 1
@FIRST_TO_LAST = common dso_local global i32 0, align 4
@IH_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [100 x i8] c"vs-10180: when whole indirect item is bottle to left neighbor, it must have free_space==0 (not %lu)\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"vs-10190: bad mergeability of item %h\00", align 1
@LAST_TO_FIRST = common dso_local global i32 0, align 4
@SHORT_KEY_SIZE = common dso_local global i32 0, align 4
@TYPE_DIRECT = common dso_local global i32 0, align 4
@MAX_US_INT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [74 x i8] c"vs-10200: ih->ih_free_space must be 0 when indirect item will be appended\00", align 1
@UNFM_P_SIZE = common dso_local global i32 0, align 4
@TYPE_INDIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer_info*, %struct.buffer_head*, i32, i32, i32)* @leaf_item_bottle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @leaf_item_bottle(%struct.buffer_info* %0, %struct.buffer_head* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.buffer_info*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.item_head*, align 8
  %13 = alloca %struct.item_head, align 4
  %14 = alloca %struct.item_head, align 4
  store %struct.buffer_info* %0, %struct.buffer_info** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.buffer_info*, %struct.buffer_info** %6, align 8
  %16 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %15, i32 0, i32 0
  %17 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  store %struct.buffer_head* %17, %struct.buffer_head** %11, align 8
  %18 = load i32, i32* %10, align 4
  %19 = icmp eq i32 %18, -1
  %20 = zext i1 %19 to i32
  %21 = call i32 (i32, i8*, ...) @RFALSE(i32 %20, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @FIRST_TO_LAST, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %85

25:                                               ; preds = %5
  %26 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call %struct.item_head* @B_N_PITEM_HEAD(%struct.buffer_head* %26, i32 %27)
  store %struct.item_head* %28, %struct.item_head** %12, align 8
  %29 = load %struct.item_head*, %struct.item_head** %12, align 8
  %30 = call i64 @is_direntry_le_ih(%struct.item_head* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load %struct.buffer_info*, %struct.buffer_info** %6, align 8
  %34 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %35 = load i32, i32* @FIRST_TO_LAST, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @leaf_copy_dir_entries(%struct.buffer_info* %33, %struct.buffer_head* %34, i32 %35, i32 %36, i64 0, i32 %37)
  br label %84

39:                                               ; preds = %25
  %40 = load %struct.item_head*, %struct.item_head** %12, align 8
  %41 = load i32, i32* @IH_SIZE, align 4
  %42 = call i32 @memcpy(%struct.item_head* %13, %struct.item_head* %40, i32 %41)
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @put_ih_item_len(%struct.item_head* %13, i32 %43)
  %45 = load %struct.item_head*, %struct.item_head** %12, align 8
  %46 = call i64 @is_indirect_le_ih(%struct.item_head* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %39
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.item_head*, %struct.item_head** %12, align 8
  %51 = call i32 @ih_item_len(%struct.item_head* %50)
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.item_head*, %struct.item_head** %12, align 8
  %55 = call i64 @get_ih_free_space(%struct.item_head* %54)
  %56 = icmp ne i64 %55, 0
  br label %57

57:                                               ; preds = %53, %48
  %58 = phi i1 [ false, %48 ], [ %56, %53 ]
  %59 = zext i1 %58 to i32
  %60 = load %struct.item_head*, %struct.item_head** %12, align 8
  %61 = call i64 @get_ih_free_space(%struct.item_head* %60)
  %62 = call i32 (i32, i8*, ...) @RFALSE(i32 %59, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.1, i64 0, i64 0), i64 %61)
  %63 = call i32 @set_ih_free_space(%struct.item_head* %13, i64 0)
  br label %64

64:                                               ; preds = %57, %39
  %65 = load %struct.item_head*, %struct.item_head** %12, align 8
  %66 = getelementptr inbounds %struct.item_head, %struct.item_head* %65, i32 0, i32 1
  %67 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %68 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @op_is_left_mergeable(i32* %66, i32 %69)
  %71 = load %struct.item_head*, %struct.item_head** %12, align 8
  %72 = call i32 (i32, i8*, ...) @RFALSE(i32 %70, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), %struct.item_head* %71)
  %73 = load %struct.item_head*, %struct.item_head** %12, align 8
  %74 = getelementptr inbounds %struct.item_head, %struct.item_head* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.item_head, %struct.item_head* %13, i32 0, i32 0
  store i32 %75, i32* %76, align 4
  %77 = load %struct.buffer_info*, %struct.buffer_info** %6, align 8
  %78 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %79 = call i32 @B_NR_ITEMS(%struct.buffer_head* %78)
  %80 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i64 @B_N_PITEM(%struct.buffer_head* %80, i32 %81)
  %83 = call i32 @leaf_insert_into_buf(%struct.buffer_info* %77, i32 %79, %struct.item_head* %13, i64 %82, i32 0)
  br label %84

84:                                               ; preds = %64, %32
  br label %181

85:                                               ; preds = %5
  %86 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call %struct.item_head* @B_N_PITEM_HEAD(%struct.buffer_head* %86, i32 %87)
  store %struct.item_head* %88, %struct.item_head** %12, align 8
  %89 = load %struct.item_head*, %struct.item_head** %12, align 8
  %90 = call i64 @is_direntry_le_ih(%struct.item_head* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %85
  %93 = load %struct.buffer_info*, %struct.buffer_info** %6, align 8
  %94 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %95 = load i32, i32* @LAST_TO_FIRST, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.item_head*, %struct.item_head** %12, align 8
  %98 = call i64 @I_ENTRY_COUNT(%struct.item_head* %97)
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = sub nsw i64 %98, %100
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @leaf_copy_dir_entries(%struct.buffer_info* %93, %struct.buffer_head* %94, i32 %95, i32 %96, i64 %101, i32 %102)
  br label %180

104:                                              ; preds = %85
  %105 = load %struct.item_head*, %struct.item_head** %12, align 8
  %106 = load i32, i32* @SHORT_KEY_SIZE, align 4
  %107 = call i32 @memcpy(%struct.item_head* %14, %struct.item_head* %105, i32 %106)
  %108 = load %struct.item_head*, %struct.item_head** %12, align 8
  %109 = getelementptr inbounds %struct.item_head, %struct.item_head* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.item_head, %struct.item_head* %14, i32 0, i32 0
  store i32 %110, i32* %111, align 4
  %112 = load %struct.item_head*, %struct.item_head** %12, align 8
  %113 = call i64 @is_direct_le_ih(%struct.item_head* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %130

115:                                              ; preds = %104
  %116 = load %struct.item_head*, %struct.item_head** %12, align 8
  %117 = call i64 @le_ih_k_offset(%struct.item_head* %116)
  %118 = load %struct.item_head*, %struct.item_head** %12, align 8
  %119 = call i32 @ih_item_len(%struct.item_head* %118)
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %117, %120
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = sub nsw i64 %121, %123
  %125 = call i32 @set_le_ih_k_offset(%struct.item_head* %14, i64 %124)
  %126 = load i32, i32* @TYPE_DIRECT, align 4
  %127 = call i32 @set_le_ih_k_type(%struct.item_head* %14, i32 %126)
  %128 = load i64, i64* @MAX_US_INT, align 8
  %129 = call i32 @set_ih_free_space(%struct.item_head* %14, i64 %128)
  br label %161

130:                                              ; preds = %104
  %131 = load i32, i32* %10, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %130
  %134 = load %struct.item_head*, %struct.item_head** %12, align 8
  %135 = call i64 @get_ih_free_space(%struct.item_head* %134)
  %136 = icmp ne i64 %135, 0
  br label %137

137:                                              ; preds = %133, %130
  %138 = phi i1 [ false, %130 ], [ %136, %133 ]
  %139 = zext i1 %138 to i32
  %140 = call i32 (i32, i8*, ...) @RFALSE(i32 %139, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0))
  %141 = load %struct.item_head*, %struct.item_head** %12, align 8
  %142 = call i64 @le_ih_k_offset(%struct.item_head* %141)
  %143 = load %struct.item_head*, %struct.item_head** %12, align 8
  %144 = call i32 @ih_item_len(%struct.item_head* %143)
  %145 = load i32, i32* %10, align 4
  %146 = sub nsw i32 %144, %145
  %147 = load i32, i32* @UNFM_P_SIZE, align 4
  %148 = sdiv i32 %146, %147
  %149 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %150 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = mul nsw i32 %148, %151
  %153 = sext i32 %152 to i64
  %154 = add nsw i64 %142, %153
  %155 = call i32 @set_le_ih_k_offset(%struct.item_head* %14, i64 %154)
  %156 = load i32, i32* @TYPE_INDIRECT, align 4
  %157 = call i32 @set_le_ih_k_type(%struct.item_head* %14, i32 %156)
  %158 = load %struct.item_head*, %struct.item_head** %12, align 8
  %159 = call i64 @get_ih_free_space(%struct.item_head* %158)
  %160 = call i32 @set_ih_free_space(%struct.item_head* %14, i64 %159)
  br label %161

161:                                              ; preds = %137, %115
  %162 = load i32, i32* %10, align 4
  %163 = call i32 @put_ih_item_len(%struct.item_head* %14, i32 %162)
  %164 = load %struct.item_head*, %struct.item_head** %12, align 8
  %165 = getelementptr inbounds %struct.item_head, %struct.item_head* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds %struct.item_head, %struct.item_head* %14, i32 0, i32 0
  store i32 %166, i32* %167, align 4
  %168 = load %struct.buffer_info*, %struct.buffer_info** %6, align 8
  %169 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %170 = load i32, i32* %9, align 4
  %171 = call i64 @B_N_PITEM(%struct.buffer_head* %169, i32 %170)
  %172 = load %struct.item_head*, %struct.item_head** %12, align 8
  %173 = call i32 @ih_item_len(%struct.item_head* %172)
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %171, %174
  %176 = load i32, i32* %10, align 4
  %177 = sext i32 %176 to i64
  %178 = sub nsw i64 %175, %177
  %179 = call i32 @leaf_insert_into_buf(%struct.buffer_info* %168, i32 0, %struct.item_head* %14, i64 %178, i32 0)
  br label %180

180:                                              ; preds = %161, %92
  br label %181

181:                                              ; preds = %180, %84
  ret void
}

declare dso_local i32 @RFALSE(i32, i8*, ...) #1

declare dso_local %struct.item_head* @B_N_PITEM_HEAD(%struct.buffer_head*, i32) #1

declare dso_local i64 @is_direntry_le_ih(%struct.item_head*) #1

declare dso_local i32 @leaf_copy_dir_entries(%struct.buffer_info*, %struct.buffer_head*, i32, i32, i64, i32) #1

declare dso_local i32 @memcpy(%struct.item_head*, %struct.item_head*, i32) #1

declare dso_local i32 @put_ih_item_len(%struct.item_head*, i32) #1

declare dso_local i64 @is_indirect_le_ih(%struct.item_head*) #1

declare dso_local i32 @ih_item_len(%struct.item_head*) #1

declare dso_local i64 @get_ih_free_space(%struct.item_head*) #1

declare dso_local i32 @set_ih_free_space(%struct.item_head*, i64) #1

declare dso_local i32 @op_is_left_mergeable(i32*, i32) #1

declare dso_local i32 @leaf_insert_into_buf(%struct.buffer_info*, i32, %struct.item_head*, i64, i32) #1

declare dso_local i32 @B_NR_ITEMS(%struct.buffer_head*) #1

declare dso_local i64 @B_N_PITEM(%struct.buffer_head*, i32) #1

declare dso_local i64 @I_ENTRY_COUNT(%struct.item_head*) #1

declare dso_local i64 @is_direct_le_ih(%struct.item_head*) #1

declare dso_local i32 @set_le_ih_k_offset(%struct.item_head*, i64) #1

declare dso_local i64 @le_ih_k_offset(%struct.item_head*) #1

declare dso_local i32 @set_le_ih_k_type(%struct.item_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
