; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_hpread.c_hpread_type_translate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_hpread.c_hpread_type_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"error in hpread_type_translate\0A.\00", align 1
@FT_VOID = common dso_local global i32 0, align 4
@FT_BOOLEAN = common dso_local global i32 0, align 4
@FT_CHAR = common dso_local global i32 0, align 4
@FT_SIGNED_CHAR = common dso_local global i32 0, align 4
@FT_SHORT = common dso_local global i32 0, align 4
@FT_INTEGER = common dso_local global i32 0, align 4
@FT_LONG_LONG = common dso_local global i32 0, align 4
@FT_LONG = common dso_local global i32 0, align 4
@FT_UNSIGNED_CHAR = common dso_local global i32 0, align 4
@FT_UNSIGNED_SHORT = common dso_local global i32 0, align 4
@FT_UNSIGNED_LONG = common dso_local global i32 0, align 4
@FT_UNSIGNED_LONG_LONG = common dso_local global i32 0, align 4
@FT_UNSIGNED_INTEGER = common dso_local global i32 0, align 4
@FT_DBL_PREC_FLOAT = common dso_local global i32 0, align 4
@FT_EXT_PREC_FLOAT = common dso_local global i32 0, align 4
@FT_FLOAT = common dso_local global i32 0, align 4
@FT_DBL_PREC_COMPLEX = common dso_local global i32 0, align 4
@FT_EXT_PREC_COMPLEX = common dso_local global i32 0, align 4
@FT_COMPLEX = common dso_local global i32 0, align 4
@FT_STRING = common dso_local global i32 0, align 4
@FT_TEMPLATE_ARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"hpread_type_translate: unhandled type code.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @hpread_type_translate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpread_type_translate(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca { i64, i32 }, align 4
  %6 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 0
  store i64 %0, i64* %6, align 4
  %7 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 1
  store i32 %1, i32* %7, align 4
  %8 = bitcast %struct.TYPE_5__* %4 to i8*
  %9 = bitcast { i64, i32 }* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 12, i1 false)
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = call i32 @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @FT_VOID, align 4
  store i32 %16, i32* %3, align 4
  br label %145

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %142 [
    i32 155, label %21
    i32 154, label %21
    i32 153, label %21
    i32 152, label %23
    i32 128, label %23
    i32 143, label %25
    i32 141, label %48
    i32 130, label %57
    i32 131, label %80
    i32 136, label %103
    i32 135, label %103
    i32 149, label %103
    i32 151, label %119
    i32 150, label %119
    i32 129, label %135
    i32 134, label %137
    i32 140, label %137
    i32 146, label %137
    i32 138, label %137
    i32 139, label %137
    i32 147, label %137
    i32 145, label %137
    i32 133, label %139
    i32 132, label %141
    i32 148, label %141
    i32 137, label %141
    i32 156, label %141
    i32 144, label %141
    i32 142, label %141
  ]

21:                                               ; preds = %17, %17, %17
  %22 = load i32, i32* @FT_BOOLEAN, align 4
  store i32 %22, i32* %3, align 4
  br label %145

23:                                               ; preds = %17, %17
  %24 = load i32, i32* @FT_CHAR, align 4
  store i32 %24, i32* %3, align 4
  br label %145

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp sle i32 %28, 8
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @FT_SIGNED_CHAR, align 4
  store i32 %31, i32* %3, align 4
  br label %145

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp sle i32 %35, 16
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @FT_SHORT, align 4
  store i32 %38, i32* %3, align 4
  br label %145

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp sle i32 %42, 32
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @FT_INTEGER, align 4
  store i32 %45, i32* %3, align 4
  br label %145

46:                                               ; preds = %39
  %47 = load i32, i32* @FT_LONG_LONG, align 4
  store i32 %47, i32* %3, align 4
  br label %145

48:                                               ; preds = %17
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp sle i32 %51, 8
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @FT_SIGNED_CHAR, align 4
  store i32 %54, i32* %3, align 4
  br label %145

55:                                               ; preds = %48
  %56 = load i32, i32* @FT_LONG, align 4
  store i32 %56, i32* %3, align 4
  br label %145

57:                                               ; preds = %17
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp sle i32 %60, 8
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @FT_UNSIGNED_CHAR, align 4
  store i32 %63, i32* %3, align 4
  br label %145

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp sle i32 %67, 16
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* @FT_UNSIGNED_SHORT, align 4
  store i32 %70, i32* %3, align 4
  br label %145

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp sle i32 %74, 32
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* @FT_UNSIGNED_LONG, align 4
  store i32 %77, i32* %3, align 4
  br label %145

78:                                               ; preds = %71
  %79 = load i32, i32* @FT_UNSIGNED_LONG_LONG, align 4
  store i32 %79, i32* %3, align 4
  br label %145

80:                                               ; preds = %17
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp sle i32 %83, 8
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* @FT_UNSIGNED_CHAR, align 4
  store i32 %86, i32* %3, align 4
  br label %145

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp sle i32 %90, 16
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* @FT_UNSIGNED_SHORT, align 4
  store i32 %93, i32* %3, align 4
  br label %145

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp sle i32 %97, 32
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i32, i32* @FT_UNSIGNED_INTEGER, align 4
  store i32 %100, i32* %3, align 4
  br label %145

101:                                              ; preds = %94
  %102 = load i32, i32* @FT_UNSIGNED_LONG_LONG, align 4
  store i32 %102, i32* %3, align 4
  br label %145

103:                                              ; preds = %17, %17, %17
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 64
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i32, i32* @FT_DBL_PREC_FLOAT, align 4
  store i32 %109, i32* %3, align 4
  br label %145

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 128
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load i32, i32* @FT_EXT_PREC_FLOAT, align 4
  store i32 %116, i32* %3, align 4
  br label %145

117:                                              ; preds = %110
  %118 = load i32, i32* @FT_FLOAT, align 4
  store i32 %118, i32* %3, align 4
  br label %145

119:                                              ; preds = %17, %17
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 128
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = load i32, i32* @FT_DBL_PREC_COMPLEX, align 4
  store i32 %125, i32* %3, align 4
  br label %145

126:                                              ; preds = %119
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 192
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = load i32, i32* @FT_EXT_PREC_COMPLEX, align 4
  store i32 %132, i32* %3, align 4
  br label %145

133:                                              ; preds = %126
  %134 = load i32, i32* @FT_COMPLEX, align 4
  store i32 %134, i32* %3, align 4
  br label %145

135:                                              ; preds = %17
  %136 = load i32, i32* @FT_VOID, align 4
  store i32 %136, i32* %3, align 4
  br label %145

137:                                              ; preds = %17, %17, %17, %17, %17, %17, %17
  %138 = load i32, i32* @FT_STRING, align 4
  store i32 %138, i32* %3, align 4
  br label %145

139:                                              ; preds = %17
  %140 = load i32, i32* @FT_TEMPLATE_ARG, align 4
  store i32 %140, i32* %3, align 4
  br label %145

141:                                              ; preds = %17, %17, %17, %17, %17, %17
  br label %142

142:                                              ; preds = %17, %141
  %143 = call i32 @warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %144 = load i32, i32* @FT_VOID, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %142, %139, %137, %135, %133, %131, %124, %117, %115, %108, %101, %99, %92, %85, %78, %76, %69, %62, %55, %53, %46, %44, %37, %30, %23, %21, %14
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @error(i8*) #2

declare dso_local i32 @warning(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
