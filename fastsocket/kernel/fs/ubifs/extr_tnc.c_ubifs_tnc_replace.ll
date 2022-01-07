; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_ubifs_tnc_replace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_ubifs_tnc_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%union.ubifs_key = type { i32 }
%struct.ubifs_znode = type { %struct.ubifs_zbranch*, i64 }
%struct.ubifs_zbranch = type { i32, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"old LEB %d:%d, new LEB %d:%d, len %d, key %s\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"rc returned %d, znode %p, n %d, LEB %d:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_tnc_replace(%struct.ubifs_info* %0, %union.ubifs_key* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.ubifs_info*, align 8
  %9 = alloca %union.ubifs_key*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ubifs_znode*, align 8
  %19 = alloca %struct.ubifs_zbranch*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %8, align 8
  store %union.ubifs_key* %1, %union.ubifs_key** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %17, align 4
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %21 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %14, align 4
  %28 = load %union.ubifs_key*, %union.ubifs_key** %9, align 8
  %29 = call i32 @DBGKEY(%union.ubifs_key* %28)
  %30 = call i32 (i8*, i32, ...) @dbg_tnc(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 %29)
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %32 = load %union.ubifs_key*, %union.ubifs_key** %9, align 8
  %33 = call i32 @lookup_level0_dirty(%struct.ubifs_info* %31, %union.ubifs_key* %32, %struct.ubifs_znode** %18, i32* %16)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %7
  %37 = load i32, i32* %15, align 4
  store i32 %37, i32* %17, align 4
  br label %175

38:                                               ; preds = %7
  %39 = load i32, i32* %15, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %160

41:                                               ; preds = %38
  %42 = load %struct.ubifs_znode*, %struct.ubifs_znode** %18, align 8
  %43 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %42, i32 0, i32 0
  %44 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %43, align 8
  %45 = load i32, i32* %16, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %44, i64 %46
  store %struct.ubifs_zbranch* %47, %struct.ubifs_zbranch** %19, align 8
  store i32 0, i32* %15, align 4
  %48 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %19, align 8
  %49 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %83

53:                                               ; preds = %41
  %54 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %19, align 8
  %55 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %83

59:                                               ; preds = %53
  %60 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %19, align 8
  %61 = call i32 @lnc_free(%struct.ubifs_zbranch* %60)
  %62 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %63 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %19, align 8
  %64 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %19, align 8
  %67 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ubifs_add_dirt(%struct.ubifs_info* %62, i32 %65, i32 %68)
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %17, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %59
  br label %175

73:                                               ; preds = %59
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %19, align 8
  %76 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %19, align 8
  %79 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %19, align 8
  %82 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  store i32 1, i32* %15, align 4
  br label %159

83:                                               ; preds = %53, %41
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %85 = load %union.ubifs_key*, %union.ubifs_key** %9, align 8
  %86 = call i64 @is_hash_key(%struct.ubifs_info* %84, %union.ubifs_key* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %158

88:                                               ; preds = %83
  %89 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %90 = load %union.ubifs_key*, %union.ubifs_key** %9, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @resolve_collision_directly(%struct.ubifs_info* %89, %union.ubifs_key* %90, %struct.ubifs_znode** %18, i32* %16, i32 %91, i32 %92)
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %15, align 4
  %95 = load %struct.ubifs_znode*, %struct.ubifs_znode** %18, align 8
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %11, align 4
  %99 = call i32 (i8*, i32, ...) @dbg_tnc(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %94, %struct.ubifs_znode* %95, i32 %96, i32 %97, i32 %98)
  %100 = load i32, i32* %15, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %88
  %103 = load i32, i32* %15, align 4
  store i32 %103, i32* %17, align 4
  br label %175

104:                                              ; preds = %88
  %105 = load i32, i32* %15, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %157

107:                                              ; preds = %104
  %108 = load %struct.ubifs_znode*, %struct.ubifs_znode** %18, align 8
  %109 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %107
  %113 = load %struct.ubifs_znode*, %struct.ubifs_znode** %18, align 8
  %114 = call i32 @ubifs_zn_dirty(%struct.ubifs_znode* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %127, label %116

116:                                              ; preds = %112, %107
  %117 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %118 = load %struct.ubifs_znode*, %struct.ubifs_znode** %18, align 8
  %119 = call %struct.ubifs_znode* @dirty_cow_bottom_up(%struct.ubifs_info* %117, %struct.ubifs_znode* %118)
  store %struct.ubifs_znode* %119, %struct.ubifs_znode** %18, align 8
  %120 = load %struct.ubifs_znode*, %struct.ubifs_znode** %18, align 8
  %121 = call i64 @IS_ERR(%struct.ubifs_znode* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %116
  %124 = load %struct.ubifs_znode*, %struct.ubifs_znode** %18, align 8
  %125 = call i32 @PTR_ERR(%struct.ubifs_znode* %124)
  store i32 %125, i32* %17, align 4
  br label %175

126:                                              ; preds = %116
  br label %127

127:                                              ; preds = %126, %112
  %128 = load %struct.ubifs_znode*, %struct.ubifs_znode** %18, align 8
  %129 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %128, i32 0, i32 0
  %130 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %129, align 8
  %131 = load i32, i32* %16, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %130, i64 %132
  store %struct.ubifs_zbranch* %133, %struct.ubifs_zbranch** %19, align 8
  %134 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %19, align 8
  %135 = call i32 @lnc_free(%struct.ubifs_zbranch* %134)
  %136 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %137 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %19, align 8
  %138 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %19, align 8
  %141 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @ubifs_add_dirt(%struct.ubifs_info* %136, i32 %139, i32 %142)
  store i32 %143, i32* %17, align 4
  %144 = load i32, i32* %17, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %127
  br label %175

147:                                              ; preds = %127
  %148 = load i32, i32* %12, align 4
  %149 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %19, align 8
  %150 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* %13, align 4
  %152 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %19, align 8
  %153 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* %14, align 4
  %155 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %19, align 8
  %156 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 4
  br label %157

157:                                              ; preds = %147, %104
  br label %158

158:                                              ; preds = %157, %83
  br label %159

159:                                              ; preds = %158, %73
  br label %160

160:                                              ; preds = %159, %38
  %161 = load i32, i32* %15, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %160
  %164 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* %14, align 4
  %167 = call i32 @ubifs_add_dirt(%struct.ubifs_info* %164, i32 %165, i32 %166)
  store i32 %167, i32* %17, align 4
  br label %168

168:                                              ; preds = %163, %160
  %169 = load i32, i32* %17, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %168
  %172 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %173 = call i32 @dbg_check_tnc(%struct.ubifs_info* %172, i32 0)
  store i32 %173, i32* %17, align 4
  br label %174

174:                                              ; preds = %171, %168
  br label %175

175:                                              ; preds = %174, %146, %123, %102, %72, %36
  %176 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %177 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %176, i32 0, i32 0
  %178 = call i32 @mutex_unlock(i32* %177)
  %179 = load i32, i32* %17, align 4
  ret i32 %179
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dbg_tnc(i8*, i32, ...) #1

declare dso_local i32 @DBGKEY(%union.ubifs_key*) #1

declare dso_local i32 @lookup_level0_dirty(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_znode**, i32*) #1

declare dso_local i32 @lnc_free(%struct.ubifs_zbranch*) #1

declare dso_local i32 @ubifs_add_dirt(%struct.ubifs_info*, i32, i32) #1

declare dso_local i64 @is_hash_key(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i32 @resolve_collision_directly(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_znode**, i32*, i32, i32) #1

declare dso_local i32 @ubifs_zn_dirty(%struct.ubifs_znode*) #1

declare dso_local %struct.ubifs_znode* @dirty_cow_bottom_up(%struct.ubifs_info*, %struct.ubifs_znode*) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_znode*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_znode*) #1

declare dso_local i32 @dbg_check_tnc(%struct.ubifs_info*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
