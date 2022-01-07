; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_block_declaration.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_block_declaration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64 }

@pedantic = common dso_local global i32 0, align 4
@RID_ASM = common dso_local global i64 0, align 8
@RID_NAMESPACE = common dso_local global i64 0, align 8
@RID_USING = common dso_local global i64 0, align 8
@RID_LABEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i32)* @cp_parser_block_declaration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_parser_block_declaration(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %9 = call i64 @cp_parser_extension_opt(%struct.TYPE_15__* %8, i32* %6)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %13 = load i32, i32* %4, align 4
  call void @cp_parser_block_declaration(%struct.TYPE_15__* %12, i32 %13)
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* @pedantic, align 4
  br label %97

15:                                               ; preds = %2
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.TYPE_14__* @cp_lexer_peek_token(i32 %18)
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %5, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @RID_ASM, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %15
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %30 = call i32 @cp_parser_commit_to_tentative_parse(%struct.TYPE_15__* %29)
  br label %31

31:                                               ; preds = %28, %25
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %33 = call i32 @cp_parser_asm_definition(%struct.TYPE_15__* %32)
  br label %97

34:                                               ; preds = %15
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @RID_NAMESPACE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %42 = call i32 @cp_parser_namespace_alias_definition(%struct.TYPE_15__* %41)
  br label %96

43:                                               ; preds = %34
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @RID_USING, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %72

49:                                               ; preds = %43
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %54 = call i32 @cp_parser_commit_to_tentative_parse(%struct.TYPE_15__* %53)
  br label %55

55:                                               ; preds = %52, %49
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.TYPE_14__* @cp_lexer_peek_nth_token(i32 %58, i32 2)
  store %struct.TYPE_14__* %59, %struct.TYPE_14__** %7, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @RID_NAMESPACE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %67 = call i32 @cp_parser_using_directive(%struct.TYPE_15__* %66)
  br label %71

68:                                               ; preds = %55
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %70 = call i32 @cp_parser_using_declaration(%struct.TYPE_15__* %69, i32 0)
  br label %71

71:                                               ; preds = %68, %65
  br label %95

72:                                               ; preds = %43
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @RID_LABEL, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %72
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %83 = call i32 @cp_parser_commit_to_tentative_parse(%struct.TYPE_15__* %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %86 = call i32 @cp_parser_label_declaration(%struct.TYPE_15__* %85)
  br label %94

87:                                               ; preds = %72
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call i32 @cp_parser_simple_declaration(%struct.TYPE_15__* %88, i32 %92)
  br label %94

94:                                               ; preds = %87, %84
  br label %95

95:                                               ; preds = %94, %71
  br label %96

96:                                               ; preds = %95, %40
  br label %97

97:                                               ; preds = %11, %96, %31
  ret void
}

declare dso_local i64 @cp_parser_extension_opt(%struct.TYPE_15__*, i32*) #1

declare dso_local %struct.TYPE_14__* @cp_lexer_peek_token(i32) #1

declare dso_local i32 @cp_parser_commit_to_tentative_parse(%struct.TYPE_15__*) #1

declare dso_local i32 @cp_parser_asm_definition(%struct.TYPE_15__*) #1

declare dso_local i32 @cp_parser_namespace_alias_definition(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_14__* @cp_lexer_peek_nth_token(i32, i32) #1

declare dso_local i32 @cp_parser_using_directive(%struct.TYPE_15__*) #1

declare dso_local i32 @cp_parser_using_declaration(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @cp_parser_label_declaration(%struct.TYPE_15__*) #1

declare dso_local i32 @cp_parser_simple_declaration(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
