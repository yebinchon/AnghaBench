; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_srconv.c_wr_sc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_srconv.c_wr_sc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coff_ofile = type { i32, %struct.coff_section* }
%struct.coff_section = type { i8* }
%struct.coff_sfile = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.coff_symbol* }
%struct.coff_symbol = type { i8*, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.coff_symbol* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, %struct.coff_section* }
%struct.myinfo = type { %struct.coff_section*, %struct.coff_symbol* }
%struct.IT_sc = type { i32, i32, i32, i32, i32, i32, i32, i32*, i8*, i64, i64, i64, i32, i64, i64 }

@coff_secdef_type = common dso_local global i64 0, align 8
@abfd = common dso_local global i32 0, align 4
@EXEC_P = common dso_local global i32 0, align 4
@CONCAT_SIMPLE = common dso_local global i32 0, align 4
@CONTENTS_DATA = common dso_local global i8* null, align 8
@CONTENTS_CODE = common dso_local global i8* null, align 8
@file = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coff_ofile*, %struct.coff_sfile*)* @wr_sc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wr_sc(%struct.coff_ofile* %0, %struct.coff_sfile* %1) #0 {
  %3 = alloca %struct.coff_ofile*, align 8
  %4 = alloca %struct.coff_sfile*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.coff_symbol*, align 8
  %9 = alloca %struct.myinfo*, align 8
  %10 = alloca %struct.IT_sc, align 8
  %11 = alloca i8*, align 8
  store %struct.coff_ofile* %0, %struct.coff_ofile** %3, align 8
  store %struct.coff_sfile* %1, %struct.coff_sfile** %4, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.coff_ofile*, %struct.coff_ofile** %3, align 8
  %13 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @calloc(i32 %15, i32 16)
  %17 = inttoptr i64 %16 to %struct.myinfo*
  store %struct.myinfo* %17, %struct.myinfo** %9, align 8
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %39, %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %18
  %23 = load %struct.coff_ofile*, %struct.coff_ofile** %3, align 8
  %24 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %23, i32 0, i32 1
  %25 = load %struct.coff_section*, %struct.coff_section** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %25, i64 %27
  %29 = load %struct.myinfo*, %struct.myinfo** %9, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.myinfo, %struct.myinfo* %29, i64 %31
  %33 = getelementptr inbounds %struct.myinfo, %struct.myinfo* %32, i32 0, i32 0
  store %struct.coff_section* %28, %struct.coff_section** %33, align 8
  %34 = load %struct.myinfo*, %struct.myinfo** %9, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.myinfo, %struct.myinfo* %34, i64 %36
  %38 = getelementptr inbounds %struct.myinfo, %struct.myinfo* %37, i32 0, i32 1
  store %struct.coff_symbol* null, %struct.coff_symbol** %38, align 8
  br label %39

39:                                               ; preds = %22
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %18

42:                                               ; preds = %18
  %43 = load %struct.coff_sfile*, %struct.coff_sfile** %4, align 8
  %44 = getelementptr inbounds %struct.coff_sfile, %struct.coff_sfile* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.coff_symbol*, %struct.coff_symbol** %46, align 8
  store %struct.coff_symbol* %47, %struct.coff_symbol** %8, align 8
  br label %48

48:                                               ; preds = %90, %42
  %49 = load %struct.coff_symbol*, %struct.coff_symbol** %8, align 8
  %50 = icmp ne %struct.coff_symbol* %49, null
  br i1 %50, label %51, label %94

51:                                               ; preds = %48
  %52 = load %struct.coff_symbol*, %struct.coff_symbol** %8, align 8
  %53 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @coff_secdef_type, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %89

59:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %85, %59
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %88

64:                                               ; preds = %60
  %65 = load %struct.coff_symbol*, %struct.coff_symbol** %8, align 8
  %66 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %65, i32 0, i32 2
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load %struct.coff_section*, %struct.coff_section** %68, align 8
  %70 = load %struct.myinfo*, %struct.myinfo** %9, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.myinfo, %struct.myinfo* %70, i64 %72
  %74 = getelementptr inbounds %struct.myinfo, %struct.myinfo* %73, i32 0, i32 0
  %75 = load %struct.coff_section*, %struct.coff_section** %74, align 8
  %76 = icmp eq %struct.coff_section* %69, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %64
  %78 = load %struct.coff_symbol*, %struct.coff_symbol** %8, align 8
  %79 = load %struct.myinfo*, %struct.myinfo** %9, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.myinfo, %struct.myinfo* %79, i64 %81
  %83 = getelementptr inbounds %struct.myinfo, %struct.myinfo* %82, i32 0, i32 1
  store %struct.coff_symbol* %78, %struct.coff_symbol** %83, align 8
  br label %88

84:                                               ; preds = %64
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %60

88:                                               ; preds = %77, %60
  br label %89

89:                                               ; preds = %88, %51
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.coff_symbol*, %struct.coff_symbol** %8, align 8
  %92 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %91, i32 0, i32 3
  %93 = load %struct.coff_symbol*, %struct.coff_symbol** %92, align 8
  store %struct.coff_symbol* %93, %struct.coff_symbol** %8, align 8
  br label %48

94:                                               ; preds = %48
  store i32 1, i32* %5, align 4
  br label %95

95:                                               ; preds = %195, %94
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %198

99:                                               ; preds = %95
  %100 = load %struct.myinfo*, %struct.myinfo** %9, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.myinfo, %struct.myinfo* %100, i64 %102
  %104 = getelementptr inbounds %struct.myinfo, %struct.myinfo* %103, i32 0, i32 1
  %105 = load %struct.coff_symbol*, %struct.coff_symbol** %104, align 8
  store %struct.coff_symbol* %105, %struct.coff_symbol** %8, align 8
  %106 = getelementptr inbounds %struct.IT_sc, %struct.IT_sc* %10, i32 0, i32 11
  store i64 0, i64* %106, align 8
  %107 = getelementptr inbounds %struct.IT_sc, %struct.IT_sc* %10, i32 0, i32 9
  store i64 0, i64* %107, align 8
  %108 = load %struct.coff_symbol*, %struct.coff_symbol** %8, align 8
  %109 = icmp ne %struct.coff_symbol* %108, null
  br i1 %109, label %129, label %110

110:                                              ; preds = %99
  %111 = load i32, i32* @abfd, align 4
  %112 = call i32 @bfd_get_file_flags(i32 %111)
  %113 = load i32, i32* @EXEC_P, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = getelementptr inbounds %struct.IT_sc, %struct.IT_sc* %10, i32 0, i32 0
  store i32 %117, i32* %118, align 8
  %119 = getelementptr inbounds %struct.IT_sc, %struct.IT_sc* %10, i32 0, i32 14
  store i64 0, i64* %119, align 8
  %120 = getelementptr inbounds %struct.IT_sc, %struct.IT_sc* %10, i32 0, i32 13
  store i64 0, i64* %120, align 8
  %121 = load %struct.myinfo*, %struct.myinfo** %9, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.myinfo, %struct.myinfo* %121, i64 %123
  %125 = getelementptr inbounds %struct.myinfo, %struct.myinfo* %124, i32 0, i32 0
  %126 = load %struct.coff_section*, %struct.coff_section** %125, align 8
  %127 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  store i8* %128, i8** %11, align 8
  br label %156

129:                                              ; preds = %99
  %130 = load i32, i32* @abfd, align 4
  %131 = call i32 @bfd_get_file_flags(i32 %130)
  %132 = load i32, i32* @EXEC_P, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.IT_sc, %struct.IT_sc* %10, i32 0, i32 0
  store i32 0, i32* %136, align 8
  %137 = load %struct.coff_symbol*, %struct.coff_symbol** %8, align 8
  %138 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %137, i32 0, i32 2
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds %struct.IT_sc, %struct.IT_sc* %10, i32 0, i32 14
  store i64 %141, i64* %142, align 8
  br label %146

143:                                              ; preds = %129
  %144 = getelementptr inbounds %struct.IT_sc, %struct.IT_sc* %10, i32 0, i32 0
  store i32 1, i32* %144, align 8
  %145 = getelementptr inbounds %struct.IT_sc, %struct.IT_sc* %10, i32 0, i32 14
  store i64 0, i64* %145, align 8
  br label %146

146:                                              ; preds = %143, %135
  %147 = load %struct.coff_symbol*, %struct.coff_symbol** %8, align 8
  %148 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %147, i32 0, i32 1
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds %struct.IT_sc, %struct.IT_sc* %10, i32 0, i32 13
  store i64 %151, i64* %152, align 8
  %153 = load %struct.coff_symbol*, %struct.coff_symbol** %8, align 8
  %154 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  store i8* %155, i8** %11, align 8
  br label %156

156:                                              ; preds = %146, %110
  %157 = getelementptr inbounds %struct.IT_sc, %struct.IT_sc* %10, i32 0, i32 1
  store i32 4, i32* %157, align 4
  %158 = load i32, i32* @CONCAT_SIMPLE, align 4
  %159 = getelementptr inbounds %struct.IT_sc, %struct.IT_sc* %10, i32 0, i32 12
  store i32 %158, i32* %159, align 8
  %160 = getelementptr inbounds %struct.IT_sc, %struct.IT_sc* %10, i32 0, i32 2
  store i32 3, i32* %160, align 8
  %161 = getelementptr inbounds %struct.IT_sc, %struct.IT_sc* %10, i32 0, i32 3
  store i32 3, i32* %161, align 4
  %162 = getelementptr inbounds %struct.IT_sc, %struct.IT_sc* %10, i32 0, i32 4
  store i32 3, i32* %162, align 8
  %163 = getelementptr inbounds %struct.IT_sc, %struct.IT_sc* %10, i32 0, i32 5
  store i32 3, i32* %163, align 4
  %164 = getelementptr inbounds %struct.IT_sc, %struct.IT_sc* %10, i32 0, i32 6
  store i32 3, i32* %164, align 8
  %165 = getelementptr inbounds %struct.IT_sc, %struct.IT_sc* %10, i32 0, i32 11
  store i64 0, i64* %165, align 8
  %166 = getelementptr inbounds %struct.IT_sc, %struct.IT_sc* %10, i32 0, i32 10
  store i64 0, i64* %166, align 8
  %167 = getelementptr inbounds %struct.IT_sc, %struct.IT_sc* %10, i32 0, i32 9
  store i64 0, i64* %167, align 8
  %168 = load i8*, i8** %11, align 8
  %169 = call i32* @section_translate(i8* %168)
  %170 = getelementptr inbounds %struct.IT_sc, %struct.IT_sc* %10, i32 0, i32 7
  store i32* %169, i32** %170, align 8
  %171 = getelementptr inbounds %struct.IT_sc, %struct.IT_sc* %10, i32 0, i32 7
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @strlen(i32* %172)
  %174 = icmp eq i32 %173, 1
  br i1 %174, label %175, label %187

175:                                              ; preds = %156
  %176 = getelementptr inbounds %struct.IT_sc, %struct.IT_sc* %10, i32 0, i32 7
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  %179 = load i32, i32* %178, align 4
  switch i32 %179, label %183 [
    i32 68, label %180
    i32 66, label %180
  ]

180:                                              ; preds = %175, %175
  %181 = load i8*, i8** @CONTENTS_DATA, align 8
  %182 = getelementptr inbounds %struct.IT_sc, %struct.IT_sc* %10, i32 0, i32 8
  store i8* %181, i8** %182, align 8
  br label %186

183:                                              ; preds = %175
  %184 = load i8*, i8** @CONTENTS_CODE, align 8
  %185 = getelementptr inbounds %struct.IT_sc, %struct.IT_sc* %10, i32 0, i32 8
  store i8* %184, i8** %185, align 8
  br label %186

186:                                              ; preds = %183, %180
  br label %190

187:                                              ; preds = %156
  %188 = load i8*, i8** @CONTENTS_CODE, align 8
  %189 = getelementptr inbounds %struct.IT_sc, %struct.IT_sc* %10, i32 0, i32 8
  store i8* %188, i8** %189, align 8
  br label %190

190:                                              ; preds = %187, %186
  %191 = load i32, i32* @file, align 4
  %192 = call i32 @sysroff_swap_sc_out(i32 %191, %struct.IT_sc* %10)
  %193 = load i32, i32* %6, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %6, align 4
  br label %195

195:                                              ; preds = %190
  %196 = load i32, i32* %5, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %5, align 4
  br label %95

198:                                              ; preds = %95
  %199 = load i32, i32* %6, align 4
  ret i32 %199
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @bfd_get_file_flags(i32) #1

declare dso_local i32* @section_translate(i8*) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @sysroff_swap_sc_out(i32, %struct.IT_sc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
