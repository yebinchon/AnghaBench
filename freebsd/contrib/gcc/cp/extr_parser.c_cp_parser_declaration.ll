; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_declaration.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_declaration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64, i64 }

@pedantic = common dso_local global i32 0, align 4
@CPP_EOF = common dso_local global i64 0, align 8
@RID_MAX = common dso_local global i64 0, align 8
@declarator_obstack = common dso_local global i32 0, align 4
@RID_EXTERN = common dso_local global i64 0, align 8
@RID_TEMPLATE = common dso_local global i64 0, align 8
@CPP_LESS = common dso_local global i64 0, align 8
@CPP_GREATER = common dso_local global i64 0, align 8
@RID_EXPORT = common dso_local global i64 0, align 8
@RID_STATIC = common dso_local global i64 0, align 8
@RID_INLINE = common dso_local global i64 0, align 8
@RID_NAMESPACE = common dso_local global i64 0, align 8
@CPP_NAME = common dso_local global i64 0, align 8
@CPP_EQ = common dso_local global i64 0, align 8
@CPP_OPEN_BRACE = common dso_local global i64 0, align 8
@RID_ATTRIBUTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*)* @cp_parser_declaration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_parser_declaration(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_16__, align 8
  %4 = alloca %struct.TYPE_16__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %8 = call i64 @cp_parser_extension_opt(%struct.TYPE_17__* %7, i32* %5)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  call void @cp_parser_declaration(%struct.TYPE_17__* %11)
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* @pedantic, align 4
  br label %172

13:                                               ; preds = %1
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_16__* @cp_lexer_peek_token(i32 %16)
  %18 = bitcast %struct.TYPE_16__* %3 to i8*
  %19 = bitcast %struct.TYPE_16__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 16, i1 false)
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CPP_EOF, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %13
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_16__* @cp_lexer_peek_nth_token(i32 %27, i32 2)
  %29 = bitcast %struct.TYPE_16__* %4 to i8*
  %30 = bitcast %struct.TYPE_16__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 16, i1 false)
  br label %36

31:                                               ; preds = %13
  %32 = load i64, i64* @CPP_EOF, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 0
  store i64 %32, i64* %33, align 8
  %34 = load i64, i64* @RID_MAX, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 1
  store i64 %34, i64* %35, align 8
  br label %36

36:                                               ; preds = %31, %24
  %37 = call i8* @obstack_alloc(i32* @declarator_obstack, i32 0)
  store i8* %37, i8** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @RID_EXTERN, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = call i64 @cp_parser_is_string_literal(%struct.TYPE_16__* %4)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %47 = call i32 @cp_parser_linkage_specification(%struct.TYPE_17__* %46)
  br label %169

48:                                               ; preds = %42, %36
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @RID_TEMPLATE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %83

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @CPP_LESS, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %53
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.TYPE_16__* @cp_lexer_peek_nth_token(i32 %61, i32 3)
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @CPP_GREATER, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %69 = call i32 @cp_parser_explicit_specialization(%struct.TYPE_17__* %68)
  br label %82

70:                                               ; preds = %58, %53
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @CPP_LESS, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %77 = call i32 @cp_parser_template_declaration(%struct.TYPE_17__* %76, i32 0)
  br label %81

78:                                               ; preds = %70
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %80 = call i32 @cp_parser_explicit_instantiation(%struct.TYPE_17__* %79)
  br label %81

81:                                               ; preds = %78, %75
  br label %82

82:                                               ; preds = %81, %67
  br label %168

83:                                               ; preds = %48
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @RID_EXPORT, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %90 = call i32 @cp_parser_template_declaration(%struct.TYPE_17__* %89, i32 0)
  br label %167

91:                                               ; preds = %83
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %93 = call i64 @cp_parser_allow_gnu_extensions_p(%struct.TYPE_17__* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %118

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @RID_EXTERN, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %110, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @RID_STATIC, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %110, label %105

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @RID_INLINE, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %105, %100, %95
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @RID_TEMPLATE, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %117 = call i32 @cp_parser_explicit_instantiation(%struct.TYPE_17__* %116)
  br label %166

118:                                              ; preds = %110, %105, %91
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @RID_NAMESPACE, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %150

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @CPP_NAME, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %137

128:                                              ; preds = %123
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call %struct.TYPE_16__* @cp_lexer_peek_nth_token(i32 %131, i32 3)
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @CPP_EQ, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %147, label %137

137:                                              ; preds = %128, %123
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @CPP_OPEN_BRACE, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %147, label %142

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @RID_ATTRIBUTE, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %142, %137, %128
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %149 = call i32 @cp_parser_namespace_definition(%struct.TYPE_17__* %148)
  br label %165

150:                                              ; preds = %142, %118
  %151 = call i64 (...) @c_dialect_objc()
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = call i64 @OBJC_IS_AT_KEYWORD(i64 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %160 = call i32 @cp_parser_objc_declaration(%struct.TYPE_17__* %159)
  br label %164

161:                                              ; preds = %153, %150
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %163 = call i32 @cp_parser_block_declaration(%struct.TYPE_17__* %162, i32 0)
  br label %164

164:                                              ; preds = %161, %158
  br label %165

165:                                              ; preds = %164, %147
  br label %166

166:                                              ; preds = %165, %115
  br label %167

167:                                              ; preds = %166, %88
  br label %168

168:                                              ; preds = %167, %82
  br label %169

169:                                              ; preds = %168, %45
  %170 = load i8*, i8** %6, align 8
  %171 = call i32 @obstack_free(i32* @declarator_obstack, i8* %170)
  br label %172

172:                                              ; preds = %169, %10
  ret void
}

declare dso_local i64 @cp_parser_extension_opt(%struct.TYPE_17__*, i32*) #1

declare dso_local %struct.TYPE_16__* @cp_lexer_peek_token(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_16__* @cp_lexer_peek_nth_token(i32, i32) #1

declare dso_local i8* @obstack_alloc(i32*, i32) #1

declare dso_local i64 @cp_parser_is_string_literal(%struct.TYPE_16__*) #1

declare dso_local i32 @cp_parser_linkage_specification(%struct.TYPE_17__*) #1

declare dso_local i32 @cp_parser_explicit_specialization(%struct.TYPE_17__*) #1

declare dso_local i32 @cp_parser_template_declaration(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @cp_parser_explicit_instantiation(%struct.TYPE_17__*) #1

declare dso_local i64 @cp_parser_allow_gnu_extensions_p(%struct.TYPE_17__*) #1

declare dso_local i32 @cp_parser_namespace_definition(%struct.TYPE_17__*) #1

declare dso_local i64 @c_dialect_objc(...) #1

declare dso_local i64 @OBJC_IS_AT_KEYWORD(i64) #1

declare dso_local i32 @cp_parser_objc_declaration(%struct.TYPE_17__*) #1

declare dso_local i32 @cp_parser_block_declaration(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @obstack_free(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
