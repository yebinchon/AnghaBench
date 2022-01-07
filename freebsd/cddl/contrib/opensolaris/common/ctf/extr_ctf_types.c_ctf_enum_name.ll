; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_types.c_ctf_enum_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_types.c_ctf_enum_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@CTF_ERR = common dso_local global i32 0, align 4
@CTF_K_ENUM = common dso_local global i64 0, align 8
@ECTF_NOTENUM = common dso_local global i32 0, align 4
@ECTF_NOENUMNAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ctf_enum_name(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32*, i32** %5, align 8
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @ctf_type_resolve(i32* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @CTF_ERR, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %76

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.TYPE_5__* @ctf_lookup_by_id(i32** %5, i32 %21)
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %9, align 8
  %23 = icmp eq %struct.TYPE_5__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i8* null, i8** %4, align 8
  br label %76

25:                                               ; preds = %20
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @LCTF_INFO_KIND(i32* %26, i32 %29)
  %31 = load i64, i64* @CTF_K_ENUM, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* @ECTF_NOTENUM, align 4
  %36 = call i32 @ctf_set_errno(i32* %34, i32 %35)
  store i8* null, i8** %4, align 8
  br label %76

37:                                               ; preds = %25
  %38 = load i32*, i32** %5, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %40 = call i32 @ctf_get_ctt_size(i32* %38, %struct.TYPE_5__* %39, i32* null, i64* %11)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %42 = ptrtoint %struct.TYPE_5__* %41 to i64
  %43 = load i64, i64* %11, align 8
  %44 = add i64 %42, %43
  %45 = inttoptr i64 %44 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %10, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @LCTF_INFO_VLEN(i32* %46, i32 %49)
  store i64 %50, i64* %12, align 8
  br label %51

51:                                               ; preds = %67, %37
  %52 = load i64, i64* %12, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %51
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load i32*, i32** %5, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @ctf_strptr(i32* %61, i32 %64)
  store i8* %65, i8** %4, align 8
  br label %76

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %12, align 8
  %69 = add nsw i64 %68, -1
  store i64 %69, i64* %12, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 1
  store %struct.TYPE_6__* %71, %struct.TYPE_6__** %10, align 8
  br label %51

72:                                               ; preds = %51
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* @ECTF_NOENUMNAM, align 4
  %75 = call i32 @ctf_set_errno(i32* %73, i32 %74)
  store i8* null, i8** %4, align 8
  br label %76

76:                                               ; preds = %72, %60, %33, %24, %19
  %77 = load i8*, i8** %4, align 8
  ret i8* %77
}

declare dso_local i32 @ctf_type_resolve(i32*, i32) #1

declare dso_local %struct.TYPE_5__* @ctf_lookup_by_id(i32**, i32) #1

declare dso_local i64 @LCTF_INFO_KIND(i32*, i32) #1

declare dso_local i32 @ctf_set_errno(i32*, i32) #1

declare dso_local i32 @ctf_get_ctt_size(i32*, %struct.TYPE_5__*, i32*, i64*) #1

declare dso_local i64 @LCTF_INFO_VLEN(i32*, i32) #1

declare dso_local i8* @ctf_strptr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
