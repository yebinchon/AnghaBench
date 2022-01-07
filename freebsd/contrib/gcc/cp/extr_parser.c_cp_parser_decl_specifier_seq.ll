; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_decl_specifier_seq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_decl_specifier_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_20__ = type { i64*, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32 }

@RID_ATTRIBUTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%<friend%> used outside of class\00", align 1
@ds_friend = common dso_local global i64 0, align 8
@ds_typedef = common dso_local global i64 0, align 8
@sc_none = common dso_local global i32 0, align 4
@ds_thread = common dso_local global i64 0, align 8
@CP_PARSER_FLAGS_NO_USER_DEFINED_TYPES = common dso_local global i32 0, align 4
@CP_PARSER_FLAGS_OPTIONAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"class definition may not be declared a friend\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, i32, %struct.TYPE_20__*, i32*)* @cp_parser_decl_specifier_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_parser_decl_specifier_seq(%struct.TYPE_19__* %0, i32 %1, %struct.TYPE_20__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %23 = call i32 @clear_decl_specs(%struct.TYPE_20__* %22)
  %24 = load i32*, i32** %8, align 8
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %4, %35, %182
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.TYPE_18__* @cp_lexer_peek_token(i32 %28)
  store %struct.TYPE_18__* %29, %struct.TYPE_18__** %12, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @RID_ATTRIBUTE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %25
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %40 = call i32 @cp_parser_attributes_opt(%struct.TYPE_19__* %39)
  %41 = call i32 @chainon(i32 %38, i32 %40)
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  br label %25

44:                                               ; preds = %25
  store i32 1, i32* %11, align 4
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %126 [
    i32 135, label %48
    i32 134, label %72
    i32 128, label %72
    i32 137, label %72
    i32 129, label %76
    i32 138, label %101
    i32 132, label %101
    i32 131, label %101
    i32 136, label %101
    i32 133, label %101
    i32 130, label %112
  ]

48:                                               ; preds = %44
  %49 = call i32 (...) @at_class_scope_p()
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = call i32 @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @cp_lexer_purge_token(i32 %55)
  br label %71

57:                                               ; preds = %48
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* @ds_friend, align 8
  %62 = trunc i64 %61 to i32
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %60, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %64, align 8
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @cp_lexer_consume_token(i32 %69)
  br label %71

71:                                               ; preds = %57, %51
  br label %127

72:                                               ; preds = %44, %44, %44
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %75 = call i32 @cp_parser_function_specifier_opt(%struct.TYPE_19__* %73, %struct.TYPE_20__* %74)
  br label %127

76:                                               ; preds = %44
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = load i64, i64* @ds_typedef, align 8
  %81 = trunc i64 %80 to i32
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %79, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %83, align 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @cp_lexer_consume_token(i32 %88)
  store i32 0, i32* %9, align 4
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %91 = call i32 @cp_parser_commit_to_tentative_parse(%struct.TYPE_19__* %90)
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @sc_none, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %76
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 1
  store i32 1, i32* %99, align 8
  br label %100

100:                                              ; preds = %97, %76
  br label %127

101:                                              ; preds = %44, %44, %44, %44, %44
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @cp_lexer_consume_token(i32 %104)
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @cp_parser_set_storage_class(%struct.TYPE_19__* %106, %struct.TYPE_20__* %107, i32 %110)
  br label %127

112:                                              ; preds = %44
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @cp_lexer_consume_token(i32 %115)
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 0
  %119 = load i64*, i64** %118, align 8
  %120 = load i64, i64* @ds_thread, align 8
  %121 = trunc i64 %120 to i32
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %119, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %123, align 8
  br label %127

126:                                              ; preds = %44
  store i32 0, i32* %11, align 4
  br label %127

127:                                              ; preds = %126, %112, %101, %100, %72, %71
  %128 = load i32, i32* %11, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %147, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %147

133:                                              ; preds = %130
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 0
  %137 = load i64*, i64** %136, align 8
  %138 = load i64, i64* @ds_friend, align 8
  %139 = trunc i64 %138 to i32
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %137, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  %144 = zext i1 %143 to i32
  %145 = call i64 @cp_parser_constructor_declarator_p(%struct.TYPE_19__* %134, i32 %144)
  %146 = icmp ne i64 %145, 0
  br label %147

147:                                              ; preds = %133, %130, %127
  %148 = phi i1 [ false, %130 ], [ false, %127 ], [ %146, %133 ]
  %149 = zext i1 %148 to i32
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %11, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %178, label %152

152:                                              ; preds = %147
  %153 = load i32, i32* %10, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %178, label %155

155:                                              ; preds = %152
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %157 = load i32, i32* %6, align 4
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %159 = call i64 @cp_parser_type_specifier(%struct.TYPE_19__* %156, i32 %157, %struct.TYPE_20__* %158, i32 1, i32* %13, i32* %14)
  store i64 %159, i64* %15, align 8
  %160 = load i32, i32* %13, align 4
  %161 = load i32*, i32** %8, align 8
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %162, %160
  store i32 %163, i32* %161, align 4
  %164 = load i64, i64* %15, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %155
  %167 = load i32, i32* %14, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %166
  %170 = load i32, i32* @CP_PARSER_FLAGS_NO_USER_DEFINED_TYPES, align 4
  %171 = load i32, i32* %6, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %6, align 4
  br label %173

173:                                              ; preds = %169, %166, %155
  %174 = load i64, i64* %15, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  store i32 0, i32* %9, align 4
  store i32 1, i32* %11, align 4
  br label %177

177:                                              ; preds = %176, %173
  br label %178

178:                                              ; preds = %177, %152, %147
  %179 = load i32, i32* %11, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %178
  br label %188

182:                                              ; preds = %178
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 2
  store i32 1, i32* %184, align 4
  %185 = load i32, i32* @CP_PARSER_FLAGS_OPTIONAL, align 4
  %186 = load i32, i32* %6, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %6, align 4
  br label %25

188:                                              ; preds = %181
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %190 = call i32 @cp_parser_check_decl_spec(%struct.TYPE_20__* %189)
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 0
  %193 = load i64*, i64** %192, align 8
  %194 = load i64, i64* @ds_friend, align 8
  %195 = trunc i64 %194 to i32
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i64, i64* %193, i64 %196
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %188
  %201 = load i32*, i32** %8, align 8
  %202 = load i32, i32* %201, align 4
  %203 = and i32 %202, 2
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %200
  %206 = call i32 @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %207

207:                                              ; preds = %205, %200, %188
  ret void
}

declare dso_local i32 @clear_decl_specs(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_18__* @cp_lexer_peek_token(i32) #1

declare dso_local i32 @chainon(i32, i32) #1

declare dso_local i32 @cp_parser_attributes_opt(%struct.TYPE_19__*) #1

declare dso_local i32 @at_class_scope_p(...) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @cp_lexer_purge_token(i32) #1

declare dso_local i32 @cp_lexer_consume_token(i32) #1

declare dso_local i32 @cp_parser_function_specifier_opt(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local i32 @cp_parser_commit_to_tentative_parse(%struct.TYPE_19__*) #1

declare dso_local i32 @cp_parser_set_storage_class(%struct.TYPE_19__*, %struct.TYPE_20__*, i32) #1

declare dso_local i64 @cp_parser_constructor_declarator_p(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @cp_parser_type_specifier(%struct.TYPE_19__*, i32, %struct.TYPE_20__*, i32, i32*, i32*) #1

declare dso_local i32 @cp_parser_check_decl_spec(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
