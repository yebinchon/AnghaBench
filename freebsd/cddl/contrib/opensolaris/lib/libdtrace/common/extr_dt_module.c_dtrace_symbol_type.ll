; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_module.c_dtrace_symbol_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_module.c_dtrace_symbol_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_24__ = type { i64, i32 }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32*, i32, i32*, i64 }
%struct.TYPE_22__ = type { i32*, i32*, i32* }
%struct.TYPE_23__ = type { i32, i32* }

@CTF_ERR = common dso_local global i32 0, align 4
@EDT_NOMOD = common dso_local global i32 0, align 4
@SHN_UNDEF = common dso_local global i64 0, align 8
@EDT_NOSYM = common dso_local global i32 0, align 4
@STT_FUNC = common dso_local global i64 0, align 8
@EDT_CTF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_symbol_type(%struct.TYPE_21__* %0, %struct.TYPE_24__* %1, %struct.TYPE_20__* %2, %struct.TYPE_19__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %7, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %8, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %9, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  store i32* null, i32** %13, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 2
  store i32* null, i32** %15, align 8
  %16 = load i32, i32* @CTF_ERR, align 4
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.TYPE_22__* @dt_module_lookup_by_name(%struct.TYPE_21__* %21, i32 %24)
  store %struct.TYPE_22__* %25, %struct.TYPE_22__** %10, align 8
  %26 = icmp eq %struct.TYPE_22__* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %4
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %29 = load i32, i32* @EDT_NOMOD, align 4
  %30 = call i32 @dt_set_errno(%struct.TYPE_21__* %28, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %127

31:                                               ; preds = %4
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SHN_UNDEF, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %67

37:                                               ; preds = %31
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %67

42:                                               ; preds = %37
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.TYPE_23__* @dt_idhash_lookup(i32* %45, i32 %48)
  store %struct.TYPE_23__* %49, %struct.TYPE_23__** %11, align 8
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %51 = icmp eq %struct.TYPE_23__* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %42
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %54 = load i32, i32* @EDT_NOSYM, align 4
  %55 = call i32 @dt_set_errno(%struct.TYPE_21__* %53, i32 %54)
  store i32 %55, i32* %5, align 4
  br label %127

56:                                               ; preds = %42
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 2
  store i32* %59, i32** %61, align 8
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  br label %121

67:                                               ; preds = %37, %31
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @GELF_ST_TYPE(i32 %70)
  %72 = load i64, i64* @STT_FUNC, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %111

74:                                               ; preds = %67
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %77 = call i32* @dt_module_getctf(%struct.TYPE_21__* %75, %struct.TYPE_22__* %76)
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 -1, i32* %5, align 4
  br label %127

80:                                               ; preds = %74
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 2
  store i32* %83, i32** %85, align 8
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ctf_lookup_by_symbol(i32* %88, i32 %91)
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @CTF_ERR, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %80
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @ctf_errno(i32* %103)
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %108 = load i32, i32* @EDT_CTF, align 4
  %109 = call i32 @dt_set_errno(%struct.TYPE_21__* %107, i32 %108)
  store i32 %109, i32* %5, align 4
  br label %127

110:                                              ; preds = %80
  br label %120

111:                                              ; preds = %67
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %113 = call i32* @DT_FPTR_CTFP(%struct.TYPE_21__* %112)
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 2
  store i32* %113, i32** %115, align 8
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %117 = call i32 @DT_FPTR_TYPE(%struct.TYPE_21__* %116)
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %111, %110
  br label %121

121:                                              ; preds = %120, %56
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  store i32* %124, i32** %126, align 8
  store i32 0, i32* %5, align 4
  br label %127

127:                                              ; preds = %121, %100, %79, %52, %27
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local %struct.TYPE_22__* @dt_module_lookup_by_name(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @dt_set_errno(%struct.TYPE_21__*, i32) #1

declare dso_local %struct.TYPE_23__* @dt_idhash_lookup(i32*, i32) #1

declare dso_local i64 @GELF_ST_TYPE(i32) #1

declare dso_local i32* @dt_module_getctf(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @ctf_lookup_by_symbol(i32*, i32) #1

declare dso_local i32 @ctf_errno(i32*) #1

declare dso_local i32* @DT_FPTR_CTFP(%struct.TYPE_21__*) #1

declare dso_local i32 @DT_FPTR_TYPE(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
