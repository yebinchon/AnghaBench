; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_external_declaration.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_external_declaration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@NULL_TREE = common dso_local global i32 0, align 4
@pedantic = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"ISO C does not allow extra %<;%> outside of a function\00", align 1
@pragma_external = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @c_parser_external_declaration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_parser_external_declaration(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %4)
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %75 [
    i32 141, label %8
    i32 137, label %56
    i32 138, label %64
    i32 139, label %68
    i32 140, label %68
  ]

8:                                                ; preds = %1
  %9 = load i32*, i32** %2, align 8
  %10 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %54 [
    i32 128, label %13
    i32 136, label %20
    i32 131, label %23
    i32 132, label %23
    i32 134, label %29
    i32 135, label %34
    i32 129, label %39
    i32 130, label %45
    i32 133, label %48
  ]

13:                                               ; preds = %8
  %14 = call i32 (...) @disable_extension_diagnostics()
  store i32 %14, i32* %3, align 4
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @c_parser_consume_token(i32* %15)
  %17 = load i32*, i32** %2, align 8
  call void @c_parser_external_declaration(i32* %17)
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @restore_extension_diagnostics(i32 %18)
  br label %55

20:                                               ; preds = %8
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @c_parser_asm_definition(i32* %21)
  br label %55

23:                                               ; preds = %8, %8
  %24 = call i32 (...) @c_dialect_objc()
  %25 = call i32 @gcc_assert(i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* @NULL_TREE, align 4
  %28 = call i32 @c_parser_objc_class_definition(i32* %26, i32 %27)
  br label %55

29:                                               ; preds = %8
  %30 = call i32 (...) @c_dialect_objc()
  %31 = call i32 @gcc_assert(i32 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @c_parser_objc_class_declaration(i32* %32)
  br label %55

34:                                               ; preds = %8
  %35 = call i32 (...) @c_dialect_objc()
  %36 = call i32 @gcc_assert(i32 %35)
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @c_parser_objc_alias_declaration(i32* %37)
  br label %55

39:                                               ; preds = %8
  %40 = call i32 (...) @c_dialect_objc()
  %41 = call i32 @gcc_assert(i32 %40)
  %42 = load i32*, i32** %2, align 8
  %43 = load i32, i32* @NULL_TREE, align 4
  %44 = call i32 @c_parser_objc_protocol_definition(i32* %42, i32 %43)
  br label %55

45:                                               ; preds = %8
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 @c_parser_objc_property_declaration(i32* %46)
  br label %55

48:                                               ; preds = %8
  %49 = call i32 (...) @c_dialect_objc()
  %50 = call i32 @gcc_assert(i32 %49)
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @c_parser_consume_token(i32* %51)
  %53 = call i32 (...) @objc_finish_implementation()
  br label %55

54:                                               ; preds = %8
  br label %76

55:                                               ; preds = %48, %45, %39, %34, %29, %23, %20, %13
  br label %79

56:                                               ; preds = %1
  %57 = load i32, i32* @pedantic, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = call i32 @pedwarn(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %56
  %62 = load i32*, i32** %2, align 8
  %63 = call i32 @c_parser_consume_token(i32* %62)
  br label %79

64:                                               ; preds = %1
  %65 = load i32*, i32** %2, align 8
  %66 = load i32, i32* @pragma_external, align 4
  %67 = call i32 @c_parser_pragma(i32* %65, i32 %66)
  br label %79

68:                                               ; preds = %1, %1
  %69 = call i32 (...) @c_dialect_objc()
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32*, i32** %2, align 8
  %73 = call i32 @c_parser_objc_method_definition(i32* %72)
  br label %79

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %1, %74
  br label %76

76:                                               ; preds = %75, %54
  %77 = load i32*, i32** %2, align 8
  %78 = call i32 @c_parser_declaration_or_fndef(i32* %77, i32 1, i32 1, i32 0, i32 1, i32* null)
  br label %79

79:                                               ; preds = %76, %71, %64, %61, %55
  ret void
}

declare dso_local %struct.TYPE_2__* @c_parser_peek_token(i32*) #1

declare dso_local i32 @disable_extension_diagnostics(...) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local i32 @restore_extension_diagnostics(i32) #1

declare dso_local i32 @c_parser_asm_definition(i32*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @c_dialect_objc(...) #1

declare dso_local i32 @c_parser_objc_class_definition(i32*, i32) #1

declare dso_local i32 @c_parser_objc_class_declaration(i32*) #1

declare dso_local i32 @c_parser_objc_alias_declaration(i32*) #1

declare dso_local i32 @c_parser_objc_protocol_definition(i32*, i32) #1

declare dso_local i32 @c_parser_objc_property_declaration(i32*) #1

declare dso_local i32 @objc_finish_implementation(...) #1

declare dso_local i32 @pedwarn(i8*) #1

declare dso_local i32 @c_parser_pragma(i32*, i32) #1

declare dso_local i32 @c_parser_objc_method_definition(i32*) #1

declare dso_local i32 @c_parser_declaration_or_fndef(i32*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
