; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_create.c_ctf_add_enumerator.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_create.c_ctf_add_enumerator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i8*, i32, i64, i32 }
%struct.TYPE_16__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@LCTF_RDWR = common dso_local global i32 0, align 4
@ECTF_RDONLY = common dso_local global i32 0, align 4
@ECTF_BADID = common dso_local global i32 0, align 4
@CTF_K_ENUM = common dso_local global i64 0, align 8
@ECTF_NOTENUM = common dso_local global i32 0, align 4
@CTF_MAX_VLEN = common dso_local global i64 0, align 8
@ECTF_DTFULL = common dso_local global i32 0, align 4
@ECTF_DUPMEMBER = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@CTF_ERR = common dso_local global i32 0, align 4
@LCTF_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctf_add_enumerator(%struct.TYPE_18__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.TYPE_19__* @ctf_dtd_lookup(%struct.TYPE_18__* %16, i32 %17)
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %10, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %23 = load i32, i32* @EINVAL, align 4
  %24 = call i32 @ctf_set_errno(%struct.TYPE_18__* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  br label %153

25:                                               ; preds = %4
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @LCTF_RDWR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %25
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %34 = load i32, i32* @ECTF_RDONLY, align 4
  %35 = call i32 @ctf_set_errno(%struct.TYPE_18__* %33, i32 %34)
  store i32 %35, i32* %5, align 4
  br label %153

36:                                               ; preds = %25
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %38 = icmp eq %struct.TYPE_19__* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %41 = load i32, i32* @ECTF_BADID, align 4
  %42 = call i32 @ctf_set_errno(%struct.TYPE_18__* %40, i32 %41)
  store i32 %42, i32* %5, align 4
  br label %153

43:                                               ; preds = %36
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @CTF_INFO_KIND(i32 %47)
  store i64 %48, i64* %12, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @CTF_INFO_ISROOT(i32 %52)
  store i64 %53, i64* %14, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @CTF_INFO_VLEN(i32 %57)
  store i64 %58, i64* %13, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* @CTF_K_ENUM, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %43
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %64 = load i32, i32* @ECTF_NOTENUM, align 4
  %65 = call i32 @ctf_set_errno(%struct.TYPE_18__* %63, i32 %64)
  store i32 %65, i32* %5, align 4
  br label %153

66:                                               ; preds = %43
  %67 = load i64, i64* %13, align 8
  %68 = load i64, i64* @CTF_MAX_VLEN, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %72 = load i32, i32* @ECTF_DTFULL, align 4
  %73 = call i32 @ctf_set_errno(%struct.TYPE_18__* %71, i32 %72)
  store i32 %73, i32* %5, align 4
  br label %153

74:                                               ; preds = %66
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = call %struct.TYPE_20__* @ctf_list_next(%struct.TYPE_20__* %77)
  store %struct.TYPE_20__* %78, %struct.TYPE_20__** %11, align 8
  br label %79

79:                                               ; preds = %94, %74
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %81 = icmp ne %struct.TYPE_20__* %80, null
  br i1 %81, label %82, label %97

82:                                               ; preds = %79
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = call i64 @strcmp(i8* %85, i8* %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %91 = load i32, i32* @ECTF_DUPMEMBER, align 4
  %92 = call i32 @ctf_set_errno(%struct.TYPE_18__* %90, i32 %91)
  store i32 %92, i32* %5, align 4
  br label %153

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %96 = call %struct.TYPE_20__* @ctf_list_next(%struct.TYPE_20__* %95)
  store %struct.TYPE_20__* %96, %struct.TYPE_20__** %11, align 8
  br label %79

97:                                               ; preds = %79
  %98 = call %struct.TYPE_20__* @ctf_alloc(i32 32)
  store %struct.TYPE_20__* %98, %struct.TYPE_20__** %11, align 8
  %99 = icmp eq %struct.TYPE_20__* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %102 = load i32, i32* @EAGAIN, align 4
  %103 = call i32 @ctf_set_errno(%struct.TYPE_18__* %101, i32 %102)
  store i32 %103, i32* %5, align 4
  br label %153

104:                                              ; preds = %97
  %105 = load i8*, i8** %8, align 8
  %106 = call i8* @ctf_strdup(i8* %105)
  store i8* %106, i8** %15, align 8
  %107 = icmp eq i8* %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %104
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %110 = call i32 @ctf_free(%struct.TYPE_20__* %109, i32 32)
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %112 = load i32, i32* @EAGAIN, align 4
  %113 = call i32 @ctf_set_errno(%struct.TYPE_18__* %111, i32 %112)
  store i32 %113, i32* %5, align 4
  br label %153

114:                                              ; preds = %104
  %115 = load i8*, i8** %15, align 8
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 0
  store i8* %115, i8** %117, align 8
  %118 = load i32, i32* @CTF_ERR, align 4
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 8
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 2
  store i64 0, i64* %122, align 8
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 8
  %126 = load i64, i64* %12, align 8
  %127 = load i64, i64* %14, align 8
  %128 = load i64, i64* %13, align 8
  %129 = add nsw i64 %128, 1
  %130 = call i32 @CTF_TYPE_INFO(i64 %126, i64 %127, i64 %129)
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  store i32 %130, i32* %133, align 8
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %138 = call i32 @ctf_list_append(%struct.TYPE_20__* %136, %struct.TYPE_20__* %137)
  %139 = load i8*, i8** %15, align 8
  %140 = call i64 @strlen(i8* %139)
  %141 = add nsw i64 %140, 1
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %145, %141
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %143, align 4
  %148 = load i32, i32* @LCTF_DIRTY, align 4
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 4
  store i32 0, i32* %5, align 4
  br label %153

153:                                              ; preds = %114, %108, %100, %89, %70, %62, %39, %32, %21
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local %struct.TYPE_19__* @ctf_dtd_lookup(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ctf_set_errno(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @CTF_INFO_KIND(i32) #1

declare dso_local i64 @CTF_INFO_ISROOT(i32) #1

declare dso_local i64 @CTF_INFO_VLEN(i32) #1

declare dso_local %struct.TYPE_20__* @ctf_list_next(%struct.TYPE_20__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_20__* @ctf_alloc(i32) #1

declare dso_local i8* @ctf_strdup(i8*) #1

declare dso_local i32 @ctf_free(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @CTF_TYPE_INFO(i64, i64, i64) #1

declare dso_local i32 @ctf_list_append(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
