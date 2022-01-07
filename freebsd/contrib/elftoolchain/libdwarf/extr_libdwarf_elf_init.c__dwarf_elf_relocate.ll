; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_elf_init.c__dwarf_elf_relocate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_elf_init.c__dwarf_elf_relocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__*, i32* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i64, i64, i64, i64 }

@DW_DLE_NONE = common dso_local global i32 0, align 4
@DW_DLE_ELF = common dso_local global i32 0, align 4
@SHT_REL = common dso_local global i64 0, align 8
@SHT_RELA = common dso_local global i64 0, align 8
@DW_DLE_MEMORY = common dso_local global i32 0, align 4
@EI_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.TYPE_11__*, i64, i64, i32*, i32*)* @_dwarf_elf_relocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dwarf_elf_relocate(i32 %0, i32* %1, %struct.TYPE_11__* %2, i64 %3, i64 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_10__, align 8
  %17 = alloca %struct.TYPE_9__, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %21 = load i64, i64* %13, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %7
  %24 = load i32*, i32** %14, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23, %7
  %27 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %27, i32* %8, align 4
  br label %182

28:                                               ; preds = %23
  %29 = load i32*, i32** %10, align 8
  %30 = call i32* @gelf_getehdr(i32* %29, %struct.TYPE_10__* %16)
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = load i32*, i32** %15, align 8
  %35 = call i32 @DWARF_SET_ELF_ERROR(i32 %33, i32* %34)
  %36 = load i32, i32* @DW_DLE_ELF, align 4
  store i32 %36, i32* %8, align 4
  br label %182

37:                                               ; preds = %28
  store i32* null, i32** %18, align 8
  %38 = call i32 (...) @elf_errno()
  br label %39

39:                                               ; preds = %170, %67, %37
  %40 = load i32*, i32** %10, align 8
  %41 = load i32*, i32** %18, align 8
  %42 = call i32* @elf_nextscn(i32* %40, i32* %41)
  store i32* %42, i32** %18, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %171

44:                                               ; preds = %39
  %45 = load i32*, i32** %18, align 8
  %46 = call i32* @gelf_getshdr(i32* %45, %struct.TYPE_9__* %17)
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  %50 = load i32*, i32** %15, align 8
  %51 = call i32 @DWARF_SET_ELF_ERROR(i32 %49, i32* %50)
  %52 = load i32, i32* @DW_DLE_ELF, align 4
  store i32 %52, i32* %8, align 4
  br label %182

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SHT_REL, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SHT_RELA, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %58, %53
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63, %58
  br label %39

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %12, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %170

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %13, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %170

78:                                               ; preds = %73
  %79 = load i32*, i32** %18, align 8
  %80 = call i32* @elf_getdata(i32* %79, i32* null)
  store i32* %80, i32** %19, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %94

82:                                               ; preds = %78
  %83 = call i32 (...) @elf_errno()
  store i32 %83, i32* %20, align 4
  %84 = load i32, i32* %20, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load i32*, i32** %15, align 8
  %88 = load i32, i32* @DW_DLE_ELF, align 4
  %89 = load i32, i32* %20, align 4
  %90 = call i32 @_DWARF_SET_ERROR(i32* null, i32* %87, i32 %88, i32 %89)
  %91 = load i32, i32* @DW_DLE_ELF, align 4
  store i32 %91, i32* %8, align 4
  br label %182

92:                                               ; preds = %82
  %93 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %93, i32* %8, align 4
  br label %182

94:                                               ; preds = %78
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32* @malloc(i32 %99)
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  store i32* %100, i32** %102, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %94
  %108 = load i32, i32* %9, align 4
  %109 = load i32*, i32** %15, align 8
  %110 = load i32, i32* @DW_DLE_MEMORY, align 4
  %111 = call i32 @DWARF_SET_ERROR(i32 %108, i32* %109, i32 %110)
  %112 = load i32, i32* @DW_DLE_MEMORY, align 4
  store i32 %112, i32* %8, align 4
  br label %182

113:                                              ; preds = %94
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @memcpy(i32* %116, i32 %121, i32 %126)
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @SHT_REL, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %150

132:                                              ; preds = %113
  %133 = load i32, i32* %9, align 4
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %19, align 8
  %143 = load i32*, i32** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = load i64, i64* @EI_DATA, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @_dwarf_elf_apply_rel_reloc(i32 %133, i32* %136, i32 %141, i32* %142, i32* %143, i32 %148)
  br label %168

150:                                              ; preds = %113
  %151 = load i32, i32* %9, align 4
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32*, i32** %19, align 8
  %161 = load i32*, i32** %14, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = load i64, i64* @EI_DATA, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @_dwarf_elf_apply_rela_reloc(i32 %151, i32* %154, i32 %159, i32* %160, i32* %161, i32 %166)
  br label %168

168:                                              ; preds = %150, %132
  %169 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %169, i32* %8, align 4
  br label %182

170:                                              ; preds = %73, %68
  br label %39

171:                                              ; preds = %39
  %172 = call i32 (...) @elf_errno()
  store i32 %172, i32* %20, align 4
  %173 = load i32, i32* %20, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %171
  %176 = load i32, i32* %9, align 4
  %177 = load i32*, i32** %15, align 8
  %178 = call i32 @DWARF_SET_ELF_ERROR(i32 %176, i32* %177)
  %179 = load i32, i32* @DW_DLE_ELF, align 4
  store i32 %179, i32* %8, align 4
  br label %182

180:                                              ; preds = %171
  %181 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %181, i32* %8, align 4
  br label %182

182:                                              ; preds = %180, %175, %168, %107, %92, %86, %48, %32, %26
  %183 = load i32, i32* %8, align 4
  ret i32 %183
}

declare dso_local i32* @gelf_getehdr(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @DWARF_SET_ELF_ERROR(i32, i32*) #1

declare dso_local i32 @elf_errno(...) #1

declare dso_local i32* @elf_nextscn(i32*, i32*) #1

declare dso_local i32* @gelf_getshdr(i32*, %struct.TYPE_9__*) #1

declare dso_local i32* @elf_getdata(i32*, i32*) #1

declare dso_local i32 @_DWARF_SET_ERROR(i32*, i32*, i32, i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @DWARF_SET_ERROR(i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @_dwarf_elf_apply_rel_reloc(i32, i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @_dwarf_elf_apply_rela_reloc(i32, i32*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
