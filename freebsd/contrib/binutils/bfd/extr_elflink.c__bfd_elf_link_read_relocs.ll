; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_link_read_relocs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_link_read_relocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i32 }
%struct.elf_backend_data = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i8*, %struct.TYPE_12__*, %struct.TYPE_12__ }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_bfd_elf_link_read_relocs(i32* %0, %struct.TYPE_11__* %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.elf_backend_data*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call %struct.elf_backend_data* @get_elf_backend_data(i32* %18)
  store %struct.elf_backend_data* %19, %struct.elf_backend_data** %15, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %21 = call %struct.TYPE_13__* @elf_section_data(%struct.TYPE_11__* %20)
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %5
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %27 = call %struct.TYPE_13__* @elf_section_data(%struct.TYPE_11__* %26)
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %6, align 8
  br label %172

30:                                               ; preds = %5
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i8* null, i8** %6, align 8
  br label %172

36:                                               ; preds = %30
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %38 = call %struct.TYPE_13__* @elf_section_data(%struct.TYPE_11__* %37)
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 2
  store %struct.TYPE_12__* %39, %struct.TYPE_12__** %12, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %72

42:                                               ; preds = %36
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %16, align 4
  %47 = load %struct.elf_backend_data*, %struct.elf_backend_data** %15, align 8
  %48 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %47, i32 0, i32 0
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 1
  %54 = load i32, i32* %16, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %16, align 4
  %58 = load i64, i64* %11, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %42
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %16, align 4
  %63 = call i8* @bfd_alloc(i32* %61, i32 %62)
  store i8* %63, i8** %10, align 8
  br label %67

64:                                               ; preds = %42
  %65 = load i32, i32* %16, align 4
  %66 = call i8* @bfd_malloc(i32 %65)
  store i8* %66, i8** %14, align 8
  store i8* %66, i8** %10, align 8
  br label %67

67:                                               ; preds = %64, %60
  %68 = load i8*, i8** %10, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %159

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %71, %36
  %73 = load i8*, i8** %9, align 8
  %74 = icmp eq i8* %73, null
  br i1 %74, label %75, label %101

75:                                               ; preds = %72
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %17, align 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %80 = call %struct.TYPE_13__* @elf_section_data(%struct.TYPE_11__* %79)
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = icmp ne %struct.TYPE_12__* %82, null
  br i1 %83, label %84, label %93

84:                                               ; preds = %75
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %86 = call %struct.TYPE_13__* @elf_section_data(%struct.TYPE_11__* %85)
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %17, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %17, align 4
  br label %93

93:                                               ; preds = %84, %75
  %94 = load i32, i32* %17, align 4
  %95 = call i8* @bfd_malloc(i32 %94)
  store i8* %95, i8** %13, align 8
  %96 = load i8*, i8** %13, align 8
  %97 = icmp eq i8* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %159

99:                                               ; preds = %93
  %100 = load i8*, i8** %13, align 8
  store i8* %100, i8** %9, align 8
  br label %101

101:                                              ; preds = %99, %72
  %102 = load i32*, i32** %7, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %105 = load i8*, i8** %9, align 8
  %106 = load i8*, i8** %10, align 8
  %107 = call i32 @elf_link_read_relocs_from_section(i32* %102, %struct.TYPE_11__* %103, %struct.TYPE_12__* %104, i8* %105, i8* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %101
  br label %159

110:                                              ; preds = %101
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %112 = call %struct.TYPE_13__* @elf_section_data(%struct.TYPE_11__* %111)
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %113, align 8
  %115 = icmp ne %struct.TYPE_12__* %114, null
  br i1 %115, label %116, label %143

116:                                              ; preds = %110
  %117 = load i32*, i32** %7, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %120 = call %struct.TYPE_13__* @elf_section_data(%struct.TYPE_11__* %119)
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %121, align 8
  %123 = load i8*, i8** %9, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr i8, i8* %123, i64 %127
  %129 = load i8*, i8** %10, align 8
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %131 = call i32 @NUM_SHDR_ENTRIES(%struct.TYPE_12__* %130)
  %132 = load %struct.elf_backend_data*, %struct.elf_backend_data** %15, align 8
  %133 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %132, i32 0, i32 0
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = mul nsw i32 %131, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr i8, i8* %129, i64 %138
  %140 = call i32 @elf_link_read_relocs_from_section(i32* %117, %struct.TYPE_11__* %118, %struct.TYPE_12__* %122, i8* %128, i8* %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %116
  br label %159

143:                                              ; preds = %116, %110
  %144 = load i64, i64* %11, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %143
  %147 = load i8*, i8** %10, align 8
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %149 = call %struct.TYPE_13__* @elf_section_data(%struct.TYPE_11__* %148)
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  store i8* %147, i8** %150, align 8
  br label %151

151:                                              ; preds = %146, %143
  %152 = load i8*, i8** %13, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i8*, i8** %13, align 8
  %156 = call i32 @free(i8* %155)
  br label %157

157:                                              ; preds = %154, %151
  %158 = load i8*, i8** %10, align 8
  store i8* %158, i8** %6, align 8
  br label %172

159:                                              ; preds = %142, %109, %98, %70
  %160 = load i8*, i8** %13, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load i8*, i8** %13, align 8
  %164 = call i32 @free(i8* %163)
  br label %165

165:                                              ; preds = %162, %159
  %166 = load i8*, i8** %14, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i8*, i8** %14, align 8
  %170 = call i32 @free(i8* %169)
  br label %171

171:                                              ; preds = %168, %165
  store i8* null, i8** %6, align 8
  br label %172

172:                                              ; preds = %171, %157, %35, %25
  %173 = load i8*, i8** %6, align 8
  ret i8* %173
}

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(i32*) #1

declare dso_local %struct.TYPE_13__* @elf_section_data(%struct.TYPE_11__*) #1

declare dso_local i8* @bfd_alloc(i32*, i32) #1

declare dso_local i8* @bfd_malloc(i32) #1

declare dso_local i32 @elf_link_read_relocs_from_section(i32*, %struct.TYPE_11__*, %struct.TYPE_12__*, i8*, i8*) #1

declare dso_local i32 @NUM_SHDR_ENTRIES(%struct.TYPE_12__*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
