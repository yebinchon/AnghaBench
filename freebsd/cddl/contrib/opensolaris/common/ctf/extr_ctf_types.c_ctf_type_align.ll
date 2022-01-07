; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_types.c_ctf_type_align.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_types.c_ctf_type_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i32 }

@CTF_ERR = common dso_local global i32 0, align 4
@CTF_VERSION_1 = common dso_local global i32 0, align 4
@CTF_LSTRUCT_THRESH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctf_type_align(%struct.TYPE_21__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_22__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_20__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @ctf_type_resolve(%struct.TYPE_21__* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @CTF_ERR, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %141

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = call %struct.TYPE_18__* @ctf_lookup_by_id(%struct.TYPE_21__** %4, i32 %24)
  store %struct.TYPE_18__* %25, %struct.TYPE_18__** %6, align 8
  %26 = icmp eq %struct.TYPE_18__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %141

28:                                               ; preds = %23
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @LCTF_INFO_KIND(%struct.TYPE_21__* %29, i32 %32)
  switch i32 %33, label %137 [
    i32 130, label %34
    i32 131, label %34
    i32 133, label %40
    i32 129, label %52
    i32 128, label %52
    i32 132, label %131
  ]

34:                                               ; preds = %28, %28
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %3, align 4
  br label %141

40:                                               ; preds = %28
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @ctf_array_info(%struct.TYPE_21__* %41, i32 %42, %struct.TYPE_22__* %7)
  %44 = load i32, i32* @CTF_ERR, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 -1, i32* %3, align 4
  br label %141

47:                                               ; preds = %40
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ctf_type_align(%struct.TYPE_21__* %48, i32 %50)
  store i32 %51, i32* %3, align 4
  br label %141

52:                                               ; preds = %28, %28
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @LCTF_INFO_VLEN(%struct.TYPE_21__* %53, i32 %56)
  store i32 %57, i32* %8, align 4
  store i64 0, i64* %11, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %60 = call i32 @ctf_get_ctt_size(%struct.TYPE_21__* %58, %struct.TYPE_18__* %59, i32* %9, i32* %10)
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %62 = bitcast %struct.TYPE_18__* %61 to i32*
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = bitcast i32* %65 to i8*
  store i8* %66, i8** %12, align 8
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @LCTF_INFO_KIND(%struct.TYPE_21__* %67, i32 %70)
  %72 = icmp eq i32 %71, 129
  br i1 %72, label %73, label %76

73:                                               ; preds = %52
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @MIN(i32 %74, i32 1)
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %73, %52
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @CTF_VERSION_1, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %86, label %82

82:                                               ; preds = %76
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @CTF_LSTRUCT_THRESH, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %107

86:                                               ; preds = %82, %76
  %87 = load i8*, i8** %12, align 8
  %88 = bitcast i8* %87 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %88, %struct.TYPE_19__** %13, align 8
  br label %89

89:                                               ; preds = %101, %86
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %89
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @ctf_type_align(%struct.TYPE_21__* %93, i32 %96)
  store i32 %97, i32* %14, align 4
  %98 = load i64, i64* %11, align 8
  %99 = load i32, i32* %14, align 4
  %100 = call i64 @MAX(i64 %98, i32 %99)
  store i64 %100, i64* %11, align 8
  br label %101

101:                                              ; preds = %92
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %8, align 4
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 1
  store %struct.TYPE_19__* %105, %struct.TYPE_19__** %13, align 8
  br label %89

106:                                              ; preds = %89
  br label %128

107:                                              ; preds = %82
  %108 = load i8*, i8** %12, align 8
  %109 = bitcast i8* %108 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %109, %struct.TYPE_20__** %15, align 8
  br label %110

110:                                              ; preds = %122, %107
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %110
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @ctf_type_align(%struct.TYPE_21__* %114, i32 %117)
  store i32 %118, i32* %16, align 4
  %119 = load i64, i64* %11, align 8
  %120 = load i32, i32* %16, align 4
  %121 = call i64 @MAX(i64 %119, i32 %120)
  store i64 %121, i64* %11, align 8
  br label %122

122:                                              ; preds = %113
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %8, align 4
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 1
  store %struct.TYPE_20__* %126, %struct.TYPE_20__** %15, align 8
  br label %110

127:                                              ; preds = %110
  br label %128

128:                                              ; preds = %127, %106
  %129 = load i64, i64* %11, align 8
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %3, align 4
  br label %141

131:                                              ; preds = %28
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %3, align 4
  br label %141

137:                                              ; preds = %28
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %140 = call i32 @ctf_get_ctt_size(%struct.TYPE_21__* %138, %struct.TYPE_18__* %139, i32* null, i32* null)
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %137, %131, %128, %47, %46, %34, %27, %22
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @ctf_type_resolve(%struct.TYPE_21__*, i32) #1

declare dso_local %struct.TYPE_18__* @ctf_lookup_by_id(%struct.TYPE_21__**, i32) #1

declare dso_local i32 @LCTF_INFO_KIND(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ctf_array_info(%struct.TYPE_21__*, i32, %struct.TYPE_22__*) #1

declare dso_local i32 @LCTF_INFO_VLEN(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ctf_get_ctt_size(%struct.TYPE_21__*, %struct.TYPE_18__*, i32*, i32*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i64 @MAX(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
