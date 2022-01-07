; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_create.c_ctf_set_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_create.c_ctf_set_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { %struct.TYPE_18__ }
%struct.TYPE_14__ = type { i32 }

@LCTF_RDWR = common dso_local global i32 0, align 4
@ECTF_RDONLY = common dso_local global i32 0, align 4
@CTF_K_ARRAY = common dso_local global i64 0, align 8
@ECTF_BADID = common dso_local global i32 0, align 4
@LCTF_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctf_set_array(%struct.TYPE_16__* %0, i32 %1, %struct.TYPE_18__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %7, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.TYPE_17__* @ctf_dtd_lookup(%struct.TYPE_16__* %10, i32 %11)
  store %struct.TYPE_17__* %12, %struct.TYPE_17__** %9, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @LCTF_RDWR, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %21 = load i32, i32* @ECTF_RDONLY, align 4
  %22 = call i32 @ctf_set_errno(%struct.TYPE_16__* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  br label %110

23:                                               ; preds = %3
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %25 = icmp eq %struct.TYPE_17__* %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %23
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @CTF_INFO_KIND(i32 %30)
  %32 = load i64, i64* @CTF_K_ARRAY, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %26, %23
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %36 = load i32, i32* @ECTF_BADID, align 4
  %37 = call i32 @ctf_set_errno(%struct.TYPE_16__* %35, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %110

38:                                               ; preds = %26
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %39, %struct.TYPE_16__** %8, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32* @ctf_lookup_by_id(%struct.TYPE_16__** %8, i32 %42)
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %38
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.TYPE_17__* @ctf_dtd_lookup(%struct.TYPE_16__* %46, i32 %49)
  %51 = icmp eq %struct.TYPE_17__* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %54 = load i32, i32* @ECTF_BADID, align 4
  %55 = call i32 @ctf_set_errno(%struct.TYPE_16__* %53, i32 %54)
  store i32 %55, i32* %4, align 4
  br label %110

56:                                               ; preds = %45, %38
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %57, %struct.TYPE_16__** %8, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32* @ctf_lookup_by_id(%struct.TYPE_16__** %8, i32 %60)
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %74

63:                                               ; preds = %56
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.TYPE_17__* @ctf_dtd_lookup(%struct.TYPE_16__* %64, i32 %67)
  %69 = icmp eq %struct.TYPE_17__* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %72 = load i32, i32* @ECTF_BADID, align 4
  %73 = call i32 @ctf_set_errno(%struct.TYPE_16__* %71, i32 %72)
  store i32 %73, i32* %4, align 4
  br label %110

74:                                               ; preds = %63, %56
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ctf_ref_dec(%struct.TYPE_16__* %75, i32 %80)
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ctf_ref_dec(%struct.TYPE_16__* %82, i32 %87)
  %89 = load i32, i32* @LCTF_DIRTY, align 4
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %98 = bitcast %struct.TYPE_18__* %96 to i8*
  %99 = bitcast %struct.TYPE_18__* %97 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %98, i8* align 4 %99, i64 8, i1 false)
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ctf_ref_inc(%struct.TYPE_16__* %100, i32 %103)
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ctf_ref_inc(%struct.TYPE_16__* %105, i32 %108)
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %74, %70, %52, %34, %19
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local %struct.TYPE_17__* @ctf_dtd_lookup(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ctf_set_errno(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @CTF_INFO_KIND(i32) #1

declare dso_local i32* @ctf_lookup_by_id(%struct.TYPE_16__**, i32) #1

declare dso_local i32 @ctf_ref_dec(%struct.TYPE_16__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ctf_ref_inc(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
