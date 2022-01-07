; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_conversion_type_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_conversion_type_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@error_mark_node = common dso_local global i64 0, align 8
@TYPENAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @cp_parser_conversion_type_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cp_parser_conversion_type_id(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @cp_parser_attributes_opt(i32* %8)
  store i64 %9, i64* %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @cp_parser_type_specifier_seq(i32* %10, i32 0, %struct.TYPE_4__* %5)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @error_mark_node, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i64, i64* @error_mark_node, align 8
  store i64 %17, i64* %2, align 8
  br label %31

18:                                               ; preds = %1
  %19 = load i32*, i32** %3, align 8
  %20 = call i32* @cp_parser_conversion_declarator_opt(i32* %19)
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* @TYPENAME, align 4
  %23 = call i64 @grokdeclarator(i32* %21, %struct.TYPE_4__* %5, i32 %22, i32 0, i64* %4)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @cplus_decl_attributes(i64* %7, i64 %27, i32 0)
  br label %29

29:                                               ; preds = %26, %18
  %30 = load i64, i64* %7, align 8
  store i64 %30, i64* %2, align 8
  br label %31

31:                                               ; preds = %29, %16
  %32 = load i64, i64* %2, align 8
  ret i64 %32
}

declare dso_local i64 @cp_parser_attributes_opt(i32*) #1

declare dso_local i32 @cp_parser_type_specifier_seq(i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i32* @cp_parser_conversion_declarator_opt(i32*) #1

declare dso_local i64 @grokdeclarator(i32*, %struct.TYPE_4__*, i32, i32, i64*) #1

declare dso_local i32 @cplus_decl_attributes(i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
