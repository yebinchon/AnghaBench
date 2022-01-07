; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_lookup.c_ctf_func_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_lookup.c_ctf_func_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32*, i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_12__ = type { i64, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@ECTF_NOSYMTAB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@STT_FUNC = common dso_local global i64 0, align 8
@ECTF_NOTFUNC = common dso_local global i32 0, align 4
@ECTF_NOFUNCDAT = common dso_local global i32 0, align 4
@CTF_K_UNKNOWN = common dso_local global i64 0, align 8
@CTF_K_FUNCTION = common dso_local global i64 0, align 8
@ECTF_CORRUPT = common dso_local global i32 0, align 4
@CTF_FUNC_VARARG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctf_func_info(%struct.TYPE_13__* %0, i64 %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 3
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %8, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = load i32, i32* @ECTF_NOSYMTAB, align 4
  %24 = call i32 @ctf_set_errno(%struct.TYPE_13__* %22, i32 %23)
  store i32 %24, i32* %4, align 4
  br label %161

25:                                               ; preds = %3
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = load i32, i32* @EINVAL, align 4
  %34 = call i32 @ctf_set_errno(%struct.TYPE_13__* %32, i32 %33)
  store i32 %34, i32* %4, align 4
  br label %161

35:                                               ; preds = %25
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = icmp eq i64 %39, 4
  br i1 %40, label %41, label %59

41:                                               ; preds = %35
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = bitcast i32* %44 to %struct.TYPE_15__*
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i64 %46
  store %struct.TYPE_15__* %47, %struct.TYPE_15__** %13, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @ELF32_ST_TYPE(i32 %50)
  %52 = load i64, i64* @STT_FUNC, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %41
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %56 = load i32, i32* @ECTF_NOTFUNC, align 4
  %57 = call i32 @ctf_set_errno(%struct.TYPE_13__* %55, i32 %56)
  store i32 %57, i32* %4, align 4
  br label %161

58:                                               ; preds = %41
  br label %77

59:                                               ; preds = %35
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = bitcast i32* %62 to %struct.TYPE_14__*
  %64 = load i64, i64* %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i64 %64
  store %struct.TYPE_14__* %65, %struct.TYPE_14__** %14, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @ELF64_ST_TYPE(i32 %68)
  %70 = load i64, i64* @STT_FUNC, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %59
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %74 = load i32, i32* @ECTF_NOTFUNC, align 4
  %75 = call i32 @ctf_set_errno(%struct.TYPE_13__* %73, i32 %74)
  store i32 %75, i32* %4, align 4
  br label %161

76:                                               ; preds = %59
  br label %77

77:                                               ; preds = %76, %58
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* %6, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %89

85:                                               ; preds = %77
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %87 = load i32, i32* @ECTF_NOFUNCDAT, align 4
  %88 = call i32 @ctf_set_errno(%struct.TYPE_13__* %86, i32 %87)
  store i32 %88, i32* %4, align 4
  br label %161

89:                                               ; preds = %77
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* %6, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = zext i32 %98 to i64
  %100 = add i64 %92, %99
  %101 = inttoptr i64 %100 to i64*
  store i64* %101, i64** %9, align 8
  %102 = load i64*, i64** %9, align 8
  %103 = getelementptr inbounds i64, i64* %102, i32 1
  store i64* %103, i64** %9, align 8
  %104 = load i64, i64* %102, align 8
  store i64 %104, i64* %10, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %106 = load i64, i64* %10, align 8
  %107 = call i64 @LCTF_INFO_KIND(%struct.TYPE_13__* %105, i64 %106)
  store i64 %107, i64* %11, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %109 = load i64, i64* %10, align 8
  %110 = call i64 @LCTF_INFO_VLEN(%struct.TYPE_13__* %108, i64 %109)
  store i64 %110, i64* %12, align 8
  %111 = load i64, i64* %11, align 8
  %112 = load i64, i64* @CTF_K_UNKNOWN, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %89
  %115 = load i64, i64* %12, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %119 = load i32, i32* @ECTF_NOFUNCDAT, align 4
  %120 = call i32 @ctf_set_errno(%struct.TYPE_13__* %118, i32 %119)
  store i32 %120, i32* %4, align 4
  br label %161

121:                                              ; preds = %114, %89
  %122 = load i64, i64* %11, align 8
  %123 = load i64, i64* @CTF_K_FUNCTION, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %127 = load i32, i32* @ECTF_CORRUPT, align 4
  %128 = call i32 @ctf_set_errno(%struct.TYPE_13__* %126, i32 %127)
  store i32 %128, i32* %4, align 4
  br label %161

129:                                              ; preds = %121
  %130 = load i64*, i64** %9, align 8
  %131 = getelementptr inbounds i64, i64* %130, i32 1
  store i64* %131, i64** %9, align 8
  %132 = load i64, i64* %130, align 8
  %133 = trunc i64 %132 to i32
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 4
  %136 = load i64, i64* %12, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 1
  store i32 0, i32* %140, align 8
  %141 = load i64, i64* %12, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %160

143:                                              ; preds = %129
  %144 = load i64*, i64** %9, align 8
  %145 = load i64, i64* %12, align 8
  %146 = sub nsw i64 %145, 1
  %147 = getelementptr inbounds i64, i64* %144, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %143
  %151 = load i32, i32* @CTF_FUNC_VARARG, align 4
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %158, -1
  store i64 %159, i64* %157, align 8
  br label %160

160:                                              ; preds = %150, %143, %129
  store i32 0, i32* %4, align 4
  br label %161

161:                                              ; preds = %160, %125, %117, %85, %72, %54, %31, %21
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i32 @ctf_set_errno(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @ELF32_ST_TYPE(i32) #1

declare dso_local i64 @ELF64_ST_TYPE(i32) #1

declare dso_local i64 @LCTF_INFO_KIND(%struct.TYPE_13__*, i64) #1

declare dso_local i64 @LCTF_INFO_VLEN(%struct.TYPE_13__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
