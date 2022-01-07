; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_hppa_process_unwind.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_hppa_process_unwind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i64, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.hppa_unw_aux_info = type { i32, i8*, i32, i64, i32*, i32* }

@string_table = common dso_local global i32* null, align 8
@section_headers = common dso_local global %struct.TYPE_8__* null, align 8
@elf_header = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@SHT_SYMTAB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"string table\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c".PARISC.unwind\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"\0AThere are no unwind sections in this file.\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"\0AUnwind section \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"'%s'\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c" at offset 0x%lx contains %lu entries:\0A\00", align 1
@eh_addr_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @hppa_process_unwind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hppa_process_unwind(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.hppa_unw_aux_info, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  %9 = call i32 @memset(%struct.hppa_unw_aux_info* %4, i32 0, i32 48)
  %10 = load i32*, i32** @string_table, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %164

13:                                               ; preds = %1
  store i64 0, i64* %8, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @section_headers, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %7, align 8
  br label %15

15:                                               ; preds = %79, %13
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @elf_header, i32 0, i32 0), align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %84

19:                                               ; preds = %15
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SHT_SYMTAB, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %70

25:                                               ; preds = %19
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @SECTION_HEADER_INDEX(i32 %28)
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @elf_header, i32 0, i32 0), align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %70

32:                                               ; preds = %25
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %35, %38
  %40 = getelementptr inbounds %struct.hppa_unw_aux_info, %struct.hppa_unw_aux_info* %4, i32 0, i32 0
  store i32 %39, i32* %40, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %43 = call i8* @GET_ELF_SYMBOLS(i32* %41, %struct.TYPE_8__* %42)
  %44 = getelementptr inbounds %struct.hppa_unw_aux_info, %struct.hppa_unw_aux_info* %4, i32 0, i32 1
  store i8* %43, i8** %44, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.TYPE_8__* @SECTION_HEADER(i32 %47)
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %6, align 8
  %49 = load i32*, i32** %3, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i8* @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %57 = call i32* @get_data(i32* null, i32* %49, i64 %52, i32 1, i32 %55, i8* %56)
  %58 = getelementptr inbounds %struct.hppa_unw_aux_info, %struct.hppa_unw_aux_info* %4, i32 0, i32 4
  store i32* %57, i32** %58, align 8
  %59 = getelementptr inbounds %struct.hppa_unw_aux_info, %struct.hppa_unw_aux_info* %4, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %32
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  br label %67

66:                                               ; preds = %32
  br label %67

67:                                               ; preds = %66, %62
  %68 = phi i32 [ %65, %62 ], [ 0, %66 ]
  %69 = getelementptr inbounds %struct.hppa_unw_aux_info, %struct.hppa_unw_aux_info* %4, i32 0, i32 2
  store i32 %68, i32* %69, align 8
  br label %78

70:                                               ; preds = %25, %19
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %72 = call i8* @SECTION_NAME(%struct.TYPE_8__* %71)
  %73 = call i64 @streq(i8* %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %76, %struct.TYPE_8__** %5, align 8
  br label %77

77:                                               ; preds = %75, %70
  br label %78

78:                                               ; preds = %77, %67
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %8, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %8, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 1
  store %struct.TYPE_8__* %83, %struct.TYPE_8__** %7, align 8
  br label %15

84:                                               ; preds = %15
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %86 = icmp ne %struct.TYPE_8__* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = call i8* @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %89 = call i32 (i8*, ...) @printf(i8* %88)
  br label %90

90:                                               ; preds = %87, %84
  store i64 0, i64* %8, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** @section_headers, align 8
  store %struct.TYPE_8__* %91, %struct.TYPE_8__** %7, align 8
  br label %92

92:                                               ; preds = %141, %90
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @elf_header, i32 0, i32 0), align 8
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %96, label %146

96:                                               ; preds = %92
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %98 = call i8* @SECTION_NAME(%struct.TYPE_8__* %97)
  %99 = call i64 @streq(i8* %98, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %140

101:                                              ; preds = %96
  %102 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %103 = call i32 (i8*, ...) @printf(i8* %102)
  %104 = call i8* @_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %106 = call i8* @SECTION_NAME(%struct.TYPE_8__* %105)
  %107 = call i32 (i8*, ...) @printf(i8* %104, i8* %106)
  %108 = call i8* @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @eh_addr_size, align 4
  %116 = mul nsw i32 2, %115
  %117 = add nsw i32 %116, 8
  %118 = sdiv i32 %114, %117
  %119 = sext i32 %118 to i64
  %120 = call i32 (i8*, ...) @printf(i8* %108, i64 %111, i64 %119)
  %121 = load i32*, i32** %3, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %123 = call i32 @slurp_hppa_unwind_table(i32* %121, %struct.hppa_unw_aux_info* %4, %struct.TYPE_8__* %122)
  %124 = getelementptr inbounds %struct.hppa_unw_aux_info, %struct.hppa_unw_aux_info* %4, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = icmp sgt i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %101
  %128 = call i32 @dump_hppa_unwind(%struct.hppa_unw_aux_info* %4)
  br label %129

129:                                              ; preds = %127, %101
  %130 = getelementptr inbounds %struct.hppa_unw_aux_info, %struct.hppa_unw_aux_info* %4, i32 0, i32 5
  %131 = load i32*, i32** %130, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %138

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.hppa_unw_aux_info, %struct.hppa_unw_aux_info* %4, i32 0, i32 5
  %135 = load i32*, i32** %134, align 8
  %136 = bitcast i32* %135 to i8*
  %137 = call i32 @free(i8* %136)
  br label %138

138:                                              ; preds = %133, %129
  %139 = getelementptr inbounds %struct.hppa_unw_aux_info, %struct.hppa_unw_aux_info* %4, i32 0, i32 5
  store i32* null, i32** %139, align 8
  br label %140

140:                                              ; preds = %138, %96
  br label %141

141:                                              ; preds = %140
  %142 = load i64, i64* %8, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %8, align 8
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 1
  store %struct.TYPE_8__* %145, %struct.TYPE_8__** %7, align 8
  br label %92

146:                                              ; preds = %92
  %147 = getelementptr inbounds %struct.hppa_unw_aux_info, %struct.hppa_unw_aux_info* %4, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.hppa_unw_aux_info, %struct.hppa_unw_aux_info* %4, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @free(i8* %152)
  br label %154

154:                                              ; preds = %150, %146
  %155 = getelementptr inbounds %struct.hppa_unw_aux_info, %struct.hppa_unw_aux_info* %4, i32 0, i32 4
  %156 = load i32*, i32** %155, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.hppa_unw_aux_info, %struct.hppa_unw_aux_info* %4, i32 0, i32 4
  %160 = load i32*, i32** %159, align 8
  %161 = bitcast i32* %160 to i8*
  %162 = call i32 @free(i8* %161)
  br label %163

163:                                              ; preds = %158, %154
  store i32 1, i32* %2, align 4
  br label %164

164:                                              ; preds = %163, %12
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i32 @memset(%struct.hppa_unw_aux_info*, i32, i32) #1

declare dso_local i64 @SECTION_HEADER_INDEX(i32) #1

declare dso_local i8* @GET_ELF_SYMBOLS(i32*, %struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @SECTION_HEADER(i32) #1

declare dso_local i32* @get_data(i32*, i32*, i64, i32, i32, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i8* @SECTION_NAME(%struct.TYPE_8__*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @slurp_hppa_unwind_table(i32*, %struct.hppa_unw_aux_info*, %struct.TYPE_8__*) #1

declare dso_local i32 @dump_hppa_unwind(%struct.hppa_unw_aux_info*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
