; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_types.c_ctf_type_encoding.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_types.c_ctf_type_encoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@CTF_ERR = common dso_local global i32 0, align 4
@ECTF_NOTINTFP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctf_type_encoding(i32* %0, i32 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %12 = load i32*, i32** %5, align 8
  store i32* %12, i32** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.TYPE_6__* @ctf_lookup_by_id(i32** %5, i32 %13)
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %9, align 8
  %15 = icmp eq %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @CTF_ERR, align 4
  store i32 %17, i32* %4, align 4
  br label %72

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %21 = call i32 @ctf_get_ctt_size(i32* %19, %struct.TYPE_6__* %20, i32* null, i32* %10)
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @LCTF_INFO_KIND(i32* %22, i32 %25)
  switch i32 %26, label %67 [
    i32 128, label %27
    i32 129, label %47
  ]

27:                                               ; preds = %18
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %29 = ptrtoint %struct.TYPE_6__* %28 to i64
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 %29, %31
  %33 = inttoptr i64 %32 to i32*
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @CTF_INT_ENCODING(i32 %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @CTF_INT_OFFSET(i32 %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @CTF_INT_BITS(i32 %43)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %71

47:                                               ; preds = %18
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %49 = ptrtoint %struct.TYPE_6__* %48 to i64
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 %49, %51
  %53 = inttoptr i64 %52 to i32*
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @CTF_FP_ENCODING(i32 %55)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @CTF_FP_OFFSET(i32 %59)
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @CTF_FP_BITS(i32 %63)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  br label %71

67:                                               ; preds = %18
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* @ECTF_NOTINTFP, align 4
  %70 = call i32 @ctf_set_errno(i32* %68, i32 %69)
  store i32 %70, i32* %4, align 4
  br label %72

71:                                               ; preds = %47, %27
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %67, %16
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.TYPE_6__* @ctf_lookup_by_id(i32**, i32) #1

declare dso_local i32 @ctf_get_ctt_size(i32*, %struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i32 @LCTF_INFO_KIND(i32*, i32) #1

declare dso_local i32 @CTF_INT_ENCODING(i32) #1

declare dso_local i32 @CTF_INT_OFFSET(i32) #1

declare dso_local i32 @CTF_INT_BITS(i32) #1

declare dso_local i32 @CTF_FP_ENCODING(i32) #1

declare dso_local i32 @CTF_FP_OFFSET(i32) #1

declare dso_local i32 @CTF_FP_BITS(i32) #1

declare dso_local i32 @ctf_set_errno(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
