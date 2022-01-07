; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_decode_short_dirent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_decode_short_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.smb_sb_info = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 (i8*, i32, i8*, i32, i32, i32)* }
%struct.TYPE_6__ = type { i32 }
%struct.qstr = type { i8*, i32 }
%struct.smb_fattr = type { i8, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, i32, i64 }
%struct.TYPE_5__ = type { i64, i32 }

@SMB_STATUS_SIZE = common dso_local global i32 0, align 4
@SMB_MAXNAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"len=%d, name=%.*s\0A\00", align 1
@entry = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.smb_sb_info*, i8*, %struct.qstr*, %struct.smb_fattr*, i8*)* @smb_decode_short_dirent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @smb_decode_short_dirent(%struct.smb_sb_info* %0, i8* %1, %struct.qstr* %2, %struct.smb_fattr* %3, i8* %4) #0 {
  %6 = alloca %struct.smb_sb_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.qstr*, align 8
  %9 = alloca %struct.smb_fattr*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.smb_sb_info* %0, %struct.smb_sb_info** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.qstr* %2, %struct.qstr** %8, align 8
  store %struct.smb_fattr* %3, %struct.smb_fattr** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load %struct.smb_sb_info*, %struct.smb_sb_info** %6, align 8
  %13 = load %struct.smb_fattr*, %struct.smb_fattr** %9, align 8
  %14 = call i32 @smb_init_dirent(%struct.smb_sb_info* %12, %struct.smb_fattr* %13)
  %15 = load %struct.smb_fattr*, %struct.smb_fattr** %9, align 8
  %16 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %15, i32 0, i32 5
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @SMB_STATUS_SIZE, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i8, i8* %21, align 1
  %23 = load %struct.smb_fattr*, %struct.smb_fattr** %9, align 8
  %24 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %23, i32 0, i32 0
  store i8 %22, i8* %24, align 8
  %25 = load %struct.smb_sb_info*, %struct.smb_sb_info** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @WVAL(i8* %26, i32 3)
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @WVAL(i8* %28, i32 1)
  %30 = call i32 @date_dos2unix(%struct.smb_sb_info* %25, i32 %27, i32 %29)
  %31 = load %struct.smb_fattr*, %struct.smb_fattr** %9, align 8
  %32 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 8
  %34 = load %struct.smb_fattr*, %struct.smb_fattr** %9, align 8
  %35 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @DVAL(i8* %37, i32 5)
  %39 = load %struct.smb_fattr*, %struct.smb_fattr** %9, align 8
  %40 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.smb_fattr*, %struct.smb_fattr** %9, align 8
  %42 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %41, i32 0, i32 3
  %43 = load %struct.smb_fattr*, %struct.smb_fattr** %9, align 8
  %44 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %43, i32 0, i32 1
  %45 = bitcast %struct.TYPE_5__* %42 to i8*
  %46 = bitcast %struct.TYPE_5__* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 16, i1 false)
  %47 = load %struct.smb_fattr*, %struct.smb_fattr** %9, align 8
  %48 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %47, i32 0, i32 2
  %49 = load %struct.smb_fattr*, %struct.smb_fattr** %9, align 8
  %50 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %49, i32 0, i32 1
  %51 = bitcast %struct.TYPE_5__* %48 to i8*
  %52 = bitcast %struct.TYPE_5__* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 16, i1 false)
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 9
  %55 = load %struct.qstr*, %struct.qstr** %8, align 8
  %56 = getelementptr inbounds %struct.qstr, %struct.qstr* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load %struct.qstr*, %struct.qstr** %8, align 8
  %58 = getelementptr inbounds %struct.qstr, %struct.qstr* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @strnlen(i8* %59, i32 12)
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %77, %5
  %62 = load i32, i32* %11, align 4
  %63 = icmp sgt i32 %62, 2
  br i1 %63, label %64, label %75

64:                                               ; preds = %61
  %65 = load %struct.qstr*, %struct.qstr** %8, align 8
  %66 = getelementptr inbounds %struct.qstr, %struct.qstr* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 32
  br label %75

75:                                               ; preds = %64, %61
  %76 = phi i1 [ false, %61 ], [ %74, %64 ]
  br i1 %76, label %77, label %80

77:                                               ; preds = %75
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %11, align 4
  br label %61

80:                                               ; preds = %75
  %81 = load %struct.smb_sb_info*, %struct.smb_sb_info** %6, align 8
  %82 = load %struct.smb_fattr*, %struct.smb_fattr** %9, align 8
  %83 = call i32 @smb_finish_dirent(%struct.smb_sb_info* %81, %struct.smb_fattr* %82)
  %84 = load %struct.qstr*, %struct.qstr** %8, align 8
  %85 = getelementptr inbounds %struct.qstr, %struct.qstr* %84, i32 0, i32 1
  store i32 0, i32* %85, align 8
  %86 = load %struct.smb_sb_info*, %struct.smb_sb_info** %6, align 8
  %87 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %86, i32 0, i32 2
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32 (i8*, i32, i8*, i32, i32, i32)*, i32 (i8*, i32, i8*, i32, i32, i32)** %89, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = load i32, i32* @SMB_MAXNAMELEN, align 4
  %93 = load %struct.qstr*, %struct.qstr** %8, align 8
  %94 = getelementptr inbounds %struct.qstr, %struct.qstr* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = load %struct.smb_sb_info*, %struct.smb_sb_info** %6, align 8
  %98 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.smb_sb_info*, %struct.smb_sb_info** %6, align 8
  %101 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 %90(i8* %91, i32 %92, i8* %95, i32 %96, i32 %99, i32 %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %123

106:                                              ; preds = %80
  %107 = load i32, i32* %11, align 4
  %108 = load %struct.qstr*, %struct.qstr** %8, align 8
  %109 = getelementptr inbounds %struct.qstr, %struct.qstr* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = load %struct.qstr*, %struct.qstr** %8, align 8
  %112 = getelementptr inbounds %struct.qstr, %struct.qstr* %111, i32 0, i32 0
  store i8* %110, i8** %112, align 8
  %113 = load %struct.qstr*, %struct.qstr** %8, align 8
  %114 = getelementptr inbounds %struct.qstr, %struct.qstr* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.qstr*, %struct.qstr** %8, align 8
  %117 = getelementptr inbounds %struct.qstr, %struct.qstr* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.qstr*, %struct.qstr** %8, align 8
  %120 = getelementptr inbounds %struct.qstr, %struct.qstr* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @DEBUG1(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %115, i32 %118, i8* %121)
  br label %123

123:                                              ; preds = %106, %80
  %124 = load i8*, i8** %7, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 22
  ret i8* %125
}

declare dso_local i32 @smb_init_dirent(%struct.smb_sb_info*, %struct.smb_fattr*) #1

declare dso_local i32 @date_dos2unix(%struct.smb_sb_info*, i32, i32) #1

declare dso_local i32 @WVAL(i8*, i32) #1

declare dso_local i32 @DVAL(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strnlen(i8*, i32) #1

declare dso_local i32 @smb_finish_dirent(%struct.smb_sb_info*, %struct.smb_fattr*) #1

declare dso_local i32 @DEBUG1(i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
