; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_ubifs_tnc_next_ent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_ubifs_tnc_next_ent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_dent_node = type { i32 }
%struct.ubifs_info = type { i32 }
%union.ubifs_key = type { i32 }
%struct.qstr = type { i64 }
%struct.ubifs_znode = type { %struct.ubifs_zbranch* }
%struct.ubifs_zbranch = type { %union.ubifs_key, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"(lowest)\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"rc returned %d, znode %p, n %d\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ubifs_dent_node* @ubifs_tnc_next_ent(%struct.ubifs_info* %0, %union.ubifs_key* %1, %struct.qstr* %2) #0 {
  %4 = alloca %struct.ubifs_dent_node*, align 8
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %union.ubifs_key*, align 8
  %7 = alloca %struct.qstr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ubifs_znode*, align 8
  %12 = alloca %struct.ubifs_dent_node*, align 8
  %13 = alloca %struct.ubifs_zbranch*, align 8
  %14 = alloca %union.ubifs_key*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %union.ubifs_key* %1, %union.ubifs_key** %6, align 8
  store %struct.qstr* %2, %struct.qstr** %7, align 8
  %15 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %16 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %17 = call i32 @key_type(%struct.ubifs_info* %15, %union.ubifs_key* %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.qstr*, %struct.qstr** %7, align 8
  %19 = getelementptr inbounds %struct.qstr, %struct.qstr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.qstr*, %struct.qstr** %7, align 8
  %24 = getelementptr inbounds %struct.qstr, %struct.qstr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  br label %28

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %27, %22
  %29 = phi i8* [ %26, %22 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %27 ]
  %30 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %31 = call i32 @DBGKEY(%union.ubifs_key* %30)
  %32 = call i32 (i8*, ...) @dbg_tnc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %29, i32 %31)
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %34 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %35 = call i32 @is_hash_key(%struct.ubifs_info* %33, %union.ubifs_key* %34)
  %36 = call i32 @ubifs_assert(i32 %35)
  %37 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %38 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %41 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %42 = call i32 @ubifs_lookup_level0(%struct.ubifs_info* %40, %union.ubifs_key* %41, %struct.ubifs_znode** %11, i32* %8)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %28
  br label %149

49:                                               ; preds = %28
  %50 = load %struct.qstr*, %struct.qstr** %7, align 8
  %51 = getelementptr inbounds %struct.qstr, %struct.qstr* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %81

54:                                               ; preds = %49
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %54
  %58 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %59 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %60 = load %struct.qstr*, %struct.qstr** %7, align 8
  %61 = call i32 @resolve_collision(%struct.ubifs_info* %58, %union.ubifs_key* %59, %struct.ubifs_znode** %11, i32* %8, %struct.qstr* %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 (i8*, ...) @dbg_tnc(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %62, %struct.ubifs_znode* %63, i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %57
  br label %149

72:                                               ; preds = %57
  br label %73

73:                                               ; preds = %72, %54
  %74 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %75 = call i32 @tnc_next(%struct.ubifs_info* %74, %struct.ubifs_znode** %11, i32* %8)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %149

80:                                               ; preds = %73
  br label %92

81:                                               ; preds = %49
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %81
  %85 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %86 = call i32 @tnc_next(%struct.ubifs_info* %85, %struct.ubifs_znode** %11, i32* %8)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %149

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %90, %81
  br label %92

92:                                               ; preds = %91, %80
  %93 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %94 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %93, i32 0, i32 0
  %95 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %95, i64 %97
  store %struct.ubifs_zbranch* %98, %struct.ubifs_zbranch** %13, align 8
  %99 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %13, align 8
  %100 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @GFP_NOFS, align 4
  %103 = call %struct.ubifs_dent_node* @kmalloc(i32 %101, i32 %102)
  store %struct.ubifs_dent_node* %103, %struct.ubifs_dent_node** %12, align 8
  %104 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %12, align 8
  %105 = icmp ne %struct.ubifs_dent_node* %104, null
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = call i64 @unlikely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %92
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %9, align 4
  br label %149

113:                                              ; preds = %92
  %114 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %13, align 8
  %115 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %114, i32 0, i32 0
  store %union.ubifs_key* %115, %union.ubifs_key** %14, align 8
  %116 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %117 = load %union.ubifs_key*, %union.ubifs_key** %14, align 8
  %118 = call i64 @key_inum(%struct.ubifs_info* %116, %union.ubifs_key* %117)
  %119 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %120 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %121 = call i64 @key_inum(%struct.ubifs_info* %119, %union.ubifs_key* %120)
  %122 = icmp ne i64 %118, %121
  br i1 %122, label %129, label %123

123:                                              ; preds = %113
  %124 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %125 = load %union.ubifs_key*, %union.ubifs_key** %14, align 8
  %126 = call i32 @key_type(%struct.ubifs_info* %124, %union.ubifs_key* %125)
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %123, %113
  %130 = load i32, i32* @ENOENT, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %9, align 4
  br label %146

132:                                              ; preds = %123
  %133 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %134 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %13, align 8
  %135 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %12, align 8
  %136 = call i32 @tnc_read_node_nm(%struct.ubifs_info* %133, %struct.ubifs_zbranch* %134, %struct.ubifs_dent_node* %135)
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = call i64 @unlikely(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %132
  br label %146

141:                                              ; preds = %132
  %142 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %143 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %142, i32 0, i32 0
  %144 = call i32 @mutex_unlock(i32* %143)
  %145 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %12, align 8
  store %struct.ubifs_dent_node* %145, %struct.ubifs_dent_node** %4, align 8
  br label %155

146:                                              ; preds = %140, %129
  %147 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %12, align 8
  %148 = call i32 @kfree(%struct.ubifs_dent_node* %147)
  br label %149

149:                                              ; preds = %146, %110, %89, %79, %71, %48
  %150 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %151 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %150, i32 0, i32 0
  %152 = call i32 @mutex_unlock(i32* %151)
  %153 = load i32, i32* %9, align 4
  %154 = call %struct.ubifs_dent_node* @ERR_PTR(i32 %153)
  store %struct.ubifs_dent_node* %154, %struct.ubifs_dent_node** %4, align 8
  br label %155

155:                                              ; preds = %149, %141
  %156 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %4, align 8
  ret %struct.ubifs_dent_node* %156
}

declare dso_local i32 @key_type(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i32 @dbg_tnc(i8*, ...) #1

declare dso_local i32 @DBGKEY(%union.ubifs_key*) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @is_hash_key(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ubifs_lookup_level0(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_znode**, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @resolve_collision(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_znode**, i32*, %struct.qstr*) #1

declare dso_local i32 @tnc_next(%struct.ubifs_info*, %struct.ubifs_znode**, i32*) #1

declare dso_local %struct.ubifs_dent_node* @kmalloc(i32, i32) #1

declare dso_local i64 @key_inum(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i32 @tnc_read_node_nm(%struct.ubifs_info*, %struct.ubifs_zbranch*, %struct.ubifs_dent_node*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.ubifs_dent_node*) #1

declare dso_local %struct.ubifs_dent_node* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
