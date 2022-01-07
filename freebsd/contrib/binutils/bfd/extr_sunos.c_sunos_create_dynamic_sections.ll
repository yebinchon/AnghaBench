; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_sunos.c_sunos_create_dynamic_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_sunos.c_sunos_create_dynamic_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i8*, i8*, i32*, i8* }

@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@SEC_IN_MEMORY = common dso_local global i32 0, align 4
@SEC_LINKER_CREATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c".dynamic\00", align 1
@FALSE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c".got\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".plt\00", align 1
@SEC_CODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c".dynrel\00", align 1
@SEC_READONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c".hash\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c".dynsym\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c".dynstr\00", align 1
@TRUE = common dso_local global i8* null, align 8
@BYTES_IN_WORD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.bfd_link_info*, i8*)* @sunos_create_dynamic_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sunos_create_dynamic_sections(i32* %0, %struct.bfd_link_info* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.bfd_link_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %12 = call %struct.TYPE_7__* @sunos_hash_table(%struct.bfd_link_info* %11)
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 3
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %135, label %16

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %19 = call %struct.TYPE_7__* @sunos_hash_table(%struct.bfd_link_info* %18)
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  store i32* %17, i32** %20, align 8
  %21 = load i32, i32* @SEC_ALLOC, align 4
  %22 = load i32, i32* @SEC_LOAD, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @SEC_IN_MEMORY, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @SEC_LINKER_CREATED, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %9, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call %struct.TYPE_6__* @bfd_make_section_with_flags(i32* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %31)
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %8, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %34 = icmp eq %struct.TYPE_6__* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %16
  %36 = load i32*, i32** %5, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %38 = call i32 @bfd_set_section_alignment(i32* %36, %struct.TYPE_6__* %37, i32 2)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %35, %16
  %41 = load i8*, i8** @FALSE, align 8
  store i8* %41, i8** %4, align 8
  br label %175

42:                                               ; preds = %35
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call %struct.TYPE_6__* @bfd_make_section_with_flags(i32* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %8, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %47 = icmp eq %struct.TYPE_6__* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %42
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %51 = call i32 @bfd_set_section_alignment(i32* %49, %struct.TYPE_6__* %50, i32 2)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48, %42
  %54 = load i8*, i8** @FALSE, align 8
  store i8* %54, i8** %4, align 8
  br label %175

55:                                               ; preds = %48
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @SEC_CODE, align 4
  %59 = or i32 %57, %58
  %60 = call %struct.TYPE_6__* @bfd_make_section_with_flags(i32* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  store %struct.TYPE_6__* %60, %struct.TYPE_6__** %8, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %62 = icmp eq %struct.TYPE_6__* %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %55
  %64 = load i32*, i32** %5, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %66 = call i32 @bfd_set_section_alignment(i32* %64, %struct.TYPE_6__* %65, i32 2)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %63, %55
  %69 = load i8*, i8** @FALSE, align 8
  store i8* %69, i8** %4, align 8
  br label %175

70:                                               ; preds = %63
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @SEC_READONLY, align 4
  %74 = or i32 %72, %73
  %75 = call %struct.TYPE_6__* @bfd_make_section_with_flags(i32* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  store %struct.TYPE_6__* %75, %struct.TYPE_6__** %8, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %77 = icmp eq %struct.TYPE_6__* %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %70
  %79 = load i32*, i32** %5, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %81 = call i32 @bfd_set_section_alignment(i32* %79, %struct.TYPE_6__* %80, i32 2)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %78, %70
  %84 = load i8*, i8** @FALSE, align 8
  store i8* %84, i8** %4, align 8
  br label %175

85:                                               ; preds = %78
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @SEC_READONLY, align 4
  %89 = or i32 %87, %88
  %90 = call %struct.TYPE_6__* @bfd_make_section_with_flags(i32* %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  store %struct.TYPE_6__* %90, %struct.TYPE_6__** %8, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %92 = icmp eq %struct.TYPE_6__* %91, null
  br i1 %92, label %98, label %93

93:                                               ; preds = %85
  %94 = load i32*, i32** %5, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %96 = call i32 @bfd_set_section_alignment(i32* %94, %struct.TYPE_6__* %95, i32 2)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %93, %85
  %99 = load i8*, i8** @FALSE, align 8
  store i8* %99, i8** %4, align 8
  br label %175

100:                                              ; preds = %93
  %101 = load i32*, i32** %5, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @SEC_READONLY, align 4
  %104 = or i32 %102, %103
  %105 = call %struct.TYPE_6__* @bfd_make_section_with_flags(i32* %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %104)
  store %struct.TYPE_6__* %105, %struct.TYPE_6__** %8, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %107 = icmp eq %struct.TYPE_6__* %106, null
  br i1 %107, label %113, label %108

108:                                              ; preds = %100
  %109 = load i32*, i32** %5, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %111 = call i32 @bfd_set_section_alignment(i32* %109, %struct.TYPE_6__* %110, i32 2)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %108, %100
  %114 = load i8*, i8** @FALSE, align 8
  store i8* %114, i8** %4, align 8
  br label %175

115:                                              ; preds = %108
  %116 = load i32*, i32** %5, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* @SEC_READONLY, align 4
  %119 = or i32 %117, %118
  %120 = call %struct.TYPE_6__* @bfd_make_section_with_flags(i32* %116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %119)
  store %struct.TYPE_6__* %120, %struct.TYPE_6__** %8, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %122 = icmp eq %struct.TYPE_6__* %121, null
  br i1 %122, label %128, label %123

123:                                              ; preds = %115
  %124 = load i32*, i32** %5, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %126 = call i32 @bfd_set_section_alignment(i32* %124, %struct.TYPE_6__* %125, i32 2)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %123, %115
  %129 = load i8*, i8** @FALSE, align 8
  store i8* %129, i8** %4, align 8
  br label %175

130:                                              ; preds = %123
  %131 = load i8*, i8** @TRUE, align 8
  %132 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %133 = call %struct.TYPE_7__* @sunos_hash_table(%struct.bfd_link_info* %132)
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 3
  store i8* %131, i8** %134, align 8
  br label %135

135:                                              ; preds = %130, %3
  %136 = load i8*, i8** %7, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %144

138:                                              ; preds = %135
  %139 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %140 = call %struct.TYPE_7__* @sunos_hash_table(%struct.bfd_link_info* %139)
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %149

144:                                              ; preds = %138, %135
  %145 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %146 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %173

149:                                              ; preds = %144, %138
  %150 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %151 = call %struct.TYPE_7__* @sunos_hash_table(%struct.bfd_link_info* %150)
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  store i32* %153, i32** %10, align 8
  %154 = load i32*, i32** %10, align 8
  %155 = call %struct.TYPE_6__* @bfd_get_section_by_name(i32* %154, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_6__* %155, %struct.TYPE_6__** %8, align 8
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %149
  %161 = load i64, i64* @BYTES_IN_WORD, align 8
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  store i64 %161, i64* %163, align 8
  br label %164

164:                                              ; preds = %160, %149
  %165 = load i8*, i8** @TRUE, align 8
  %166 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %167 = call %struct.TYPE_7__* @sunos_hash_table(%struct.bfd_link_info* %166)
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 1
  store i8* %165, i8** %168, align 8
  %169 = load i8*, i8** @TRUE, align 8
  %170 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %171 = call %struct.TYPE_7__* @sunos_hash_table(%struct.bfd_link_info* %170)
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  store i8* %169, i8** %172, align 8
  br label %173

173:                                              ; preds = %164, %144
  %174 = load i8*, i8** @TRUE, align 8
  store i8* %174, i8** %4, align 8
  br label %175

175:                                              ; preds = %173, %128, %113, %98, %83, %68, %53, %40
  %176 = load i8*, i8** %4, align 8
  ret i8* %176
}

declare dso_local %struct.TYPE_7__* @sunos_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.TYPE_6__* @bfd_make_section_with_flags(i32*, i8*, i32) #1

declare dso_local i32 @bfd_set_section_alignment(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local %struct.TYPE_6__* @bfd_get_section_by_name(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
