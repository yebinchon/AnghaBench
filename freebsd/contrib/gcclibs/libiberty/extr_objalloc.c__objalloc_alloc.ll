; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_objalloc.c__objalloc_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_objalloc.c__objalloc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objalloc = type { i64, i8*, i32* }
%struct.objalloc_chunk = type { i8*, %struct.objalloc_chunk* }

@OBJALLOC_ALIGN = common dso_local global i64 0, align 8
@CHUNK_HEADER_SIZE = common dso_local global i64 0, align 8
@BIG_REQUEST = common dso_local global i64 0, align 8
@CHUNK_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @_objalloc_alloc(%struct.objalloc* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.objalloc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.objalloc_chunk*, align 8
  %9 = alloca %struct.objalloc_chunk*, align 8
  store %struct.objalloc* %0, %struct.objalloc** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i64 1, i64* %6, align 8
  br label %14

14:                                               ; preds = %13, %2
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @OBJALLOC_ALIGN, align 8
  %17 = add i64 %15, %16
  %18 = sub i64 %17, 1
  %19 = load i64, i64* @OBJALLOC_ALIGN, align 8
  %20 = sub i64 %19, 1
  %21 = xor i64 %20, -1
  %22 = and i64 %18, %21
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %25 = add i64 %23, %24
  %26 = load i64, i64* %5, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %14
  store i32* null, i32** %3, align 8
  br label %122

29:                                               ; preds = %14
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.objalloc*, %struct.objalloc** %4, align 8
  %32 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ule i64 %30, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %29
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.objalloc*, %struct.objalloc** %4, align 8
  %38 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 %36
  store i8* %40, i8** %38, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.objalloc*, %struct.objalloc** %4, align 8
  %43 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub i64 %44, %41
  store i64 %45, i64* %43, align 8
  %46 = load %struct.objalloc*, %struct.objalloc** %4, align 8
  %47 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = sub i64 0, %49
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = bitcast i8* %51 to i32*
  store i32* %52, i32** %3, align 8
  br label %122

53:                                               ; preds = %29
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @BIG_REQUEST, align 8
  %56 = icmp uge i64 %54, %55
  br i1 %56, label %57, label %88

57:                                               ; preds = %53
  %58 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %58, %59
  %61 = call i64 @malloc(i64 %60)
  %62 = inttoptr i64 %61 to i8*
  store i8* %62, i8** %7, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  store i32* null, i32** %3, align 8
  br label %122

66:                                               ; preds = %57
  %67 = load i8*, i8** %7, align 8
  %68 = bitcast i8* %67 to %struct.objalloc_chunk*
  store %struct.objalloc_chunk* %68, %struct.objalloc_chunk** %8, align 8
  %69 = load %struct.objalloc*, %struct.objalloc** %4, align 8
  %70 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = bitcast i32* %71 to %struct.objalloc_chunk*
  %73 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %8, align 8
  %74 = getelementptr inbounds %struct.objalloc_chunk, %struct.objalloc_chunk* %73, i32 0, i32 1
  store %struct.objalloc_chunk* %72, %struct.objalloc_chunk** %74, align 8
  %75 = load %struct.objalloc*, %struct.objalloc** %4, align 8
  %76 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %8, align 8
  %79 = getelementptr inbounds %struct.objalloc_chunk, %struct.objalloc_chunk* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  %80 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %8, align 8
  %81 = bitcast %struct.objalloc_chunk* %80 to i32*
  %82 = load %struct.objalloc*, %struct.objalloc** %4, align 8
  %83 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %82, i32 0, i32 2
  store i32* %81, i32** %83, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  %87 = bitcast i8* %86 to i32*
  store i32* %87, i32** %3, align 8
  br label %122

88:                                               ; preds = %53
  %89 = load i64, i64* @CHUNK_SIZE, align 8
  %90 = call i64 @malloc(i64 %89)
  %91 = inttoptr i64 %90 to %struct.objalloc_chunk*
  store %struct.objalloc_chunk* %91, %struct.objalloc_chunk** %9, align 8
  %92 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %9, align 8
  %93 = icmp eq %struct.objalloc_chunk* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  store i32* null, i32** %3, align 8
  br label %122

95:                                               ; preds = %88
  %96 = load %struct.objalloc*, %struct.objalloc** %4, align 8
  %97 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = bitcast i32* %98 to %struct.objalloc_chunk*
  %100 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %9, align 8
  %101 = getelementptr inbounds %struct.objalloc_chunk, %struct.objalloc_chunk* %100, i32 0, i32 1
  store %struct.objalloc_chunk* %99, %struct.objalloc_chunk** %101, align 8
  %102 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %9, align 8
  %103 = getelementptr inbounds %struct.objalloc_chunk, %struct.objalloc_chunk* %102, i32 0, i32 0
  store i8* null, i8** %103, align 8
  %104 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %9, align 8
  %105 = bitcast %struct.objalloc_chunk* %104 to i8*
  %106 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  %108 = load %struct.objalloc*, %struct.objalloc** %4, align 8
  %109 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  %110 = load i64, i64* @CHUNK_SIZE, align 8
  %111 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %112 = sub i64 %110, %111
  %113 = load %struct.objalloc*, %struct.objalloc** %4, align 8
  %114 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  %115 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %9, align 8
  %116 = bitcast %struct.objalloc_chunk* %115 to i32*
  %117 = load %struct.objalloc*, %struct.objalloc** %4, align 8
  %118 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %117, i32 0, i32 2
  store i32* %116, i32** %118, align 8
  %119 = load %struct.objalloc*, %struct.objalloc** %4, align 8
  %120 = load i64, i64* %6, align 8
  %121 = call i32* @objalloc_alloc(%struct.objalloc* %119, i64 %120)
  store i32* %121, i32** %3, align 8
  br label %122

122:                                              ; preds = %95, %94, %66, %65, %35, %28
  %123 = load i32*, i32** %3, align 8
  ret i32* %123
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i32* @objalloc_alloc(%struct.objalloc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
