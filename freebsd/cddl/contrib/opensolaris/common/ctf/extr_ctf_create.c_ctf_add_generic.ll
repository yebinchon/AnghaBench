; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_create.c_ctf_add_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_create.c_ctf_add_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64 }
%struct.TYPE_12__ = type { i8*, i64 }

@CTF_ADD_NONROOT = common dso_local global i64 0, align 8
@CTF_ADD_ROOT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@LCTF_RDWR = common dso_local global i32 0, align 4
@ECTF_RDONLY = common dso_local global i32 0, align 4
@CTF_MAX_TYPE = common dso_local global i64 0, align 8
@ECTF_FULL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@LCTF_CHILD = common dso_local global i32 0, align 4
@LCTF_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*, i64, i8*, %struct.TYPE_12__**)* @ctf_add_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ctf_add_generic(%struct.TYPE_11__* %0, i64 %1, i8* %2, %struct.TYPE_12__** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_12__**, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_12__** %3, %struct.TYPE_12__*** %9, align 8
  store i8* null, i8** %12, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @CTF_ADD_NONROOT, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %4
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @CTF_ADD_ROOT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = load i32, i32* @EINVAL, align 4
  %23 = call i64 @ctf_set_errno(%struct.TYPE_11__* %21, i32 %22)
  store i64 %23, i64* %5, align 8
  br label %110

24:                                               ; preds = %16, %4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @LCTF_RDWR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %24
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = load i32, i32* @ECTF_RDONLY, align 4
  %34 = call i64 @ctf_set_errno(%struct.TYPE_11__* %32, i32 %33)
  store i64 %34, i64* %5, align 8
  br label %110

35:                                               ; preds = %24
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @CTF_INDEX_TO_TYPE(i64 %38, i32 1)
  %40 = load i64, i64* @CTF_MAX_TYPE, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = load i32, i32* @ECTF_FULL, align 4
  %45 = call i64 @ctf_set_errno(%struct.TYPE_11__* %43, i32 %44)
  store i64 %45, i64* %5, align 8
  br label %110

46:                                               ; preds = %35
  %47 = call %struct.TYPE_12__* @ctf_alloc(i32 16)
  store %struct.TYPE_12__* %47, %struct.TYPE_12__** %10, align 8
  %48 = icmp eq %struct.TYPE_12__* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %51 = load i32, i32* @EAGAIN, align 4
  %52 = call i64 @ctf_set_errno(%struct.TYPE_11__* %50, i32 %51)
  store i64 %52, i64* %5, align 8
  br label %110

53:                                               ; preds = %46
  %54 = load i8*, i8** %8, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  %57 = load i8*, i8** %8, align 8
  %58 = call i8* @ctf_strdup(i8* %57)
  store i8* %58, i8** %12, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %62 = call i32 @ctf_free(%struct.TYPE_12__* %61, i32 16)
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %64 = load i32, i32* @EAGAIN, align 4
  %65 = call i64 @ctf_set_errno(%struct.TYPE_11__* %63, i32 %64)
  store i64 %65, i64* %5, align 8
  br label %110

66:                                               ; preds = %56, %53
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %68, align 8
  store i64 %69, i64* %11, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @LCTF_CHILD, align 4
  %76 = and i32 %74, %75
  %77 = call i64 @CTF_INDEX_TO_TYPE(i64 %71, i32 %76)
  store i64 %77, i64* %11, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %79 = call i32 @bzero(%struct.TYPE_12__* %78, i32 16)
  %80 = load i8*, i8** %12, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  %83 = load i64, i64* %11, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %98

88:                                               ; preds = %66
  %89 = load i8*, i8** %12, align 8
  %90 = call i64 @strlen(i8* %89)
  %91 = add nsw i64 %90, 1
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %95, %91
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %93, align 4
  br label %98

98:                                               ; preds = %88, %66
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %101 = call i32 @ctf_dtd_insert(%struct.TYPE_11__* %99, %struct.TYPE_12__* %100)
  %102 = load i32, i32* @LCTF_DIRTY, align 4
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %108 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %9, align 8
  store %struct.TYPE_12__* %107, %struct.TYPE_12__** %108, align 8
  %109 = load i64, i64* %11, align 8
  store i64 %109, i64* %5, align 8
  br label %110

110:                                              ; preds = %98, %60, %49, %42, %31, %20
  %111 = load i64, i64* %5, align 8
  ret i64 %111
}

declare dso_local i64 @ctf_set_errno(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @CTF_INDEX_TO_TYPE(i64, i32) #1

declare dso_local %struct.TYPE_12__* @ctf_alloc(i32) #1

declare dso_local i8* @ctf_strdup(i8*) #1

declare dso_local i32 @ctf_free(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ctf_dtd_insert(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
