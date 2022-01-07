; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_fix_node.c_get_far_parent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_fix_node.c_get_far_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.tree_balance = type { i32*, i32*, i32, %struct.treepath* }
%struct.treepath = type { i32 }
%struct.buffer_head = type { i64 }
%struct.cpu_key = type { i32 }

@s_path_to_neighbor_father = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@INT_MAX = common dso_local global i32 0, align 4
@FIRST_PATH_ELEMENT_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"PAP-8180: invalid path length\00", align 1
@REPEAT_SEARCH = common dso_local global i32 0, align 4
@RIGHT_PARENTS = common dso_local global i8 0, align 1
@CARRY_ON = common dso_local global i32 0, align 4
@DISK_LEAF_NODE_LEVEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"PAP-8185: (%b %z) level too small\00", align 1
@LEFT_PARENTS = common dso_local global i8 0, align 1
@IO_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"PAP-8190: (%b %z) level too small\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"PAP-8192: path length is too small\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree_balance*, i32, %struct.buffer_head**, %struct.buffer_head**, i8)* @get_far_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_far_parent(%struct.tree_balance* %0, i32 %1, %struct.buffer_head** %2, %struct.buffer_head** %3, i8 signext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tree_balance*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head**, align 8
  %10 = alloca %struct.buffer_head**, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.treepath*, align 8
  %14 = alloca %struct.cpu_key, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.buffer_head** %2, %struct.buffer_head*** %9, align 8
  store %struct.buffer_head** %3, %struct.buffer_head*** %10, align 8
  store i8 %4, i8* %11, align 1
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @s_path_to_neighbor_father, i32 0, i32 0), align 4
  %20 = call i32 @INITIALIZE_PATH(i32 %19)
  %21 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %22 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %21, i32 0, i32 3
  %23 = load %struct.treepath*, %struct.treepath** %22, align 8
  store %struct.treepath* %23, %struct.treepath** %13, align 8
  %24 = load i32, i32* @INT_MAX, align 4
  store i32 %24, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %25 = load %struct.treepath*, %struct.treepath** %13, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @PATH_H_PATH_OFFSET(%struct.treepath* %25, i32 %26)
  store i32 %27, i32* %18, align 4
  %28 = load i32, i32* %18, align 4
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* @FIRST_PATH_ELEMENT_OFFSET, align 4
  %31 = icmp slt i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 (i32, i8*, ...) @RFALSE(i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %89, %5
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* @FIRST_PATH_ELEMENT_OFFSET, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %92

38:                                               ; preds = %34
  %39 = load %struct.treepath*, %struct.treepath** %13, align 8
  %40 = load i32, i32* %15, align 4
  %41 = sub nsw i32 %40, 1
  %42 = call %struct.buffer_head* @PATH_OFFSET_PBUFFER(%struct.treepath* %39, i32 %41)
  store %struct.buffer_head* %42, %struct.buffer_head** %12, align 8
  %43 = call i32 @B_IS_IN_TREE(%struct.buffer_head* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @REPEAT_SEARCH, align 4
  store i32 %46, i32* %6, align 4
  br label %228

47:                                               ; preds = %38
  %48 = load %struct.treepath*, %struct.treepath** %13, align 8
  %49 = load i32, i32* %15, align 4
  %50 = sub nsw i32 %49, 1
  %51 = call i32 @PATH_OFFSET_POSITION(%struct.treepath* %48, i32 %50)
  store i32 %51, i32* %16, align 4
  %52 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %53 = call i32 @B_NR_ITEMS(%struct.buffer_head* %52)
  %54 = icmp sgt i32 %51, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* @REPEAT_SEARCH, align 4
  store i32 %56, i32* %6, align 4
  br label %228

57:                                               ; preds = %47
  %58 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %59 = load i32, i32* %16, align 4
  %60 = call i64 @B_N_CHILD_NUM(%struct.buffer_head* %58, i32 %59)
  %61 = load %struct.treepath*, %struct.treepath** %13, align 8
  %62 = load i32, i32* %15, align 4
  %63 = call %struct.buffer_head* @PATH_OFFSET_PBUFFER(%struct.treepath* %61, i32 %62)
  %64 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %60, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i32, i32* @REPEAT_SEARCH, align 4
  store i32 %68, i32* %6, align 4
  br label %228

69:                                               ; preds = %57
  %70 = load i8, i8* %11, align 1
  %71 = sext i8 %70 to i32
  %72 = load i8, i8* @RIGHT_PARENTS, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %77 = call i32 @B_NR_ITEMS(%struct.buffer_head* %76)
  store i32 %77, i32* %17, align 4
  br label %78

78:                                               ; preds = %75, %69
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* %17, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %84 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  store %struct.buffer_head* %83, %struct.buffer_head** %84, align 8
  %85 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %86 = load %struct.buffer_head*, %struct.buffer_head** %85, align 8
  %87 = call i32 @get_bh(%struct.buffer_head* %86)
  br label %92

88:                                               ; preds = %78
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %15, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %15, align 4
  br label %34

92:                                               ; preds = %82, %34
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* @FIRST_PATH_ELEMENT_OFFSET, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %115

96:                                               ; preds = %92
  %97 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %98 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %97, i32 0, i32 3
  %99 = load %struct.treepath*, %struct.treepath** %98, align 8
  %100 = load i32, i32* @FIRST_PATH_ELEMENT_OFFSET, align 4
  %101 = call %struct.buffer_head* @PATH_OFFSET_PBUFFER(%struct.treepath* %99, i32 %100)
  %102 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %105 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @SB_ROOT_BLOCK(i32 %106)
  %108 = icmp eq i64 %103, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %96
  %110 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %110, align 8
  %111 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %111, align 8
  %112 = load i32, i32* @CARRY_ON, align 4
  store i32 %112, i32* %6, align 4
  br label %228

113:                                              ; preds = %96
  %114 = load i32, i32* @REPEAT_SEARCH, align 4
  store i32 %114, i32* %6, align 4
  br label %228

115:                                              ; preds = %92
  %116 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %117 = load %struct.buffer_head*, %struct.buffer_head** %116, align 8
  %118 = call i32 @B_LEVEL(%struct.buffer_head* %117)
  %119 = load i32, i32* @DISK_LEAF_NODE_LEVEL, align 4
  %120 = icmp sle i32 %118, %119
  %121 = zext i1 %120 to i32
  %122 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %123 = load %struct.buffer_head*, %struct.buffer_head** %122, align 8
  %124 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %125 = load %struct.buffer_head*, %struct.buffer_head** %124, align 8
  %126 = call i32 (i32, i8*, ...) @RFALSE(i32 %121, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.buffer_head* %123, %struct.buffer_head* %125)
  %127 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %128 = load %struct.buffer_head*, %struct.buffer_head** %127, align 8
  %129 = call i64 @buffer_locked(%struct.buffer_head* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %115
  %132 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %133 = load %struct.buffer_head*, %struct.buffer_head** %132, align 8
  %134 = call i32 @__wait_on_buffer(%struct.buffer_head* %133)
  %135 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %136 = call i64 @FILESYSTEM_CHANGED_TB(%struct.tree_balance* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %131
  %139 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %140 = load %struct.buffer_head*, %struct.buffer_head** %139, align 8
  %141 = call i32 @brelse(%struct.buffer_head* %140)
  %142 = load i32, i32* @REPEAT_SEARCH, align 4
  store i32 %142, i32* %6, align 4
  br label %228

143:                                              ; preds = %131
  br label %144

144:                                              ; preds = %143, %115
  %145 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %146 = load %struct.buffer_head*, %struct.buffer_head** %145, align 8
  %147 = load i8, i8* %11, align 1
  %148 = sext i8 %147 to i32
  %149 = load i8, i8* @LEFT_PARENTS, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %148, %150
  br i1 %151, label %152, label %162

152:                                              ; preds = %144
  %153 = load i32, i32* %16, align 4
  %154 = sub nsw i32 %153, 1
  %155 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %156 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %8, align 4
  %159 = sub nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %157, i64 %160
  store i32 %154, i32* %161, align 4
  br label %171

162:                                              ; preds = %144
  %163 = load i32, i32* %16, align 4
  %164 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %165 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sub nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  store i32 %163, i32* %170, align 4
  br label %171

171:                                              ; preds = %162, %152
  %172 = phi i32 [ %154, %152 ], [ %163, %162 ]
  %173 = call i32 @B_N_PDELIM_KEY(%struct.buffer_head* %146, i32 %172)
  %174 = call i32 @le_key2cpu_key(%struct.cpu_key* %14, i32 %173)
  %175 = load i8, i8* %11, align 1
  %176 = sext i8 %175 to i32
  %177 = load i8, i8* @LEFT_PARENTS, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %176, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %171
  %181 = call i32 @decrement_key(%struct.cpu_key* %14)
  br label %182

182:                                              ; preds = %180, %171
  %183 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %184 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* %8, align 4
  %187 = add nsw i32 %186, 1
  %188 = call i64 @search_by_key(i32 %185, %struct.cpu_key* %14, %struct.TYPE_6__* @s_path_to_neighbor_father, i32 %187)
  %189 = load i64, i64* @IO_ERROR, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %182
  %192 = load i64, i64* @IO_ERROR, align 8
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %6, align 4
  br label %228

194:                                              ; preds = %182
  %195 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %196 = call i64 @FILESYSTEM_CHANGED_TB(%struct.tree_balance* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %194
  %199 = call i32 @pathrelse(%struct.TYPE_6__* @s_path_to_neighbor_father)
  %200 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %201 = load %struct.buffer_head*, %struct.buffer_head** %200, align 8
  %202 = call i32 @brelse(%struct.buffer_head* %201)
  %203 = load i32, i32* @REPEAT_SEARCH, align 4
  store i32 %203, i32* %6, align 4
  br label %228

204:                                              ; preds = %194
  %205 = call %struct.buffer_head* @PATH_PLAST_BUFFER(%struct.TYPE_6__* @s_path_to_neighbor_father)
  %206 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  store %struct.buffer_head* %205, %struct.buffer_head** %206, align 8
  %207 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %208 = load %struct.buffer_head*, %struct.buffer_head** %207, align 8
  %209 = call i32 @B_LEVEL(%struct.buffer_head* %208)
  %210 = load i32, i32* %8, align 4
  %211 = add nsw i32 %210, 1
  %212 = icmp ne i32 %209, %211
  %213 = zext i1 %212 to i32
  %214 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %215 = load %struct.buffer_head*, %struct.buffer_head** %214, align 8
  %216 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %217 = load %struct.buffer_head*, %struct.buffer_head** %216, align 8
  %218 = call i32 (i32, i8*, ...) @RFALSE(i32 %213, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), %struct.buffer_head* %215, %struct.buffer_head* %217)
  %219 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @s_path_to_neighbor_father, i32 0, i32 0), align 4
  %220 = load i32, i32* @FIRST_PATH_ELEMENT_OFFSET, align 4
  %221 = icmp slt i32 %219, %220
  %222 = zext i1 %221 to i32
  %223 = call i32 (i32, i8*, ...) @RFALSE(i32 %222, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %224 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @s_path_to_neighbor_father, i32 0, i32 0), align 4
  %225 = add nsw i32 %224, -1
  store i32 %225, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @s_path_to_neighbor_father, i32 0, i32 0), align 4
  %226 = call i32 @pathrelse(%struct.TYPE_6__* @s_path_to_neighbor_father)
  %227 = load i32, i32* @CARRY_ON, align 4
  store i32 %227, i32* %6, align 4
  br label %228

228:                                              ; preds = %204, %198, %191, %138, %113, %109, %67, %55, %45
  %229 = load i32, i32* %6, align 4
  ret i32 %229
}

declare dso_local i32 @INITIALIZE_PATH(i32) #1

declare dso_local i32 @PATH_H_PATH_OFFSET(%struct.treepath*, i32) #1

declare dso_local i32 @RFALSE(i32, i8*, ...) #1

declare dso_local i32 @B_IS_IN_TREE(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @PATH_OFFSET_PBUFFER(%struct.treepath*, i32) #1

declare dso_local i32 @PATH_OFFSET_POSITION(%struct.treepath*, i32) #1

declare dso_local i32 @B_NR_ITEMS(%struct.buffer_head*) #1

declare dso_local i64 @B_N_CHILD_NUM(%struct.buffer_head*, i32) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i64 @SB_ROOT_BLOCK(i32) #1

declare dso_local i32 @B_LEVEL(%struct.buffer_head*) #1

declare dso_local i64 @buffer_locked(%struct.buffer_head*) #1

declare dso_local i32 @__wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i64 @FILESYSTEM_CHANGED_TB(%struct.tree_balance*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @le_key2cpu_key(%struct.cpu_key*, i32) #1

declare dso_local i32 @B_N_PDELIM_KEY(%struct.buffer_head*, i32) #1

declare dso_local i32 @decrement_key(%struct.cpu_key*) #1

declare dso_local i64 @search_by_key(i32, %struct.cpu_key*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @pathrelse(%struct.TYPE_6__*) #1

declare dso_local %struct.buffer_head* @PATH_PLAST_BUFFER(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
