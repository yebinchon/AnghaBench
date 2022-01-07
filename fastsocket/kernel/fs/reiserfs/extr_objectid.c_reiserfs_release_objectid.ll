; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_objectid.c_reiserfs_release_objectid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_objectid.c_reiserfs_release_objectid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_transaction_handle = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.reiserfs_super_block = type { i32 }

@.str = private unnamed_addr constant [60 x i8] c"vs-15005: objectid map corrupted cur_size == %d (max == %d)\00", align 1
@leaked_oid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"vs-15011\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"tried to free free object id (%lu)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reiserfs_release_objectid(%struct.reiserfs_transaction_handle* %0, i64 %1) #0 {
  %3 = alloca %struct.reiserfs_transaction_handle*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.reiserfs_super_block*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %3, align 8
  %10 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %9, i32 0, i32 1
  %11 = load %struct.super_block*, %struct.super_block** %10, align 8
  store %struct.super_block* %11, %struct.super_block** %5, align 8
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = call %struct.reiserfs_super_block* @SB_DISK_SUPER_BLOCK(%struct.super_block* %12)
  store %struct.reiserfs_super_block* %13, %struct.reiserfs_super_block** %6, align 8
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %6, align 8
  %16 = call i64* @objectid_map(%struct.super_block* %14, %struct.reiserfs_super_block* %15)
  store i64* %16, i64** %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %3, align 8
  %18 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.super_block*, %struct.super_block** %5, align 8
  %25 = load i64*, i64** %7, align 8
  %26 = call i32 @check_objectid_map(%struct.super_block* %24, i64* %25)
  %27 = load %struct.super_block*, %struct.super_block** %5, align 8
  %28 = load %struct.super_block*, %struct.super_block** %5, align 8
  %29 = call i32 @SB_BUFFER_WITH_SB(%struct.super_block* %28)
  %30 = call i32 @reiserfs_prepare_for_journal(%struct.super_block* %27, i32 %29, i32 1)
  %31 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %3, align 8
  %32 = load %struct.super_block*, %struct.super_block** %5, align 8
  %33 = load %struct.super_block*, %struct.super_block** %5, align 8
  %34 = call i32 @SB_BUFFER_WITH_SB(%struct.super_block* %33)
  %35 = call i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle* %31, %struct.super_block* %32, i32 %34)
  br label %36

36:                                               ; preds = %197, %2
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %6, align 8
  %39 = call i32 @sb_oid_cursize(%struct.reiserfs_super_block* %38)
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %200

41:                                               ; preds = %36
  %42 = load i64, i64* %4, align 8
  %43 = load i64*, i64** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @le32_to_cpu(i64 %47)
  %49 = icmp eq i64 %42, %48
  br i1 %49, label %50, label %110

50:                                               ; preds = %41
  %51 = load i64*, i64** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = call i32 @le32_add_cpu(i64* %54, i32 1)
  %56 = load i64*, i64** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %61, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %60, %66
  br i1 %67, label %68, label %109

68:                                               ; preds = %50
  %69 = load i64*, i64** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64*, i64** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = getelementptr inbounds i64, i64* %76, i64 2
  %78 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %6, align 8
  %79 = call i32 @sb_oid_cursize(%struct.reiserfs_super_block* %78)
  %80 = load i32, i32* %8, align 4
  %81 = sub nsw i32 %79, %80
  %82 = sub nsw i32 %81, 2
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 8
  %85 = trunc i64 %84 to i32
  %86 = call i32 @memmove(i64* %72, i64* %77, i32 %85)
  %87 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %6, align 8
  %88 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %6, align 8
  %89 = call i32 @sb_oid_cursize(%struct.reiserfs_super_block* %88)
  %90 = sub nsw i32 %89, 2
  %91 = call i32 @set_sb_oid_cursize(%struct.reiserfs_super_block* %87, i32 %90)
  %92 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %6, align 8
  %93 = call i32 @sb_oid_cursize(%struct.reiserfs_super_block* %92)
  %94 = icmp slt i32 %93, 2
  br i1 %94, label %101, label %95

95:                                               ; preds = %68
  %96 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %6, align 8
  %97 = call i32 @sb_oid_cursize(%struct.reiserfs_super_block* %96)
  %98 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %6, align 8
  %99 = call i32 @sb_oid_maxsize(%struct.reiserfs_super_block* %98)
  %100 = icmp sgt i32 %97, %99
  br label %101

101:                                              ; preds = %95, %68
  %102 = phi i1 [ true, %68 ], [ %100, %95 ]
  %103 = zext i1 %102 to i32
  %104 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %6, align 8
  %105 = call i32 @sb_oid_cursize(%struct.reiserfs_super_block* %104)
  %106 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %6, align 8
  %107 = call i32 @sb_oid_maxsize(%struct.reiserfs_super_block* %106)
  %108 = call i32 @RFALSE(i32 %103, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %105, i32 %107)
  br label %109

109:                                              ; preds = %101, %50
  br label %204

110:                                              ; preds = %41
  %111 = load i64, i64* %4, align 8
  %112 = load i64*, i64** %7, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = call i64 @le32_to_cpu(i64 %116)
  %118 = icmp sgt i64 %111, %117
  br i1 %118, label %119, label %197

119:                                              ; preds = %110
  %120 = load i64, i64* %4, align 8
  %121 = load i64*, i64** %7, align 8
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %121, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = call i64 @le32_to_cpu(i64 %126)
  %128 = icmp slt i64 %120, %127
  br i1 %128, label %129, label %197

129:                                              ; preds = %119
  %130 = load i64, i64* %4, align 8
  %131 = add nsw i64 %130, 1
  %132 = load i64*, i64** %7, align 8
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %132, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = call i64 @le32_to_cpu(i64 %137)
  %139 = icmp eq i64 %131, %138
  br i1 %139, label %140, label %147

140:                                              ; preds = %129
  %141 = load i64*, i64** %7, align 8
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %141, i64 %144
  %146 = call i32 @le32_add_cpu(i64* %145, i32 -1)
  br label %204

147:                                              ; preds = %129
  %148 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %6, align 8
  %149 = call i32 @sb_oid_cursize(%struct.reiserfs_super_block* %148)
  %150 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %6, align 8
  %151 = call i32 @sb_oid_maxsize(%struct.reiserfs_super_block* %150)
  %152 = icmp eq i32 %149, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = load %struct.super_block*, %struct.super_block** %5, align 8
  %155 = load i32, i32* @leaked_oid, align 4
  %156 = call i32 @PROC_INFO_INC(%struct.super_block* %154, i32 %155)
  br label %204

157:                                              ; preds = %147
  %158 = load i64*, i64** %7, align 8
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %158, i64 %160
  %162 = getelementptr inbounds i64, i64* %161, i64 3
  %163 = load i64*, i64** %7, align 8
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %163, i64 %165
  %167 = getelementptr inbounds i64, i64* %166, i64 1
  %168 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %6, align 8
  %169 = call i32 @sb_oid_cursize(%struct.reiserfs_super_block* %168)
  %170 = load i32, i32* %8, align 4
  %171 = sub nsw i32 %169, %170
  %172 = sub nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = mul i64 %173, 8
  %175 = trunc i64 %174 to i32
  %176 = call i32 @memmove(i64* %162, i64* %167, i32 %175)
  %177 = load i64, i64* %4, align 8
  %178 = call i64 @cpu_to_le32(i64 %177)
  %179 = load i64*, i64** %7, align 8
  %180 = load i32, i32* %8, align 4
  %181 = add nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i64, i64* %179, i64 %182
  store i64 %178, i64* %183, align 8
  %184 = load i64, i64* %4, align 8
  %185 = add nsw i64 %184, 1
  %186 = call i64 @cpu_to_le32(i64 %185)
  %187 = load i64*, i64** %7, align 8
  %188 = load i32, i32* %8, align 4
  %189 = add nsw i32 %188, 2
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i64, i64* %187, i64 %190
  store i64 %186, i64* %191, align 8
  %192 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %6, align 8
  %193 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %6, align 8
  %194 = call i32 @sb_oid_cursize(%struct.reiserfs_super_block* %193)
  %195 = add nsw i32 %194, 2
  %196 = call i32 @set_sb_oid_cursize(%struct.reiserfs_super_block* %192, i32 %195)
  br label %204

197:                                              ; preds = %119, %110
  %198 = load i32, i32* %8, align 4
  %199 = add nsw i32 %198, 2
  store i32 %199, i32* %8, align 4
  br label %36

200:                                              ; preds = %36
  %201 = load %struct.super_block*, %struct.super_block** %5, align 8
  %202 = load i64, i64* %4, align 8
  %203 = call i32 @reiserfs_error(%struct.super_block* %201, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %202)
  br label %204

204:                                              ; preds = %200, %157, %153, %140, %109
  ret void
}

declare dso_local %struct.reiserfs_super_block* @SB_DISK_SUPER_BLOCK(%struct.super_block*) #1

declare dso_local i64* @objectid_map(%struct.super_block*, %struct.reiserfs_super_block*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @check_objectid_map(%struct.super_block*, i64*) #1

declare dso_local i32 @reiserfs_prepare_for_journal(%struct.super_block*, i32, i32) #1

declare dso_local i32 @SB_BUFFER_WITH_SB(%struct.super_block*) #1

declare dso_local i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle*, %struct.super_block*, i32) #1

declare dso_local i32 @sb_oid_cursize(%struct.reiserfs_super_block*) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i32 @le32_add_cpu(i64*, i32) #1

declare dso_local i32 @memmove(i64*, i64*, i32) #1

declare dso_local i32 @set_sb_oid_cursize(%struct.reiserfs_super_block*, i32) #1

declare dso_local i32 @RFALSE(i32, i8*, i32, i32) #1

declare dso_local i32 @sb_oid_maxsize(%struct.reiserfs_super_block*) #1

declare dso_local i32 @PROC_INFO_INC(%struct.super_block*, i32) #1

declare dso_local i64 @cpu_to_le32(i64) #1

declare dso_local i32 @reiserfs_error(%struct.super_block*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
