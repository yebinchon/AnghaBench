; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rdcoff.c_parse_coff_struct_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rdcoff.c_parse_coff_struct_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coff_symbols = type { i64, i64, i64, i32** }
%struct.coff_types = type { i32 }
%union.internal_auxent = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.internal_syment = type { i64, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"bfd_coff_get_syment failed: %s\00", align 1
@DEBUG_TYPE_NULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"bfd_coff_get_auxent failed: %s\00", align 1
@TRUE = common dso_local global i32 0, align 4
@DEBUG_VISIBILITY_PUBLIC = common dso_local global i32 0, align 4
@DEBUG_FIELD_NULL = common dso_local global i64 0, align 8
@T_STRUCT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.coff_symbols*, %struct.coff_types*, i32, %union.internal_auxent*, i8*)* @parse_coff_struct_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_coff_struct_type(i32* %0, %struct.coff_symbols* %1, %struct.coff_types* %2, i32 %3, %union.internal_auxent* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.coff_symbols*, align 8
  %10 = alloca %struct.coff_types*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %union.internal_auxent*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.internal_syment, align 8
  %22 = alloca %union.internal_auxent, align 8
  %23 = alloca %union.internal_auxent*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store %struct.coff_symbols* %1, %struct.coff_symbols** %9, align 8
  store %struct.coff_types* %2, %struct.coff_types** %10, align 8
  store i32 %3, i32* %11, align 4
  store %union.internal_auxent* %4, %union.internal_auxent** %12, align 8
  store i8* %5, i8** %13, align 8
  %28 = load %union.internal_auxent*, %union.internal_auxent** %12, align 8
  %29 = bitcast %union.internal_auxent* %28 to %struct.TYPE_12__*
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %14, align 8
  store i32 10, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 8
  %38 = trunc i64 %37 to i32
  %39 = call i64 @xmalloc(i32 %38)
  %40 = inttoptr i64 %39 to i64*
  store i64* %40, i64** %16, align 8
  store i32 0, i32* %17, align 4
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %18, align 4
  br label %42

42:                                               ; preds = %178, %6
  %43 = load i32, i32* %18, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %42
  %46 = load %struct.coff_symbols*, %struct.coff_symbols** %9, align 8
  %47 = getelementptr inbounds %struct.coff_symbols, %struct.coff_symbols* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %14, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load %struct.coff_symbols*, %struct.coff_symbols** %9, align 8
  %53 = getelementptr inbounds %struct.coff_symbols, %struct.coff_symbols* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.coff_symbols*, %struct.coff_symbols** %9, align 8
  %56 = getelementptr inbounds %struct.coff_symbols, %struct.coff_symbols* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %54, %57
  br label %59

59:                                               ; preds = %51, %45, %42
  %60 = phi i1 [ false, %45 ], [ false, %42 ], [ %58, %51 ]
  br i1 %60, label %61, label %179

61:                                               ; preds = %59
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %62 = load %struct.coff_symbols*, %struct.coff_symbols** %9, align 8
  %63 = getelementptr inbounds %struct.coff_symbols, %struct.coff_symbols* %62, i32 0, i32 3
  %64 = load i32**, i32*** %63, align 8
  %65 = load %struct.coff_symbols*, %struct.coff_symbols** %9, align 8
  %66 = getelementptr inbounds %struct.coff_symbols, %struct.coff_symbols* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32*, i32** %64, i64 %67
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %19, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = load i32*, i32** %19, align 8
  %72 = call i32 @bfd_coff_get_syment(i32* %70, i32* %71, %struct.internal_syment* %21)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %61
  %75 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %76 = call i32 (...) @bfd_get_error()
  %77 = call i32 @bfd_errmsg(i32 %76)
  %78 = call i32 @non_fatal(i32 %75, i32 %77)
  %79 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  store i32 %79, i32* %7, align 4
  br label %198

80:                                               ; preds = %61
  %81 = load %struct.coff_symbols*, %struct.coff_symbols** %9, align 8
  %82 = getelementptr inbounds %struct.coff_symbols, %struct.coff_symbols* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %20, align 8
  %84 = load %struct.coff_symbols*, %struct.coff_symbols** %9, align 8
  %85 = getelementptr inbounds %struct.coff_symbols, %struct.coff_symbols* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %85, align 8
  %88 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %21, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 1, %89
  %91 = load %struct.coff_symbols*, %struct.coff_symbols** %9, align 8
  %92 = getelementptr inbounds %struct.coff_symbols, %struct.coff_symbols* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, %90
  store i64 %94, i64* %92, align 8
  %95 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %21, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %80
  store %union.internal_auxent* null, %union.internal_auxent** %23, align 8
  br label %111

99:                                               ; preds = %80
  %100 = load i32*, i32** %8, align 8
  %101 = load i32*, i32** %19, align 8
  %102 = call i32 @bfd_coff_get_auxent(i32* %100, i32* %101, i32 0, %union.internal_auxent* %22)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %99
  %105 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %106 = call i32 (...) @bfd_get_error()
  %107 = call i32 @bfd_errmsg(i32 %106)
  %108 = call i32 @non_fatal(i32 %105, i32 %107)
  %109 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  store i32 %109, i32* %7, align 4
  br label %198

110:                                              ; preds = %99
  store %union.internal_auxent* %22, %union.internal_auxent** %23, align 8
  br label %111

111:                                              ; preds = %110, %98
  %112 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %21, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  switch i32 %113, label %128 [
    i32 129, label %114
    i32 128, label %114
    i32 130, label %118
    i32 131, label %126
  ]

114:                                              ; preds = %111, %111
  %115 = load i32*, i32** %19, align 8
  %116 = call i32 @bfd_asymbol_value(i32* %115)
  %117 = mul nsw i32 8, %116
  store i32 %117, i32* %24, align 4
  store i32 0, i32* %25, align 4
  br label %128

118:                                              ; preds = %111
  %119 = load i32*, i32** %19, align 8
  %120 = call i32 @bfd_asymbol_value(i32* %119)
  store i32 %120, i32* %24, align 4
  %121 = bitcast %union.internal_auxent* %22 to %struct.TYPE_12__*
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %25, align 4
  br label %128

126:                                              ; preds = %111
  %127 = load i32, i32* @TRUE, align 4
  store i32 %127, i32* %18, align 4
  br label %128

128:                                              ; preds = %111, %126, %118, %114
  %129 = load i32, i32* %18, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %178, label %131

131:                                              ; preds = %128
  %132 = load i32*, i32** %8, align 8
  %133 = load %struct.coff_symbols*, %struct.coff_symbols** %9, align 8
  %134 = load %struct.coff_types*, %struct.coff_types** %10, align 8
  %135 = load i64, i64* %20, align 8
  %136 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %21, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load %union.internal_auxent*, %union.internal_auxent** %23, align 8
  %139 = load i32, i32* @TRUE, align 4
  %140 = load i8*, i8** %13, align 8
  %141 = call i32 @parse_coff_type(i32* %132, %struct.coff_symbols* %133, %struct.coff_types* %134, i64 %135, i32 %137, %union.internal_auxent* %138, i32 %139, i8* %140)
  store i32 %141, i32* %26, align 4
  %142 = load i8*, i8** %13, align 8
  %143 = load i32*, i32** %19, align 8
  %144 = call i32 @bfd_asymbol_name(i32* %143)
  %145 = load i32, i32* %26, align 4
  %146 = load i32, i32* %24, align 4
  %147 = load i32, i32* %25, align 4
  %148 = load i32, i32* @DEBUG_VISIBILITY_PUBLIC, align 4
  %149 = call i64 @debug_make_field(i8* %142, i32 %144, i32 %145, i32 %146, i32 %147, i32 %148)
  store i64 %149, i64* %27, align 8
  %150 = load i64, i64* %27, align 8
  %151 = load i64, i64* @DEBUG_FIELD_NULL, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %131
  %154 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  store i32 %154, i32* %7, align 4
  br label %198

155:                                              ; preds = %131
  %156 = load i32, i32* %17, align 4
  %157 = add nsw i32 %156, 1
  %158 = load i32, i32* %15, align 4
  %159 = icmp sge i32 %157, %158
  br i1 %159, label %160, label %170

160:                                              ; preds = %155
  %161 = load i32, i32* %15, align 4
  %162 = add nsw i32 %161, 10
  store i32 %162, i32* %15, align 4
  %163 = load i64*, i64** %16, align 8
  %164 = load i32, i32* %15, align 4
  %165 = sext i32 %164 to i64
  %166 = mul i64 %165, 8
  %167 = trunc i64 %166 to i32
  %168 = call i64 @xrealloc(i64* %163, i32 %167)
  %169 = inttoptr i64 %168 to i64*
  store i64* %169, i64** %16, align 8
  br label %170

170:                                              ; preds = %160, %155
  %171 = load i64, i64* %27, align 8
  %172 = load i64*, i64** %16, align 8
  %173 = load i32, i32* %17, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i64, i64* %172, i64 %174
  store i64 %171, i64* %175, align 8
  %176 = load i32, i32* %17, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %17, align 4
  br label %178

178:                                              ; preds = %170, %128
  br label %42

179:                                              ; preds = %59
  %180 = load i64, i64* @DEBUG_FIELD_NULL, align 8
  %181 = load i64*, i64** %16, align 8
  %182 = load i32, i32* %17, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i64, i64* %181, i64 %183
  store i64 %180, i64* %184, align 8
  %185 = load i8*, i8** %13, align 8
  %186 = load i32, i32* %11, align 4
  %187 = load i32, i32* @T_STRUCT, align 4
  %188 = icmp eq i32 %186, %187
  %189 = zext i1 %188 to i32
  %190 = load %union.internal_auxent*, %union.internal_auxent** %12, align 8
  %191 = bitcast %union.internal_auxent* %190 to %struct.TYPE_12__*
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i64*, i64** %16, align 8
  %197 = call i32 @debug_make_struct_type(i8* %185, i32 %189, i32 %195, i64* %196)
  store i32 %197, i32* %7, align 4
  br label %198

198:                                              ; preds = %179, %153, %104, %74
  %199 = load i32, i32* %7, align 4
  ret i32 %199
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @bfd_coff_get_syment(i32*, i32*, %struct.internal_syment*) #1

declare dso_local i32 @non_fatal(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_errmsg(i32) #1

declare dso_local i32 @bfd_get_error(...) #1

declare dso_local i32 @bfd_coff_get_auxent(i32*, i32*, i32, %union.internal_auxent*) #1

declare dso_local i32 @bfd_asymbol_value(i32*) #1

declare dso_local i32 @parse_coff_type(i32*, %struct.coff_symbols*, %struct.coff_types*, i64, i32, %union.internal_auxent*, i32, i8*) #1

declare dso_local i64 @debug_make_field(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bfd_asymbol_name(i32*) #1

declare dso_local i64 @xrealloc(i64*, i32) #1

declare dso_local i32 @debug_make_struct_type(i8*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
