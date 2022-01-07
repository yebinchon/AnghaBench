; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_get_tls_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_get_tls_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i64, i32 }
%struct.elf_link_hash_entry = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64*, i32* }

@sec_toc = common dso_local global i64 0, align 8
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*, i32*, %struct.TYPE_18__**, %struct.TYPE_19__*, i32*)* @get_tls_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_tls_mask(i8** %0, i64* %1, i32* %2, %struct.TYPE_18__** %3, %struct.TYPE_19__* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_18__**, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.elf_link_hash_entry*, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store i8** %0, i8*** %8, align 8
  store i64* %1, i64** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.TYPE_18__** %3, %struct.TYPE_18__*** %11, align 8
  store %struct.TYPE_19__* %4, %struct.TYPE_19__** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @ELF64_R_SYM(i32 %22)
  store i64 %23, i64* %14, align 8
  %24 = load i8**, i8*** %8, align 8
  %25 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %11, align 8
  %26 = load i64, i64* %14, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = call i32 @get_sym_h(%struct.elf_link_hash_entry** %16, %struct.TYPE_18__** %17, i32** %18, i8** %24, %struct.TYPE_18__** %25, i64 %26, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %172

31:                                               ; preds = %6
  %32 = load i8**, i8*** %8, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i8**, i8*** %8, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %35, %31
  %42 = load i32*, i32** %18, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %41
  %45 = load i32*, i32** %18, align 8
  %46 = call %struct.TYPE_20__* @ppc64_elf_section_data(i32* %45)
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @sec_toc, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44, %41, %35
  store i32 1, i32* %7, align 4
  br label %172

52:                                               ; preds = %44
  %53 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %54 = icmp ne %struct.elf_link_hash_entry* %53, null
  br i1 %54, label %55, label %70

55:                                               ; preds = %52
  %56 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %57 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @bfd_link_hash_defined, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @BFD_ASSERT(i32 %62)
  %64 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %65 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %19, align 4
  br label %74

70:                                               ; preds = %52
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %19, align 4
  br label %74

74:                                               ; preds = %70, %55
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %19, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %19, align 4
  %82 = load i32, i32* %19, align 4
  %83 = srem i32 %82, 8
  %84 = icmp eq i32 %83, 0
  %85 = zext i1 %84 to i32
  %86 = call i32 @BFD_ASSERT(i32 %85)
  %87 = load i32*, i32** %18, align 8
  %88 = call %struct.TYPE_20__* @ppc64_elf_section_data(i32* %87)
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %19, align 4
  %94 = sdiv i32 %93, 8
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %92, i64 %95
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %14, align 8
  %98 = load i32*, i32** %18, align 8
  %99 = call %struct.TYPE_20__* @ppc64_elf_section_data(i32* %98)
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %19, align 4
  %105 = sdiv i32 %104, 8
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %103, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %15, align 4
  %111 = load i64*, i64** %9, align 8
  %112 = icmp ne i64* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %74
  %114 = load i64, i64* %14, align 8
  %115 = load i64*, i64** %9, align 8
  store i64 %114, i64* %115, align 8
  br label %116

116:                                              ; preds = %113, %74
  %117 = load i32*, i32** %10, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %132

119:                                              ; preds = %116
  %120 = load i32*, i32** %18, align 8
  %121 = call %struct.TYPE_20__* @ppc64_elf_section_data(i32* %120)
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %19, align 4
  %127 = sdiv i32 %126, 8
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %10, align 8
  store i32 %130, i32* %131, align 4
  br label %132

132:                                              ; preds = %119, %116
  %133 = load i8**, i8*** %8, align 8
  %134 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %11, align 8
  %135 = load i64, i64* %14, align 8
  %136 = load i32*, i32** %13, align 8
  %137 = call i32 @get_sym_h(%struct.elf_link_hash_entry** %16, %struct.TYPE_18__** %17, i32** %18, i8** %133, %struct.TYPE_18__** %134, i64 %135, i32* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %132
  store i32 0, i32* %7, align 4
  br label %172

140:                                              ; preds = %132
  %141 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %142 = icmp eq %struct.elf_link_hash_entry* %141, null
  br i1 %142, label %162, label %143

143:                                              ; preds = %140
  %144 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %145 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @bfd_link_hash_defined, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %157, label %150

150:                                              ; preds = %143
  %151 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %152 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @bfd_link_hash_defweak, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %171

157:                                              ; preds = %150, %143
  %158 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %159 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %171, label %162

162:                                              ; preds = %157, %140
  %163 = load i32, i32* %15, align 4
  %164 = icmp eq i32 %163, -1
  br i1 %164, label %168, label %165

165:                                              ; preds = %162
  %166 = load i32, i32* %15, align 4
  %167 = icmp eq i32 %166, -2
  br i1 %167, label %168, label %171

168:                                              ; preds = %165, %162
  %169 = load i32, i32* %15, align 4
  %170 = sub nsw i32 1, %169
  store i32 %170, i32* %7, align 4
  br label %172

171:                                              ; preds = %165, %157, %150
  store i32 1, i32* %7, align 4
  br label %172

172:                                              ; preds = %171, %168, %139, %51, %30
  %173 = load i32, i32* %7, align 4
  ret i32 %173
}

declare dso_local i64 @ELF64_R_SYM(i32) #1

declare dso_local i32 @get_sym_h(%struct.elf_link_hash_entry**, %struct.TYPE_18__**, i32**, i8**, %struct.TYPE_18__**, i64, i32*) #1

declare dso_local %struct.TYPE_20__* @ppc64_elf_section_data(i32*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
