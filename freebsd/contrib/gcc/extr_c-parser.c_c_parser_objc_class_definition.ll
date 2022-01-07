; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_objc_class_definition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_objc_class_definition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@RID_AT_INTERFACE = common dso_local global i32 0, align 4
@RID_AT_IMPLEMENTATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"attributes may not be specified on an implementation\00", align 1
@NULL_TREE = common dso_local global i64 0, align 8
@CPP_NAME = common dso_local global i32 0, align 4
@CPP_CLOSE_PAREN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"expected identifier\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"expected %<)%>\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"cannot implement anonymous category\00", align 1
@CPP_LESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"attributes may not be specified on a category\00", align 1
@RID_AT_END = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"expected %<@end%>\00", align 1
@CPP_COLON = common dso_local global i32 0, align 4
@CPP_OPEN_BRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @c_parser_objc_class_definition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_parser_objc_class_definition(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @RID_AT_INTERFACE, align 4
  %13 = call i64 @c_parser_next_token_is_keyword(i32* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  br label %31

16:                                               ; preds = %2
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* @RID_AT_IMPLEMENTATION, align 4
  %19 = call i64 @c_parser_next_token_is_keyword(i32* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = call i32 @error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %26 = load i64, i64* @NULL_TREE, align 8
  store i64 %26, i64* %4, align 8
  br label %27

27:                                               ; preds = %24, %21
  store i32 0, i32* %5, align 4
  br label %30

28:                                               ; preds = %16
  %29 = call i32 (...) @gcc_unreachable()
  br label %30

30:                                               ; preds = %28, %27
  br label %31

31:                                               ; preds = %30, %15
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @c_parser_consume_token(i32* %32)
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* @CPP_NAME, align 4
  %36 = call i64 @c_parser_next_token_is_not(i32* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %105

38:                                               ; preds = %31
  %39 = load i64, i64* @NULL_TREE, align 8
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* @NULL_TREE, align 8
  store i64 %40, i64* %9, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @c_parser_consume_token(i32* %41)
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %45 = call i64 @c_parser_next_token_is_not(i32* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %38
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* @CPP_NAME, align 4
  %50 = call i64 @c_parser_next_token_is_not(i32* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @c_parser_error(i32* %53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %57 = call i32 @c_parser_skip_until_found(i32* %55, i32 %56, i8* null)
  br label %172

58:                                               ; preds = %47
  %59 = load i32*, i32** %3, align 8
  %60 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %59)
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %8, align 8
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @c_parser_consume_token(i32* %63)
  br label %65

65:                                               ; preds = %58, %38
  %66 = load i32*, i32** %3, align 8
  %67 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %68 = call i32 @c_parser_skip_until_found(i32* %66, i32 %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %81, label %71

71:                                               ; preds = %65
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* @NULL_TREE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %172

77:                                               ; preds = %71
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @objc_start_category_implementation(i64 %78, i64 %79)
  br label %172

81:                                               ; preds = %65
  %82 = load i32*, i32** %3, align 8
  %83 = load i32, i32* @CPP_LESS, align 4
  %84 = call i64 @c_parser_next_token_is(i32* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32*, i32** %3, align 8
  %88 = call i64 @c_parser_objc_protocol_refs(i32* %87)
  store i64 %88, i64* %9, align 8
  br label %89

89:                                               ; preds = %86, %81
  %90 = load i64, i64* %4, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = call i32 @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %89
  %95 = load i64, i64* %6, align 8
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* %9, align 8
  %98 = call i32 @objc_start_category_interface(i64 %95, i64 %96, i64 %97)
  %99 = load i32*, i32** %3, align 8
  %100 = call i32 @c_parser_objc_interfacedecllist(i32* %99)
  %101 = load i32*, i32** %3, align 8
  %102 = load i32, i32* @RID_AT_END, align 4
  %103 = call i32 @c_parser_require_keyword(i32* %101, i32 %102, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %104 = call i32 (...) @objc_finish_interface()
  br label %172

105:                                              ; preds = %31
  %106 = load i32*, i32** %3, align 8
  %107 = load i32, i32* @CPP_COLON, align 4
  %108 = call i64 @c_parser_next_token_is(i32* %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %127

110:                                              ; preds = %105
  %111 = load i32*, i32** %3, align 8
  %112 = call i32 @c_parser_consume_token(i32* %111)
  %113 = load i32*, i32** %3, align 8
  %114 = load i32, i32* @CPP_NAME, align 4
  %115 = call i64 @c_parser_next_token_is_not(i32* %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %110
  %118 = load i32*, i32** %3, align 8
  %119 = call i32 @c_parser_error(i32* %118, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %172

120:                                              ; preds = %110
  %121 = load i32*, i32** %3, align 8
  %122 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %121)
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %7, align 8
  %125 = load i32*, i32** %3, align 8
  %126 = call i32 @c_parser_consume_token(i32* %125)
  br label %129

127:                                              ; preds = %105
  %128 = load i64, i64* @NULL_TREE, align 8
  store i64 %128, i64* %7, align 8
  br label %129

129:                                              ; preds = %127, %120
  %130 = load i32, i32* %5, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %147

132:                                              ; preds = %129
  %133 = load i64, i64* @NULL_TREE, align 8
  store i64 %133, i64* %10, align 8
  %134 = load i32*, i32** %3, align 8
  %135 = load i32, i32* @CPP_LESS, align 4
  %136 = call i64 @c_parser_next_token_is(i32* %134, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load i32*, i32** %3, align 8
  %140 = call i64 @c_parser_objc_protocol_refs(i32* %139)
  store i64 %140, i64* %10, align 8
  br label %141

141:                                              ; preds = %138, %132
  %142 = load i64, i64* %6, align 8
  %143 = load i64, i64* %7, align 8
  %144 = load i64, i64* %10, align 8
  %145 = load i64, i64* %4, align 8
  %146 = call i32 @objc_start_class_interface(i64 %142, i64 %143, i64 %144, i64 %145)
  br label %151

147:                                              ; preds = %129
  %148 = load i64, i64* %6, align 8
  %149 = load i64, i64* %7, align 8
  %150 = call i32 @objc_start_class_implementation(i64 %148, i64 %149)
  br label %151

151:                                              ; preds = %147, %141
  %152 = load i32*, i32** %3, align 8
  %153 = load i32, i32* @CPP_OPEN_BRACE, align 4
  %154 = call i64 @c_parser_next_token_is(i32* %152, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load i32*, i32** %3, align 8
  %158 = call i32 @c_parser_objc_class_instance_variables(i32* %157)
  br label %159

159:                                              ; preds = %156, %151
  %160 = load i32, i32* %5, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %159
  %163 = call i32 (...) @objc_continue_interface()
  %164 = load i32*, i32** %3, align 8
  %165 = call i32 @c_parser_objc_interfacedecllist(i32* %164)
  %166 = load i32*, i32** %3, align 8
  %167 = load i32, i32* @RID_AT_END, align 4
  %168 = call i32 @c_parser_require_keyword(i32* %166, i32 %167, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %169 = call i32 (...) @objc_finish_interface()
  br label %172

170:                                              ; preds = %159
  %171 = call i32 (...) @objc_continue_implementation()
  br label %172

172:                                              ; preds = %52, %75, %77, %94, %117, %170, %162
  ret void
}

declare dso_local i64 @c_parser_next_token_is_keyword(i32*, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local i64 @c_parser_next_token_is_not(i32*, i32) #1

declare dso_local i32 @c_parser_error(i32*, i8*) #1

declare dso_local i32 @c_parser_skip_until_found(i32*, i32, i8*) #1

declare dso_local %struct.TYPE_2__* @c_parser_peek_token(i32*) #1

declare dso_local i32 @objc_start_category_implementation(i64, i64) #1

declare dso_local i64 @c_parser_next_token_is(i32*, i32) #1

declare dso_local i64 @c_parser_objc_protocol_refs(i32*) #1

declare dso_local i32 @objc_start_category_interface(i64, i64, i64) #1

declare dso_local i32 @c_parser_objc_interfacedecllist(i32*) #1

declare dso_local i32 @c_parser_require_keyword(i32*, i32, i8*) #1

declare dso_local i32 @objc_finish_interface(...) #1

declare dso_local i32 @objc_start_class_interface(i64, i64, i64, i64) #1

declare dso_local i32 @objc_start_class_implementation(i64, i64) #1

declare dso_local i32 @c_parser_objc_class_instance_variables(i32*) #1

declare dso_local i32 @objc_continue_interface(...) #1

declare dso_local i32 @objc_continue_implementation(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
