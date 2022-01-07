; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_gelf_ehdr.c_gelf_getehdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_gelf_ehdr.c_gelf_getehdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ELFCLASS32 = common dso_local global i32 0, align 4
@ELFCLASS64 = common dso_local global i32 0, align 4
@ARGUMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @gelf_getehdr(%struct.TYPE_11__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %10 = icmp eq %struct.TYPE_9__* %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = icmp eq %struct.TYPE_11__* %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %11
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @ELFCLASS32, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @ELFCLASS64, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20, %11, %2
  %25 = load i32, i32* @ARGUMENT, align 4
  %26 = call i32 @LIBELF_SET_ERROR(i32 %25, i32 0)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %130

27:                                               ; preds = %20, %14
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @ELFCLASS32, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %112

31:                                               ; preds = %27
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %33 = load i32, i32* @ELFCLASS32, align 4
  %34 = call i8* @_libelf_ehdr(%struct.TYPE_11__* %32, i32 %33, i32 0)
  %35 = bitcast i8* %34 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %35, %struct.TYPE_10__** %7, align 8
  %36 = icmp eq %struct.TYPE_10__* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %130

38:                                               ; preds = %31
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 13
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 13
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @memcpy(i32 %41, i32 %44, i32 4)
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 12
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 12
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 11
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 11
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 10
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 10
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 9
  store i32 %63, i32* %65, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 8
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 8
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 7
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 6
  store i32 %78, i32* %80, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 5
  store i32 %83, i32* %85, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %111, %struct.TYPE_9__** %3, align 8
  br label %130

112:                                              ; preds = %27
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @ELFCLASS64, align 4
  %115 = icmp eq i32 %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %119 = load i32, i32* @ELFCLASS64, align 4
  %120 = call i8* @_libelf_ehdr(%struct.TYPE_11__* %118, i32 %119, i32 0)
  %121 = bitcast i8* %120 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %121, %struct.TYPE_9__** %8, align 8
  %122 = icmp eq %struct.TYPE_9__* %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %112
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %130

124:                                              ; preds = %112
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %127 = bitcast %struct.TYPE_9__* %125 to i8*
  %128 = bitcast %struct.TYPE_9__* %126 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %127, i8* align 4 %128, i64 56, i1 false)
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %129, %struct.TYPE_9__** %3, align 8
  br label %130

130:                                              ; preds = %124, %123, %38, %37, %24
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %131
}

declare dso_local i32 @LIBELF_SET_ERROR(i32, i32) #1

declare dso_local i8* @_libelf_ehdr(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
