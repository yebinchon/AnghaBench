; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_type_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_type_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@error_mark_node = common dso_local global i64 0, align 8
@CP_PARSER_DECLARATOR_ABSTRACT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @cp_parser_type_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cp_parser_type_id(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @cp_parser_type_specifier_seq(i32* %6, i32 0, %struct.TYPE_4__* %4)
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @error_mark_node, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i64, i64* @error_mark_node, align 8
  store i64 %13, i64* %2, align 8
  br label %27

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @cp_parser_parse_tentatively(i32* %15)
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* @CP_PARSER_DECLARATOR_ABSTRACT, align 4
  %19 = call i32* @cp_parser_declarator(i32* %17, i32 %18, i32* null, i32* null, i32 0)
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @cp_parser_parse_definitely(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  store i32* null, i32** %5, align 8
  br label %24

24:                                               ; preds = %23, %14
  %25 = load i32*, i32** %5, align 8
  %26 = call i64 @groktypename(%struct.TYPE_4__* %4, i32* %25)
  store i64 %26, i64* %2, align 8
  br label %27

27:                                               ; preds = %24, %12
  %28 = load i64, i64* %2, align 8
  ret i64 %28
}

declare dso_local i32 @cp_parser_type_specifier_seq(i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @cp_parser_parse_tentatively(i32*) #1

declare dso_local i32* @cp_parser_declarator(i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @cp_parser_parse_definitely(i32*) #1

declare dso_local i64 @groktypename(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
