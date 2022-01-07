; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rdcoff.c_parse_coff_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rdcoff.c_parse_coff_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coff_symbols = type { i32 }
%struct.coff_types = type { i32 }
%union.internal_auxent = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i16* }

@N_BTMASK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@DIMNUM = common dso_local global i32 0, align 4
@T_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"parse_coff_type: Bad type code 0x%x\00", align 1
@DEBUG_TYPE_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.coff_symbols*, %struct.coff_types*, i64, i32, %union.internal_auxent*, i32, i8*)* @parse_coff_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_coff_type(i32* %0, %struct.coff_symbols* %1, %struct.coff_types* %2, i64 %3, i32 %4, %union.internal_auxent* %5, i32 %6, i8* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.coff_symbols*, align 8
  %12 = alloca %struct.coff_types*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %union.internal_auxent*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i16*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64*, align 8
  store i32* %0, i32** %10, align 8
  store %struct.coff_symbols* %1, %struct.coff_symbols** %11, align 8
  store %struct.coff_types* %2, %struct.coff_types** %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store %union.internal_auxent* %5, %union.internal_auxent** %15, align 8
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* @N_BTMASK, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %141

29:                                               ; preds = %8
  %30 = load i32, i32* %14, align 4
  %31 = call i32 @DECREF(i32 %30)
  store i32 %31, i32* %19, align 4
  %32 = load i32, i32* %14, align 4
  %33 = call i64 @ISPTR(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = load i32*, i32** %10, align 8
  %37 = load %struct.coff_symbols*, %struct.coff_symbols** %11, align 8
  %38 = load %struct.coff_types*, %struct.coff_types** %12, align 8
  %39 = load i64, i64* %13, align 8
  %40 = load i32, i32* %19, align 4
  %41 = load %union.internal_auxent*, %union.internal_auxent** %15, align 8
  %42 = load i32, i32* %16, align 4
  %43 = load i8*, i8** %17, align 8
  %44 = call i64 @parse_coff_type(i32* %36, %struct.coff_symbols* %37, %struct.coff_types* %38, i64 %39, i32 %40, %union.internal_auxent* %41, i32 %42, i8* %43)
  store i64 %44, i64* %18, align 8
  %45 = load i8*, i8** %17, align 8
  %46 = load i64, i64* %18, align 8
  %47 = call i64 @debug_make_pointer_type(i8* %45, i64 %46)
  store i64 %47, i64* %18, align 8
  br label %139

48:                                               ; preds = %29
  %49 = load i32, i32* %14, align 4
  %50 = call i64 @ISFCN(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %48
  %53 = load i32*, i32** %10, align 8
  %54 = load %struct.coff_symbols*, %struct.coff_symbols** %11, align 8
  %55 = load %struct.coff_types*, %struct.coff_types** %12, align 8
  %56 = load i64, i64* %13, align 8
  %57 = load i32, i32* %19, align 4
  %58 = load %union.internal_auxent*, %union.internal_auxent** %15, align 8
  %59 = load i32, i32* %16, align 4
  %60 = load i8*, i8** %17, align 8
  %61 = call i64 @parse_coff_type(i32* %53, %struct.coff_symbols* %54, %struct.coff_types* %55, i64 %56, i32 %57, %union.internal_auxent* %58, i32 %59, i8* %60)
  store i64 %61, i64* %18, align 8
  %62 = load i8*, i8** %17, align 8
  %63 = load i64, i64* %18, align 8
  %64 = load i32, i32* @FALSE, align 4
  %65 = call i64 @debug_make_function_type(i8* %62, i64 %63, i64* null, i32 %64)
  store i64 %65, i64* %18, align 8
  br label %138

66:                                               ; preds = %48
  %67 = load i32, i32* %14, align 4
  %68 = call i64 @ISARY(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %132

70:                                               ; preds = %66
  %71 = load %union.internal_auxent*, %union.internal_auxent** %15, align 8
  %72 = icmp eq %union.internal_auxent* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 0, i32* %20, align 4
  br label %109

74:                                               ; preds = %70
  %75 = load %union.internal_auxent*, %union.internal_auxent** %15, align 8
  %76 = bitcast %union.internal_auxent* %75 to %struct.TYPE_8__*
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i16*, i16** %79, align 8
  store i16* %80, i16** %21, align 8
  %81 = load i16*, i16** %21, align 8
  %82 = getelementptr inbounds i16, i16* %81, i64 0
  %83 = load i16, i16* %82, align 2
  %84 = zext i16 %83 to i32
  store i32 %84, i32* %20, align 4
  store i32 0, i32* %22, align 4
  br label %85

85:                                               ; preds = %102, %74
  %86 = load i16*, i16** %21, align 8
  %87 = load i16, i16* %86, align 2
  %88 = zext i16 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load i32, i32* %22, align 4
  %92 = load i32, i32* @DIMNUM, align 4
  %93 = sub nsw i32 %92, 1
  %94 = icmp slt i32 %91, %93
  br label %95

95:                                               ; preds = %90, %85
  %96 = phi i1 [ false, %85 ], [ %94, %90 ]
  br i1 %96, label %97, label %107

97:                                               ; preds = %95
  %98 = load i16*, i16** %21, align 8
  %99 = getelementptr inbounds i16, i16* %98, i64 1
  %100 = load i16, i16* %99, align 2
  %101 = load i16*, i16** %21, align 8
  store i16 %100, i16* %101, align 2
  br label %102

102:                                              ; preds = %97
  %103 = load i32, i32* %22, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %22, align 4
  %105 = load i16*, i16** %21, align 8
  %106 = getelementptr inbounds i16, i16* %105, i32 1
  store i16* %106, i16** %21, align 8
  br label %85

107:                                              ; preds = %95
  %108 = load i16*, i16** %21, align 8
  store i16 0, i16* %108, align 2
  br label %109

109:                                              ; preds = %107, %73
  %110 = load i32*, i32** %10, align 8
  %111 = load %struct.coff_symbols*, %struct.coff_symbols** %11, align 8
  %112 = load %struct.coff_types*, %struct.coff_types** %12, align 8
  %113 = load i64, i64* %13, align 8
  %114 = load i32, i32* %19, align 4
  %115 = load %union.internal_auxent*, %union.internal_auxent** %15, align 8
  %116 = load i32, i32* @FALSE, align 4
  %117 = load i8*, i8** %17, align 8
  %118 = call i64 @parse_coff_type(i32* %110, %struct.coff_symbols* %111, %struct.coff_types* %112, i64 %113, i32 %114, %union.internal_auxent* %115, i32 %116, i8* %117)
  store i64 %118, i64* %18, align 8
  %119 = load i8*, i8** %17, align 8
  %120 = load i64, i64* %18, align 8
  %121 = load i32*, i32** %10, align 8
  %122 = load %struct.coff_symbols*, %struct.coff_symbols** %11, align 8
  %123 = load %struct.coff_types*, %struct.coff_types** %12, align 8
  %124 = load i64, i64* %13, align 8
  %125 = load i32, i32* @T_INT, align 4
  %126 = load i8*, i8** %17, align 8
  %127 = call i64 @parse_coff_base_type(i32* %121, %struct.coff_symbols* %122, %struct.coff_types* %123, i64 %124, i32 %125, %union.internal_auxent* null, i8* %126)
  %128 = load i32, i32* %20, align 4
  %129 = sub nsw i32 %128, 1
  %130 = load i32, i32* @FALSE, align 4
  %131 = call i64 @debug_make_array_type(i8* %119, i64 %120, i64 %127, i32 0, i32 %129, i32 %130)
  store i64 %131, i64* %18, align 8
  br label %137

132:                                              ; preds = %66
  %133 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %134 = load i32, i32* %14, align 4
  %135 = call i32 @non_fatal(i32 %133, i32 %134)
  %136 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %136, i64* %9, align 8
  br label %183

137:                                              ; preds = %109
  br label %138

138:                                              ; preds = %137, %52
  br label %139

139:                                              ; preds = %138, %35
  %140 = load i64, i64* %18, align 8
  store i64 %140, i64* %9, align 8
  br label %183

141:                                              ; preds = %8
  %142 = load %union.internal_auxent*, %union.internal_auxent** %15, align 8
  %143 = icmp ne %union.internal_auxent* %142, null
  br i1 %143, label %144, label %170

144:                                              ; preds = %141
  %145 = load %union.internal_auxent*, %union.internal_auxent** %15, align 8
  %146 = bitcast %union.internal_auxent* %145 to %struct.TYPE_8__*
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp sgt i64 %149, 0
  br i1 %150, label %151, label %170

151:                                              ; preds = %144
  %152 = load %struct.coff_types*, %struct.coff_types** %12, align 8
  %153 = load %union.internal_auxent*, %union.internal_auxent** %15, align 8
  %154 = bitcast %union.internal_auxent* %153 to %struct.TYPE_8__*
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = call i64* @coff_get_slot(%struct.coff_types* %152, i64 %157)
  store i64* %158, i64** %23, align 8
  %159 = load i64*, i64** %23, align 8
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  %162 = icmp ne i64 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %151
  %164 = load i64*, i64** %23, align 8
  %165 = load i64, i64* %164, align 8
  store i64 %165, i64* %9, align 8
  br label %183

166:                                              ; preds = %151
  %167 = load i8*, i8** %17, align 8
  %168 = load i64*, i64** %23, align 8
  %169 = call i64 @debug_make_indirect_type(i8* %167, i64* %168, i8* null)
  store i64 %169, i64* %9, align 8
  br label %183

170:                                              ; preds = %144, %141
  %171 = load i32, i32* %16, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %170
  store %union.internal_auxent* null, %union.internal_auxent** %15, align 8
  br label %174

174:                                              ; preds = %173, %170
  %175 = load i32*, i32** %10, align 8
  %176 = load %struct.coff_symbols*, %struct.coff_symbols** %11, align 8
  %177 = load %struct.coff_types*, %struct.coff_types** %12, align 8
  %178 = load i64, i64* %13, align 8
  %179 = load i32, i32* %14, align 4
  %180 = load %union.internal_auxent*, %union.internal_auxent** %15, align 8
  %181 = load i8*, i8** %17, align 8
  %182 = call i64 @parse_coff_base_type(i32* %175, %struct.coff_symbols* %176, %struct.coff_types* %177, i64 %178, i32 %179, %union.internal_auxent* %180, i8* %181)
  store i64 %182, i64* %9, align 8
  br label %183

183:                                              ; preds = %174, %166, %163, %139, %132
  %184 = load i64, i64* %9, align 8
  ret i64 %184
}

declare dso_local i32 @DECREF(i32) #1

declare dso_local i64 @ISPTR(i32) #1

declare dso_local i64 @debug_make_pointer_type(i8*, i64) #1

declare dso_local i64 @ISFCN(i32) #1

declare dso_local i64 @debug_make_function_type(i8*, i64, i64*, i32) #1

declare dso_local i64 @ISARY(i32) #1

declare dso_local i64 @debug_make_array_type(i8*, i64, i64, i32, i32, i32) #1

declare dso_local i64 @parse_coff_base_type(i32*, %struct.coff_symbols*, %struct.coff_types*, i64, i32, %union.internal_auxent*, i8*) #1

declare dso_local i32 @non_fatal(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64* @coff_get_slot(%struct.coff_types*, i64) #1

declare dso_local i64 @debug_make_indirect_type(i8*, i64*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
