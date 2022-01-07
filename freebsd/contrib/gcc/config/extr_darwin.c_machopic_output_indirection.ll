; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_darwin.c_machopic_output_indirection.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_darwin.c_machopic_output_indirection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@user_label_prefix = common dso_local global i8* null, align 8
@data_section = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@darwin_sections = common dso_local global i32* null, align 8
@machopic_nl_symbol_ptr_section = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"\09.indirect_symbol \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MACHO_SYMBOL_STATIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*)* @machopic_output_indirection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @machopic_output_indirection(i8** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = load i8**, i8*** %4, align 8
  %17 = bitcast i8** %16 to %struct.TYPE_2__**
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  store %struct.TYPE_2__* %18, %struct.TYPE_2__** %6, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %7, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %204

26:                                               ; preds = %2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i8* @XSTR(i32 %30, i32 0)
  store i8* %31, i8** %9, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %10, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %135

39:                                               ; preds = %26
  %40 = load i8*, i8** %9, align 8
  %41 = call i64 @maybe_get_identifier(i8* %40)
  store i64 %41, i64* %13, align 8
  %42 = load i64, i64* %13, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %39
  %45 = load i64, i64* %13, align 8
  store i64 %45, i64* %14, align 8
  br label %46

46:                                               ; preds = %50, %44
  %47 = load i64, i64* %13, align 8
  %48 = call i64 @IDENTIFIER_TRANSPARENT_ALIAS(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i64, i64* %13, align 8
  %52 = call i64 @TREE_CHAIN(i64 %51)
  store i64 %52, i64* %13, align 8
  br label %46

53:                                               ; preds = %46
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* %14, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i64, i64* %13, align 8
  %59 = call i8* @IDENTIFIER_POINTER(i64 %58)
  store i8* %59, i8** %9, align 8
  br label %60

60:                                               ; preds = %57, %53
  br label %61

61:                                               ; preds = %60, %39
  %62 = load i8*, i8** %9, align 8
  %63 = call i64 @strlen(i8* %62)
  %64 = add nsw i64 %63, 2
  %65 = call i8* @alloca(i64 %64)
  store i8* %65, i8** %11, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 42
  br i1 %70, label %77, label %71

71:                                               ; preds = %61
  %72 = load i8*, i8** %9, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 38
  br i1 %76, label %77, label %82

77:                                               ; preds = %71, %61
  %78 = load i8*, i8** %11, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = call i32 @strcpy(i8* %78, i8* %80)
  br label %104

82:                                               ; preds = %71
  %83 = load i8*, i8** %9, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 45
  br i1 %87, label %94, label %88

88:                                               ; preds = %82
  %89 = load i8*, i8** %9, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 43
  br i1 %93, label %94, label %98

94:                                               ; preds = %88, %82
  %95 = load i8*, i8** %11, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = call i32 @strcpy(i8* %95, i8* %96)
  br label %103

98:                                               ; preds = %88
  %99 = load i8*, i8** %11, align 8
  %100 = load i8*, i8** @user_label_prefix, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = call i32 @sprintf(i8* %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %100, i8* %101)
  br label %103

103:                                              ; preds = %98, %94
  br label %104

104:                                              ; preds = %103, %77
  %105 = load i8*, i8** %10, align 8
  %106 = call i64 @strlen(i8* %105)
  %107 = add nsw i64 %106, 2
  %108 = call i8* @alloca(i64 %107)
  store i8* %108, i8** %12, align 8
  %109 = load i8*, i8** %10, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 0
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 42
  br i1 %113, label %120, label %114

114:                                              ; preds = %104
  %115 = load i8*, i8** %10, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 0
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 38
  br i1 %119, label %120, label %125

120:                                              ; preds = %114, %104
  %121 = load i8*, i8** %12, align 8
  %122 = load i8*, i8** %10, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 1
  %124 = call i32 @strcpy(i8* %121, i8* %123)
  br label %130

125:                                              ; preds = %114
  %126 = load i8*, i8** %12, align 8
  %127 = load i8*, i8** @user_label_prefix, align 8
  %128 = load i8*, i8** %10, align 8
  %129 = call i32 @sprintf(i8* %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %127, i8* %128)
  br label %130

130:                                              ; preds = %125, %120
  %131 = load i32*, i32** %7, align 8
  %132 = load i8*, i8** %11, align 8
  %133 = load i8*, i8** %12, align 8
  %134 = call i32 @machopic_output_stub(i32* %131, i8* %132, i8* %133)
  br label %203

135:                                              ; preds = %26
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @indirect_data(i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %163, label %139

139:                                              ; preds = %135
  %140 = load i32, i32* %8, align 4
  %141 = call i64 @machopic_symbol_defined_p(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %139
  %144 = load i32, i32* %8, align 4
  %145 = call i64 @SYMBOL_REF_LOCAL_P(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %163

147:                                              ; preds = %143, %139
  %148 = load i32, i32* @data_section, align 4
  %149 = call i32 @switch_to_section(i32 %148)
  %150 = load i32, i32* @Pmode, align 4
  %151 = call i32 @GET_MODE_ALIGNMENT(i32 %150)
  %152 = call i32 @assemble_align(i32 %151)
  %153 = load i8*, i8** %10, align 8
  %154 = call i32 @assemble_label(i8* %153)
  %155 = load i32, i32* @Pmode, align 4
  %156 = load i8*, i8** %9, align 8
  %157 = call i32 @gen_rtx_SYMBOL_REF(i32 %155, i8* %156)
  %158 = load i32, i32* @Pmode, align 4
  %159 = call i32 @GET_MODE_SIZE(i32 %158)
  %160 = load i32, i32* @Pmode, align 4
  %161 = call i32 @GET_MODE_ALIGNMENT(i32 %160)
  %162 = call i32 @assemble_integer(i32 %157, i32 %159, i32 %161, i32 1)
  br label %202

163:                                              ; preds = %143, %135
  %164 = load i32, i32* @const0_rtx, align 4
  store i32 %164, i32* %15, align 4
  %165 = load i32*, i32** @darwin_sections, align 8
  %166 = load i64, i64* @machopic_nl_symbol_ptr_section, align 8
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @switch_to_section(i32 %168)
  %170 = load i32*, i32** %7, align 8
  %171 = load i8*, i8** %10, align 8
  %172 = call i32 @assemble_name(i32* %170, i8* %171)
  %173 = load i32*, i32** %7, align 8
  %174 = call i32 @fprintf(i32* %173, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %175 = load i32*, i32** %7, align 8
  %176 = call i32 @fprintf(i32* %175, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %177 = load i32*, i32** %7, align 8
  %178 = load i8*, i8** %9, align 8
  %179 = call i32 @assemble_name(i32* %177, i8* %178)
  %180 = load i32*, i32** %7, align 8
  %181 = call i32 @fprintf(i32* %180, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %182 = load i32, i32* %8, align 4
  %183 = call i32 @SYMBOL_REF_FLAGS(i32 %182)
  %184 = load i32, i32* @MACHO_SYMBOL_STATIC, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %163
  %188 = load i32, i32* %8, align 4
  %189 = call i64 @machopic_symbol_defined_p(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %187
  %192 = load i32, i32* @Pmode, align 4
  %193 = load i8*, i8** %9, align 8
  %194 = call i32 @gen_rtx_SYMBOL_REF(i32 %192, i8* %193)
  store i32 %194, i32* %15, align 4
  br label %195

195:                                              ; preds = %191, %187, %163
  %196 = load i32, i32* %15, align 4
  %197 = load i32, i32* @Pmode, align 4
  %198 = call i32 @GET_MODE_SIZE(i32 %197)
  %199 = load i32, i32* @Pmode, align 4
  %200 = call i32 @GET_MODE_ALIGNMENT(i32 %199)
  %201 = call i32 @assemble_integer(i32 %196, i32 %198, i32 %200, i32 1)
  br label %202

202:                                              ; preds = %195, %147
  br label %203

203:                                              ; preds = %202, %130
  store i32 1, i32* %3, align 4
  br label %204

204:                                              ; preds = %203, %25
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local i8* @XSTR(i32, i32) #1

declare dso_local i64 @maybe_get_identifier(i8*) #1

declare dso_local i64 @IDENTIFIER_TRANSPARENT_ALIAS(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i8* @IDENTIFIER_POINTER(i64) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @machopic_output_stub(i32*, i8*, i8*) #1

declare dso_local i32 @indirect_data(i32) #1

declare dso_local i64 @machopic_symbol_defined_p(i32) #1

declare dso_local i64 @SYMBOL_REF_LOCAL_P(i32) #1

declare dso_local i32 @switch_to_section(i32) #1

declare dso_local i32 @assemble_align(i32) #1

declare dso_local i32 @GET_MODE_ALIGNMENT(i32) #1

declare dso_local i32 @assemble_label(i8*) #1

declare dso_local i32 @assemble_integer(i32, i32, i32, i32) #1

declare dso_local i32 @gen_rtx_SYMBOL_REF(i32, i8*) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @assemble_name(i32*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @SYMBOL_REF_FLAGS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
