; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rdcoff.c_parse_coff_base_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rdcoff.c_parse_coff_base_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coff_symbols = type { i32 }
%struct.coff_types = type { i32* }
%union.internal_auxent = type { i32 }

@T_MAX = common dso_local global i32 0, align 4
@DEBUG_TYPE_NULL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"void\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"long double\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"unsigned short\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.coff_symbols*, %struct.coff_types*, i64, i32, %union.internal_auxent*, i8*)* @parse_coff_base_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_coff_base_type(i32* %0, %struct.coff_symbols* %1, %struct.coff_types* %2, i64 %3, i32 %4, %union.internal_auxent* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.coff_symbols*, align 8
  %11 = alloca %struct.coff_types*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %union.internal_auxent*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store %struct.coff_symbols* %1, %struct.coff_symbols** %10, align 8
  store %struct.coff_types* %2, %struct.coff_types** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store %union.internal_auxent* %5, %union.internal_auxent** %14, align 8
  store i8* %6, i8** %15, align 8
  %20 = load i32, i32* %13, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %7
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* @T_MAX, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %22
  %27 = load %struct.coff_types*, %struct.coff_types** %11, align 8
  %28 = getelementptr inbounds %struct.coff_types, %struct.coff_types* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %26
  %37 = load %struct.coff_types*, %struct.coff_types** %11, align 8
  %38 = getelementptr inbounds %struct.coff_types, %struct.coff_types* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %8, align 4
  br label %186

44:                                               ; preds = %26, %22, %7
  %45 = load i64, i64* @TRUE, align 8
  store i64 %45, i64* %17, align 8
  store i8* null, i8** %18, align 8
  %46 = load i32, i32* %13, align 4
  switch i32 %46, label %47 [
    i32 136, label %50
    i32 128, label %50
    i32 143, label %53
    i32 135, label %57
    i32 139, label %61
    i32 137, label %65
    i32 140, label %69
    i32 142, label %72
    i32 138, label %75
    i32 133, label %78
    i32 129, label %82
    i32 132, label %86
    i32 131, label %90
    i32 134, label %94
    i32 130, label %116
    i32 141, label %138
  ]

47:                                               ; preds = %44
  %48 = load i8*, i8** %15, align 8
  %49 = call i32 @debug_make_void_type(i8* %48)
  store i32 %49, i32* %16, align 4
  br label %158

50:                                               ; preds = %44, %44
  %51 = load i8*, i8** %15, align 8
  %52 = call i32 @debug_make_void_type(i8* %51)
  store i32 %52, i32* %16, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  br label %158

53:                                               ; preds = %44
  %54 = load i8*, i8** %15, align 8
  %55 = load i64, i64* @FALSE, align 8
  %56 = call i32 @debug_make_int_type(i8* %54, i32 1, i64 %55)
  store i32 %56, i32* %16, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  br label %158

57:                                               ; preds = %44
  %58 = load i8*, i8** %15, align 8
  %59 = load i64, i64* @FALSE, align 8
  %60 = call i32 @debug_make_int_type(i8* %58, i32 2, i64 %59)
  store i32 %60, i32* %16, align 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %18, align 8
  br label %158

61:                                               ; preds = %44
  %62 = load i8*, i8** %15, align 8
  %63 = load i64, i64* @FALSE, align 8
  %64 = call i32 @debug_make_int_type(i8* %62, i32 4, i64 %63)
  store i32 %64, i32* %16, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %18, align 8
  br label %158

65:                                               ; preds = %44
  %66 = load i8*, i8** %15, align 8
  %67 = load i64, i64* @FALSE, align 8
  %68 = call i32 @debug_make_int_type(i8* %66, i32 4, i64 %67)
  store i32 %68, i32* %16, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %18, align 8
  br label %158

69:                                               ; preds = %44
  %70 = load i8*, i8** %15, align 8
  %71 = call i32 @debug_make_float_type(i8* %70, i32 4)
  store i32 %71, i32* %16, align 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %18, align 8
  br label %158

72:                                               ; preds = %44
  %73 = load i8*, i8** %15, align 8
  %74 = call i32 @debug_make_float_type(i8* %73, i32 8)
  store i32 %74, i32* %16, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %18, align 8
  br label %158

75:                                               ; preds = %44
  %76 = load i8*, i8** %15, align 8
  %77 = call i32 @debug_make_float_type(i8* %76, i32 12)
  store i32 %77, i32* %16, align 4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %18, align 8
  br label %158

78:                                               ; preds = %44
  %79 = load i8*, i8** %15, align 8
  %80 = load i64, i64* @TRUE, align 8
  %81 = call i32 @debug_make_int_type(i8* %79, i32 1, i64 %80)
  store i32 %81, i32* %16, align 4
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8** %18, align 8
  br label %158

82:                                               ; preds = %44
  %83 = load i8*, i8** %15, align 8
  %84 = load i64, i64* @TRUE, align 8
  %85 = call i32 @debug_make_int_type(i8* %83, i32 2, i64 %84)
  store i32 %85, i32* %16, align 4
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8** %18, align 8
  br label %158

86:                                               ; preds = %44
  %87 = load i8*, i8** %15, align 8
  %88 = load i64, i64* @TRUE, align 8
  %89 = call i32 @debug_make_int_type(i8* %87, i32 4, i64 %88)
  store i32 %89, i32* %16, align 4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8** %18, align 8
  br label %158

90:                                               ; preds = %44
  %91 = load i8*, i8** %15, align 8
  %92 = load i64, i64* @TRUE, align 8
  %93 = call i32 @debug_make_int_type(i8* %91, i32 4, i64 %92)
  store i32 %93, i32* %16, align 4
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8** %18, align 8
  br label %158

94:                                               ; preds = %44
  %95 = load %union.internal_auxent*, %union.internal_auxent** %14, align 8
  %96 = icmp eq %union.internal_auxent* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i8*, i8** %15, align 8
  %99 = load i64, i64* @TRUE, align 8
  %100 = call i32 @debug_make_struct_type(i8* %98, i64 %99, i32 0, i32* null)
  store i32 %100, i32* %16, align 4
  br label %109

101:                                              ; preds = %94
  %102 = load i32*, i32** %9, align 8
  %103 = load %struct.coff_symbols*, %struct.coff_symbols** %10, align 8
  %104 = load %struct.coff_types*, %struct.coff_types** %11, align 8
  %105 = load i32, i32* %13, align 4
  %106 = load %union.internal_auxent*, %union.internal_auxent** %14, align 8
  %107 = load i8*, i8** %15, align 8
  %108 = call i32 @parse_coff_struct_type(i32* %102, %struct.coff_symbols* %103, %struct.coff_types* %104, i32 %105, %union.internal_auxent* %106, i8* %107)
  store i32 %108, i32* %16, align 4
  br label %109

109:                                              ; preds = %101, %97
  %110 = load %struct.coff_types*, %struct.coff_types** %11, align 8
  %111 = load i64, i64* %12, align 8
  %112 = call i32* @coff_get_slot(%struct.coff_types* %110, i64 %111)
  store i32* %112, i32** %19, align 8
  %113 = load i32, i32* %16, align 4
  %114 = load i32*, i32** %19, align 8
  store i32 %113, i32* %114, align 4
  %115 = load i64, i64* @FALSE, align 8
  store i64 %115, i64* %17, align 8
  br label %158

116:                                              ; preds = %44
  %117 = load %union.internal_auxent*, %union.internal_auxent** %14, align 8
  %118 = icmp eq %union.internal_auxent* %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load i8*, i8** %15, align 8
  %121 = load i64, i64* @FALSE, align 8
  %122 = call i32 @debug_make_struct_type(i8* %120, i64 %121, i32 0, i32* null)
  store i32 %122, i32* %16, align 4
  br label %131

123:                                              ; preds = %116
  %124 = load i32*, i32** %9, align 8
  %125 = load %struct.coff_symbols*, %struct.coff_symbols** %10, align 8
  %126 = load %struct.coff_types*, %struct.coff_types** %11, align 8
  %127 = load i32, i32* %13, align 4
  %128 = load %union.internal_auxent*, %union.internal_auxent** %14, align 8
  %129 = load i8*, i8** %15, align 8
  %130 = call i32 @parse_coff_struct_type(i32* %124, %struct.coff_symbols* %125, %struct.coff_types* %126, i32 %127, %union.internal_auxent* %128, i8* %129)
  store i32 %130, i32* %16, align 4
  br label %131

131:                                              ; preds = %123, %119
  %132 = load %struct.coff_types*, %struct.coff_types** %11, align 8
  %133 = load i64, i64* %12, align 8
  %134 = call i32* @coff_get_slot(%struct.coff_types* %132, i64 %133)
  store i32* %134, i32** %19, align 8
  %135 = load i32, i32* %16, align 4
  %136 = load i32*, i32** %19, align 8
  store i32 %135, i32* %136, align 4
  %137 = load i64, i64* @FALSE, align 8
  store i64 %137, i64* %17, align 8
  br label %158

138:                                              ; preds = %44
  %139 = load %union.internal_auxent*, %union.internal_auxent** %14, align 8
  %140 = icmp eq %union.internal_auxent* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load i8*, i8** %15, align 8
  %143 = call i32 @debug_make_enum_type(i8* %142, i8** null, i32* null)
  store i32 %143, i32* %16, align 4
  br label %151

144:                                              ; preds = %138
  %145 = load i32*, i32** %9, align 8
  %146 = load %struct.coff_symbols*, %struct.coff_symbols** %10, align 8
  %147 = load %struct.coff_types*, %struct.coff_types** %11, align 8
  %148 = load %union.internal_auxent*, %union.internal_auxent** %14, align 8
  %149 = load i8*, i8** %15, align 8
  %150 = call i32 @parse_coff_enum_type(i32* %145, %struct.coff_symbols* %146, %struct.coff_types* %147, %union.internal_auxent* %148, i8* %149)
  store i32 %150, i32* %16, align 4
  br label %151

151:                                              ; preds = %144, %141
  %152 = load %struct.coff_types*, %struct.coff_types** %11, align 8
  %153 = load i64, i64* %12, align 8
  %154 = call i32* @coff_get_slot(%struct.coff_types* %152, i64 %153)
  store i32* %154, i32** %19, align 8
  %155 = load i32, i32* %16, align 4
  %156 = load i32*, i32** %19, align 8
  store i32 %155, i32* %156, align 4
  %157 = load i64, i64* @FALSE, align 8
  store i64 %157, i64* %17, align 8
  br label %158

158:                                              ; preds = %151, %131, %109, %90, %86, %82, %78, %75, %72, %69, %65, %61, %57, %53, %50, %47
  %159 = load i8*, i8** %18, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %166

161:                                              ; preds = %158
  %162 = load i8*, i8** %15, align 8
  %163 = load i8*, i8** %18, align 8
  %164 = load i32, i32* %16, align 4
  %165 = call i32 @debug_name_type(i8* %162, i8* %163, i32 %164)
  store i32 %165, i32* %16, align 4
  br label %166

166:                                              ; preds = %161, %158
  %167 = load i64, i64* %17, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %184

169:                                              ; preds = %166
  %170 = load i32, i32* %13, align 4
  %171 = icmp sge i32 %170, 0
  br i1 %171, label %172, label %184

172:                                              ; preds = %169
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* @T_MAX, align 4
  %175 = icmp sle i32 %173, %174
  br i1 %175, label %176, label %184

176:                                              ; preds = %172
  %177 = load i32, i32* %16, align 4
  %178 = load %struct.coff_types*, %struct.coff_types** %11, align 8
  %179 = getelementptr inbounds %struct.coff_types, %struct.coff_types* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %13, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  store i32 %177, i32* %183, align 4
  br label %184

184:                                              ; preds = %176, %172, %169, %166
  %185 = load i32, i32* %16, align 4
  store i32 %185, i32* %8, align 4
  br label %186

186:                                              ; preds = %184, %36
  %187 = load i32, i32* %8, align 4
  ret i32 %187
}

declare dso_local i32 @debug_make_void_type(i8*) #1

declare dso_local i32 @debug_make_int_type(i8*, i32, i64) #1

declare dso_local i32 @debug_make_float_type(i8*, i32) #1

declare dso_local i32 @debug_make_struct_type(i8*, i64, i32, i32*) #1

declare dso_local i32 @parse_coff_struct_type(i32*, %struct.coff_symbols*, %struct.coff_types*, i32, %union.internal_auxent*, i8*) #1

declare dso_local i32* @coff_get_slot(%struct.coff_types*, i64) #1

declare dso_local i32 @debug_make_enum_type(i8*, i8**, i32*) #1

declare dso_local i32 @parse_coff_enum_type(i32*, %struct.coff_symbols*, %struct.coff_types*, %union.internal_auxent*, i8*) #1

declare dso_local i32 @debug_name_type(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
