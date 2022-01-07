; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_braced_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_braced_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.c_expr = type { i32, i32 }

@CPP_OPEN_BRACE = common dso_local global i32 0, align 4
@CPP_CLOSE_BRACE = common dso_local global i32 0, align 4
@pedantic = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"ISO C forbids empty initializer braces\00", align 1
@CPP_COMMA = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i32 0, align 4
@ERROR_MARK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"expected %<}%>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, i32, i32)* @c_parser_braced_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @c_parser_braced_init(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.c_expr, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %9 = load i32, i32* @CPP_OPEN_BRACE, align 4
  %10 = call i64 @c_parser_next_token_is(%struct.TYPE_8__* %8, i32 %9)
  %11 = call i32 @gcc_assert(i64 %10)
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = call i32 @c_parser_consume_token(%struct.TYPE_8__* %12)
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = call i32 @push_init_level(i32 0)
  br label %21

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @really_start_incremental_init(i32 %19)
  br label %21

21:                                               ; preds = %18, %16
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = load i32, i32* @CPP_CLOSE_BRACE, align 4
  %24 = call i64 @c_parser_next_token_is(%struct.TYPE_8__* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i64, i64* @pedantic, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 @pedwarn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %26
  br label %58

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32, %56
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = call i32 @c_parser_initelt(%struct.TYPE_8__* %34)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %57

41:                                               ; preds = %33
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = load i32, i32* @CPP_COMMA, align 4
  %44 = call i64 @c_parser_next_token_is(%struct.TYPE_8__* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = call i32 @c_parser_consume_token(%struct.TYPE_8__* %47)
  br label %50

49:                                               ; preds = %41
  br label %57

50:                                               ; preds = %46
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = load i32, i32* @CPP_CLOSE_BRACE, align 4
  %53 = call i64 @c_parser_next_token_is(%struct.TYPE_8__* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %57

56:                                               ; preds = %50
  br label %33

57:                                               ; preds = %55, %49, %40
  br label %58

58:                                               ; preds = %57, %31
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = load i32, i32* @CPP_CLOSE_BRACE, align 4
  %61 = call i64 @c_parser_next_token_is_not(%struct.TYPE_8__* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load i32, i32* @error_mark_node, align 4
  %65 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %4, i32 0, i32 1
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @ERROR_MARK, align 4
  %67 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %4, i32 0, i32 0
  store i32 %66, i32* %67, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %69 = load i32, i32* @CPP_CLOSE_BRACE, align 4
  %70 = call i32 @c_parser_skip_until_found(%struct.TYPE_8__* %68, i32 %69, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %76

71:                                               ; preds = %58
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %73 = call i32 @c_parser_consume_token(%struct.TYPE_8__* %72)
  %74 = call i64 @pop_init_level(i32 0)
  %75 = bitcast %struct.c_expr* %4 to i64*
  store i64 %74, i64* %75, align 4
  br label %76

76:                                               ; preds = %71, %63
  %77 = bitcast %struct.c_expr* %4 to i64*
  %78 = load i64, i64* %77, align 4
  ret i64 %78
}

declare dso_local i32 @gcc_assert(i64) #1

declare dso_local i64 @c_parser_next_token_is(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @c_parser_consume_token(%struct.TYPE_8__*) #1

declare dso_local i32 @push_init_level(i32) #1

declare dso_local i32 @really_start_incremental_init(i32) #1

declare dso_local i32 @pedwarn(i8*) #1

declare dso_local i32 @c_parser_initelt(%struct.TYPE_8__*) #1

declare dso_local i64 @c_parser_next_token_is_not(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @c_parser_skip_until_found(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i64 @pop_init_level(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
