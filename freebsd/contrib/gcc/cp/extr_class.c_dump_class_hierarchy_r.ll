; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_dump_class_hierarchy_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_dump_class_hierarchy_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"%s (0x%lx) \00", align 1
@TFF_PLAIN_IDENTIFIER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"alternative-path\0A\00", align 1
@HOST_WIDE_INT_PRINT_DEC = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c" empty\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c" nearly-empty\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" virtual\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c" primary-for %s (0x%lx)\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c" lost-primary\00", align 1
@TDF_SLIM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c" subvttidx=%s\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c" vptridx=%s\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c" vbaseoffset=%s\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c" vptr=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i64, i64, i32)* @dump_class_hierarchy_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dump_class_hierarchy_r(i32* %0, i32 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %11, align 4
  %18 = call i32 @maybe_indent_hierarchy(i32* %16, i32 %17, i32 0)
  store i32 %18, i32* %12, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @BINFO_TYPE(i64 %20)
  %22 = load i32, i32* @TFF_PLAIN_IDENTIFIER, align 4
  %23 = call i8* @type_as_string(i32 %21, i32 %22)
  %24 = load i64, i64* %9, align 8
  %25 = call i32 (i32*, i8*, ...) @fprintf(i32* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %23, i64 %24)
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %5
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 (i32*, i8*, ...) @fprintf(i32* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i64, i64* %10, align 8
  store i64 %32, i64* %6, align 8
  br label %200

33:                                               ; preds = %5
  %34 = load i64, i64* %9, align 8
  %35 = call i64 @TREE_CHAIN(i64 %34)
  store i64 %35, i64* %10, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i8*, i8** @HOST_WIDE_INT_PRINT_DEC, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @BINFO_OFFSET(i64 %38)
  %40 = call i32 @tree_low_cst(i32 %39, i32 0)
  %41 = call i32 (i32*, i8*, ...) @fprintf(i32* %36, i8* %37, i32 %40)
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @BINFO_TYPE(i64 %42)
  %44 = call i64 @is_empty_class(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 (i32*, i8*, ...) @fprintf(i32* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %58

49:                                               ; preds = %33
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @BINFO_TYPE(i64 %50)
  %52 = call i64 @CLASSTYPE_NEARLY_EMPTY_P(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 (i32*, i8*, ...) @fprintf(i32* %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %49
  br label %58

58:                                               ; preds = %57, %46
  %59 = load i64, i64* %9, align 8
  %60 = call i64 @BINFO_VIRTUAL_P(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 (i32*, i8*, ...) @fprintf(i32* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %58
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 (i32*, i8*, ...) @fprintf(i32* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  %68 = load i64, i64* %9, align 8
  %69 = call i64 @BINFO_PRIMARY_P(i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %65
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 3
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @maybe_indent_hierarchy(i32* %72, i32 %74, i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = load i64, i64* %9, align 8
  %79 = call i64 @BINFO_INHERITANCE_CHAIN(i64 %78)
  %80 = call i32 @BINFO_TYPE(i64 %79)
  %81 = load i32, i32* @TFF_PLAIN_IDENTIFIER, align 4
  %82 = call i8* @type_as_string(i32 %80, i32 %81)
  %83 = load i64, i64* %9, align 8
  %84 = call i64 @BINFO_INHERITANCE_CHAIN(i64 %83)
  %85 = call i32 (i32*, i8*, ...) @fprintf(i32* %77, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %82, i64 %84)
  br label %86

86:                                               ; preds = %71, %65
  %87 = load i64, i64* %9, align 8
  %88 = call i64 @BINFO_LOST_PRIMARY_P(i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 3
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @maybe_indent_hierarchy(i32* %91, i32 %93, i32 %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32*, i32** %7, align 8
  %97 = call i32 (i32*, i8*, ...) @fprintf(i32* %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %98

98:                                               ; preds = %90, %86
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32*, i32** %7, align 8
  %103 = call i32 (i32*, i8*, ...) @fprintf(i32* %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %98
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @TDF_SLIM, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %180, label %109

109:                                              ; preds = %104
  store i32 0, i32* %15, align 4
  %110 = load i64, i64* %9, align 8
  %111 = call i64 @BINFO_SUBVTT_INDEX(i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %109
  %114 = load i32*, i32** %7, align 8
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 3
  %117 = load i32, i32* %15, align 4
  %118 = call i32 @maybe_indent_hierarchy(i32* %114, i32 %116, i32 %117)
  store i32 %118, i32* %15, align 4
  %119 = load i32*, i32** %7, align 8
  %120 = load i64, i64* %9, align 8
  %121 = call i64 @BINFO_SUBVTT_INDEX(i64 %120)
  %122 = load i32, i32* @TFF_PLAIN_IDENTIFIER, align 4
  %123 = call i8* @expr_as_string(i64 %121, i32 %122)
  %124 = call i32 (i32*, i8*, ...) @fprintf(i32* %119, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %123)
  br label %125

125:                                              ; preds = %113, %109
  %126 = load i64, i64* %9, align 8
  %127 = call i64 @BINFO_VPTR_INDEX(i64 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %125
  %130 = load i32*, i32** %7, align 8
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, 3
  %133 = load i32, i32* %15, align 4
  %134 = call i32 @maybe_indent_hierarchy(i32* %130, i32 %132, i32 %133)
  store i32 %134, i32* %15, align 4
  %135 = load i32*, i32** %7, align 8
  %136 = load i64, i64* %9, align 8
  %137 = call i64 @BINFO_VPTR_INDEX(i64 %136)
  %138 = load i32, i32* @TFF_PLAIN_IDENTIFIER, align 4
  %139 = call i8* @expr_as_string(i64 %137, i32 %138)
  %140 = call i32 (i32*, i8*, ...) @fprintf(i32* %135, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* %139)
  br label %141

141:                                              ; preds = %129, %125
  %142 = load i64, i64* %9, align 8
  %143 = call i64 @BINFO_VPTR_FIELD(i64 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %157

145:                                              ; preds = %141
  %146 = load i32*, i32** %7, align 8
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %147, 3
  %149 = load i32, i32* %15, align 4
  %150 = call i32 @maybe_indent_hierarchy(i32* %146, i32 %148, i32 %149)
  store i32 %150, i32* %15, align 4
  %151 = load i32*, i32** %7, align 8
  %152 = load i64, i64* %9, align 8
  %153 = call i64 @BINFO_VPTR_FIELD(i64 %152)
  %154 = load i32, i32* @TFF_PLAIN_IDENTIFIER, align 4
  %155 = call i8* @expr_as_string(i64 %153, i32 %154)
  %156 = call i32 (i32*, i8*, ...) @fprintf(i32* %151, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* %155)
  br label %157

157:                                              ; preds = %145, %141
  %158 = load i64, i64* %9, align 8
  %159 = call i64 @BINFO_VTABLE(i64 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %173

161:                                              ; preds = %157
  %162 = load i32*, i32** %7, align 8
  %163 = load i32, i32* %11, align 4
  %164 = add nsw i32 %163, 3
  %165 = load i32, i32* %15, align 4
  %166 = call i32 @maybe_indent_hierarchy(i32* %162, i32 %164, i32 %165)
  store i32 %166, i32* %15, align 4
  %167 = load i32*, i32** %7, align 8
  %168 = load i64, i64* %9, align 8
  %169 = call i64 @BINFO_VTABLE(i64 %168)
  %170 = load i32, i32* @TFF_PLAIN_IDENTIFIER, align 4
  %171 = call i8* @expr_as_string(i64 %169, i32 %170)
  %172 = call i32 (i32*, i8*, ...) @fprintf(i32* %167, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* %171)
  br label %173

173:                                              ; preds = %161, %157
  %174 = load i32, i32* %15, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i32*, i32** %7, align 8
  %178 = call i32 (i32*, i8*, ...) @fprintf(i32* %177, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %179

179:                                              ; preds = %176, %173
  br label %180

180:                                              ; preds = %179, %104
  store i32 0, i32* %14, align 4
  br label %181

181:                                              ; preds = %195, %180
  %182 = load i64, i64* %9, align 8
  %183 = load i32, i32* %14, align 4
  %184 = load i64, i64* %13, align 8
  %185 = call i64 @BINFO_BASE_ITERATE(i64 %182, i32 %183, i64 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %198

187:                                              ; preds = %181
  %188 = load i32*, i32** %7, align 8
  %189 = load i32, i32* %8, align 4
  %190 = load i64, i64* %13, align 8
  %191 = load i64, i64* %10, align 8
  %192 = load i32, i32* %11, align 4
  %193 = add nsw i32 %192, 2
  %194 = call i64 @dump_class_hierarchy_r(i32* %188, i32 %189, i64 %190, i64 %191, i32 %193)
  store i64 %194, i64* %10, align 8
  br label %195

195:                                              ; preds = %187
  %196 = load i32, i32* %14, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %14, align 4
  br label %181

198:                                              ; preds = %181
  %199 = load i64, i64* %10, align 8
  store i64 %199, i64* %6, align 8
  br label %200

200:                                              ; preds = %198, %29
  %201 = load i64, i64* %6, align 8
  ret i64 %201
}

declare dso_local i32 @maybe_indent_hierarchy(i32*, i32, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @type_as_string(i32, i32) #1

declare dso_local i32 @BINFO_TYPE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @tree_low_cst(i32, i32) #1

declare dso_local i32 @BINFO_OFFSET(i64) #1

declare dso_local i64 @is_empty_class(i32) #1

declare dso_local i64 @CLASSTYPE_NEARLY_EMPTY_P(i32) #1

declare dso_local i64 @BINFO_VIRTUAL_P(i64) #1

declare dso_local i64 @BINFO_PRIMARY_P(i64) #1

declare dso_local i64 @BINFO_INHERITANCE_CHAIN(i64) #1

declare dso_local i64 @BINFO_LOST_PRIMARY_P(i64) #1

declare dso_local i64 @BINFO_SUBVTT_INDEX(i64) #1

declare dso_local i8* @expr_as_string(i64, i32) #1

declare dso_local i64 @BINFO_VPTR_INDEX(i64) #1

declare dso_local i64 @BINFO_VPTR_FIELD(i64) #1

declare dso_local i64 @BINFO_VTABLE(i64) #1

declare dso_local i64 @BINFO_BASE_ITERATE(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
