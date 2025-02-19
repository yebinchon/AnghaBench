; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_gelf_phdr.c_gelf_getphdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_gelf_phdr.c_gelf_getphdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_11__ = type { i8*, i32, i8*, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_12__ = type { i64, i32, i64, i64, i64, i64, i32, i32 }

@ELFCLASS32 = common dso_local global i32 0, align 4
@ELFCLASS64 = common dso_local global i32 0, align 4
@ELF_K_ELF = common dso_local global i64 0, align 8
@ARGUMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @gelf_getphdr(%struct.TYPE_13__* %0, i32 %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %15 = icmp eq %struct.TYPE_11__* %14, null
  br i1 %15, label %42, label %16

16:                                               ; preds = %3
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %18 = icmp eq %struct.TYPE_13__* %17, null
  br i1 %18, label %42, label %19

19:                                               ; preds = %16
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @ELFCLASS32, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @ELFCLASS64, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %42, label %29

29:                                               ; preds = %25, %19
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ELF_K_ELF, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %42, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %40 = call i64 @elf_getphdrnum(%struct.TYPE_13__* %39, i64* %13)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38, %35, %29, %25, %16, %3
  %43 = load i32, i32* @ARGUMENT, align 4
  %44 = call i32 @LIBELF_SET_ERROR(i32 %43, i32 0)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  br label %144

45:                                               ; preds = %38
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %13, align 8
  %49 = icmp uge i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @ARGUMENT, align 4
  %52 = call i32 @LIBELF_SET_ERROR(i32 %51, i32 0)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  br label %144

53:                                               ; preds = %45
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @ELFCLASS32, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %120

57:                                               ; preds = %53
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %59 = load i32, i32* @ELFCLASS32, align 4
  %60 = call i8* @_libelf_ehdr(%struct.TYPE_13__* %58, i32 %59, i32 0)
  %61 = bitcast i8* %60 to i32*
  store i32* %61, i32** %9, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %65 = load i32, i32* @ELFCLASS32, align 4
  %66 = call i8* @_libelf_getphdr(%struct.TYPE_13__* %64, i32 %65)
  %67 = bitcast i8* %66 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %67, %struct.TYPE_12__** %11, align 8
  %68 = icmp eq %struct.TYPE_12__* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %63, %57
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  br label %144

70:                                               ; preds = %63
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i64 %73
  store %struct.TYPE_12__* %74, %struct.TYPE_12__** %11, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 7
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 6
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to i8*
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 5
  store i8* %88, i8** %90, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to i8*
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 4
  store i8* %94, i8** %96, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to i8*
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 3
  store i8* %100, i8** %102, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to i8*
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 2
  store i8* %106, i8** %108, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to i8*
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  store i8* %117, i8** %119, align 8
  br label %142

120:                                              ; preds = %53
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %122 = load i32, i32* @ELFCLASS64, align 4
  %123 = call i8* @_libelf_ehdr(%struct.TYPE_13__* %121, i32 %122, i32 0)
  %124 = bitcast i8* %123 to i32*
  store i32* %124, i32** %10, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %132, label %126

126:                                              ; preds = %120
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %128 = load i32, i32* @ELFCLASS64, align 4
  %129 = call i8* @_libelf_getphdr(%struct.TYPE_13__* %127, i32 %128)
  %130 = bitcast i8* %129 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %130, %struct.TYPE_11__** %12, align 8
  %131 = icmp eq %struct.TYPE_11__* %130, null
  br i1 %131, label %132, label %133

132:                                              ; preds = %126, %120
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  br label %144

133:                                              ; preds = %126
  %134 = load i32, i32* %6, align 4
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i64 %136
  store %struct.TYPE_11__* %137, %struct.TYPE_11__** %12, align 8
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %140 = bitcast %struct.TYPE_11__* %138 to i8*
  %141 = bitcast %struct.TYPE_11__* %139 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %140, i8* align 8 %141, i64 56, i1 false)
  br label %142

142:                                              ; preds = %133, %70
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %143, %struct.TYPE_11__** %4, align 8
  br label %144

144:                                              ; preds = %142, %132, %69, %50, %42
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  ret %struct.TYPE_11__* %145
}

declare dso_local i64 @elf_getphdrnum(%struct.TYPE_13__*, i64*) #1

declare dso_local i32 @LIBELF_SET_ERROR(i32, i32) #1

declare dso_local i8* @_libelf_ehdr(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i8* @_libelf_getphdr(%struct.TYPE_13__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
