; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_map.c_dt_strdata_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_map.c_dt_strdata_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i8**, i64 }

@DTRACEIOC_FORMAT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EDT_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*, i8***, i32*)* @dt_strdata_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_strdata_add(i32* %0, %struct.TYPE_6__* %1, i8*** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8***, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8**, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i8*** %2, i8**** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %171

23:                                               ; preds = %4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %27, align 4
  %29 = icmp sle i32 %26, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %23
  %31 = load i8***, i8**** %8, align 8
  %32 = load i8**, i8*** %31, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %32, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %171

42:                                               ; preds = %30, %23
  %43 = call i32 @bzero(%struct.TYPE_7__* %12, i32 24)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  store i8** null, i8*** %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* @DTRACEIOC_FORMAT, align 4
  %52 = call i32 @dt_ioctl(i32* %50, i32 %51, %struct.TYPE_7__* %12)
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %58

54:                                               ; preds = %42
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* @errno, align 4
  %57 = call i32 @dt_set_errno(i32* %55, i32 %56)
  store i32 %57, i32* %5, align 4
  br label %171

58:                                               ; preds = %42
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = call i8** @dt_alloc(i32* %59, i64 %61)
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  store i8** %62, i8*** %63, align 8
  %64 = icmp eq i8** %62, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* @EDT_NOMEM, align 4
  %68 = call i32 @dt_set_errno(i32* %66, i32 %67)
  store i32 %68, i32* %5, align 4
  br label %171

69:                                               ; preds = %58
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* @DTRACEIOC_FORMAT, align 4
  %72 = call i32 @dt_ioctl(i32* %70, i32 %71, %struct.TYPE_7__* %12)
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* @errno, align 4
  %77 = call i32 @dt_set_errno(i32* %75, i32 %76)
  store i32 %77, i32* %11, align 4
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %79 = load i8**, i8*** %78, align 8
  %80 = call i32 @free(i8** %79)
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %5, align 4
  br label %171

82:                                               ; preds = %69
  br label %83

83:                                               ; preds = %118, %82
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %10, align 4
  %89 = icmp sgt i32 %86, %88
  br i1 %89, label %90, label %131

90:                                               ; preds = %83
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* %10, align 4
  %95 = shl i32 %94, 1
  br label %97

96:                                               ; preds = %90
  br label %97

97:                                               ; preds = %96, %93
  %98 = phi i32 [ %95, %93 ], [ 1, %96 ]
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = mul i64 %100, 8
  store i64 %101, i64* %15, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = mul i64 %103, 8
  store i64 %104, i64* %16, align 8
  %105 = load i32*, i32** %6, align 8
  %106 = load i64, i64* %15, align 8
  %107 = call i8** @dt_zalloc(i32* %105, i64 %106)
  store i8** %107, i8*** %17, align 8
  %108 = load i8**, i8*** %17, align 8
  %109 = icmp eq i8** %108, null
  br i1 %109, label %110, label %118

110:                                              ; preds = %97
  %111 = load i32*, i32** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %113 = load i8**, i8*** %112, align 8
  %114 = call i32 @dt_free(i32* %111, i8** %113)
  %115 = load i32*, i32** %6, align 8
  %116 = load i32, i32* @EDT_NOMEM, align 4
  %117 = call i32 @dt_set_errno(i32* %115, i32 %116)
  store i32 %117, i32* %5, align 4
  br label %171

118:                                              ; preds = %97
  %119 = load i8***, i8**** %8, align 8
  %120 = load i8**, i8*** %119, align 8
  %121 = load i8**, i8*** %17, align 8
  %122 = load i64, i64* %16, align 8
  %123 = call i32 @bcopy(i8** %120, i8** %121, i64 %122)
  %124 = load i8***, i8**** %8, align 8
  %125 = load i8**, i8*** %124, align 8
  %126 = call i32 @free(i8** %125)
  %127 = load i8**, i8*** %17, align 8
  %128 = load i8***, i8**** %8, align 8
  store i8** %127, i8*** %128, align 8
  %129 = load i32, i32* %14, align 4
  %130 = load i32*, i32** %9, align 8
  store i32 %129, i32* %130, align 4
  br label %83

131:                                              ; preds = %83
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  switch i32 %134, label %148 [
    i32 129, label %135
    i32 128, label %139
  ]

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %137 = load i8**, i8*** %136, align 8
  %138 = bitcast i8** %137 to i8*
  store i8* %138, i8** %13, align 8
  br label %157

139:                                              ; preds = %131
  %140 = load i32*, i32** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %142 = load i8**, i8*** %141, align 8
  %143 = call i8* @dtrace_printa_create(i32* %140, i8** %142)
  store i8* %143, i8** %13, align 8
  %144 = load i32*, i32** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %146 = load i8**, i8*** %145, align 8
  %147 = call i32 @dt_free(i32* %144, i8** %146)
  br label %157

148:                                              ; preds = %131
  %149 = load i32*, i32** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %151 = load i8**, i8*** %150, align 8
  %152 = call i8* @dtrace_printf_create(i32* %149, i8** %151)
  store i8* %152, i8** %13, align 8
  %153 = load i32*, i32** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %155 = load i8**, i8*** %154, align 8
  %156 = call i32 @dt_free(i32* %153, i8** %155)
  br label %157

157:                                              ; preds = %148, %139, %135
  %158 = load i8*, i8** %13, align 8
  %159 = icmp eq i8* %158, null
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  store i32 -1, i32* %5, align 4
  br label %171

161:                                              ; preds = %157
  %162 = load i8*, i8** %13, align 8
  %163 = load i8***, i8**** %8, align 8
  %164 = load i8**, i8*** %163, align 8
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = sub nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8*, i8** %164, i64 %169
  store i8* %162, i8** %170, align 8
  store i32 0, i32* %5, align 4
  br label %171

171:                                              ; preds = %161, %160, %110, %74, %65, %54, %41, %22
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local i32 @bzero(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @dt_ioctl(i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @dt_set_errno(i32*, i32) #1

declare dso_local i8** @dt_alloc(i32*, i64) #1

declare dso_local i32 @free(i8**) #1

declare dso_local i8** @dt_zalloc(i32*, i64) #1

declare dso_local i32 @dt_free(i32*, i8**) #1

declare dso_local i32 @bcopy(i8**, i8**, i64) #1

declare dso_local i8* @dtrace_printa_create(i32*, i8**) #1

declare dso_local i8* @dtrace_printf_create(i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
