; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_super.c_ufs_put_super_internal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_super.c_ufs_put_super_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ufs_sb_info = type { i32, i8**, i8*, i64, %struct.ufs_sb_private_info* }
%struct.ufs_sb_private_info = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.ufs_buffer_head = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@UFS_MAX_GROUP_LOADED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"EXIT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @ufs_put_super_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufs_put_super_internal(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.ufs_sb_info*, align 8
  %4 = alloca %struct.ufs_sb_private_info*, align 8
  %5 = alloca %struct.ufs_buffer_head*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %11 = load %struct.super_block*, %struct.super_block** %2, align 8
  %12 = call %struct.ufs_sb_info* @UFS_SB(%struct.super_block* %11)
  store %struct.ufs_sb_info* %12, %struct.ufs_sb_info** %3, align 8
  %13 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %3, align 8
  %14 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %13, i32 0, i32 4
  %15 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %14, align 8
  store %struct.ufs_sb_private_info* %15, %struct.ufs_sb_private_info** %4, align 8
  %16 = call i32 @UFSD(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 (...) @lock_kernel()
  %18 = load %struct.super_block*, %struct.super_block** %2, align 8
  %19 = call i32 @ufs_put_cstotal(%struct.super_block* %18)
  %20 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %21 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %25 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add i32 %23, %26
  %28 = sub i32 %27, 1
  %29 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %30 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = lshr i32 %28, %31
  store i32 %32, i32* %8, align 4
  %33 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %3, align 8
  %34 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** %7, align 8
  store i8* %36, i8** %6, align 8
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %84, %1
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %90

41:                                               ; preds = %37
  %42 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %43 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %47 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = add i32 %45, %48
  %50 = load i32, i32* %8, align 4
  %51 = icmp ugt i32 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %41
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %10, align 4
  %55 = sub i32 %53, %54
  %56 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %57 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = mul i32 %55, %58
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %52, %41
  %61 = load %struct.super_block*, %struct.super_block** %2, align 8
  %62 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %63 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %62, i32 0, i32 6
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = zext i32 %65 to i64
  %67 = add nsw i64 %64, %66
  %68 = load i32, i32* %9, align 4
  %69 = call %struct.ufs_buffer_head* @ubh_bread(%struct.super_block* %61, i64 %67, i32 %68)
  store %struct.ufs_buffer_head* %69, %struct.ufs_buffer_head** %5, align 8
  %70 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %5, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @ubh_memcpyubh(%struct.ufs_buffer_head* %70, i8* %71, i32 %72)
  %74 = load i32, i32* %9, align 4
  %75 = load i8*, i8** %7, align 8
  %76 = zext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %7, align 8
  %78 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %5, align 8
  %79 = call i32 @ubh_mark_buffer_uptodate(%struct.ufs_buffer_head* %78, i32 1)
  %80 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %5, align 8
  %81 = call i32 @ubh_mark_buffer_dirty(%struct.ufs_buffer_head* %80)
  %82 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %5, align 8
  %83 = call i32 @ubh_brelse(%struct.ufs_buffer_head* %82)
  br label %84

84:                                               ; preds = %60
  %85 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %86 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %10, align 4
  %89 = add i32 %88, %87
  store i32 %89, i32* %10, align 4
  br label %37

90:                                               ; preds = %37
  store i32 0, i32* %10, align 4
  br label %91

91:                                               ; preds = %109, %90
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %3, align 8
  %94 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ult i32 %92, %95
  br i1 %96, label %97, label %112

97:                                               ; preds = %91
  %98 = load %struct.super_block*, %struct.super_block** %2, align 8
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @ufs_put_cylinder(%struct.super_block* %98, i32 %99)
  %101 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %3, align 8
  %102 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %101, i32 0, i32 1
  %103 = load i8**, i8*** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @kfree(i8* %107)
  br label %109

109:                                              ; preds = %97
  %110 = load i32, i32* %10, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %91

112:                                              ; preds = %91
  br label %113

113:                                              ; preds = %126, %112
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* @UFS_MAX_GROUP_LOADED, align 4
  %116 = icmp ult i32 %114, %115
  br i1 %116, label %117, label %129

117:                                              ; preds = %113
  %118 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %3, align 8
  %119 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %118, i32 0, i32 1
  %120 = load i8**, i8*** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %120, i64 %122
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @kfree(i8* %124)
  br label %126

126:                                              ; preds = %117
  %127 = load i32, i32* %10, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %10, align 4
  br label %113

129:                                              ; preds = %113
  store i32 0, i32* %10, align 4
  br label %130

130:                                              ; preds = %145, %129
  %131 = load i32, i32* %10, align 4
  %132 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %133 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = icmp ult i32 %131, %134
  br i1 %135, label %136, label %148

136:                                              ; preds = %130
  %137 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %3, align 8
  %138 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %137, i32 0, i32 2
  %139 = load i8*, i8** %138, align 8
  %140 = load i32, i32* %10, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = call i32 @brelse(i8 zeroext %143)
  br label %145

145:                                              ; preds = %136
  %146 = load i32, i32* %10, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %10, align 4
  br label %130

148:                                              ; preds = %130
  %149 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %3, align 8
  %150 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %149, i32 0, i32 2
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @kfree(i8* %151)
  %153 = load i8*, i8** %6, align 8
  %154 = call i32 @kfree(i8* %153)
  %155 = call i32 (...) @unlock_kernel()
  %156 = call i32 @UFSD(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.ufs_sb_info* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @UFSD(i8*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @ufs_put_cstotal(%struct.super_block*) #1

declare dso_local %struct.ufs_buffer_head* @ubh_bread(%struct.super_block*, i64, i32) #1

declare dso_local i32 @ubh_memcpyubh(%struct.ufs_buffer_head*, i8*, i32) #1

declare dso_local i32 @ubh_mark_buffer_uptodate(%struct.ufs_buffer_head*, i32) #1

declare dso_local i32 @ubh_mark_buffer_dirty(%struct.ufs_buffer_head*) #1

declare dso_local i32 @ubh_brelse(%struct.ufs_buffer_head*) #1

declare dso_local i32 @ufs_put_cylinder(%struct.super_block*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @brelse(i8 zeroext) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
