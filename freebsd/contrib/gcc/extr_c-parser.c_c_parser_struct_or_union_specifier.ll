; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_struct_or_union_specifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_struct_or_union_specifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_typespec = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i64, i32 }

@NULL_TREE = common dso_local global i32 0, align 4
@RECORD_TYPE = common dso_local global i32 0, align 4
@UNION_TYPE = common dso_local global i32 0, align 4
@CPP_NAME = common dso_local global i32 0, align 4
@CPP_OPEN_BRACE = common dso_local global i32 0, align 4
@RID_AT_DEFS = common dso_local global i32 0, align 4
@CPP_OPEN_PAREN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"expected %<(%>\00", align 1
@C_ID_CLASSNAME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"expected class name\00", align 1
@CPP_CLOSE_PAREN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"expected %<)%>\00", align 1
@CPP_SEMICOLON = common dso_local global i32 0, align 4
@pedantic = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"extra semicolon in struct or union specified\00", align 1
@CPP_CLOSE_BRACE = common dso_local global i32 0, align 4
@CPP_PRAGMA = common dso_local global i32 0, align 4
@pragma_external = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"no semicolon at end of struct or union\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"expected %<;%>\00", align 1
@ctsk_tagdef = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"expected %<{%>\00", align 1
@error_mark_node = common dso_local global i32 0, align 4
@ctsk_tagref = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @c_parser_struct_or_union_specifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @c_parser_struct_or_union_specifier(i32* %0) #0 {
  %2 = alloca %struct.c_typespec, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.c_typespec, align 4
  store i32* %0, i32** %3, align 8
  %13 = load i32, i32* @NULL_TREE, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %22 [
    i32 129, label %18
    i32 128, label %20
  ]

18:                                               ; preds = %1
  %19 = load i32, i32* @RECORD_TYPE, align 4
  store i32 %19, i32* %6, align 4
  br label %24

20:                                               ; preds = %1
  %21 = load i32, i32* @UNION_TYPE, align 4
  store i32 %21, i32* %6, align 4
  br label %24

22:                                               ; preds = %1
  %23 = call i32 (...) @gcc_unreachable()
  br label %24

24:                                               ; preds = %22, %20, %18
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @c_parser_consume_token(i32* %25)
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @c_parser_attributes(i32* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @CPP_NAME, align 4
  %31 = call i64 @c_parser_next_token_is(i32* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %24
  %34 = load i32*, i32** %3, align 8
  %35 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %5, align 4
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @c_parser_consume_token(i32* %38)
  br label %40

40:                                               ; preds = %33, %24
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* @CPP_OPEN_BRACE, align 4
  %43 = call i64 @c_parser_next_token_is(i32* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %171

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @start_struct(i32 %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* @NULL_TREE, align 4
  store i32 %49, i32* %9, align 4
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @c_parser_consume_token(i32* %50)
  %52 = load i32*, i32** %3, align 8
  %53 = load i32, i32* @RID_AT_DEFS, align 4
  %54 = call i64 @c_parser_next_token_is_keyword(i32* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %98

56:                                               ; preds = %45
  %57 = call i32 (...) @c_dialect_objc()
  %58 = call i32 @gcc_assert(i32 %57)
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @c_parser_consume_token(i32* %59)
  %61 = load i32*, i32** %3, align 8
  %62 = load i32, i32* @CPP_OPEN_PAREN, align 4
  %63 = call i32 @c_parser_require(i32* %61, i32 %62, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %56
  br label %99

66:                                               ; preds = %56
  %67 = load i32*, i32** %3, align 8
  %68 = load i32, i32* @CPP_NAME, align 4
  %69 = call i64 @c_parser_next_token_is(i32* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %66
  %72 = load i32*, i32** %3, align 8
  %73 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %72)
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @C_ID_CLASSNAME, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %71
  %79 = load i32*, i32** %3, align 8
  %80 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %79)
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %10, align 4
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 @c_parser_consume_token(i32* %83)
  br label %91

85:                                               ; preds = %71, %66
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @c_parser_error(i32* %86, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32*, i32** %3, align 8
  %89 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %90 = call i32 @c_parser_skip_until_found(i32* %88, i32 %89, i8* null)
  br label %99

91:                                               ; preds = %78
  %92 = load i32*, i32** %3, align 8
  %93 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %94 = call i32 @c_parser_skip_until_found(i32* %92, i32 %93, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @objc_get_class_ivars(i32 %95)
  %97 = call i32 @nreverse(i32 %96)
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %91, %45
  br label %99

99:                                               ; preds = %98, %85, %65
  br label %100

100:                                              ; preds = %99, %110, %126, %157
  %101 = load i32*, i32** %3, align 8
  %102 = load i32, i32* @CPP_SEMICOLON, align 4
  %103 = call i64 @c_parser_next_token_is(i32* %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %100
  %106 = load i64, i64* @pedantic, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = call i32 @pedwarn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %105
  %111 = load i32*, i32** %3, align 8
  %112 = call i32 @c_parser_consume_token(i32* %111)
  br label %100

113:                                              ; preds = %100
  %114 = load i32*, i32** %3, align 8
  %115 = load i32, i32* @CPP_CLOSE_BRACE, align 4
  %116 = call i64 @c_parser_next_token_is(i32* %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load i32*, i32** %3, align 8
  %120 = call i32 @c_parser_consume_token(i32* %119)
  br label %158

121:                                              ; preds = %113
  %122 = load i32*, i32** %3, align 8
  %123 = load i32, i32* @CPP_PRAGMA, align 4
  %124 = call i64 @c_parser_next_token_is(i32* %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load i32*, i32** %3, align 8
  %128 = load i32, i32* @pragma_external, align 4
  %129 = call i32 @c_parser_pragma(i32* %127, i32 %128)
  br label %100

130:                                              ; preds = %121
  %131 = load i32*, i32** %3, align 8
  %132 = call i32 @c_parser_struct_declaration(i32* %131)
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @chainon(i32 %133, i32 %134)
  store i32 %135, i32* %9, align 4
  %136 = load i32*, i32** %3, align 8
  %137 = load i32, i32* @CPP_SEMICOLON, align 4
  %138 = call i64 @c_parser_next_token_is(i32* %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %130
  %141 = load i32*, i32** %3, align 8
  %142 = call i32 @c_parser_consume_token(i32* %141)
  br label %157

143:                                              ; preds = %130
  %144 = load i32*, i32** %3, align 8
  %145 = load i32, i32* @CPP_CLOSE_BRACE, align 4
  %146 = call i64 @c_parser_next_token_is(i32* %144, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = call i32 @pedwarn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %156

150:                                              ; preds = %143
  %151 = load i32*, i32** %3, align 8
  %152 = call i32 @c_parser_error(i32* %151, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %153 = load i32*, i32** %3, align 8
  %154 = load i32, i32* @CPP_CLOSE_BRACE, align 4
  %155 = call i32 @c_parser_skip_until_found(i32* %153, i32 %154, i8* null)
  br label %158

156:                                              ; preds = %148
  br label %157

157:                                              ; preds = %156, %140
  br label %100

158:                                              ; preds = %150, %118
  %159 = load i32*, i32** %3, align 8
  %160 = call i32 @c_parser_attributes(i32* %159)
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* %9, align 4
  %163 = call i32 @nreverse(i32 %162)
  %164 = load i32, i32* %4, align 4
  %165 = load i32, i32* %8, align 4
  %166 = call i32 @chainon(i32 %164, i32 %165)
  %167 = call i32 @finish_struct(i32 %161, i32 %163, i32 %166)
  %168 = getelementptr inbounds %struct.c_typespec, %struct.c_typespec* %2, i32 0, i32 1
  store i32 %167, i32* %168, align 4
  %169 = load i32, i32* @ctsk_tagdef, align 4
  %170 = getelementptr inbounds %struct.c_typespec, %struct.c_typespec* %2, i32 0, i32 0
  store i32 %169, i32* %170, align 4
  br label %189

171:                                              ; preds = %40
  %172 = load i32, i32* %5, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %181, label %174

174:                                              ; preds = %171
  %175 = load i32*, i32** %3, align 8
  %176 = call i32 @c_parser_error(i32* %175, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %177 = load i32, i32* @error_mark_node, align 4
  %178 = getelementptr inbounds %struct.c_typespec, %struct.c_typespec* %2, i32 0, i32 1
  store i32 %177, i32* %178, align 4
  %179 = load i32, i32* @ctsk_tagref, align 4
  %180 = getelementptr inbounds %struct.c_typespec, %struct.c_typespec* %2, i32 0, i32 0
  store i32 %179, i32* %180, align 4
  br label %189

181:                                              ; preds = %171
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %6, align 4
  %184 = load i32, i32* %5, align 4
  %185 = call i64 @parser_xref_tag(i32 %183, i32 %184)
  %186 = bitcast %struct.c_typespec* %12 to i64*
  store i64 %185, i64* %186, align 4
  %187 = bitcast %struct.c_typespec* %2 to i8*
  %188 = bitcast %struct.c_typespec* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %187, i8* align 4 %188, i64 8, i1 false)
  br label %189

189:                                              ; preds = %182, %174, %158
  %190 = bitcast %struct.c_typespec* %2 to i64*
  %191 = load i64, i64* %190, align 4
  ret i64 %191
}

declare dso_local %struct.TYPE_2__* @c_parser_peek_token(i32*) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local i32 @c_parser_attributes(i32*) #1

declare dso_local i64 @c_parser_next_token_is(i32*, i32) #1

declare dso_local i32 @start_struct(i32, i32) #1

declare dso_local i64 @c_parser_next_token_is_keyword(i32*, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @c_dialect_objc(...) #1

declare dso_local i32 @c_parser_require(i32*, i32, i8*) #1

declare dso_local i32 @c_parser_error(i32*, i8*) #1

declare dso_local i32 @c_parser_skip_until_found(i32*, i32, i8*) #1

declare dso_local i32 @nreverse(i32) #1

declare dso_local i32 @objc_get_class_ivars(i32) #1

declare dso_local i32 @pedwarn(i8*) #1

declare dso_local i32 @c_parser_pragma(i32*, i32) #1

declare dso_local i32 @c_parser_struct_declaration(i32*) #1

declare dso_local i32 @chainon(i32, i32) #1

declare dso_local i32 @finish_struct(i32, i32, i32) #1

declare dso_local i64 @parser_xref_tag(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
