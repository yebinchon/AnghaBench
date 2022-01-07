; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_libelf_ar.c__libelf_ar_open_member.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_libelf_ar.c__libelf_ar_open_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_11__*, %struct.TYPE_10__, %struct.TYPE_8__, i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i8* }
%struct.ar_hdr = type { i8*, i8* }

@ELF_K_AR = common dso_local global i64 0, align 8
@ARCHIVE = common dso_local global i32 0, align 4
@LIBELF_AR_BSD_EXTENDED_NAME_PREFIX_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @_libelf_ar_open_member(i32 %0, i32 %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ar_hdr*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ELF_K_AR, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  br label %115

30:                                               ; preds = %3
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = inttoptr i64 %41 to %struct.ar_hdr*
  store %struct.ar_hdr* %42, %struct.ar_hdr** %12, align 8
  %43 = load %struct.ar_hdr*, %struct.ar_hdr** %12, align 8
  %44 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @_libelf_ar_get_number(i8* %45, i32 8, i32 10, i64* %11)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %30
  %49 = load i32, i32* @ARCHIVE, align 4
  %50 = call i32 @LIBELF_SET_ERROR(i32 %49, i32 0)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  br label %115

51:                                               ; preds = %30
  %52 = load %struct.ar_hdr*, %struct.ar_hdr** %12, align 8
  %53 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @IS_EXTENDED_BSD_NAME(i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %83

57:                                               ; preds = %51
  %58 = load %struct.ar_hdr*, %struct.ar_hdr** %12, align 8
  %59 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* @LIBELF_AR_BSD_EXTENDED_NAME_PREFIX_SIZE, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  store i8* %63, i8** %14, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = load i32, i32* @LIBELF_AR_BSD_EXTENDED_NAME_PREFIX_SIZE, align 4
  %66 = sext i32 %65 to i64
  %67 = sub i64 8, %66
  %68 = trunc i64 %67 to i32
  %69 = call i64 @_libelf_ar_get_number(i8* %64, i32 %68, i32 10, i64* %10)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %57
  %72 = load i32, i32* @ARCHIVE, align 4
  %73 = call i32 @LIBELF_SET_ERROR(i32 %72, i32 0)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  br label %115

74:                                               ; preds = %57
  %75 = load %struct.ar_hdr*, %struct.ar_hdr** %12, align 8
  %76 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %75, i64 1
  %77 = bitcast %struct.ar_hdr* %76 to i8*
  %78 = load i64, i64* %10, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8* %79, i8** %13, align 8
  %80 = load i64, i64* %10, align 8
  %81 = load i64, i64* %11, align 8
  %82 = sub i64 %81, %80
  store i64 %82, i64* %11, align 8
  br label %87

83:                                               ; preds = %51
  %84 = load %struct.ar_hdr*, %struct.ar_hdr** %12, align 8
  %85 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %84, i64 1
  %86 = bitcast %struct.ar_hdr* %85 to i8*
  store i8* %86, i8** %13, align 8
  br label %87

87:                                               ; preds = %83, %74
  %88 = load i8*, i8** %13, align 8
  %89 = load i64, i64* %11, align 8
  %90 = call %struct.TYPE_11__* @elf_memory(i8* %88, i64 %89)
  store %struct.TYPE_11__* %90, %struct.TYPE_11__** %8, align 8
  %91 = icmp eq %struct.TYPE_11__* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  br label %115

93:                                               ; preds = %87
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 8
  %100 = load %struct.ar_hdr*, %struct.ar_hdr** %12, align 8
  %101 = bitcast %struct.ar_hdr* %100 to i8*
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  store i8* %101, i8** %104, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 2
  store %struct.TYPE_11__* %111, %struct.TYPE_11__** %113, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %114, %struct.TYPE_11__** %4, align 8
  br label %115

115:                                              ; preds = %93, %92, %71, %48, %29
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  ret %struct.TYPE_11__* %116
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @_libelf_ar_get_number(i8*, i32, i32, i64*) #1

declare dso_local i32 @LIBELF_SET_ERROR(i32, i32) #1

declare dso_local i64 @IS_EXTENDED_BSD_NAME(i8*) #1

declare dso_local %struct.TYPE_11__* @elf_memory(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
