; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_make_id_declarator.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_make_id_declarator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i8*, i8* }

@IDENTIFIER_NODE = common dso_local global i64 0, align 8
@BIT_NOT_EXPR = common dso_local global i64 0, align 8
@TEMPLATE_ID_EXPR = common dso_local global i64 0, align 8
@cdk_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i8*, i8*, i32)* @make_id_declarator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @make_id_declarator(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @TYPE_P(i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i8*, i8** %4, align 8
  %16 = call i8* @TYPE_MAIN_VARIANT(i8* %15)
  store i8* %16, i8** %4, align 8
  br label %17

17:                                               ; preds = %14, %10, %3
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @TREE_CODE(i8* %18)
  %20 = load i64, i64* @IDENTIFIER_NODE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %32, label %22

22:                                               ; preds = %17
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @TREE_CODE(i8* %23)
  %25 = load i64, i64* @BIT_NOT_EXPR, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @TREE_CODE(i8* %28)
  %30 = load i64, i64* @TEMPLATE_ID_EXPR, align 8
  %31 = icmp eq i64 %29, %30
  br label %32

32:                                               ; preds = %27, %22, %17
  %33 = phi i1 [ true, %22 ], [ true, %17 ], [ %31, %27 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @gcc_assert(i32 %34)
  %36 = load i32, i32* @cdk_id, align 4
  %37 = call %struct.TYPE_8__* @make_declarator(i32 %36)
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %7, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  store i8* %38, i8** %42, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  store i8* %43, i8** %47, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  ret %struct.TYPE_8__* %53
}

declare dso_local i64 @TYPE_P(i8*) #1

declare dso_local i8* @TYPE_MAIN_VARIANT(i8*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i8*) #1

declare dso_local %struct.TYPE_8__* @make_declarator(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
