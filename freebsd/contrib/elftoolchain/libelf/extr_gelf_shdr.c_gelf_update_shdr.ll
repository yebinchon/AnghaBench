; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_gelf_shdr.c_gelf_update_shdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_gelf_shdr.c_gelf_update_shdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__, %struct.TYPE_15__* }
%struct.TYPE_11__ = type { %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i64, i32, i64 }

@ELF_K_ELF = common dso_local global i64 0, align 8
@ELFCLASS32 = common dso_local global i32 0, align 4
@ELFCLASS64 = common dso_local global i32 0, align 4
@ARGUMENT = common dso_local global i32 0, align 4
@ELF_C_READ = common dso_local global i64 0, align 8
@MODE = common dso_local global i32 0, align 4
@ELF_C_SET = common dso_local global i32 0, align 4
@ELF_F_DIRTY = common dso_local global i32 0, align 4
@sh_flags = common dso_local global i32 0, align 4
@sh_addr = common dso_local global i32 0, align 4
@sh_offset = common dso_local global i32 0, align 4
@sh_size = common dso_local global i32 0, align 4
@sh_addralign = common dso_local global i32 0, align 4
@sh_entsize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gelf_update_shdr(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %10 = icmp eq %struct.TYPE_12__* %9, null
  br i1 %10, label %35, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = icmp eq %struct.TYPE_13__* %12, null
  br i1 %13, label %35, label %14

14:                                               ; preds = %11
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %7, align 8
  %18 = icmp eq %struct.TYPE_15__* %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %14
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ELF_K_ELF, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %35, label %25

25:                                               ; preds = %19
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @ELFCLASS32, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @ELFCLASS64, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %19, %14, %11, %2
  %36 = load i32, i32* @ARGUMENT, align 4
  %37 = call i32 @LIBELF_SET_ERROR(i32 %36, i32 0)
  store i32 0, i32* %3, align 4
  br label %110

38:                                               ; preds = %31, %25
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ELF_C_READ, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @MODE, align 4
  %46 = call i32 @LIBELF_SET_ERROR(i32 %45, i32 0)
  store i32 0, i32* %3, align 4
  br label %110

47:                                               ; preds = %38
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %49 = load i32, i32* @ELF_C_SET, align 4
  %50 = load i32, i32* @ELF_F_DIRTY, align 4
  %51 = call i32 @elf_flagscn(%struct.TYPE_13__* %48, i32 %49, i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @ELFCLASS64, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %47
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = bitcast %struct.TYPE_12__* %58 to i8*
  %61 = bitcast %struct.TYPE_12__* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 4 %61, i64 16, i1 false)
  store i32 1, i32* %3, align 4
  br label %110

62:                                               ; preds = %47
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  store %struct.TYPE_14__* %65, %struct.TYPE_14__** %8, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %78 = load i32, i32* @sh_flags, align 4
  %79 = call i32 @LIBELF_COPY_U32(%struct.TYPE_14__* %76, %struct.TYPE_12__* %77, i32 %78)
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %82 = load i32, i32* @sh_addr, align 4
  %83 = call i32 @LIBELF_COPY_U32(%struct.TYPE_14__* %80, %struct.TYPE_12__* %81, i32 %82)
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %86 = load i32, i32* @sh_offset, align 4
  %87 = call i32 @LIBELF_COPY_U32(%struct.TYPE_14__* %84, %struct.TYPE_12__* %85, i32 %86)
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %90 = load i32, i32* @sh_size, align 4
  %91 = call i32 @LIBELF_COPY_U32(%struct.TYPE_14__* %88, %struct.TYPE_12__* %89, i32 %90)
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %104 = load i32, i32* @sh_addralign, align 4
  %105 = call i32 @LIBELF_COPY_U32(%struct.TYPE_14__* %102, %struct.TYPE_12__* %103, i32 %104)
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %108 = load i32, i32* @sh_entsize, align 4
  %109 = call i32 @LIBELF_COPY_U32(%struct.TYPE_14__* %106, %struct.TYPE_12__* %107, i32 %108)
  store i32 1, i32* %3, align 4
  br label %110

110:                                              ; preds = %62, %55, %44, %35
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @LIBELF_SET_ERROR(i32, i32) #1

declare dso_local i32 @elf_flagscn(%struct.TYPE_13__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @LIBELF_COPY_U32(%struct.TYPE_14__*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
