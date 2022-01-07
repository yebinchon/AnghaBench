; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_objalloc.c_objalloc_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_objalloc.c_objalloc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objalloc = type { i8*, i32, i32* }
%struct.objalloc_chunk = type { i32*, i32* }

@CHUNK_SIZE = common dso_local global i32 0, align 4
@CHUNK_HEADER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.objalloc* @objalloc_create() #0 {
  %1 = alloca %struct.objalloc*, align 8
  %2 = alloca %struct.objalloc*, align 8
  %3 = alloca %struct.objalloc_chunk*, align 8
  %4 = call i64 @malloc(i32 24)
  %5 = inttoptr i64 %4 to %struct.objalloc*
  store %struct.objalloc* %5, %struct.objalloc** %2, align 8
  %6 = load %struct.objalloc*, %struct.objalloc** %2, align 8
  %7 = icmp eq %struct.objalloc* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store %struct.objalloc* null, %struct.objalloc** %1, align 8
  br label %44

9:                                                ; preds = %0
  %10 = load i32, i32* @CHUNK_SIZE, align 4
  %11 = call i64 @malloc(i32 %10)
  %12 = inttoptr i64 %11 to i32*
  %13 = load %struct.objalloc*, %struct.objalloc** %2, align 8
  %14 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %13, i32 0, i32 2
  store i32* %12, i32** %14, align 8
  %15 = load %struct.objalloc*, %struct.objalloc** %2, align 8
  %16 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %9
  %20 = load %struct.objalloc*, %struct.objalloc** %2, align 8
  %21 = call i32 @free(%struct.objalloc* %20)
  store %struct.objalloc* null, %struct.objalloc** %1, align 8
  br label %44

22:                                               ; preds = %9
  %23 = load %struct.objalloc*, %struct.objalloc** %2, align 8
  %24 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = bitcast i32* %25 to %struct.objalloc_chunk*
  store %struct.objalloc_chunk* %26, %struct.objalloc_chunk** %3, align 8
  %27 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %3, align 8
  %28 = getelementptr inbounds %struct.objalloc_chunk, %struct.objalloc_chunk* %27, i32 0, i32 1
  store i32* null, i32** %28, align 8
  %29 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %3, align 8
  %30 = getelementptr inbounds %struct.objalloc_chunk, %struct.objalloc_chunk* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  %31 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %3, align 8
  %32 = bitcast %struct.objalloc_chunk* %31 to i8*
  %33 = load i32, i32* @CHUNK_HEADER_SIZE, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load %struct.objalloc*, %struct.objalloc** %2, align 8
  %37 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* @CHUNK_SIZE, align 4
  %39 = load i32, i32* @CHUNK_HEADER_SIZE, align 4
  %40 = sub nsw i32 %38, %39
  %41 = load %struct.objalloc*, %struct.objalloc** %2, align 8
  %42 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.objalloc*, %struct.objalloc** %2, align 8
  store %struct.objalloc* %43, %struct.objalloc** %1, align 8
  br label %44

44:                                               ; preds = %22, %19, %8
  %45 = load %struct.objalloc*, %struct.objalloc** %1, align 8
  ret %struct.objalloc* %45
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @free(%struct.objalloc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
