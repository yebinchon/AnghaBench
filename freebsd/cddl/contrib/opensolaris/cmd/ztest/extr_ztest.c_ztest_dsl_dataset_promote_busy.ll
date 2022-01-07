; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_dsl_dataset_promote_busy.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_dsl_dataset_promote_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@ztest_name_lock = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s@s1_%llu\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s/c1_%llu\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s@s2_%llu\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%s/c2_%llu\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%s@s3_%llu\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"dmu_take_snapshot(%s) = %d\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"dmu_objset_create(%s) = %d\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"dmu_open_snapshot(%s) = %d\00", align 1
@DMU_OST_ANY = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"dmu_objset_own(%s) = %d\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [39 x i8] c"dsl_dataset_promote(%s), %d, not EBUSY\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ztest_dsl_dataset_promote_busy(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %21 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %9, align 8
  %24 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %10, align 8
  %27 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %11, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %12, align 8
  %33 = load i32, i32* @RW_READER, align 4
  %34 = call i32 @rw_enter(i32* @ztest_name_lock, i32 %33)
  %35 = load i8*, i8** %12, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @ztest_dsl_dataset_cleanup(i8* %35, i32 %36)
  %38 = trunc i64 %15 to i32
  %39 = load i8*, i8** %12, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @snprintf(i8* %17, i32 %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %39, i32 %40)
  %42 = trunc i64 %19 to i32
  %43 = load i8*, i8** %12, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @snprintf(i8* %20, i32 %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %43, i32 %44)
  %46 = trunc i64 %22 to i32
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @snprintf(i8* %23, i32 %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %20, i32 %47)
  %49 = trunc i64 %25 to i32
  %50 = load i8*, i8** %12, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @snprintf(i8* %26, i32 %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %50, i32 %51)
  %53 = trunc i64 %28 to i32
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @snprintf(i8* %29, i32 %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %20, i32 %54)
  %56 = load i8*, i8** %12, align 8
  %57 = call i64 @strchr(i8* %17, i8 signext 64)
  %58 = add nsw i64 %57, 1
  %59 = call i32 @dmu_objset_snapshot_one(i8* %56, i64 %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %2
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* @EEXIST, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %62
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* @ENOSPC, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* @FTAG, align 4
  %72 = call i32 @ztest_record_enospc(i32 %71)
  br label %176

73:                                               ; preds = %66
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @fatal(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %17, i32 %74)
  br label %76

76:                                               ; preds = %73, %62, %2
  %77 = call i32 @dmu_objset_clone(i8* %20, i8* %17)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %76
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* @ENOSPC, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i32, i32* @FTAG, align 4
  %86 = call i32 @ztest_record_enospc(i32 %85)
  br label %176

87:                                               ; preds = %80
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @fatal(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %20, i32 %88)
  br label %90

90:                                               ; preds = %87, %76
  %91 = call i64 @strchr(i8* %23, i8 signext 64)
  %92 = add nsw i64 %91, 1
  %93 = call i32 @dmu_objset_snapshot_one(i8* %20, i64 %92)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %90
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* @EEXIST, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %96
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* @ENOSPC, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i32, i32* @FTAG, align 4
  %106 = call i32 @ztest_record_enospc(i32 %105)
  br label %176

107:                                              ; preds = %100
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @fatal(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %23, i32 %108)
  br label %110

110:                                              ; preds = %107, %96, %90
  %111 = call i64 @strchr(i8* %29, i8 signext 64)
  %112 = add nsw i64 %111, 1
  %113 = call i32 @dmu_objset_snapshot_one(i8* %20, i64 %112)
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %13, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %130

116:                                              ; preds = %110
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* @EEXIST, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %130

120:                                              ; preds = %116
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* @ENOSPC, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load i32, i32* @FTAG, align 4
  %126 = call i32 @ztest_record_enospc(i32 %125)
  br label %176

127:                                              ; preds = %120
  %128 = load i32, i32* %13, align 4
  %129 = call i32 @fatal(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %29, i32 %128)
  br label %130

130:                                              ; preds = %127, %116, %110
  %131 = call i32 @dmu_objset_clone(i8* %26, i8* %29)
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %13, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %130
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* @ENOSPC, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  %139 = load i32, i32* @FTAG, align 4
  %140 = call i32 @ztest_record_enospc(i32 %139)
  br label %176

141:                                              ; preds = %134
  %142 = load i32, i32* %13, align 4
  %143 = call i32 @fatal(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %26, i32 %142)
  br label %144

144:                                              ; preds = %141, %130
  %145 = load i32, i32* @DMU_OST_ANY, align 4
  %146 = load i32, i32* @B_TRUE, align 4
  %147 = load i32, i32* @FTAG, align 4
  %148 = call i32 @dmu_objset_own(i8* %23, i32 %145, i32 %146, i32 %147, i32** %5)
  store i32 %148, i32* %13, align 4
  %149 = load i32, i32* %13, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %144
  %152 = load i32, i32* %13, align 4
  %153 = call i32 @fatal(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %23, i32 %152)
  br label %154

154:                                              ; preds = %151, %144
  %155 = call i32 @dsl_dataset_promote(i8* %26, i32* null)
  store i32 %155, i32* %13, align 4
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* @ENOSPC, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %165

159:                                              ; preds = %154
  %160 = load i32*, i32** %5, align 8
  %161 = load i32, i32* @FTAG, align 4
  %162 = call i32 @dmu_objset_disown(i32* %160, i32 %161)
  %163 = load i32, i32* @FTAG, align 4
  %164 = call i32 @ztest_record_enospc(i32 %163)
  br label %176

165:                                              ; preds = %154
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* @EBUSY, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = load i32, i32* %13, align 4
  %171 = call i32 @fatal(i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i8* %26, i32 %170)
  br label %172

172:                                              ; preds = %169, %165
  %173 = load i32*, i32** %5, align 8
  %174 = load i32, i32* @FTAG, align 4
  %175 = call i32 @dmu_objset_disown(i32* %173, i32 %174)
  br label %176

176:                                              ; preds = %172, %159, %138, %124, %104, %84, %70
  %177 = load i8*, i8** %12, align 8
  %178 = load i32, i32* %4, align 4
  %179 = call i32 @ztest_dsl_dataset_cleanup(i8* %177, i32 %178)
  %180 = call i32 @rw_exit(i32* @ztest_name_lock)
  %181 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %181)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rw_enter(i32*, i32) #2

declare dso_local i32 @ztest_dsl_dataset_cleanup(i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i32 @dmu_objset_snapshot_one(i8*, i64) #2

declare dso_local i64 @strchr(i8*, i8 signext) #2

declare dso_local i32 @ztest_record_enospc(i32) #2

declare dso_local i32 @fatal(i32, i8*, i8*, i32) #2

declare dso_local i32 @dmu_objset_clone(i8*, i8*) #2

declare dso_local i32 @dmu_objset_own(i8*, i32, i32, i32, i32**) #2

declare dso_local i32 @dsl_dataset_promote(i8*, i32*) #2

declare dso_local i32 @dmu_objset_disown(i32*, i32) #2

declare dso_local i32 @rw_exit(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
