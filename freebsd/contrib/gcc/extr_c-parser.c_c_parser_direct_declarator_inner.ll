; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_direct_declarator_inner.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_direct_declarator_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_declarator = type { i32 }
%struct.c_declspecs = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.c_arg_info = type { i32 }
%struct.TYPE_3__ = type { i64 }

@CPP_OPEN_SQUARE = common dso_local global i64 0, align 8
@RID_STATIC = common dso_local global i32 0, align 4
@CPP_CLOSE_SQUARE = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@CPP_MULT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"expected %<]%>\00", align 1
@CPP_OPEN_PAREN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.c_declarator* (i32*, i32, %struct.c_declarator*)* @c_parser_direct_declarator_inner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.c_declarator* @c_parser_direct_declarator_inner(i32* %0, i32 %1, %struct.c_declarator* %2) #0 {
  %4 = alloca %struct.c_declarator*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.c_declarator*, align 8
  %8 = alloca %struct.c_declarator*, align 8
  %9 = alloca %struct.c_declspecs*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__, align 4
  %14 = alloca %struct.TYPE_4__, align 4
  %15 = alloca %struct.TYPE_4__, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.c_arg_info*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.c_declarator* %2, %struct.c_declarator** %7, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i64, i64* @CPP_OPEN_SQUARE, align 8
  %20 = call i64 @c_parser_next_token_is(i32* %18, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %135

22:                                               ; preds = %3
  %23 = call %struct.c_declspecs* (...) @build_null_declspecs()
  store %struct.c_declspecs* %23, %struct.c_declspecs** %9, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @c_parser_consume_token(i32* %24)
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.c_declspecs*, %struct.c_declspecs** %9, align 8
  %28 = call i32 @c_parser_declspecs(i32* %26, %struct.c_declspecs* %27, i32 0, i32 0, i32 1)
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* @RID_STATIC, align 4
  %31 = call i32 @c_parser_next_token_is_keyword(i32* %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @c_parser_consume_token(i32* %35)
  br label %37

37:                                               ; preds = %34, %22
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load %struct.c_declspecs*, %struct.c_declspecs** %9, align 8
  %42 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.c_declspecs*, %struct.c_declspecs** %9, align 8
  %48 = call i32 @c_parser_declspecs(i32* %46, %struct.c_declspecs* %47, i32 0, i32 0, i32 1)
  br label %49

49:                                               ; preds = %45, %40, %37
  %50 = load %struct.c_declspecs*, %struct.c_declspecs** %9, align 8
  %51 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  store %struct.c_declspecs* null, %struct.c_declspecs** %9, align 8
  br label %55

55:                                               ; preds = %54, %49
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  store i32 0, i32* %11, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @c_parser_expr_no_commas(i32* %59, i32* null)
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %12, align 4
  br label %102

64:                                               ; preds = %55
  %65 = load i32*, i32** %5, align 8
  %66 = load i64, i64* @CPP_CLOSE_SQUARE, align 8
  %67 = call i64 @c_parser_next_token_is(i32* %65, i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* @NULL_TREE, align 4
  store i32 %70, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %101

71:                                               ; preds = %64
  %72 = load i32*, i32** %5, align 8
  %73 = load i64, i64* @CPP_MULT, align 8
  %74 = call i64 @c_parser_next_token_is(i32* %72, i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %71
  %77 = load i32*, i32** %5, align 8
  %78 = call %struct.TYPE_3__* @c_parser_peek_2nd_token(i32* %77)
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @CPP_CLOSE_SQUARE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = load i32, i32* @NULL_TREE, align 4
  store i32 %84, i32* %12, align 4
  store i32 1, i32* %11, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @c_parser_consume_token(i32* %85)
  br label %93

87:                                               ; preds = %76
  store i32 0, i32* %11, align 4
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @c_parser_expr_no_commas(i32* %88, i32* null)
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 %89, i32* %90, align 4
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %12, align 4
  br label %93

93:                                               ; preds = %87, %83
  br label %100

94:                                               ; preds = %71
  store i32 0, i32* %11, align 4
  %95 = load i32*, i32** %5, align 8
  %96 = call i32 @c_parser_expr_no_commas(i32* %95, i32* null)
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 %96, i32* %97, align 4
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %12, align 4
  br label %100

100:                                              ; preds = %94, %93
  br label %101

101:                                              ; preds = %100, %69
  br label %102

102:                                              ; preds = %101, %58
  %103 = load i32*, i32** %5, align 8
  %104 = load i64, i64* @CPP_CLOSE_SQUARE, align 8
  %105 = call i64 @c_parser_next_token_is(i32* %103, i64 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i32*, i32** %5, align 8
  %109 = call i32 @c_parser_consume_token(i32* %108)
  br label %114

110:                                              ; preds = %102
  %111 = load i32*, i32** %5, align 8
  %112 = load i64, i64* @CPP_CLOSE_SQUARE, align 8
  %113 = call i32 @c_parser_skip_until_found(i32* %111, i64 %112, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.c_declarator* null, %struct.c_declarator** %4, align 8
  br label %163

114:                                              ; preds = %107
  %115 = load i32, i32* %12, align 4
  %116 = load %struct.c_declspecs*, %struct.c_declspecs** %9, align 8
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %11, align 4
  %119 = call %struct.c_declarator* @build_array_declarator(i32 %115, %struct.c_declspecs* %116, i32 %117, i32 %118)
  store %struct.c_declarator* %119, %struct.c_declarator** %8, align 8
  %120 = load %struct.c_declarator*, %struct.c_declarator** %8, align 8
  %121 = icmp eq %struct.c_declarator* %120, null
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  store %struct.c_declarator* null, %struct.c_declarator** %4, align 8
  br label %163

123:                                              ; preds = %114
  %124 = load %struct.c_declarator*, %struct.c_declarator** %8, align 8
  %125 = load %struct.c_declarator*, %struct.c_declarator** %7, align 8
  %126 = load i32, i32* %6, align 4
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = call %struct.c_declarator* @set_array_declarator_inner(%struct.c_declarator* %124, %struct.c_declarator* %125, i32 %129)
  store %struct.c_declarator* %130, %struct.c_declarator** %7, align 8
  %131 = load i32*, i32** %5, align 8
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.c_declarator*, %struct.c_declarator** %7, align 8
  %134 = call %struct.c_declarator* @c_parser_direct_declarator_inner(i32* %131, i32 %132, %struct.c_declarator* %133)
  store %struct.c_declarator* %134, %struct.c_declarator** %4, align 8
  br label %163

135:                                              ; preds = %3
  %136 = load i32*, i32** %5, align 8
  %137 = load i64, i64* @CPP_OPEN_PAREN, align 8
  %138 = call i64 @c_parser_next_token_is(i32* %136, i64 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %160

140:                                              ; preds = %135
  %141 = load i32*, i32** %5, align 8
  %142 = call i32 @c_parser_consume_token(i32* %141)
  %143 = load i32*, i32** %5, align 8
  %144 = call i32 @c_parser_attributes(i32* %143)
  store i32 %144, i32* %16, align 4
  %145 = load i32*, i32** %5, align 8
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* %16, align 4
  %148 = call %struct.c_arg_info* @c_parser_parms_declarator(i32* %145, i32 %146, i32 %147)
  store %struct.c_arg_info* %148, %struct.c_arg_info** %17, align 8
  %149 = load %struct.c_arg_info*, %struct.c_arg_info** %17, align 8
  %150 = icmp eq %struct.c_arg_info* %149, null
  br i1 %150, label %151, label %152

151:                                              ; preds = %140
  store %struct.c_declarator* null, %struct.c_declarator** %4, align 8
  br label %163

152:                                              ; preds = %140
  %153 = load %struct.c_arg_info*, %struct.c_arg_info** %17, align 8
  %154 = load %struct.c_declarator*, %struct.c_declarator** %7, align 8
  %155 = call %struct.c_declarator* @build_function_declarator(%struct.c_arg_info* %153, %struct.c_declarator* %154)
  store %struct.c_declarator* %155, %struct.c_declarator** %7, align 8
  %156 = load i32*, i32** %5, align 8
  %157 = load i32, i32* %6, align 4
  %158 = load %struct.c_declarator*, %struct.c_declarator** %7, align 8
  %159 = call %struct.c_declarator* @c_parser_direct_declarator_inner(i32* %156, i32 %157, %struct.c_declarator* %158)
  store %struct.c_declarator* %159, %struct.c_declarator** %4, align 8
  br label %163

160:                                              ; preds = %135
  br label %161

161:                                              ; preds = %160
  %162 = load %struct.c_declarator*, %struct.c_declarator** %7, align 8
  store %struct.c_declarator* %162, %struct.c_declarator** %4, align 8
  br label %163

163:                                              ; preds = %161, %152, %151, %123, %122, %110
  %164 = load %struct.c_declarator*, %struct.c_declarator** %4, align 8
  ret %struct.c_declarator* %164
}

declare dso_local i64 @c_parser_next_token_is(i32*, i64) #1

declare dso_local %struct.c_declspecs* @build_null_declspecs(...) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local i32 @c_parser_declspecs(i32*, %struct.c_declspecs*, i32, i32, i32) #1

declare dso_local i32 @c_parser_next_token_is_keyword(i32*, i32) #1

declare dso_local i32 @c_parser_expr_no_commas(i32*, i32*) #1

declare dso_local %struct.TYPE_3__* @c_parser_peek_2nd_token(i32*) #1

declare dso_local i32 @c_parser_skip_until_found(i32*, i64, i8*) #1

declare dso_local %struct.c_declarator* @build_array_declarator(i32, %struct.c_declspecs*, i32, i32) #1

declare dso_local %struct.c_declarator* @set_array_declarator_inner(%struct.c_declarator*, %struct.c_declarator*, i32) #1

declare dso_local i32 @c_parser_attributes(i32*) #1

declare dso_local %struct.c_arg_info* @c_parser_parms_declarator(i32*, i32, i32) #1

declare dso_local %struct.c_declarator* @build_function_declarator(%struct.c_arg_info*, %struct.c_declarator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
