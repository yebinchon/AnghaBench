; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_declarator.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_declarator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_declarator = type { i32 }
%struct.c_declspecs = type { i32 }

@CPP_MULT = common dso_local global i32 0, align 4
@flag_blocks = common dso_local global i64 0, align 8
@CPP_XOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.c_declarator* (i32*, i32, i32, i32*)* @c_parser_declarator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.c_declarator* @c_parser_declarator(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.c_declarator*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.c_declspecs*, align 8
  %11 = alloca %struct.c_declarator*, align 8
  %12 = alloca %struct.c_declspecs*, align 8
  %13 = alloca %struct.c_declarator*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* @CPP_MULT, align 4
  %16 = call i64 @c_parser_next_token_is(i32* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %4
  %19 = call %struct.c_declspecs* (...) @build_null_declspecs()
  store %struct.c_declspecs* %19, %struct.c_declspecs** %10, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @c_parser_consume_token(i32* %20)
  %22 = load i32*, i32** %6, align 8
  %23 = load %struct.c_declspecs*, %struct.c_declspecs** %10, align 8
  %24 = call i32 @c_parser_declspecs(i32* %22, %struct.c_declspecs* %23, i32 0, i32 0, i32 1)
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = call %struct.c_declarator* @c_parser_declarator(i32* %25, i32 %26, i32 %27, i32* %28)
  store %struct.c_declarator* %29, %struct.c_declarator** %11, align 8
  %30 = load %struct.c_declarator*, %struct.c_declarator** %11, align 8
  %31 = icmp eq %struct.c_declarator* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %18
  store %struct.c_declarator* null, %struct.c_declarator** %5, align 8
  br label %71

33:                                               ; preds = %18
  %34 = load %struct.c_declspecs*, %struct.c_declspecs** %10, align 8
  %35 = load %struct.c_declarator*, %struct.c_declarator** %11, align 8
  %36 = call %struct.c_declarator* @make_pointer_declarator(%struct.c_declspecs* %34, %struct.c_declarator* %35)
  store %struct.c_declarator* %36, %struct.c_declarator** %5, align 8
  br label %71

37:                                               ; preds = %4
  %38 = load i64, i64* @flag_blocks, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %37
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* @CPP_XOR, align 4
  %43 = call i64 @c_parser_next_token_is(i32* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %40
  %46 = call %struct.c_declspecs* (...) @build_null_declspecs()
  store %struct.c_declspecs* %46, %struct.c_declspecs** %12, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @c_parser_consume_token(i32* %47)
  %49 = load i32*, i32** %6, align 8
  %50 = load %struct.c_declspecs*, %struct.c_declspecs** %12, align 8
  %51 = call i32 @c_parser_declspecs(i32* %49, %struct.c_declspecs* %50, i32 0, i32 0, i32 1)
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = call %struct.c_declarator* @c_parser_declarator(i32* %52, i32 %53, i32 %54, i32* %55)
  store %struct.c_declarator* %56, %struct.c_declarator** %13, align 8
  %57 = load %struct.c_declarator*, %struct.c_declarator** %13, align 8
  %58 = icmp eq %struct.c_declarator* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %45
  store %struct.c_declarator* null, %struct.c_declarator** %5, align 8
  br label %71

60:                                               ; preds = %45
  %61 = load %struct.c_declspecs*, %struct.c_declspecs** %12, align 8
  %62 = load %struct.c_declarator*, %struct.c_declarator** %13, align 8
  %63 = call %struct.c_declarator* @make_block_pointer_declarator(%struct.c_declspecs* %61, %struct.c_declarator* %62)
  store %struct.c_declarator* %63, %struct.c_declarator** %5, align 8
  br label %71

64:                                               ; preds = %40, %37
  br label %65

65:                                               ; preds = %64
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = call %struct.c_declarator* @c_parser_direct_declarator(i32* %66, i32 %67, i32 %68, i32* %69)
  store %struct.c_declarator* %70, %struct.c_declarator** %5, align 8
  br label %71

71:                                               ; preds = %65, %60, %59, %33, %32
  %72 = load %struct.c_declarator*, %struct.c_declarator** %5, align 8
  ret %struct.c_declarator* %72
}

declare dso_local i64 @c_parser_next_token_is(i32*, i32) #1

declare dso_local %struct.c_declspecs* @build_null_declspecs(...) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local i32 @c_parser_declspecs(i32*, %struct.c_declspecs*, i32, i32, i32) #1

declare dso_local %struct.c_declarator* @make_pointer_declarator(%struct.c_declspecs*, %struct.c_declarator*) #1

declare dso_local %struct.c_declarator* @make_block_pointer_declarator(%struct.c_declspecs*, %struct.c_declarator*) #1

declare dso_local %struct.c_declarator* @c_parser_direct_declarator(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
