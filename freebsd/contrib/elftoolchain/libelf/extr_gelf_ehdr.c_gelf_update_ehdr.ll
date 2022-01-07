; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_gelf_ehdr.c_gelf_update_ehdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_gelf_ehdr.c_gelf_update_ehdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ELF_K_ELF = common dso_local global i64 0, align 8
@ELFCLASS32 = common dso_local global i32 0, align 4
@ELFCLASS64 = common dso_local global i32 0, align 4
@ARGUMENT = common dso_local global i32 0, align 4
@ELF_C_READ = common dso_local global i64 0, align 8
@MODE = common dso_local global i32 0, align 4
@ELF_C_SET = common dso_local global i32 0, align 4
@ELF_F_DIRTY = common dso_local global i32 0, align 4
@e_entry = common dso_local global i32 0, align 4
@e_phoff = common dso_local global i32 0, align 4
@e_shoff = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gelf_update_ehdr(%struct.TYPE_13__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %11 = icmp eq %struct.TYPE_11__* %10, null
  br i1 %11, label %31, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = icmp eq %struct.TYPE_13__* %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %12
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ELF_K_ELF, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %31, label %21

21:                                               ; preds = %15
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @ELFCLASS32, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @ELFCLASS64, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %15, %12, %2
  %32 = load i32, i32* @ARGUMENT, align 4
  %33 = call i32 @LIBELF_SET_ERROR(i32 %32, i32 0)
  store i32 0, i32* %3, align 4
  br label %136

34:                                               ; preds = %27, %21
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ELF_C_READ, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @MODE, align 4
  %42 = call i32 @LIBELF_SET_ERROR(i32 %41, i32 0)
  store i32 0, i32* %3, align 4
  br label %136

43:                                               ; preds = %34
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i8* @_libelf_ehdr(%struct.TYPE_13__* %44, i32 %45, i32 0)
  store i8* %46, i8** %7, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %136

49:                                               ; preds = %43
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %51 = load i32, i32* @ELF_C_SET, align 4
  %52 = load i32, i32* @ELF_F_DIRTY, align 4
  %53 = call i32 @elf_flagehdr(%struct.TYPE_13__* %50, i32 %51, i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @ELFCLASS64, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %49
  %58 = load i8*, i8** %7, align 8
  %59 = bitcast i8* %58 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %59, %struct.TYPE_11__** %9, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %62 = bitcast %struct.TYPE_11__* %60 to i8*
  %63 = bitcast %struct.TYPE_11__* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %62, i8* align 4 %63, i64 44, i1 false)
  store i32 1, i32* %3, align 4
  br label %136

64:                                               ; preds = %49
  %65 = load i8*, i8** %7, align 8
  %66 = bitcast i8* %65 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %66, %struct.TYPE_12__** %8, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 10
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 10
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @memcpy(i32 %69, i32 %72, i32 4)
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 9
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 8
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 8
  store i32 %81, i32* %83, align 4
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 7
  store i32 %86, i32* %88, align 4
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %91 = load i32, i32* @e_entry, align 4
  %92 = call i32 @LIBELF_COPY_U32(%struct.TYPE_12__* %89, %struct.TYPE_11__* %90, i32 %91)
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %95 = load i32, i32* @e_phoff, align 4
  %96 = call i32 @LIBELF_COPY_U32(%struct.TYPE_12__* %93, %struct.TYPE_11__* %94, i32 %95)
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %99 = load i32, i32* @e_shoff, align 4
  %100 = call i32 @LIBELF_COPY_U32(%struct.TYPE_12__* %97, %struct.TYPE_11__* %98, i32 %99)
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 6
  store i32 %103, i32* %105, align 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 5
  store i32 %108, i32* %110, align 4
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 4
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 4
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 4
  store i32 1, i32* %3, align 4
  br label %136

136:                                              ; preds = %64, %57, %48, %40, %31
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @LIBELF_SET_ERROR(i32, i32) #1

declare dso_local i8* @_libelf_ehdr(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @elf_flagehdr(%struct.TYPE_13__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @LIBELF_COPY_U32(%struct.TYPE_12__*, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
