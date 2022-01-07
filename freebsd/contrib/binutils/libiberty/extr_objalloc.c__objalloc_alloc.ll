; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_objalloc.c__objalloc_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_objalloc.c__objalloc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objalloc = type { i64, i8*, i32* }
%struct.objalloc_chunk = type { i8*, %struct.objalloc_chunk* }

@OBJALLOC_ALIGN = common dso_local global i64 0, align 8
@BIG_REQUEST = common dso_local global i64 0, align 8
@CHUNK_HEADER_SIZE = common dso_local global i32 0, align 4
@CHUNK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @_objalloc_alloc(%struct.objalloc* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.objalloc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.objalloc_chunk*, align 8
  %8 = alloca %struct.objalloc_chunk*, align 8
  store %struct.objalloc* %0, %struct.objalloc** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i64 1, i64* %5, align 8
  br label %12

12:                                               ; preds = %11, %2
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @OBJALLOC_ALIGN, align 8
  %15 = add i64 %13, %14
  %16 = sub i64 %15, 1
  %17 = load i64, i64* @OBJALLOC_ALIGN, align 8
  %18 = sub i64 %17, 1
  %19 = xor i64 %18, -1
  %20 = and i64 %16, %19
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.objalloc*, %struct.objalloc** %4, align 8
  %23 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ule i64 %21, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %12
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.objalloc*, %struct.objalloc** %4, align 8
  %29 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 %27
  store i8* %31, i8** %29, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.objalloc*, %struct.objalloc** %4, align 8
  %34 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sub i64 %35, %32
  store i64 %36, i64* %34, align 8
  %37 = load %struct.objalloc*, %struct.objalloc** %4, align 8
  %38 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = sub i64 0, %40
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = bitcast i8* %42 to i32*
  store i32* %43, i32** %3, align 8
  br label %118

44:                                               ; preds = %12
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @BIG_REQUEST, align 8
  %47 = icmp uge i64 %45, %46
  br i1 %47, label %48, label %82

48:                                               ; preds = %44
  %49 = load i32, i32* @CHUNK_HEADER_SIZE, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %5, align 8
  %52 = add i64 %50, %51
  %53 = trunc i64 %52 to i32
  %54 = call i64 @malloc(i32 %53)
  %55 = inttoptr i64 %54 to i8*
  store i8* %55, i8** %6, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  store i32* null, i32** %3, align 8
  br label %118

59:                                               ; preds = %48
  %60 = load i8*, i8** %6, align 8
  %61 = bitcast i8* %60 to %struct.objalloc_chunk*
  store %struct.objalloc_chunk* %61, %struct.objalloc_chunk** %7, align 8
  %62 = load %struct.objalloc*, %struct.objalloc** %4, align 8
  %63 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = bitcast i32* %64 to %struct.objalloc_chunk*
  %66 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %7, align 8
  %67 = getelementptr inbounds %struct.objalloc_chunk, %struct.objalloc_chunk* %66, i32 0, i32 1
  store %struct.objalloc_chunk* %65, %struct.objalloc_chunk** %67, align 8
  %68 = load %struct.objalloc*, %struct.objalloc** %4, align 8
  %69 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %7, align 8
  %72 = getelementptr inbounds %struct.objalloc_chunk, %struct.objalloc_chunk* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %7, align 8
  %74 = bitcast %struct.objalloc_chunk* %73 to i32*
  %75 = load %struct.objalloc*, %struct.objalloc** %4, align 8
  %76 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %75, i32 0, i32 2
  store i32* %74, i32** %76, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = load i32, i32* @CHUNK_HEADER_SIZE, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = bitcast i8* %80 to i32*
  store i32* %81, i32** %3, align 8
  br label %118

82:                                               ; preds = %44
  %83 = load i32, i32* @CHUNK_SIZE, align 4
  %84 = call i64 @malloc(i32 %83)
  %85 = inttoptr i64 %84 to %struct.objalloc_chunk*
  store %struct.objalloc_chunk* %85, %struct.objalloc_chunk** %8, align 8
  %86 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %8, align 8
  %87 = icmp eq %struct.objalloc_chunk* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  store i32* null, i32** %3, align 8
  br label %118

89:                                               ; preds = %82
  %90 = load %struct.objalloc*, %struct.objalloc** %4, align 8
  %91 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = bitcast i32* %92 to %struct.objalloc_chunk*
  %94 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %8, align 8
  %95 = getelementptr inbounds %struct.objalloc_chunk, %struct.objalloc_chunk* %94, i32 0, i32 1
  store %struct.objalloc_chunk* %93, %struct.objalloc_chunk** %95, align 8
  %96 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %8, align 8
  %97 = getelementptr inbounds %struct.objalloc_chunk, %struct.objalloc_chunk* %96, i32 0, i32 0
  store i8* null, i8** %97, align 8
  %98 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %8, align 8
  %99 = bitcast %struct.objalloc_chunk* %98 to i8*
  %100 = load i32, i32* @CHUNK_HEADER_SIZE, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = load %struct.objalloc*, %struct.objalloc** %4, align 8
  %104 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  %105 = load i32, i32* @CHUNK_SIZE, align 4
  %106 = load i32, i32* @CHUNK_HEADER_SIZE, align 4
  %107 = sub nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = load %struct.objalloc*, %struct.objalloc** %4, align 8
  %110 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  %111 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %8, align 8
  %112 = bitcast %struct.objalloc_chunk* %111 to i32*
  %113 = load %struct.objalloc*, %struct.objalloc** %4, align 8
  %114 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %113, i32 0, i32 2
  store i32* %112, i32** %114, align 8
  %115 = load %struct.objalloc*, %struct.objalloc** %4, align 8
  %116 = load i64, i64* %5, align 8
  %117 = call i32* @objalloc_alloc(%struct.objalloc* %115, i64 %116)
  store i32* %117, i32** %3, align 8
  br label %118

118:                                              ; preds = %89, %88, %59, %58, %26
  %119 = load i32*, i32** %3, align 8
  ret i32* %119
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32* @objalloc_alloc(%struct.objalloc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
