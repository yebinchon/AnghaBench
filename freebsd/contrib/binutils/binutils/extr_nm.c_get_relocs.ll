; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_nm.c_get_relocs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_nm.c_get_relocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.get_relocs_info = type { i64*, i32**, %struct.TYPE_5__**, i32 }

@SEC_RELOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i8*)* @get_relocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_relocs(i32* %0, %struct.TYPE_5__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.get_relocs_info*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.get_relocs_info*
  store %struct.get_relocs_info* %10, %struct.get_relocs_info** %7, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = load %struct.get_relocs_info*, %struct.get_relocs_info** %7, align 8
  %13 = getelementptr inbounds %struct.get_relocs_info, %struct.get_relocs_info* %12, i32 0, i32 2
  %14 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %13, align 8
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %14, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SEC_RELOC, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load %struct.get_relocs_info*, %struct.get_relocs_info** %7, align 8
  %23 = getelementptr inbounds %struct.get_relocs_info, %struct.get_relocs_info* %22, i32 0, i32 1
  %24 = load i32**, i32*** %23, align 8
  store i32* null, i32** %24, align 8
  %25 = load %struct.get_relocs_info*, %struct.get_relocs_info** %7, align 8
  %26 = getelementptr inbounds %struct.get_relocs_info, %struct.get_relocs_info* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  store i64 0, i64* %27, align 8
  br label %67

28:                                               ; preds = %3
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = call i64 @bfd_get_reloc_upper_bound(i32* %29, %struct.TYPE_5__* %30)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @bfd_get_filename(i32* %35)
  %37 = call i32 @bfd_fatal(i32 %36)
  br label %38

38:                                               ; preds = %34, %28
  %39 = load i64, i64* %8, align 8
  %40 = call i32* @xmalloc(i64 %39)
  %41 = load %struct.get_relocs_info*, %struct.get_relocs_info** %7, align 8
  %42 = getelementptr inbounds %struct.get_relocs_info, %struct.get_relocs_info* %41, i32 0, i32 1
  %43 = load i32**, i32*** %42, align 8
  store i32* %40, i32** %43, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = load %struct.get_relocs_info*, %struct.get_relocs_info** %7, align 8
  %47 = getelementptr inbounds %struct.get_relocs_info, %struct.get_relocs_info* %46, i32 0, i32 1
  %48 = load i32**, i32*** %47, align 8
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.get_relocs_info*, %struct.get_relocs_info** %7, align 8
  %51 = getelementptr inbounds %struct.get_relocs_info, %struct.get_relocs_info* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @bfd_canonicalize_reloc(i32* %44, %struct.TYPE_5__* %45, i32* %49, i32 %52)
  %54 = load %struct.get_relocs_info*, %struct.get_relocs_info** %7, align 8
  %55 = getelementptr inbounds %struct.get_relocs_info, %struct.get_relocs_info* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  store i64 %53, i64* %56, align 8
  %57 = load %struct.get_relocs_info*, %struct.get_relocs_info** %7, align 8
  %58 = getelementptr inbounds %struct.get_relocs_info, %struct.get_relocs_info* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %38
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @bfd_get_filename(i32* %63)
  %65 = call i32 @bfd_fatal(i32 %64)
  br label %66

66:                                               ; preds = %62, %38
  br label %67

67:                                               ; preds = %66, %21
  %68 = load %struct.get_relocs_info*, %struct.get_relocs_info** %7, align 8
  %69 = getelementptr inbounds %struct.get_relocs_info, %struct.get_relocs_info* %68, i32 0, i32 2
  %70 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %70, i32 1
  store %struct.TYPE_5__** %71, %struct.TYPE_5__*** %69, align 8
  %72 = load %struct.get_relocs_info*, %struct.get_relocs_info** %7, align 8
  %73 = getelementptr inbounds %struct.get_relocs_info, %struct.get_relocs_info* %72, i32 0, i32 1
  %74 = load i32**, i32*** %73, align 8
  %75 = getelementptr inbounds i32*, i32** %74, i32 1
  store i32** %75, i32*** %73, align 8
  %76 = load %struct.get_relocs_info*, %struct.get_relocs_info** %7, align 8
  %77 = getelementptr inbounds %struct.get_relocs_info, %struct.get_relocs_info* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i32 1
  store i64* %79, i64** %77, align 8
  ret void
}

declare dso_local i64 @bfd_get_reloc_upper_bound(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @bfd_fatal(i32) #1

declare dso_local i32 @bfd_get_filename(i32*) #1

declare dso_local i32* @xmalloc(i64) #1

declare dso_local i64 @bfd_canonicalize_reloc(i32*, %struct.TYPE_5__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
