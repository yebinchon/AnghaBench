; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_mls.c_mls_setup_user_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_mls.c_mls_setup_user_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_datum = type { %struct.mls_level, %struct.TYPE_3__ }
%struct.mls_level = type { i32 }
%struct.TYPE_3__ = type { %struct.mls_level* }
%struct.context = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mls_level* }

@selinux_mls_enabled = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mls_setup_user_range(%struct.context* %0, %struct.user_datum* %1, %struct.context* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.context*, align 8
  %6 = alloca %struct.user_datum*, align 8
  %7 = alloca %struct.context*, align 8
  %8 = alloca %struct.mls_level*, align 8
  %9 = alloca %struct.mls_level*, align 8
  %10 = alloca %struct.mls_level*, align 8
  %11 = alloca %struct.mls_level*, align 8
  %12 = alloca %struct.mls_level*, align 8
  %13 = alloca %struct.mls_level*, align 8
  %14 = alloca %struct.mls_level*, align 8
  store %struct.context* %0, %struct.context** %5, align 8
  store %struct.user_datum* %1, %struct.user_datum** %6, align 8
  store %struct.context* %2, %struct.context** %7, align 8
  %15 = load i64, i64* @selinux_mls_enabled, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %112

17:                                               ; preds = %3
  %18 = load %struct.context*, %struct.context** %5, align 8
  %19 = getelementptr inbounds %struct.context, %struct.context* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.mls_level*, %struct.mls_level** %20, align 8
  %22 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %21, i64 0
  store %struct.mls_level* %22, %struct.mls_level** %8, align 8
  %23 = load %struct.context*, %struct.context** %5, align 8
  %24 = getelementptr inbounds %struct.context, %struct.context* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.mls_level*, %struct.mls_level** %25, align 8
  %27 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %26, i64 1
  store %struct.mls_level* %27, %struct.mls_level** %9, align 8
  %28 = load %struct.user_datum*, %struct.user_datum** %6, align 8
  %29 = getelementptr inbounds %struct.user_datum, %struct.user_datum* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.mls_level*, %struct.mls_level** %30, align 8
  %32 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %31, i64 0
  store %struct.mls_level* %32, %struct.mls_level** %10, align 8
  %33 = load %struct.user_datum*, %struct.user_datum** %6, align 8
  %34 = getelementptr inbounds %struct.user_datum, %struct.user_datum* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.mls_level*, %struct.mls_level** %35, align 8
  %37 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %36, i64 1
  store %struct.mls_level* %37, %struct.mls_level** %11, align 8
  %38 = load %struct.user_datum*, %struct.user_datum** %6, align 8
  %39 = getelementptr inbounds %struct.user_datum, %struct.user_datum* %38, i32 0, i32 0
  store %struct.mls_level* %39, %struct.mls_level** %12, align 8
  %40 = load %struct.context*, %struct.context** %7, align 8
  %41 = getelementptr inbounds %struct.context, %struct.context* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.mls_level*, %struct.mls_level** %42, align 8
  %44 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %43, i64 0
  store %struct.mls_level* %44, %struct.mls_level** %13, align 8
  %45 = load %struct.context*, %struct.context** %7, align 8
  %46 = getelementptr inbounds %struct.context, %struct.context* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.mls_level*, %struct.mls_level** %47, align 8
  %49 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %48, i64 1
  store %struct.mls_level* %49, %struct.mls_level** %14, align 8
  %50 = load %struct.mls_level*, %struct.mls_level** %12, align 8
  %51 = load %struct.mls_level*, %struct.mls_level** %8, align 8
  %52 = load %struct.mls_level*, %struct.mls_level** %9, align 8
  %53 = call i64 @mls_level_between(%struct.mls_level* %50, %struct.mls_level* %51, %struct.mls_level* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %17
  %56 = load %struct.mls_level*, %struct.mls_level** %13, align 8
  %57 = load %struct.mls_level*, %struct.mls_level** %12, align 8
  %58 = bitcast %struct.mls_level* %56 to i8*
  %59 = bitcast %struct.mls_level* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 4 %59, i64 4, i1 false)
  br label %87

60:                                               ; preds = %17
  %61 = load %struct.mls_level*, %struct.mls_level** %8, align 8
  %62 = load %struct.mls_level*, %struct.mls_level** %12, align 8
  %63 = load %struct.mls_level*, %struct.mls_level** %11, align 8
  %64 = call i64 @mls_level_between(%struct.mls_level* %61, %struct.mls_level* %62, %struct.mls_level* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load %struct.mls_level*, %struct.mls_level** %13, align 8
  %68 = load %struct.mls_level*, %struct.mls_level** %8, align 8
  %69 = bitcast %struct.mls_level* %67 to i8*
  %70 = bitcast %struct.mls_level* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %69, i8* align 4 %70, i64 4, i1 false)
  br label %86

71:                                               ; preds = %60
  %72 = load %struct.mls_level*, %struct.mls_level** %9, align 8
  %73 = load %struct.mls_level*, %struct.mls_level** %10, align 8
  %74 = load %struct.mls_level*, %struct.mls_level** %12, align 8
  %75 = call i64 @mls_level_between(%struct.mls_level* %72, %struct.mls_level* %73, %struct.mls_level* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = load %struct.mls_level*, %struct.mls_level** %13, align 8
  %79 = load %struct.mls_level*, %struct.mls_level** %10, align 8
  %80 = bitcast %struct.mls_level* %78 to i8*
  %81 = bitcast %struct.mls_level* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %80, i8* align 4 %81, i64 4, i1 false)
  br label %85

82:                                               ; preds = %71
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %113

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85, %66
  br label %87

87:                                               ; preds = %86, %55
  %88 = load %struct.mls_level*, %struct.mls_level** %11, align 8
  %89 = load %struct.mls_level*, %struct.mls_level** %9, align 8
  %90 = call i64 @mls_level_dom(%struct.mls_level* %88, %struct.mls_level* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.mls_level*, %struct.mls_level** %14, align 8
  %94 = load %struct.mls_level*, %struct.mls_level** %9, align 8
  %95 = bitcast %struct.mls_level* %93 to i8*
  %96 = bitcast %struct.mls_level* %94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %95, i8* align 4 %96, i64 4, i1 false)
  br label %111

97:                                               ; preds = %87
  %98 = load %struct.mls_level*, %struct.mls_level** %9, align 8
  %99 = load %struct.mls_level*, %struct.mls_level** %11, align 8
  %100 = call i64 @mls_level_dom(%struct.mls_level* %98, %struct.mls_level* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load %struct.mls_level*, %struct.mls_level** %14, align 8
  %104 = load %struct.mls_level*, %struct.mls_level** %11, align 8
  %105 = bitcast %struct.mls_level* %103 to i8*
  %106 = bitcast %struct.mls_level* %104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %105, i8* align 4 %106, i64 4, i1 false)
  br label %110

107:                                              ; preds = %97
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %113

110:                                              ; preds = %102
  br label %111

111:                                              ; preds = %110, %92
  br label %112

112:                                              ; preds = %111, %3
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %112, %107, %82
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i64 @mls_level_between(%struct.mls_level*, %struct.mls_level*, %struct.mls_level*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @mls_level_dom(%struct.mls_level*, %struct.mls_level*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
