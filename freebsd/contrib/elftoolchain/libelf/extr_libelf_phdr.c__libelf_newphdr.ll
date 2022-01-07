; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_libelf_phdr.c__libelf_newphdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_libelf_phdr.c__libelf_newphdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32*, i32* }

@ARGUMENT = common dso_local global i32 0, align 4
@SEQUENCE = common dso_local global i32 0, align 4
@ELFCLASS32 = common dso_local global i32 0, align 4
@ELFCLASS64 = common dso_local global i32 0, align 4
@EV_CURRENT = common dso_local global i64 0, align 8
@ELF_T_PHDR = common dso_local global i32 0, align 4
@RESOURCE = common dso_local global i32 0, align 4
@ELF_C_SET = common dso_local global i32 0, align 4
@ELF_F_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_libelf_newphdr(%struct.TYPE_11__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = icmp eq %struct.TYPE_11__* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @ARGUMENT, align 4
  %16 = call i32 @LIBELF_SET_ERROR(i32 %15, i32 0)
  store i8* null, i8** %4, align 8
  br label %126

17:                                               ; preds = %3
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i8* @_libelf_ehdr(%struct.TYPE_11__* %18, i32 %19, i32 0)
  store i8* %20, i8** %8, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @SEQUENCE, align 4
  %24 = call i32 @LIBELF_SET_ERROR(i32 %23, i32 0)
  store i8* null, i8** %4, align 8
  br label %126

25:                                               ; preds = %17
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @ELFCLASS32, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %25
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @ELFCLASS64, align 4
  %39 = icmp eq i32 %37, %38
  br label %40

40:                                               ; preds = %36, %25
  %41 = phi i1 [ true, %25 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @EV_CURRENT, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i32, i32* @ELF_T_PHDR, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @_libelf_msize(i32 %51, i32 %52, i64 %55)
  store i64 %56, i64* %11, align 8
  %57 = load i64, i64* %11, align 8
  %58 = icmp ugt i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  store i8* null, i8** %9, align 8
  %61 = load i64, i64* %7, align 8
  %62 = icmp ugt i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %40
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* %11, align 8
  %66 = call i8* @calloc(i64 %64, i64 %65)
  store i8* %66, i8** %9, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* @RESOURCE, align 4
  %70 = call i32 @LIBELF_SET_ERROR(i32 %69, i32 0)
  store i8* null, i8** %4, align 8
  br label %126

71:                                               ; preds = %63, %40
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @ELFCLASS32, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %95

75:                                               ; preds = %71
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = bitcast i32* %81 to i8*
  store i8* %82, i8** %10, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %75
  %85 = load i8*, i8** %10, align 8
  %86 = call i32 @free(i8* %85)
  br label %87

87:                                               ; preds = %84, %75
  %88 = load i8*, i8** %9, align 8
  %89 = bitcast i8* %88 to i32*
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  store i32* %89, i32** %94, align 8
  br label %115

95:                                               ; preds = %71
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = bitcast i32* %101 to i8*
  store i8* %102, i8** %10, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %95
  %105 = load i8*, i8** %10, align 8
  %106 = call i32 @free(i8* %105)
  br label %107

107:                                              ; preds = %104, %95
  %108 = load i8*, i8** %9, align 8
  %109 = bitcast i8* %108 to i32*
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  store i32* %109, i32** %114, align 8
  br label %115

115:                                              ; preds = %107, %87
  %116 = load i64, i64* %7, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  store i64 %116, i64* %120, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %122 = load i32, i32* @ELF_C_SET, align 4
  %123 = load i32, i32* @ELF_F_DIRTY, align 4
  %124 = call i32 @elf_flagphdr(%struct.TYPE_11__* %121, i32 %122, i32 %123)
  %125 = load i8*, i8** %9, align 8
  store i8* %125, i8** %4, align 8
  br label %126

126:                                              ; preds = %115, %68, %22, %14
  %127 = load i8*, i8** %4, align 8
  ret i8* %127
}

declare dso_local i32 @LIBELF_SET_ERROR(i32, i32) #1

declare dso_local i8* @_libelf_ehdr(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @_libelf_msize(i32, i32, i64) #1

declare dso_local i8* @calloc(i64, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @elf_flagphdr(%struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
