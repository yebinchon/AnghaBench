; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_subr.c_dtrace_str2attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_subr.c_dtrace_str2attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64 }

@_dtrace_maxattr = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@DTRACE_STABILITY_MAX = common dso_local global i64 0, align 8
@DTRACE_CLASS_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_str2attr(i8* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = icmp eq %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  store i32 -1, i32* %3, align 4
  br label %117

16:                                               ; preds = %12
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = bitcast %struct.TYPE_4__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 bitcast (%struct.TYPE_4__* @_dtrace_maxattr to i8*), i64 24, i1 false)
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @strlen(i8* %19)
  %21 = add nsw i64 %20, 1
  %22 = call i8* @alloca(i64 %21)
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @strcpy(i8* %23, i8* %24)
  %26 = load i8*, i8** %8, align 8
  %27 = call i8* @dt_getstrattr(i8* %26, i8** %9)
  store i8* %27, i8** %8, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %117

30:                                               ; preds = %16
  store i64 0, i64* %6, align 8
  br label %31

31:                                               ; preds = %46, %30
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @DTRACE_STABILITY_MAX, align 8
  %34 = icmp sle i64 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = load i8*, i8** %8, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @dtrace_stability_name(i64 %37)
  %39 = call i64 @strcasecmp(i8* %36, i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  br label %49

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %6, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %6, align 8
  br label %31

49:                                               ; preds = %41, %31
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @DTRACE_STABILITY_MAX, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 -1, i32* %3, align 4
  br label %117

54:                                               ; preds = %49
  %55 = load i8*, i8** %9, align 8
  %56 = call i8* @dt_getstrattr(i8* %55, i8** %9)
  store i8* %56, i8** %8, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %117

59:                                               ; preds = %54
  store i64 0, i64* %6, align 8
  br label %60

60:                                               ; preds = %75, %59
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* @DTRACE_STABILITY_MAX, align 8
  %63 = icmp sle i64 %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %60
  %65 = load i8*, i8** %8, align 8
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @dtrace_stability_name(i64 %66)
  %68 = call i64 @strcasecmp(i8* %65, i32 %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i64, i64* %6, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  br label %78

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %6, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %6, align 8
  br label %60

78:                                               ; preds = %70, %60
  %79 = load i64, i64* %6, align 8
  %80 = load i64, i64* @DTRACE_STABILITY_MAX, align 8
  %81 = icmp sgt i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 -1, i32* %3, align 4
  br label %117

83:                                               ; preds = %78
  %84 = load i8*, i8** %9, align 8
  %85 = call i8* @dt_getstrattr(i8* %84, i8** %9)
  store i8* %85, i8** %8, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i32 0, i32* %3, align 4
  br label %117

88:                                               ; preds = %83
  store i64 0, i64* %7, align 8
  br label %89

89:                                               ; preds = %104, %88
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* @DTRACE_CLASS_MAX, align 8
  %92 = icmp sle i64 %90, %91
  br i1 %92, label %93, label %107

93:                                               ; preds = %89
  %94 = load i8*, i8** %8, align 8
  %95 = load i64, i64* %7, align 8
  %96 = call i32 @dtrace_class_name(i64 %95)
  %97 = call i64 @strcasecmp(i8* %94, i32 %96)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load i64, i64* %7, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  br label %107

103:                                              ; preds = %93
  br label %104

104:                                              ; preds = %103
  %105 = load i64, i64* %7, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %7, align 8
  br label %89

107:                                              ; preds = %99, %89
  %108 = load i64, i64* %7, align 8
  %109 = load i64, i64* @DTRACE_CLASS_MAX, align 8
  %110 = icmp sgt i64 %108, %109
  br i1 %110, label %115, label %111

111:                                              ; preds = %107
  %112 = load i8*, i8** %9, align 8
  %113 = call i8* @dt_getstrattr(i8* %112, i8** %9)
  store i8* %113, i8** %8, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %111, %107
  store i32 -1, i32* %3, align 4
  br label %117

116:                                              ; preds = %111
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %116, %115, %87, %82, %58, %53, %29, %15
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @alloca(i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i8* @dt_getstrattr(i8*, i8**) #2

declare dso_local i64 @strcasecmp(i8*, i32) #2

declare dso_local i32 @dtrace_stability_name(i64) #2

declare dso_local i32 @dtrace_class_name(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
