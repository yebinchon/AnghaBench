; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_types.c_ctf_enum_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_types.c_ctf_enum_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@CTF_ERR = common dso_local global i32 0, align 4
@CTF_K_ENUM = common dso_local global i64 0, align 8
@ECTF_NOTENUM = common dso_local global i32 0, align 4
@ECTF_NOENUMNAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctf_enum_value(i32* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i32*, i32** %6, align 8
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @ctf_type_resolve(i32* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @CTF_ERR, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @CTF_ERR, align 4
  store i32 %23, i32* %5, align 4
  br label %89

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = call %struct.TYPE_5__* @ctf_lookup_by_id(i32** %6, i32 %25)
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %11, align 8
  %27 = icmp eq %struct.TYPE_5__* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @CTF_ERR, align 4
  store i32 %29, i32* %5, align 4
  br label %89

30:                                               ; preds = %24
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @LCTF_INFO_KIND(i32* %31, i32 %34)
  %36 = load i64, i64* @CTF_K_ENUM, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* @ECTF_NOTENUM, align 4
  %41 = call i32 @ctf_set_errno(i32* %39, i32 %40)
  %42 = load i32, i32* @CTF_ERR, align 4
  store i32 %42, i32* %5, align 4
  br label %89

43:                                               ; preds = %30
  %44 = load i32*, i32** %6, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %46 = call i32 @ctf_get_ctt_size(i32* %44, %struct.TYPE_5__* %45, i64* %13, i64* %14)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %48 = ptrtoint %struct.TYPE_5__* %47 to i64
  %49 = load i64, i64* %14, align 8
  %50 = add i64 %48, %49
  %51 = inttoptr i64 %50 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %51, %struct.TYPE_6__** %12, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @LCTF_INFO_VLEN(i32* %52, i32 %55)
  store i64 %56, i64* %15, align 8
  br label %57

57:                                               ; preds = %79, %43
  %58 = load i64, i64* %15, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %84

60:                                               ; preds = %57
  %61 = load i32*, i32** %6, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ctf_strptr(i32* %61, i32 %64)
  %66 = load i8*, i8** %8, align 8
  %67 = call i64 @strcmp(i32 %65, i8* %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %60
  %70 = load i32*, i32** %9, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %9, align 8
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %72, %69
  store i32 0, i32* %5, align 4
  br label %89

78:                                               ; preds = %60
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %15, align 8
  %81 = add nsw i64 %80, -1
  store i64 %81, i64* %15, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 1
  store %struct.TYPE_6__* %83, %struct.TYPE_6__** %12, align 8
  br label %57

84:                                               ; preds = %57
  %85 = load i32*, i32** %10, align 8
  %86 = load i32, i32* @ECTF_NOENUMNAM, align 4
  %87 = call i32 @ctf_set_errno(i32* %85, i32 %86)
  %88 = load i32, i32* @CTF_ERR, align 4
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %84, %77, %38, %28, %22
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @ctf_type_resolve(i32*, i32) #1

declare dso_local %struct.TYPE_5__* @ctf_lookup_by_id(i32**, i32) #1

declare dso_local i64 @LCTF_INFO_KIND(i32*, i32) #1

declare dso_local i32 @ctf_set_errno(i32*, i32) #1

declare dso_local i32 @ctf_get_ctt_size(i32*, %struct.TYPE_5__*, i64*, i64*) #1

declare dso_local i64 @LCTF_INFO_VLEN(i32*, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @ctf_strptr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
