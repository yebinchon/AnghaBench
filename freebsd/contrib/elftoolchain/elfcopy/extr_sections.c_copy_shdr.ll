; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_sections.c_copy_shdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_sections.c_copy_shdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfcopy = type { i32 }
%struct.section = type { i64, i64, i32, i8*, i32, i32*, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"gelf_getshdr() failed: %s\00", align 1
@SF_ALLOC = common dso_local global i32 0, align 4
@SHF_ALLOC = common dso_local global i32 0, align 4
@SF_READONLY = common dso_local global i32 0, align 4
@SHF_WRITE = common dso_local global i32 0, align 4
@SF_CODE = common dso_local global i32 0, align 4
@SHF_EXECINSTR = common dso_local global i32 0, align 4
@SF_CONTENTS = common dso_local global i32 0, align 4
@SHT_NOBITS = common dso_local global i64 0, align 8
@SHT_PROGBITS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@SHT_REL = common dso_local global i64 0, align 8
@SHT_RELA = common dso_local global i64 0, align 8
@SHF_INFO_LINK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"elf_update_shdr failed: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_shdr(%struct.elfcopy* %0, %struct.section* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.elfcopy*, align 8
  %7 = alloca %struct.section*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__, align 8
  %12 = alloca %struct.TYPE_6__, align 8
  store %struct.elfcopy* %0, %struct.elfcopy** %6, align 8
  store %struct.section* %1, %struct.section** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.section*, %struct.section** %7, align 8
  %14 = getelementptr inbounds %struct.section, %struct.section* %13, i32 0, i32 9
  %15 = load i32, i32* %14, align 4
  %16 = call i32* @gelf_getshdr(i32 %15, %struct.TYPE_6__* %11)
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load i32, i32* @EXIT_FAILURE, align 4
  %20 = call i32 @elf_errmsg(i32 -1)
  %21 = call i32 @errx(i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %18, %5
  %23 = load %struct.section*, %struct.section** %7, align 8
  %24 = getelementptr inbounds %struct.section, %struct.section* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i32* @gelf_getshdr(i32 %25, %struct.TYPE_6__* %12)
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* @EXIT_FAILURE, align 4
  %30 = call i32 @elf_errmsg(i32 -1)
  %31 = call i32 @errx(i32 %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %28, %22
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 @memcpy(%struct.TYPE_6__* %12, %struct.TYPE_6__* %11, i32 48)
  br label %155

37:                                               ; preds = %32
  %38 = load %struct.section*, %struct.section** %7, align 8
  %39 = getelementptr inbounds %struct.section, %struct.section* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i64 %40, i64* %41, align 8
  %42 = load %struct.section*, %struct.section** %7, align 8
  %43 = getelementptr inbounds %struct.section, %struct.section* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 8
  store i32 %44, i32* %45, align 8
  %46 = load %struct.section*, %struct.section** %7, align 8
  %47 = getelementptr inbounds %struct.section, %struct.section* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 7
  store i32 %48, i32* %49, align 4
  %50 = load %struct.section*, %struct.section** %7, align 8
  %51 = getelementptr inbounds %struct.section, %struct.section* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store i64 %52, i64* %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 6
  store i32 %55, i32* %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 5
  store i32 %58, i32* %59, align 4
  %60 = load %struct.section*, %struct.section** %7, align 8
  %61 = getelementptr inbounds %struct.section, %struct.section* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  store i32 %62, i32* %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %135

69:                                               ; preds = %37
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  store i32 0, i32* %70, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @SF_ALLOC, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load i32, i32* @SHF_ALLOC, align 4
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %76
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %75, %69
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @SF_READONLY, align 4
  %83 = and i32 %81, %82
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load i32, i32* @SHF_WRITE, align 4
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %86
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %85, %80
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @SF_CODE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load i32, i32* @SHF_EXECINSTR, align 4
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %96
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %95, %90
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @SF_CONTENTS, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %134

105:                                              ; preds = %100
  %106 = load %struct.section*, %struct.section** %7, align 8
  %107 = getelementptr inbounds %struct.section, %struct.section* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @SHT_NOBITS, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %134

111:                                              ; preds = %105
  %112 = load %struct.section*, %struct.section** %7, align 8
  %113 = getelementptr inbounds %struct.section, %struct.section* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp sgt i64 %114, 0
  br i1 %115, label %116, label %134

116:                                              ; preds = %111
  %117 = load i64, i64* @SHT_PROGBITS, align 8
  %118 = load %struct.section*, %struct.section** %7, align 8
  %119 = getelementptr inbounds %struct.section, %struct.section* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i64 %117, i64* %120, align 8
  %121 = load %struct.section*, %struct.section** %7, align 8
  %122 = getelementptr inbounds %struct.section, %struct.section* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = call i32* @calloc(i32 1, i64 %123)
  %125 = load %struct.section*, %struct.section** %7, align 8
  %126 = getelementptr inbounds %struct.section, %struct.section* %125, i32 0, i32 5
  store i32* %124, i32** %126, align 8
  %127 = icmp eq i32* %124, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %116
  %129 = load i32, i32* @EXIT_FAILURE, align 4
  %130 = call i32 @err(i32 %129, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %131

131:                                              ; preds = %128, %116
  %132 = load %struct.section*, %struct.section** %7, align 8
  %133 = getelementptr inbounds %struct.section, %struct.section* %132, i32 0, i32 2
  store i32 1, i32* %133, align 8
  br label %134

134:                                              ; preds = %131, %111, %105, %100
  br label %154

135:                                              ; preds = %37
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  store i32 %137, i32* %138, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @SHT_REL, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %148, label %143

143:                                              ; preds = %135
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @SHT_RELA, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %143, %135
  %149 = load i32, i32* @SHF_INFO_LINK, align 4
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %149
  store i32 %152, i32* %150, align 8
  br label %153

153:                                              ; preds = %148, %143
  br label %154

154:                                              ; preds = %153, %134
  br label %155

155:                                              ; preds = %154, %35
  %156 = load i8*, i8** %8, align 8
  %157 = icmp eq i8* %156, null
  br i1 %157, label %158, label %164

158:                                              ; preds = %155
  %159 = load %struct.elfcopy*, %struct.elfcopy** %6, align 8
  %160 = load %struct.section*, %struct.section** %7, align 8
  %161 = getelementptr inbounds %struct.section, %struct.section* %160, i32 0, i32 3
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @add_to_shstrtab(%struct.elfcopy* %159, i8* %162)
  br label %168

164:                                              ; preds = %155
  %165 = load %struct.elfcopy*, %struct.elfcopy** %6, align 8
  %166 = load i8*, i8** %8, align 8
  %167 = call i32 @add_to_shstrtab(%struct.elfcopy* %165, i8* %166)
  br label %168

168:                                              ; preds = %164, %158
  %169 = load %struct.section*, %struct.section** %7, align 8
  %170 = getelementptr inbounds %struct.section, %struct.section* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @gelf_update_shdr(i32 %171, %struct.TYPE_6__* %12)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %168
  %175 = load i32, i32* @EXIT_FAILURE, align 4
  %176 = call i32 @elf_errmsg(i32 -1)
  %177 = call i32 @errx(i32 %175, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %176)
  br label %178

178:                                              ; preds = %174, %168
  ret void
}

declare dso_local i32* @gelf_getshdr(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, %struct.TYPE_6__*, i32) #1

declare dso_local i32* @calloc(i32, i64) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @add_to_shstrtab(%struct.elfcopy*, i8*) #1

declare dso_local i32 @gelf_update_shdr(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
