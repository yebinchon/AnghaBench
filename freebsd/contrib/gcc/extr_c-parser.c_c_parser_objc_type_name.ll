; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_objc_type_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_objc_type_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_type_name = type { i32 }
%struct.TYPE_3__ = type { i64, i64, i32 }

@NULL_TREE = common dso_local global i32 0, align 4
@CPP_KEYWORD = common dso_local global i64 0, align 8
@RID_IN = common dso_local global i64 0, align 8
@RID_OUT = common dso_local global i64 0, align 8
@RID_INOUT = common dso_local global i64 0, align 8
@RID_BYCOPY = common dso_local global i64 0, align 8
@RID_BYREF = common dso_local global i64 0, align 8
@RID_ONEWAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @c_parser_objc_type_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c_parser_objc_type_name(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.c_type_name*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32, i32* @NULL_TREE, align 4
  store i32 %7, i32* %3, align 4
  store %struct.c_type_name* null, %struct.c_type_name** %4, align 8
  %8 = load i32, i32* @NULL_TREE, align 4
  store i32 %8, i32* %5, align 4
  br label %9

9:                                                ; preds = %1, %64
  %10 = load i32*, i32** %2, align 8
  %11 = call %struct.TYPE_3__* @c_parser_peek_token(i32* %10)
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %6, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CPP_KEYWORD, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %63

17:                                               ; preds = %9
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @RID_IN, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %53, label %23

23:                                               ; preds = %17
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RID_OUT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %53, label %29

29:                                               ; preds = %23
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @RID_INOUT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %53, label %35

35:                                               ; preds = %29
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @RID_BYCOPY, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %53, label %41

41:                                               ; preds = %35
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @RID_BYREF, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @RID_ONEWAY, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %47, %41, %35, %29, %23, %17
  %54 = load i32, i32* @NULL_TREE, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @build_tree_list(i32 %54, i32 %57)
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @chainon(i32 %58, i32 %59)
  store i32 %60, i32* %3, align 4
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @c_parser_consume_token(i32* %61)
  br label %64

63:                                               ; preds = %47, %9
  br label %65

64:                                               ; preds = %53
  br label %9

65:                                               ; preds = %63
  %66 = load i32*, i32** %2, align 8
  %67 = call i64 @c_parser_next_token_starts_typename(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32*, i32** %2, align 8
  %71 = call %struct.c_type_name* @c_parser_type_name(i32* %70)
  store %struct.c_type_name* %71, %struct.c_type_name** %4, align 8
  br label %72

72:                                               ; preds = %69, %65
  %73 = load %struct.c_type_name*, %struct.c_type_name** %4, align 8
  %74 = icmp ne %struct.c_type_name* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load %struct.c_type_name*, %struct.c_type_name** %4, align 8
  %77 = call i32 @groktypename(%struct.c_type_name* %76)
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @build_tree_list(i32 %79, i32 %80)
  ret i32 %81
}

declare dso_local %struct.TYPE_3__* @c_parser_peek_token(i32*) #1

declare dso_local i32 @chainon(i32, i32) #1

declare dso_local i32 @build_tree_list(i32, i32) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local i64 @c_parser_next_token_starts_typename(i32*) #1

declare dso_local %struct.c_type_name* @c_parser_type_name(i32*) #1

declare dso_local i32 @groktypename(%struct.c_type_name*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
