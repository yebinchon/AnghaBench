; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_coffread.c_decode_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_coffread.c_decode_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.coff_symbol = type { i64, i64, i32 }
%union.internal_auxent = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i16* }

@N_BTMASK = common dso_local global i32 0, align 4
@DIMNUM = common dso_local global i32 0, align 4
@current_objfile = common dso_local global i32 0, align 4
@FT_INTEGER = common dso_local global i32 0, align 4
@C_STRTAG = common dso_local global i64 0, align 8
@C_UNTAG = common dso_local global i64 0, align 8
@C_ENTAG = common dso_local global i64 0, align 8
@symfile_complaints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Symbol table entry for %s has bad tagndx value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (%struct.coff_symbol*, i32, %union.internal_auxent*)* @decode_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @decode_type(%struct.coff_symbol* %0, i32 %1, %union.internal_auxent* %2) #0 {
  %4 = alloca %struct.type*, align 8
  %5 = alloca %struct.coff_symbol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.internal_auxent*, align 8
  %8 = alloca %struct.type*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16*, align 8
  %13 = alloca %struct.type*, align 8
  %14 = alloca %struct.type*, align 8
  %15 = alloca %struct.type*, align 8
  store %struct.coff_symbol* %0, %struct.coff_symbol** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.internal_auxent* %2, %union.internal_auxent** %7, align 8
  store %struct.type* null, %struct.type** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @N_BTMASK, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %113

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @DECREF(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @ISPTR(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load %struct.coff_symbol*, %struct.coff_symbol** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load %union.internal_auxent*, %union.internal_auxent** %7, align 8
  %31 = call %struct.type* @decode_type(%struct.coff_symbol* %28, i32 %29, %union.internal_auxent* %30)
  store %struct.type* %31, %struct.type** %8, align 8
  %32 = load %struct.type*, %struct.type** %8, align 8
  %33 = call %struct.type* @lookup_pointer_type(%struct.type* %32)
  store %struct.type* %33, %struct.type** %8, align 8
  br label %111

34:                                               ; preds = %21
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @ISFCN(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load %struct.coff_symbol*, %struct.coff_symbol** %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load %union.internal_auxent*, %union.internal_auxent** %7, align 8
  %42 = call %struct.type* @decode_type(%struct.coff_symbol* %39, i32 %40, %union.internal_auxent* %41)
  store %struct.type* %42, %struct.type** %8, align 8
  %43 = load %struct.type*, %struct.type** %8, align 8
  %44 = call %struct.type* @lookup_function_type(%struct.type* %43)
  store %struct.type* %44, %struct.type** %8, align 8
  br label %110

45:                                               ; preds = %34
  %46 = load i32, i32* %6, align 4
  %47 = call i64 @ISARY(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %109

49:                                               ; preds = %45
  %50 = load %union.internal_auxent*, %union.internal_auxent** %7, align 8
  %51 = bitcast %union.internal_auxent* %50 to %struct.TYPE_8__*
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.coff_symbol*, %struct.coff_symbol** %5, align 8
  %58 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %56, %49
  %60 = load %union.internal_auxent*, %union.internal_auxent** %7, align 8
  %61 = bitcast %union.internal_auxent* %60 to %struct.TYPE_8__*
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i16*, i16** %64, align 8
  %66 = getelementptr inbounds i16, i16* %65, i64 0
  store i16* %66, i16** %12, align 8
  store i32 1, i32* %10, align 4
  %67 = load i16*, i16** %12, align 8
  %68 = getelementptr inbounds i16, i16* %67, i64 0
  %69 = load i16, i16* %68, align 2
  %70 = zext i16 %69 to i32
  store i32 %70, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %88, %59
  %72 = load i16*, i16** %12, align 8
  %73 = load i16, i16* %72, align 2
  %74 = zext i16 %73 to i32
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @DIMNUM, align 4
  %79 = sub nsw i32 %78, 1
  %80 = icmp slt i32 %77, %79
  br label %81

81:                                               ; preds = %76, %71
  %82 = phi i1 [ false, %71 ], [ %80, %76 ]
  br i1 %82, label %83, label %93

83:                                               ; preds = %81
  %84 = load i16*, i16** %12, align 8
  %85 = getelementptr inbounds i16, i16* %84, i64 1
  %86 = load i16, i16* %85, align 2
  %87 = load i16*, i16** %12, align 8
  store i16 %86, i16* %87, align 2
  br label %88

88:                                               ; preds = %83
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  %91 = load i16*, i16** %12, align 8
  %92 = getelementptr inbounds i16, i16* %91, i32 1
  store i16* %92, i16** %12, align 8
  br label %71

93:                                               ; preds = %81
  %94 = load i16*, i16** %12, align 8
  store i16 0, i16* %94, align 2
  %95 = load %struct.coff_symbol*, %struct.coff_symbol** %5, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load %union.internal_auxent*, %union.internal_auxent** %7, align 8
  %98 = call %struct.type* @decode_type(%struct.coff_symbol* %95, i32 %96, %union.internal_auxent* %97)
  store %struct.type* %98, %struct.type** %13, align 8
  %99 = load i32, i32* @current_objfile, align 4
  %100 = load i32, i32* @FT_INTEGER, align 4
  %101 = call %struct.type* @lookup_fundamental_type(i32 %99, i32 %100)
  store %struct.type* %101, %struct.type** %14, align 8
  %102 = load %struct.type*, %struct.type** %14, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sub nsw i32 %103, 1
  %105 = call %struct.type* @create_range_type(%struct.type* null, %struct.type* %102, i32 0, i32 %104)
  store %struct.type* %105, %struct.type** %15, align 8
  %106 = load %struct.type*, %struct.type** %13, align 8
  %107 = load %struct.type*, %struct.type** %15, align 8
  %108 = call %struct.type* @create_array_type(%struct.type* null, %struct.type* %106, %struct.type* %107)
  store %struct.type* %108, %struct.type** %8, align 8
  br label %109

109:                                              ; preds = %93, %45
  br label %110

110:                                              ; preds = %109, %38
  br label %111

111:                                              ; preds = %110, %27
  %112 = load %struct.type*, %struct.type** %8, align 8
  store %struct.type* %112, %struct.type** %4, align 8
  br label %170

113:                                              ; preds = %3
  %114 = load %struct.coff_symbol*, %struct.coff_symbol** %5, align 8
  %115 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %164

118:                                              ; preds = %113
  %119 = load %union.internal_auxent*, %union.internal_auxent** %7, align 8
  %120 = bitcast %union.internal_auxent* %119 to %struct.TYPE_8__*
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %164

125:                                              ; preds = %118
  %126 = load %struct.coff_symbol*, %struct.coff_symbol** %5, align 8
  %127 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @C_STRTAG, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %158

131:                                              ; preds = %125
  %132 = load %struct.coff_symbol*, %struct.coff_symbol** %5, align 8
  %133 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @C_UNTAG, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %158

137:                                              ; preds = %131
  %138 = load %struct.coff_symbol*, %struct.coff_symbol** %5, align 8
  %139 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @C_ENTAG, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %158

143:                                              ; preds = %137
  %144 = load %union.internal_auxent*, %union.internal_auxent** %7, align 8
  %145 = bitcast %union.internal_auxent* %144 to %struct.TYPE_8__*
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp sge i64 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %143
  %151 = load %union.internal_auxent*, %union.internal_auxent** %7, align 8
  %152 = bitcast %union.internal_auxent* %151 to %struct.TYPE_8__*
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = call %struct.type* @coff_alloc_type(i64 %155)
  store %struct.type* %156, %struct.type** %8, align 8
  %157 = load %struct.type*, %struct.type** %8, align 8
  store %struct.type* %157, %struct.type** %4, align 8
  br label %170

158:                                              ; preds = %143, %137, %131, %125
  %159 = load %struct.coff_symbol*, %struct.coff_symbol** %5, align 8
  %160 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %161)
  br label %163

163:                                              ; preds = %158
  br label %164

164:                                              ; preds = %163, %118, %113
  %165 = load %struct.coff_symbol*, %struct.coff_symbol** %5, align 8
  %166 = load i32, i32* %6, align 4
  %167 = call i32 @BTYPE(i32 %166)
  %168 = load %union.internal_auxent*, %union.internal_auxent** %7, align 8
  %169 = call %struct.type* @decode_base_type(%struct.coff_symbol* %165, i32 %167, %union.internal_auxent* %168)
  store %struct.type* %169, %struct.type** %4, align 8
  br label %170

170:                                              ; preds = %164, %150, %111
  %171 = load %struct.type*, %struct.type** %4, align 8
  ret %struct.type* %171
}

declare dso_local i32 @DECREF(i32) #1

declare dso_local i64 @ISPTR(i32) #1

declare dso_local %struct.type* @lookup_pointer_type(%struct.type*) #1

declare dso_local i64 @ISFCN(i32) #1

declare dso_local %struct.type* @lookup_function_type(%struct.type*) #1

declare dso_local i64 @ISARY(i32) #1

declare dso_local %struct.type* @lookup_fundamental_type(i32, i32) #1

declare dso_local %struct.type* @create_range_type(%struct.type*, %struct.type*, i32, i32) #1

declare dso_local %struct.type* @create_array_type(%struct.type*, %struct.type*, %struct.type*) #1

declare dso_local %struct.type* @coff_alloc_type(i64) #1

declare dso_local i32 @complaint(i32*, i8*, i32) #1

declare dso_local %struct.type* @decode_base_type(%struct.coff_symbol*, i32, %union.internal_auxent*) #1

declare dso_local i32 @BTYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
