; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_direct_declarator.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_direct_declarator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_declarator = type { i32 }
%struct.c_arg_info = type { i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@C_DTR_ABSTRACT = common dso_local global i64 0, align 8
@C_DTR_BLOCK = common dso_local global i64 0, align 8
@CPP_NAME = common dso_local global i32 0, align 4
@C_ID_TYPENAME = common dso_local global i64 0, align 8
@C_ID_CLASSNAME = common dso_local global i64 0, align 8
@C_ID_ID = common dso_local global i64 0, align 8
@C_DTR_NORMAL = common dso_local global i64 0, align 8
@CPP_OPEN_SQUARE = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@CPP_OPEN_PAREN = common dso_local global i32 0, align 4
@CPP_CLOSE_PAREN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"expected %<)%>\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"expected identifier or %<(%>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.c_declarator* (i32*, i32, i64, i32*)* @c_parser_direct_declarator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.c_declarator* @c_parser_direct_declarator(i32* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.c_declarator*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.c_declarator*, align 8
  %11 = alloca %struct.c_declarator*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.c_declarator*, align 8
  %14 = alloca %struct.c_arg_info*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @C_DTR_ABSTRACT, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %71

18:                                               ; preds = %4
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @C_DTR_BLOCK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %71

22:                                               ; preds = %18
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* @CPP_NAME, align 4
  %25 = call i64 @c_parser_next_token_is(i32* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %71

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load i32*, i32** %6, align 8
  %32 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @C_ID_TYPENAME, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %51, label %37

37:                                               ; preds = %30
  %38 = load i32*, i32** %6, align 8
  %39 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @C_ID_CLASSNAME, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %51, label %44

44:                                               ; preds = %37, %27
  %45 = load i32*, i32** %6, align 8
  %46 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %45)
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @C_ID_ID, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %71

51:                                               ; preds = %44, %37, %30
  %52 = load i32*, i32** %6, align 8
  %53 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %52)
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.c_declarator* @build_id_declarator(i32 %55)
  store %struct.c_declarator* %56, %struct.c_declarator** %10, align 8
  %57 = load i32*, i32** %9, align 8
  store i32 1, i32* %57, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %58)
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.c_declarator*, %struct.c_declarator** %10, align 8
  %63 = getelementptr inbounds %struct.c_declarator, %struct.c_declarator* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @c_parser_consume_token(i32* %64)
  %66 = load i32*, i32** %6, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.c_declarator*, %struct.c_declarator** %10, align 8
  %70 = call %struct.c_declarator* @c_parser_direct_declarator_inner(i32* %66, i32 %68, %struct.c_declarator* %69)
  store %struct.c_declarator* %70, %struct.c_declarator** %5, align 8
  br label %177

71:                                               ; preds = %44, %22, %18, %4
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* @C_DTR_NORMAL, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %71
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* @CPP_OPEN_SQUARE, align 4
  %78 = call i64 @c_parser_next_token_is(i32* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  %81 = load i32, i32* @NULL_TREE, align 4
  %82 = call %struct.c_declarator* @build_id_declarator(i32 %81)
  store %struct.c_declarator* %82, %struct.c_declarator** %11, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.c_declarator*, %struct.c_declarator** %11, align 8
  %87 = call %struct.c_declarator* @c_parser_direct_declarator_inner(i32* %83, i32 %85, %struct.c_declarator* %86)
  store %struct.c_declarator* %87, %struct.c_declarator** %5, align 8
  br label %177

88:                                               ; preds = %75, %71
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* @CPP_OPEN_PAREN, align 4
  %91 = call i64 @c_parser_next_token_is(i32* %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %167

93:                                               ; preds = %88
  %94 = load i32*, i32** %6, align 8
  %95 = call i32 @c_parser_consume_token(i32* %94)
  %96 = load i32*, i32** %6, align 8
  %97 = call i32* @c_parser_attributes(i32* %96)
  store i32* %97, i32** %12, align 8
  %98 = load i64, i64* %8, align 8
  %99 = load i64, i64* @C_DTR_NORMAL, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %131

101:                                              ; preds = %93
  %102 = load i32*, i32** %6, align 8
  %103 = call i64 @c_parser_next_token_starts_declspecs(i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %101
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %108 = call i64 @c_parser_next_token_is(i32* %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %131

110:                                              ; preds = %105, %101
  %111 = load i32*, i32** %6, align 8
  %112 = load i64, i64* %8, align 8
  %113 = load i64, i64* @C_DTR_NORMAL, align 8
  %114 = icmp eq i64 %112, %113
  %115 = zext i1 %114 to i32
  %116 = load i32*, i32** %12, align 8
  %117 = call %struct.c_arg_info* @c_parser_parms_declarator(i32* %111, i32 %115, i32* %116)
  store %struct.c_arg_info* %117, %struct.c_arg_info** %14, align 8
  %118 = load %struct.c_arg_info*, %struct.c_arg_info** %14, align 8
  %119 = icmp eq %struct.c_arg_info* %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %110
  store %struct.c_declarator* null, %struct.c_declarator** %5, align 8
  br label %177

121:                                              ; preds = %110
  %122 = load %struct.c_arg_info*, %struct.c_arg_info** %14, align 8
  %123 = load i32, i32* @NULL_TREE, align 4
  %124 = call %struct.c_declarator* @build_id_declarator(i32 %123)
  %125 = call %struct.c_declarator* @build_function_declarator(%struct.c_arg_info* %122, %struct.c_declarator* %124)
  store %struct.c_declarator* %125, %struct.c_declarator** %13, align 8
  %126 = load i32*, i32** %6, align 8
  %127 = load i32*, i32** %9, align 8
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.c_declarator*, %struct.c_declarator** %13, align 8
  %130 = call %struct.c_declarator* @c_parser_direct_declarator_inner(i32* %126, i32 %128, %struct.c_declarator* %129)
  store %struct.c_declarator* %130, %struct.c_declarator** %5, align 8
  br label %177

131:                                              ; preds = %105, %93
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* %7, align 4
  %134 = load i64, i64* %8, align 8
  %135 = load i32*, i32** %9, align 8
  %136 = call %struct.c_declarator* @c_parser_declarator(i32* %132, i32 %133, i64 %134, i32* %135)
  store %struct.c_declarator* %136, %struct.c_declarator** %13, align 8
  %137 = load %struct.c_declarator*, %struct.c_declarator** %13, align 8
  %138 = icmp ne %struct.c_declarator* %137, null
  br i1 %138, label %139, label %146

139:                                              ; preds = %131
  %140 = load i32*, i32** %12, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  %143 = load i32*, i32** %12, align 8
  %144 = load %struct.c_declarator*, %struct.c_declarator** %13, align 8
  %145 = call %struct.c_declarator* @build_attrs_declarator(i32* %143, %struct.c_declarator* %144)
  store %struct.c_declarator* %145, %struct.c_declarator** %13, align 8
  br label %146

146:                                              ; preds = %142, %139, %131
  %147 = load i32*, i32** %6, align 8
  %148 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %149 = call i64 @c_parser_next_token_is(i32* %147, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %163

151:                                              ; preds = %146
  %152 = load i32*, i32** %6, align 8
  %153 = call i32 @c_parser_consume_token(i32* %152)
  %154 = load %struct.c_declarator*, %struct.c_declarator** %13, align 8
  %155 = icmp eq %struct.c_declarator* %154, null
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  store %struct.c_declarator* null, %struct.c_declarator** %5, align 8
  br label %177

157:                                              ; preds = %151
  %158 = load i32*, i32** %6, align 8
  %159 = load i32*, i32** %9, align 8
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.c_declarator*, %struct.c_declarator** %13, align 8
  %162 = call %struct.c_declarator* @c_parser_direct_declarator_inner(i32* %158, i32 %160, %struct.c_declarator* %161)
  store %struct.c_declarator* %162, %struct.c_declarator** %5, align 8
  br label %177

163:                                              ; preds = %146
  %164 = load i32*, i32** %6, align 8
  %165 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %166 = call i32 @c_parser_skip_until_found(i32* %164, i32 %165, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.c_declarator* null, %struct.c_declarator** %5, align 8
  br label %177

167:                                              ; preds = %88
  %168 = load i64, i64* %8, align 8
  %169 = load i64, i64* @C_DTR_NORMAL, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %167
  %172 = load i32*, i32** %6, align 8
  %173 = call i32 @c_parser_error(i32* %172, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store %struct.c_declarator* null, %struct.c_declarator** %5, align 8
  br label %177

174:                                              ; preds = %167
  %175 = load i32, i32* @NULL_TREE, align 4
  %176 = call %struct.c_declarator* @build_id_declarator(i32 %175)
  store %struct.c_declarator* %176, %struct.c_declarator** %5, align 8
  br label %177

177:                                              ; preds = %174, %171, %163, %157, %156, %121, %120, %80, %51
  %178 = load %struct.c_declarator*, %struct.c_declarator** %5, align 8
  ret %struct.c_declarator* %178
}

declare dso_local i64 @c_parser_next_token_is(i32*, i32) #1

declare dso_local %struct.TYPE_2__* @c_parser_peek_token(i32*) #1

declare dso_local %struct.c_declarator* @build_id_declarator(i32) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local %struct.c_declarator* @c_parser_direct_declarator_inner(i32*, i32, %struct.c_declarator*) #1

declare dso_local i32* @c_parser_attributes(i32*) #1

declare dso_local i64 @c_parser_next_token_starts_declspecs(i32*) #1

declare dso_local %struct.c_arg_info* @c_parser_parms_declarator(i32*, i32, i32*) #1

declare dso_local %struct.c_declarator* @build_function_declarator(%struct.c_arg_info*, %struct.c_declarator*) #1

declare dso_local %struct.c_declarator* @c_parser_declarator(i32*, i32, i64, i32*) #1

declare dso_local %struct.c_declarator* @build_attrs_declarator(i32*, %struct.c_declarator*) #1

declare dso_local i32 @c_parser_skip_until_found(i32*, i32, i8*) #1

declare dso_local i32 @c_parser_error(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
