; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/gensnmptree/extr_gensnmptree.c_parse_top.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/gensnmptree/extr_gensnmptree.c_parse_top.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32 }
%struct.type = type { i32, i32, i32 }

@TOK_TYPEDEF = common dso_local global i32 0, align 4
@TOK_STR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"type name expected after typedef\00", align 1
@str = common dso_local global i32 0, align 4
@TOK_ENUM = common dso_local global i32 0, align 4
@TOK_BITS = common dso_local global i32 0, align 4
@TOK_INCLUDE = common dso_local global i32 0, align 4
@TOK_FILENAME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"filename expected in include directive\00", align 1
@val = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"'(' or 'typedef' expected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.node* (i32)* @parse_top to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.node* @parse_top(i32 %0) #0 {
  %2 = alloca %struct.node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.type*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp eq i32 %5, 40
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.node* @parse(i32 %8)
  store %struct.node* %9, %struct.node** %2, align 8
  br label %59

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @TOK_TYPEDEF, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %43

14:                                               ; preds = %10
  %15 = call i64 (...) @gettoken()
  %16 = load i64, i64* @TOK_STR, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 @report(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %14
  %21 = load i32, i32* @str, align 4
  %22 = call %struct.type* @make_type(i32 %21)
  store %struct.type* %22, %struct.type** %4, align 8
  %23 = call i64 (...) @gettoken()
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @TOK_ENUM, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load %struct.type*, %struct.type** %4, align 8
  %30 = getelementptr inbounds %struct.type, %struct.type* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @TOK_BITS, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load %struct.type*, %struct.type** %4, align 8
  %36 = getelementptr inbounds %struct.type, %struct.type* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.type*, %struct.type** %4, align 8
  %38 = call i32 @parse_type(i32* %3, %struct.type* %37, i32* null, i32* null)
  %39 = load %struct.type*, %struct.type** %4, align 8
  %40 = getelementptr inbounds %struct.type, %struct.type* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @pushback(i32 %41)
  store %struct.node* null, %struct.node** %2, align 8
  br label %59

43:                                               ; preds = %10
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @TOK_INCLUDE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = call i64 (...) @gettoken()
  %49 = load i64, i64* @TOK_FILENAME, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = call i32 @report(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %47
  %54 = load i32, i32* @str, align 4
  %55 = load i32, i32* @val, align 4
  %56 = call i32 @input_fopen(i32 %54, i32 %55)
  store %struct.node* null, %struct.node** %2, align 8
  br label %59

57:                                               ; preds = %43
  %58 = call i32 @report(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %53, %20, %7
  %60 = load %struct.node*, %struct.node** %2, align 8
  ret %struct.node* %60
}

declare dso_local %struct.node* @parse(i32) #1

declare dso_local i64 @gettoken(...) #1

declare dso_local i32 @report(i8*) #1

declare dso_local %struct.type* @make_type(i32) #1

declare dso_local i32 @parse_type(i32*, %struct.type*, i32*, i32*) #1

declare dso_local i32 @pushback(i32) #1

declare dso_local i32 @input_fopen(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
