; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_coda_linux.c_coda_iattr_to_vattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_coda_linux.c_coda_iattr_to_vattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iattr = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i64, i64, i64 }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.coda_vattr = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i64, i8*, i8*, i8*, i64 }

@C_VNON = common dso_local global i8* null, align 8
@ATTR_MODE = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@ATTR_ATIME = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@ATTR_CTIME = common dso_local global i32 0, align 4
@C_VDIR = common dso_local global i8* null, align 8
@C_VLNK = common dso_local global i8* null, align 8
@C_VREG = common dso_local global i8* null, align 8
@mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coda_iattr_to_vattr(%struct.iattr* %0, %struct.coda_vattr* %1) #0 {
  %3 = alloca %struct.iattr*, align 8
  %4 = alloca %struct.coda_vattr*, align 8
  %5 = alloca i32, align 4
  store %struct.iattr* %0, %struct.iattr** %3, align 8
  store %struct.coda_vattr* %1, %struct.coda_vattr** %4, align 8
  %6 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %7 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %6, i32 0, i32 0
  store i32 -1, i32* %7, align 8
  %8 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %9 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %8, i32 0, i32 12
  store i8* inttoptr (i64 -1 to i8*), i8** %9, align 8
  %10 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %11 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %10, i32 0, i32 11
  store i8* inttoptr (i64 -1 to i8*), i8** %11, align 8
  %12 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %13 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %12, i32 0, i32 10
  store i64 -1, i64* %13, align 8
  %14 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %15 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %14, i32 0, i32 9
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i8* inttoptr (i64 -1 to i8*), i8** %16, align 8
  %17 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %18 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %17, i32 0, i32 9
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i8* inttoptr (i64 -1 to i8*), i8** %19, align 8
  %20 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %21 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %20, i32 0, i32 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  store i8* inttoptr (i64 -1 to i8*), i8** %22, align 8
  %23 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %24 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %23, i32 0, i32 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i8* inttoptr (i64 -1 to i8*), i8** %25, align 8
  %26 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %27 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %26, i32 0, i32 7
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store i8* inttoptr (i64 -1 to i8*), i8** %28, align 8
  %29 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %30 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %29, i32 0, i32 7
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i8* inttoptr (i64 -1 to i8*), i8** %31, align 8
  %32 = load i8*, i8** @C_VNON, align 8
  %33 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %34 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %33, i32 0, i32 13
  store i8* %32, i8** %34, align 8
  %35 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %36 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %35, i32 0, i32 1
  store i32 -1, i32* %36, align 4
  %37 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %38 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %37, i32 0, i32 2
  store i32 -1, i32* %38, align 8
  %39 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %40 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %39, i32 0, i32 3
  store i32 -1, i32* %40, align 4
  %41 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %42 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %41, i32 0, i32 4
  store i32 -1, i32* %42, align 8
  %43 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %44 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %43, i32 0, i32 5
  store i32 -1, i32* %44, align 4
  %45 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %46 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %45, i32 0, i32 6
  store i32 -1, i32* %46, align 8
  %47 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %48 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %47, i32 0, i32 14
  store i64 0, i64* %48, align 8
  %49 = load %struct.iattr*, %struct.iattr** %3, align 8
  %50 = getelementptr inbounds %struct.iattr, %struct.iattr* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @ATTR_MODE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %2
  %57 = load %struct.iattr*, %struct.iattr** %3, align 8
  %58 = getelementptr inbounds %struct.iattr, %struct.iattr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %61 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %56, %2
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @ATTR_UID, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load %struct.iattr*, %struct.iattr** %3, align 8
  %69 = getelementptr inbounds %struct.iattr, %struct.iattr* %68, i32 0, i32 7
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %73 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %72, i32 0, i32 12
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %67, %62
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @ATTR_GID, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load %struct.iattr*, %struct.iattr** %3, align 8
  %81 = getelementptr inbounds %struct.iattr, %struct.iattr* %80, i32 0, i32 6
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to i8*
  %84 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %85 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %84, i32 0, i32 11
  store i8* %83, i8** %85, align 8
  br label %86

86:                                               ; preds = %79, %74
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @ATTR_SIZE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load %struct.iattr*, %struct.iattr** %3, align 8
  %93 = getelementptr inbounds %struct.iattr, %struct.iattr* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %96 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %95, i32 0, i32 10
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %91, %86
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @ATTR_ATIME, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %97
  %103 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %104 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %103, i32 0, i32 9
  %105 = load %struct.iattr*, %struct.iattr** %3, align 8
  %106 = getelementptr inbounds %struct.iattr, %struct.iattr* %105, i32 0, i32 4
  %107 = bitcast %struct.TYPE_4__* %104 to i8*
  %108 = bitcast %struct.TYPE_4__* %106 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %107, i8* align 8 %108, i64 16, i1 false)
  br label %109

109:                                              ; preds = %102, %97
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @ATTR_MTIME, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %109
  %115 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %116 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %115, i32 0, i32 8
  %117 = load %struct.iattr*, %struct.iattr** %3, align 8
  %118 = getelementptr inbounds %struct.iattr, %struct.iattr* %117, i32 0, i32 3
  %119 = bitcast %struct.TYPE_5__* %116 to i8*
  %120 = bitcast %struct.TYPE_5__* %118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %119, i8* align 8 %120, i64 16, i1 false)
  br label %121

121:                                              ; preds = %114, %109
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @ATTR_CTIME, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %121
  %127 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %128 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %127, i32 0, i32 7
  %129 = load %struct.iattr*, %struct.iattr** %3, align 8
  %130 = getelementptr inbounds %struct.iattr, %struct.iattr* %129, i32 0, i32 2
  %131 = bitcast %struct.TYPE_6__* %128 to i8*
  %132 = bitcast %struct.TYPE_6__* %130 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %131, i8* align 8 %132, i64 16, i1 false)
  br label %133

133:                                              ; preds = %126, %121
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
