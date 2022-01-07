; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_objc_interfacedecllist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_objc_interfacedecllist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@CPP_KEYWORD = common dso_local global i64 0, align 8
@RID_AT_PROPERTY = common dso_local global i64 0, align 8
@pedantic = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"ISO C does not allow extra %<;%> outside of a function\00", align 1
@pragma_external = common dso_local global i32 0, align 4
@RID_AT_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @c_parser_objc_interfacedecllist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_parser_objc_interfacedecllist(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %2, align 8
  br label %4

4:                                                ; preds = %1, %18, %25, %55
  %5 = load i32*, i32** %2, align 8
  %6 = call %struct.TYPE_4__* @c_parser_peek_token(i32* %5)
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CPP_KEYWORD, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @RID_AT_PROPERTY, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @c_parser_objc_property_declaration(i32* %19)
  br label %4

21:                                               ; preds = %12, %4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = call i64 @c_token_starts_methodproto(%struct.TYPE_4__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @c_parser_objc_methodproto(i32* %26)
  br label %4

28:                                               ; preds = %21
  %29 = load i32*, i32** %2, align 8
  %30 = call %struct.TYPE_4__* @c_parser_peek_token(i32* %29)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  switch i64 %32, label %46 [
    i64 128, label %33
    i64 129, label %41
    i64 130, label %45
  ]

33:                                               ; preds = %28
  %34 = load i32, i32* @pedantic, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 @pedwarn(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %33
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @c_parser_consume_token(i32* %39)
  br label %55

41:                                               ; preds = %28
  %42 = load i32*, i32** %2, align 8
  %43 = load i32, i32* @pragma_external, align 4
  %44 = call i32 @c_parser_pragma(i32* %42, i32 %43)
  br label %55

45:                                               ; preds = %28
  br label %56

46:                                               ; preds = %28
  %47 = load i32*, i32** %2, align 8
  %48 = load i32, i32* @RID_AT_END, align 4
  %49 = call i32 @c_parser_next_token_is_keyword(i32* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %56

52:                                               ; preds = %46
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @c_parser_declaration_or_fndef(i32* %53, i32 0, i32 1, i32 0, i32 1, i32* null)
  br label %55

55:                                               ; preds = %52, %41, %38
  br label %4

56:                                               ; preds = %51, %45
  ret void
}

declare dso_local %struct.TYPE_4__* @c_parser_peek_token(i32*) #1

declare dso_local i32 @c_parser_objc_property_declaration(i32*) #1

declare dso_local i64 @c_token_starts_methodproto(%struct.TYPE_4__*) #1

declare dso_local i32 @c_parser_objc_methodproto(i32*) #1

declare dso_local i32 @pedwarn(i8*) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local i32 @c_parser_pragma(i32*, i32) #1

declare dso_local i32 @c_parser_next_token_is_keyword(i32*, i32) #1

declare dso_local i32 @c_parser_declaration_or_fndef(i32*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
