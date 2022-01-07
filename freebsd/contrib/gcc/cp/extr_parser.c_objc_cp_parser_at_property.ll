; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_objc_cp_parser_at_property.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_objc_cp_parser_at_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@NULL_TREE = common dso_local global i64 0, align 8
@CPP_OPEN_PAREN = common dso_local global i64 0, align 8
@CPP_CLOSE_PAREN = common dso_local global i64 0, align 8
@CPP_EOF = common dso_local global i64 0, align 8
@ridpointers = common dso_local global i64* null, align 8
@RID_READONLY = common dso_local global i64 0, align 8
@RID_GETTER = common dso_local global i64 0, align 8
@RID_SETTER = common dso_local global i64 0, align 8
@CPP_EQ = common dso_local global i64 0, align 8
@CPP_COLON = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"getter/setter attribute must be followed by '='\00", align 1
@RID_NONATOMIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"unknown property attribute\00", align 1
@CPP_COMMA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"property attributes must be separated by a comma\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"syntax error in @property's attribute declaration\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @objc_cp_parser_at_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @objc_cp_parser_at_property(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %7 = load i64, i64* @NULL_TREE, align 8
  %8 = call i32 @objc_set_property_attr(i32 0, i64 %7)
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_9__* @cp_lexer_consume_token(i32 %11)
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.TYPE_9__* @cp_lexer_peek_token(i32 %15)
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %3, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CPP_OPEN_PAREN, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %184

22:                                               ; preds = %1
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_9__* @cp_lexer_consume_token(i32 %25)
  br label %27

27:                                               ; preds = %166, %22
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CPP_CLOSE_PAREN, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CPP_EOF, align 8
  %38 = icmp ne i64 %36, %37
  br label %39

39:                                               ; preds = %33, %27
  %40 = phi i1 [ false, %27 ], [ %38, %33 ]
  br i1 %40, label %41, label %171

41:                                               ; preds = %39
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %43 = call i64 @cp_parser_identifier(%struct.TYPE_10__* %42)
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i64*, i64** @ridpointers, align 8
  %46 = load i64, i64* @RID_READONLY, align 8
  %47 = trunc i64 %46 to i32
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %45, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %44, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = load i64, i64* @NULL_TREE, align 8
  %54 = call i32 @objc_set_property_attr(i32 1, i64 %53)
  br label %131

55:                                               ; preds = %41
  %56 = load i64, i64* %4, align 8
  %57 = load i64*, i64** @ridpointers, align 8
  %58 = load i64, i64* @RID_GETTER, align 8
  %59 = trunc i64 %58 to i32
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %57, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %56, %62
  br i1 %63, label %73, label %64

64:                                               ; preds = %55
  %65 = load i64, i64* %4, align 8
  %66 = load i64*, i64** @ridpointers, align 8
  %67 = load i64, i64* @RID_SETTER, align 8
  %68 = trunc i64 %67 to i32
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %66, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %65, %71
  br i1 %72, label %73, label %115

73:                                               ; preds = %64, %55
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call %struct.TYPE_9__* @cp_lexer_consume_token(i32 %76)
  store %struct.TYPE_9__* %77, %struct.TYPE_9__** %3, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @CPP_EQ, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %112

83:                                               ; preds = %73
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %85 = call i64 @cp_parser_objc_selector(%struct.TYPE_10__* %84)
  store i64 %85, i64* %5, align 8
  %86 = load i64, i64* %4, align 8
  %87 = load i64*, i64** @ridpointers, align 8
  %88 = load i64, i64* @RID_GETTER, align 8
  %89 = trunc i64 %88 to i32
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %87, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %86, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  store i32 2, i32* %6, align 4
  br label %108

95:                                               ; preds = %83
  store i32 3, i32* %6, align 4
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i64, i64* @CPP_COLON, align 8
  %100 = call i64 @cp_lexer_next_token_is(i32 %98, i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %95
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call %struct.TYPE_9__* @cp_lexer_consume_token(i32 %105)
  br label %107

107:                                              ; preds = %102, %95
  br label %108

108:                                              ; preds = %107, %94
  %109 = load i32, i32* %6, align 4
  %110 = load i64, i64* %5, align 8
  %111 = call i32 @objc_set_property_attr(i32 %109, i64 %110)
  br label %114

112:                                              ; preds = %73
  %113 = call i32 @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %171

114:                                              ; preds = %108
  br label %130

115:                                              ; preds = %64
  %116 = load i64, i64* %4, align 8
  %117 = load i64*, i64** @ridpointers, align 8
  %118 = load i64, i64* @RID_NONATOMIC, align 8
  %119 = trunc i64 %118 to i32
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %117, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %116, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %115
  %125 = load i64, i64* @NULL_TREE, align 8
  %126 = call i32 @objc_set_property_attr(i32 13, i64 %125)
  br label %129

127:                                              ; preds = %115
  %128 = call i32 @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %171

129:                                              ; preds = %124
  br label %130

130:                                              ; preds = %129, %114
  br label %131

131:                                              ; preds = %130, %52
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i64, i64* @CPP_COMMA, align 8
  %136 = call i64 @cp_lexer_next_token_is_not(i32 %134, i64 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %154

138:                                              ; preds = %131
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i64, i64* @CPP_CLOSE_PAREN, align 8
  %143 = call i64 @cp_lexer_next_token_is_not(i32 %141, i64 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %138
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i64, i64* @CPP_EOF, align 8
  %150 = call i64 @cp_lexer_next_token_is_not(i32 %148, i64 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %145
  %153 = call i32 @warning(i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %154

154:                                              ; preds = %152, %145, %138, %131
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i64, i64* @CPP_COMMA, align 8
  %159 = call i64 @cp_lexer_next_token_is(i32 %157, i64 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %154
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call %struct.TYPE_9__* @cp_lexer_consume_token(i32 %164)
  br label %166

166:                                              ; preds = %161, %154
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call %struct.TYPE_9__* @cp_lexer_peek_token(i32 %169)
  store %struct.TYPE_9__* %170, %struct.TYPE_9__** %3, align 8
  br label %27

171:                                              ; preds = %127, %112, %39
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @CPP_CLOSE_PAREN, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %171
  %178 = call i32 @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  br label %179

179:                                              ; preds = %177, %171
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call %struct.TYPE_9__* @cp_lexer_consume_token(i32 %182)
  br label %184

184:                                              ; preds = %179, %1
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %186 = call i32 @objc_cp_parse_property_decl(%struct.TYPE_10__* %185)
  ret void
}

declare dso_local i32 @objc_set_property_attr(i32, i64) #1

declare dso_local %struct.TYPE_9__* @cp_lexer_consume_token(i32) #1

declare dso_local %struct.TYPE_9__* @cp_lexer_peek_token(i32) #1

declare dso_local i64 @cp_parser_identifier(%struct.TYPE_10__*) #1

declare dso_local i64 @cp_parser_objc_selector(%struct.TYPE_10__*) #1

declare dso_local i64 @cp_lexer_next_token_is(i32, i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @cp_lexer_next_token_is_not(i32, i64) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i32 @objc_cp_parse_property_decl(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
